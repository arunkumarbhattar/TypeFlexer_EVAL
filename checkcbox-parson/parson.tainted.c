#include <checkcbox_extensions.h>
/*
 Checked C Parson
 Copyright (c) Microsoft Corporation. All rights reserved.
 Portions Copyright (c) 2012 - 2017 Krzysztof Gabis
 https://github.com/kgabis/parson/
 Licensed under the MIT License

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
*/
#ifdef _MSC_VER
#ifndef _CRT_SECURE_NO_WARNINGS
#define _CRT_SECURE_NO_WARNINGS
#endif /* _CRT_SECURE_NO_WARNINGS */
#endif /* _MSC_VER */



#include <ctype.h> /* On Windows this needs a bounds safe interface or to be outside checked scope */
#ifdef isspace
#undef isspace /* Macro causes bounds issues on Linux/Mac systems */
#endif

#include <stdint.h> /* Needed for SIZE_MAX */
#include <stdlib_tainted.h>
#include <string_tainted.h>
#include <stdio_tainted.h>
#include <errno_tainted.h>
#include <math_tainted.h>
#pragma CHECKED_SCOPE push
#pragma CHECKED_SCOPE on

#include "parson.tainted.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>


/* Apparently sscanf is not implemented in some "standard" libraries, so don't use it, if you
 * don't have to. */
#define sscanf THINK_TWICE_ABOUT_USING_SSCANF

#define STARTING_CAPACITY 16
#define MAX_NESTING       1000
# define _t_errno (*__t_errno_location ())
#define FLOAT_FORMAT "%1.17g" /* do not increase precision without incresing NUM_BUF_SIZE */
#define NUM_BUF_SIZE 64 /* double printed with "%1.17g" shouldn't be longer than 25 bytes so let's be paranoid and use 64 */

#define SIZEOF_TOKEN(a)       (sizeof(a) - 1)
#define SKIP_CHAR(str)        ((*str)++)
#define SKIP_WHITESPACES(str) while (isspace((unsigned char)(**str))) { SKIP_CHAR(str); }
#define MAX(a, b)             ((a) > (b) ? (a) : (b))

#undef malloc
#undef free

#pragma TLIB_SCOPE push
#pragma TLIB_SCOPE on
#if defined(t_isnan) && defined(t_isinf)
#define IS_NUMBER_INVALID(x) (t_isnan((x)) || t_isinf((x)))
#else
#define IS_NUMBER_INVALID(x) (((x) * 0.0) != 0.0)
#endif
#pragma TLIB_SCOPE pop

_Itype_for_any(T) _TPtr<_TArray_ptr<T> (size_t s) : byte_count(s)> parson_tainted_malloc;

_Itype_for_any(T) _TPtr<void (_TArray_ptr<T> : byte_count(0))> parson_tainted_free;

#define parson_malloc(t, sz) (malloc<t>(sz))
#ifdef WASM_SBX
    #define parson_tainted_malloc(t, sz) (t_malloc<t>(sz))
#elif HEAP_SBX
    #define parson_tainted_malloc(t, sz) (hoard_malloc<t>(sz))
#endif

#define parson_free(t, p)   (free<t>(_Dynamic_bounds_cast<_Array_ptr<t>>(p, byte_count(0))))
#ifdef WASM_SBX
    #define parson_tainted_free(t, p)   (t_free<t>(_Tainted_Dynamic_bounds_cast<_TArray_ptr<t>>(p, byte_count(0))))
#elif HEAP_SBX
    #define parson_tainted_free(t, p)   (hoard_free<t>(_Tainted_Dynamic_bounds_cast<_TArray_ptr<t>>(p, byte_count(0))))
#endif

#define parson_free_unchecked(t, buf) (t_free<t>(buf))

static _Nt_array_ptr<char> parson_string_malloc(size_t sz) : count(sz)_Unchecked{
    if(sz >= SIZE_MAX)
        return NULL;
    char *p = (char*)parson_malloc(char, sz + 1);
    if (p != NULL)
        p[sz] = 0;
    return _Assume_bounds_cast<_Nt_array_ptr<char>>(p, count(sz));
}

_Tainted int parson_escape_slashes = 1;

#define IS_CONT(b) (((unsigned char)(b) & 0xC0) == 0x80) /* is utf-8 continuation byte */

/* Type definitions */
typedef _Tainted Tstruct json_value_value_t_t {
    _TPtr<char> string;
    double       number;
    _TPtr<TJSON_Object> object;
    _TPtr<TJSON_Array> array;
    int          boolean;
    int          null;
} TJSON_Value_Value;

_Tainted Tstruct json_value_t_t {
    _TPtr<TJSON_Value> parent;
    JSON_Value_Type  type;
    TJSON_Value_Value value;
};

_Tainted Tstruct json_object_t_t {
    _TPtr<TJSON_Value> wrapping_value;
    _TPtr<_TPtr<char>> names;
    _TPtr<_TPtr<TJSON_Value>> values;
    size_t       count;
    size_t       capacity;
};

_Tainted Tstruct json_array_t_t {
    _TPtr<TJSON_Value> wrapping_value;
    _TPtr<_TPtr<TJSON_Value>> items;
    size_t       count;
    size_t       capacity;
};


/* Various */

/*
 * This is a utility function
 * Safe to make a copy of this even in the tainted region
 * Need NOT make this callback as this does not access any global data
 */
_TPtr<char> tainted_parson_strndup(_TPtr<const char> string, size_t n) {
    _TPtr<char> output_string  = string_tainted_malloc(n);
    if (!output_string) {
    return NULL;
    }
    output_string[n] = '\0';
    t_strncpy(output_string,string, n);
    return output_string;
}

_TPtr<char> tainted_parson_strdup(_TPtr<const char> string) {
    size_t len = t_strlen(string);
    _TPtr<const char> str_with_len = NULL;
    str_with_len = string;
    return tainted_parson_strndup(str_with_len, len);
}

/*
 * No Checked pointers
 * Need to mirror this as it is being called from another Mirror function
 */
static int hex_char_to_int(char c) _Checked {
    if (c >= '0' && c <= '9') {
        return c - '0';
    } else if (c >= 'a' && c <= 'f') {
        return c - 'a' + 10;
    } else if (c >= 'A' && c <= 'F') {
        return c - 'A' + 10;
    }
    return -1;
}


/*
 * No need to me this to the tainted region as this is SAFE. No Real Harm
 * seen here
 */
// TODO: This function requires bounds widening logic, so is unchecked.
static int _Unchecked parse_utf16_hex(_TPtr<const char> s, unsigned int* result) {
    int x1, x2, x3, x4;
    if (s[0] == '\0' || s[1] == '\0' || s[2] == '\0' || s[3] == '\0') {
        return 0;
    }
    x1 = hex_char_to_int(s[0]);
    x2 = hex_char_to_int(s[1]);
    x3 = hex_char_to_int(s[2]);
    x4 = hex_char_to_int(s[3]);
    if (x1 == -1 || x2 == -1 || x3 == -1 || x4 == -1)  {
        return 0;
    }
    *result = (unsigned int)((x1 << 12) | (x2 << 8) | (x3 << 4) | x4);
    return 1;
}

/*
 * No use of checked pointers
 */
static int num_bytes_in_utf8_sequence(unsigned char c) {
    if (c == 0xC0 || c == 0xC1 || c > 0xF4 || IS_CONT(c)) {
        return 0;
    } else if ((c & 0x80) == 0) {    /* 0xxxxxxx */
        return 1;
    } else if ((c & 0xE0) == 0xC0) { /* 110xxxxx */
        return 2;
    } else if ((c & 0xF0) == 0xE0){ /* 1110xxxx */
        return 3;
    } else if ((c & 0xF8) == 0xF0)  { /* 11110xxx */
        return 4;
    }
    return 0; /* won't happen */
}

/*
 * Utility Function, no real harm seen here
 */
int verify_utf8_sequence(_TPtr<const unsigned char> string, _TPtr<int> len) {
    unsigned int cp = 0;
    *len = num_bytes_in_utf8_sequence(string[0]);
    // TODO: Requires bounds widening, so left unchecked.
    _Unchecked {
        if (*len == 1) {
            cp = string[0];
        } else if (*len == 2 && IS_CONT(string[1])) {
            cp = string[0] & 0x1F;
            cp = (cp << 6) | (string[1] & 0x3F);
        } else if (*len == 3 && IS_CONT(string[1]) && IS_CONT(string[2])) {
            cp = ((unsigned char)string[0]) & 0xF;
            cp = (cp << 6) | (string[1] & 0x3F);
            cp = (cp << 6) | (string[2] & 0x3F);
        } else if (*len == 4 && IS_CONT(string[1]) && IS_CONT(string[2]) && IS_CONT(string[3])) {
            cp = string[0] & 0x7;
            cp = (cp << 6) | (string[1] & 0x3F);
            cp = (cp << 6) | (string[2] & 0x3F);
            cp = (cp << 6) | (string[3] & 0x3F);
        } else {
            return 0;
        }
    }

    //    /* overlong encodings */
    if ((cp < 0x80    && *len > 1) ||
        (cp < 0x800   && *len > 2) ||
        (cp < 0x10000 && *len > 3)) {
        return 0;
    }

//    /* invalid unicode */
    if (cp > 0x10FFFF) {
        return 0;
    }

//    /* surrogate halves */
    if (cp >= 0xD800 && cp <= 0xDFFF) {
        return 0;
    }

    return 1;
}

/*
 * Utility Function, no real harm seen here
 */

static int is_valid_utf8(_TPtr<const char> string, size_t string_len) {
    _TPtr<int> len = (_TPtr<int>)parson_tainted_malloc(int, sizeof(int));
    *len = 0;
    _TPtr<int> temp = (_TPtr<int>)parson_tainted_malloc(int, 1*sizeof(int));
    _TPtr<const char> string_end = string + string_len;
    while (string < string_end) _Unchecked{
        if (!verify_utf8_sequence((_TPtr<const unsigned char>)string, len)) {
            return 0;
        }
        string += *len;
    }
    return 1;
}
/*
 * Doesn't violate checked-ness, hence safe.
 */
/*
 * Even this is NOT WORKING in the tainted region
 * But exact logic works here
 */
int is_decimal(_TPtr<const char> string, size_t length) {
if (length > 1 && string[0] == '0' && string[1] != '.') {
return 0;
}
// The following dynamic bounds cast should not be needed; length > 2 > 0
if (length > 2 && !t_strncmp(string, "-0", 2) && string[2] != '.') {
return 0;
}
while (length--) {
if (strchr("xX", string[length])) {
return 0;
}
}
return 1;
}
/*
 * Should be Tainted
 */

static _Nt_array_ptr<char> read_file(_Nt_array_ptr<const char> filename) _Unchecked{
    FILE* fp = fopen((const char*)filename, "r");
    size_t size_to_read = 0;
    size_t size_read = 0;
    long pos;

    if (!fp) {
        return NULL;
    }
    fseek((FILE *)fp, 0L, SEEK_END);
    pos = ftell((FILE *)fp);
    if (pos < 0) {
        fclose((FILE *)fp);
        return NULL;
    }
    size_to_read = pos;
    rewind((FILE *)fp);
    // TODO: compiler isn't constant folding when checking bounds, so we need the spurious (size_t) 1 here.
    _Nt_array_ptr<char> file_contents : count((size_t) 1 * size_to_read) = parson_string_malloc((size_t) 1 * size_to_read );
    if (!file_contents) {
        fclose((FILE *)fp);
        return NULL;
    }
    size_read = fread((void *)file_contents, 1, size_to_read, (FILE *)fp);
    if (size_read == 0 || ferror((FILE *)fp)) {
    fclose((FILE *)fp);

    return NULL;
    }
    fclose((FILE *)fp);
    file_contents[size_read] = '\0';
    return file_contents;
}

/*
/*
 * Must be Tainted, as called ONLY by tainted functions
 */
static void remove_comments(_TPtr<char> string, _Nt_array_ptr<const char> start_token, _Nt_array_ptr<const char> end_token) _Checked {
    int in_string = 0, escaped = 0;
    size_t i;
    char current_char;
    size_t start_token_len = strlen(start_token);
    size_t end_token_len = strlen(end_token);
    if (start_token_len == 0 || end_token_len == 0) {
        return;
    }
    while ((current_char = *string) != '\0') {
        if (current_char == '\\' && !escaped) {
            escaped = 1;
            string++;
            continue;
        } else if (current_char == '\"' && !escaped) {
            in_string = !in_string;
        // TODO: Can't prove this
        } else {
            _Unchecked {
                _TPtr<char>unchecked_string = string;
                if (!in_string && t_strncmp(unchecked_string, (const char*)start_token, start_token_len) == 0) {
                    for(i = 0; i < start_token_len; i++) {
                        unchecked_string[i] = ' ';
                    }
                    unchecked_string = unchecked_string + start_token_len;
                    _TPtr<char> ptr_ = t_strstr(unchecked_string, (const char*)end_token);
                    if (!ptr_) {
                        return;
                    }
                    for (i = 0; i < (ptr_ - unchecked_string) + end_token_len; i++) {
                        unchecked_string[i] = ' ';
                    }

                    string = ptr_ + end_token_len - 1;
                }
            } // end _Unchecked
        }
        escaped = 0;
        string++;
    }
}

static JSON_Status json_object_add(_TPtr<TJSON_Object> object, _TPtr<const char> name, _TPtr<TJSON_Value> value) {
    if (name == NULL) _Checked {
        return JSONFailure;
    }
     size_t nameLen = t_strlen(name);
    _TPtr<const char> name_with_len = NULL;
    _Unchecked {
        name_with_len = name;
    }

    return json_object_addn(object, name_with_len, nameLen, value);
}
/*
 * No Unchecked-ness in here
 * However, will accept and return Tainted pointers as it makvoid */

JSON_Status json_object_addn(_TPtr<TJSON_Object> object,
_TPtr<const char> name,
        size_t name_len,
_TPtr<TJSON_Value> value) {
size_t index = 0;
if (object == NULL || name == NULL || value == NULL) {
return JSONFailure;
}
if (json_object_getn_value(object, name, name_len) != NULL) {
return JSONFailure;
}
if (object->count >= object->capacity) {
size_t new_capacity = MAX(object->capacity * 2, STARTING_CAPACITY);
if (json_object_resize(object, new_capacity) == JSONFailure) {
return JSONFailure;
}
}
index = object->count;
object->names[index] = tainted_parson_strndup(name, name_len);
if (object->names[index] == NULL) {
return JSONFailure;
}
value->parent = json_object_get_wrapping_value(object);
object->values[index] = value;
object->count++;
return JSONSuccess;
}
/*
 * Need to Taint This
 *
 */
JSON_Status json_object_resize(_TPtr<TJSON_Object> object, size_t new_capacity) {
if ((object->names == NULL && object->values != NULL) ||
(object->names != NULL && object->values == NULL) ||
new_capacity == 0) {
return JSONFailure; /* Shouldn't happen */
}

_Unchecked {
_TPtr<_TPtr<char>> temp_names = (_TPtr<_TPtr<char>>)parson_tainted_malloc(_TPtr<char>, new_capacity * sizeof(_TPtr<char>));
if (temp_names == NULL) {
return JSONFailure;
}
_TPtr<_TPtr<TJSON_Value>> temp_values = (_TPtr<_TPtr<TJSON_Value>>)parson_tainted_malloc(TJSON_Value*, new_capacity * sizeof(_TPtr<TJSON_Value>));
if (temp_values == NULL) {
    parson_tainted_free(void, (_TArray_ptr<void>)temp_names);
return JSONFailure;
}

/* TODO: Memcpy functions below warn "cannot prove argument meets declared
* bounds" 1st arg truly won't prove unless new_capacity > object->count,
* which isn't checked here! It isn't exactly determined in the caller either.
* This sort of means we can't prove the second arg either, since we
* can't really know that count <= capacity. (Even if we could,
* the compiler would have trouble with "<")
*  This reasoning applies to both memcpy functions below. */
if (object->names != NULL && object->values != NULL && object->count > 0) {
t_memcpy(temp_names, object->names, object->count * sizeof(_TPtr<char>));
t_memcpy(temp_values, object->values, object->count * sizeof(_TPtr<TJSON_Value>));
}
parson_tainted_free(_TPtr<char>, object->names);
parson_tainted_free(_TPtr<TJSON_Value>, object->values);
// TODO: The three statements below need to be changed atomically
object->capacity = new_capacity;
object->names = (_TArray_ptr<_TPtr<char>>)temp_names;
object->values = (_TArray_ptr<_TPtr<TJSON_Value>>)temp_values;
} // end _Unchecked

return JSONSuccess;
}
/*
 * No Unchecked operation, hence no need to be tainted
 */
static _TPtr<TJSON_Value> json_object_getn_value(_TPtr<const TJSON_Object> object , _TPtr<const char> name, size_t name_len) _Unchecked{
    size_t i, name_length;
    for (i = 0; i < json_object_get_count(object); i++) {
        name_length = t_strlen(object->names[i]);
        if (name_length != name_len) {
            continue;
        }
        if (t_strncmp(object->names[i],
                      name, name_len) == 0) {
            return (object->values[i]);
        }
    }
    return NULL;
}

/*
 * No Unchecked operation, hence no need to be tainted
 *
 * However, we shall taint this as it makes more sense -->
 */
JSON_Status json_object_remove_internal(_TPtr<TJSON_Object> object, _TPtr<const char> name, int free_value) {
size_t i = 0, last_item_index = 0;
if (object == NULL || json_object_get_value(object, name) == NULL) {
return JSONFailure;
}
last_item_index = json_object_get_count(object) - 1;
for (i = 0; i < json_object_get_count(object); i++) {
if (t_strcmp(object->names[i], name) == 0) {
parson_tainted_free(char, object->names[i]);
if (free_value) {
json_value_free(object->values[i]);
}
if (i != last_item_index) { /* Replace key value pair with one from the end */
object->names[i] = object->names[last_item_index];
object->values[i] = object->values[last_item_index];
}
object->count -= 1;
return JSONSuccess;
}
}
return JSONFailure; /* No execution path should end here */
}
/*
 * We will taint this as there is a possibility of bounds overflow.
 */
JSON_Status json_object_dotremove_internal(_TPtr<TJSON_Object> object,
_TPtr<const char> name, int free_value) {
_TPtr<TJSON_Value> temp_value = NULL;
_TPtr<TJSON_Object> temp_object = NULL;
_TPtr<const char> dot_pos = (_TPtr<const char>)t_strchr(name, '.');
if (dot_pos == NULL) {
return json_object_remove_internal(object, name, free_value);
}
_TPtr<const char> before_dot = NULL;
before_dot = name;
temp_value = (_TPtr<TJSON_Value>)json_object_getn_value((_TPtr<const TJSON_Object>)object, (_TPtr<const char>)before_dot, (size_t)(dot_pos - name));
if (json_value_get_type(temp_value) != JSONObject) {
return JSONFailure;
}
temp_object = (_TPtr<TJSON_Object>)json_value_get_object(temp_value);
_TPtr<const char> after_dot = NULL;
after_dot = dot_pos + 1;
return json_object_dotremove_internal(temp_object, (_TPtr<const char>)after_dot, free_value);
}

/*
 * No Unchecked operation, hence no need to be tainted
 * How ever, only called from a tainted function
 */
void json_object_free(_TPtr<TJSON_Object> object) {
    size_t i;
    for (i = 0; i < object->count; i++) {
        parson_tainted_free(char, object->names[i]);
        json_value_free(object->values[i]);
    }
    parson_tainted_free(_TArray_ptr<char>, object->names);
    parson_tainted_free(_TArray_ptr<TJSON_Value>, object->values);
    parson_tainted_free(TJSON_Object, object);
}

/* JSON Array */
/*
 * No Unchecked operation, hence no need to be tainted
 */
_TPtr<TJSON_Array> json_array_init(_TPtr<TJSON_Value> wrapping_value) {
    _TPtr<TJSON_Array> new_array = parson_tainted_malloc(TJSON_Array, sizeof(TJSON_Array));
    if (new_array == NULL) {
    return NULL;
    }
    new_array->wrapping_value = wrapping_value;
    new_array->items = NULL;
    _Unchecked
    {
        new_array->capacity = 0;
        new_array->count = 0;
    };
    return new_array;
}

/*
 * No Unchecked operation, hence no need to be tainted
 */
static JSON_Status json_array_add(_TPtr<TJSON_Array> array, _TPtr<TJSON_Value> value) _Unchecked {
    if (array->count >= array->capacity) {
        size_t new_capacity = MAX(array->capacity * 2, STARTING_CAPACITY);
        if (json_array_resize(array, new_capacity) == JSONFailure) {
            return JSONFailure;
        }
    }
    value->parent = json_array_get_wrapping_value(array);
    array->items[array->count] = value;
    array->count++;
    return JSONSuccess;
}
/*
 * Need to Taint This
 *
 */
static JSON_Status json_array_resize(_TPtr<TJSON_Array> array, size_t new_capacity) {
    _TPtr<_TPtr<TJSON_Value>> new_items = NULL;
    if (new_capacity == 0 || new_capacity < array-> count) _Checked {
        return JSONFailure;
    }
    new_items = parson_tainted_malloc(_TPtr<TJSON_Value>, new_capacity * sizeof(_TPtr<TJSON_Value>));
    if (new_items == NULL) _Checked {
        return JSONFailure;
    }
    // We know that the capacity is bigger than the count from the earlier if statement.
    // TODO: The compiler can't do a >= comparison, so unneeded dynamic bounds cast.
    if (array->items != NULL && array->count > 0) _Checked {
        t_memcpy<_TPtr<TJSON_Value>>(new_items,
               array->items,
               array->count * sizeof(_TPtr<TJSON_Value>));
    }
    parson_tainted_free(_TPtr<TJSON_Value>, array->items);

    // TODO: This should be atomic
    _Unchecked{
    array->capacity = new_capacity;
    }
    array->items = new_items;
    return JSONSuccess;
}
/*
 * No Unchecked operation, hence no need to be tainted
 * However, makes more sense to make this function tainted
 * as it is only ever called from a tainted function
 */
_Checked static void json_array_free(_TPtr<TJSON_Array> array) _Checked {
    size_t i;
    for (i = 0; i < array->count; i++) {
        json_value_free(array->items[i]);
    }
    parson_tainted_free(_TArray_ptr<TJSON_Value>, array->items);
    parson_tainted_free(TJSON_Array, array);
}

/* JSON Value */
/*
 * No Unchecked operation,
 *
 * But Still we are tainting it, due to its relevance
 */
_TPtr<TJSON_Value> json_value_init_string_no_copy(_TPtr<char> string) {
_TPtr<TJSON_Value> new_value = (_TPtr<TJSON_Value>)parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
if (!new_value) {
return NULL;
}
new_value->parent = NULL;
new_value->type = JSONString;
new_value->value.string = string;
return new_value;
}

/* Parser */
/*
 * No Unchecked operation, hence no need to be tainted
 */
static _Checked JSON_Status skip_quotes(_Ptr<_TPtr<const char>> string) _Checked {
    if (**string != '\"') {
    return JSONFailure;
    }
    SKIP_CHAR(string);
    while (**string != '\"') {
    if (**string == '\0') {
    return JSONFailure;
    } else if (**string == '\\') {
    SKIP_CHAR(string);
    if (**string == '\0') {
    return JSONFailure;
    }
    }
    SKIP_CHAR(string);
    }
    SKIP_CHAR(string);
    return JSONSuccess;
}

// TODO: Needs_Checked  bounds-widening to be checkable
/*
 * Need to Taint This
 * Lets Taint This
 *
 */
int _Unchecked parse_utf16(_TPtr<const char>* unprocessed ,
_TPtr<char>* processed) {
    unsigned int cp, lead, trail;
    int parse_succeeded = 0;
    _TPtr<char> processed_ptr = *processed;
    _TPtr<const char> unprocessed_ptr = *unprocessed;
    unprocessed_ptr++; /* skips u */
    parse_succeeded = parse_utf16_hex(unprocessed_ptr, &cp);
    if (!parse_succeeded) {
        return JSONFailure;
    }
    if (cp < 0x80) {
        processed_ptr[0] = (char)cp; /* 0xxxxxxx */
    } else if (cp < 0x800) {
        processed_ptr[0] = ((cp >> 6) & 0x1F) | 0xC0; /* 110xxxxx */
        processed_ptr[1] = ((cp)      & 0x3F) | 0x80; /* 10xxxxxx */
        processed_ptr += 1;
    } else if (cp < 0xD800 || cp > 0xDFFF) {
        processed_ptr[0] = ((cp >> 12) & 0x0F) | 0xE0; /* 1110xxxx */
        processed_ptr[1] = ((cp >> 6)  & 0x3F) | 0x80; /* 10xxxxxx */
        processed_ptr[2] = ((cp)       & 0x3F) | 0x80; /* 10xxxxxx */
        processed_ptr += 2;
    } else if (cp >= 0xD800 && cp <= 0xDBFF) { /* lead surrogate (0xD800..0xDBFF) */
        lead = cp;
        unprocessed_ptr += 4; /* should always be within the buffer, otherwise previous sscanf would fail */
        if (*unprocessed_ptr++ != '\\' || *unprocessed_ptr++ != 'u') {
            return JSONFailure;
        }
        parse_succeeded = parse_utf16_hex(unprocessed_ptr, &trail);
        if (!parse_succeeded || trail < 0xDC00 || trail > 0xDFFF) { /* valid trail surrogate? (0xDC00..0xDFFF) */
        return JSONFailure;
        }
    cp = ((((lead - 0xD800) & 0x3FF) << 10) | ((trail - 0xDC00) & 0x3FF)) + 0x010000;
    processed_ptr[0] = (((cp >> 18) & 0x07) | 0xF0); /* 11110xxx */
    processed_ptr[1] = (((cp >> 12) & 0x3F) | 0x80); /* 10xxxxxx */
    processed_ptr[2] = (((cp >> 6)  & 0x3F) | 0x80); /* 10xxxxxx */
    processed_ptr[3] = (((cp)       & 0x3F) | 0x80); /* 10xxxxxx */
    processed_ptr += 3;
    } else { /* trail surrogate before lead surrogate */
        return JSONFailure;
    }
    unprocessed_ptr += 3;
    *processed = processed_ptr;
    *unprocessed = unprocessed_ptr;
    return JSONSuccess;
}


/* Copies and processes passed string up to supplied length.
Example: "\u006Corem ipsum" -> lorem ipsum */
static _TPtr<char> process_string(_TPtr<const char> input , size_t len) {
    _TPtr<const char> input_ptr = input;
    size_t initial_size = (len + 1) * sizeof(char);
    size_t final_size = 0;
    _TPtr<char> output  = NULL;
    output = string_tainted_malloc(initial_size);
    _TPtr<char> output_ptr = NULL;
    if (output == NULL) _Checked {
        goto error;
    }
    output_ptr = output;
    while ((*input_ptr != '\0') && (size_t)( input_ptr - input < len)) {
        if (*input_ptr == '\\') {
            input_ptr++;
            switch (*input_ptr) {
                case '\"': *output_ptr = '\"'; break;
                case '\\': *output_ptr = '\\'; break;
                case '/':  *output_ptr = '/';  break;
                case 'b':  *output_ptr = '\b'; break;
                case 'f':  *output_ptr = '\f'; break;
                case 'n':  *output_ptr = '\n'; break;
                case 'r':  *output_ptr = '\r'; break;
                case 't':  *output_ptr = '\t'; break;
                case 'u': /*HACK for C3*/
                    _Unchecked {
                        _TPtr<const char> input_tmp =  input_ptr;
                        _TPtr<char> output_tmp = output_ptr;
                        _Unchecked{
                        if (parse_utf16(
                                &input_tmp, &output_tmp) == JSONFailure) {
                            goto error;
                        }
                        };
                        input_ptr = input_tmp;
                        output_ptr = output_tmp;
                        break;
                    }
                default:
                    goto error;
            }
        } else if ((unsigned char)*input_ptr < 0x20) {
            goto error; /* 0x00-0x19 are invalid characters for json string (http://www.ietf.org/rfc/rfc4627.txt) */
        } else {
            *output_ptr = *input_ptr;
        }
        output_ptr++;
        input_ptr++;
    }
    *output_ptr = '\0';
    /* resize to new length */
    final_size = (size_t)(output_ptr-output) + 1;
    /* todo: don't resize if final_size == initial_size */
    _TPtr<char> resized_output = string_tainted_malloc(final_size);
    if (resized_output == NULL) _Checked {
        goto error;
    }
    t_memcpy<char>(resized_output, output, final_size);
    parson_tainted_free(char, output);
    return resized_output;
error:
    parson_tainted_free(char, output);
    return NULL;
}

/* Return processed contents of a string between quotes and
   skips passed argument to a matching quote. */
/*
 * need to be tainted
 * process string is exposed as a callback -->
 */

_TPtr<char> get_quoted_string(_Ptr<_TPtr<const char>> string) {
    _TPtr<const char> string_start = *string;
    size_t string_len = 0;
    JSON_Status status = skip_quotes(string);
    if (status != JSONSuccess) {
        return NULL;
    }
    string_len = *string - string_start - 2; /* length without quotes */
    // TODO: We can't figure this out dynamically
    _TPtr<const char> one_past_start = NULL;
    _Unchecked {
        one_past_start = string_start + 1;
    }
    return (_TPtr<char>)process_string(one_past_start, string_len);
}
/*
 * No Unchecked operation, hence no need to be tainted
 * This Shall be made _Callback
 */
_TPtr<TJSON_Value> parse_value(_Ptr<_TPtr<const char>> string, size_t nesting) {
    if (nesting > MAX_NESTING) {
        return NULL;
    }
    SKIP_WHITESPACES(string);
    /*
     * We avoid marshalling here because we know for sure that
     * we are not writing anything into it
     */
    switch (**string) {
        case '{':
            return parse_object_value(string, nesting + 1);
        case '[':
            return parse_array_value(string, nesting + 1);
        case '\"':
            return parse_string_value(string);
        case 'f': case 't':
            return parse_boolean_value(string);
        case '-':
        case '0': case '1': case '2': case '3': case '4':
        case '5': case '6': case '7': case '8': case '9':
            return parse_number_value(string);
        case 'n':
            return parse_null_value(string);
        default:
            return NULL;
    }
}
/*
 * No Unchecked operation, hence no need to be tainted
 * However, let it still accepts tainted arguments
 */
static _TPtr<TJSON_Value>
        parse_object_value(_Ptr<_TPtr<const char>> str_cpy, size_t nesting) {
    _TPtr<TJSON_Value> output_value = NULL;
    _TPtr<TJSON_Value> new_value = NULL;
    _TPtr<TJSON_Object> output_object = NULL;
    _TPtr<char> new_key = NULL;
    /*
     * Checked function
     * But accepts/returns tainted arguments
     */
    output_value = json_value_init_object();
    if (output_value == NULL) {
        return NULL;
    }
    if (**str_cpy != '{') {
        json_value_free(output_value);
        return NULL;
    }
    /*
     * Checked function
     */
    output_object = json_value_get_object(output_value);
    SKIP_CHAR(str_cpy);
    SKIP_WHITESPACES(str_cpy);
    if (**str_cpy == '}') _Checked { /* empty object */
        SKIP_CHAR(str_cpy);
        return output_value;
    }
    while (**str_cpy != '\0') {
        new_key = get_quoted_string(str_cpy);
        if (new_key == NULL) {
            json_value_free(output_value);
            return NULL;
        }
        SKIP_WHITESPACES(str_cpy);
        if (**str_cpy != ':') {
            parson_tainted_free(char, new_key);
            json_value_free(output_value);
            return NULL;
        }
        SKIP_CHAR(str_cpy);
        new_value = parse_value(str_cpy, nesting);
        if (new_value == NULL) {
            parson_tainted_free(char, new_key);
            json_value_free(output_value);
            return NULL;
        }
        if (json_object_add(output_object, new_key, new_value) == JSONFailure) {
            parson_tainted_free(char, new_key);
            json_value_free(new_value);
            json_value_free(output_value);
            return NULL;
        }
        parson_tainted_free(char, new_key);
        SKIP_WHITESPACES(str_cpy);
        if (**str_cpy != ',') _Checked {
            break;
        }
        SKIP_CHAR(str_cpy);
        SKIP_WHITESPACES(str_cpy);
    }
    SKIP_WHITESPACES(str_cpy);
    if (**str_cpy != '}' || /* Trim object after parsing is over */
        json_object_resize(output_object, json_object_get_count(output_object)) == JSONFailure) {
            json_value_free(output_value);
            return NULL;
    }
    SKIP_CHAR(str_cpy);
    return output_value;
}
/*
 * No Unchecked operation, hence no need to be tainted, but lets make it access tainted pointers
 *
 */
static _TPtr<TJSON_Value> parse_array_value(_Ptr<_TPtr<const char>> str_cpy, size_t nesting) {
    _TPtr<TJSON_Value> output_value = NULL;
    _TPtr<TJSON_Value> new_array_value = NULL;
    _TPtr<TJSON_Array> output_array = NULL;
    output_value = json_value_init_array();
    if (output_value == NULL) {
        return NULL;
    }
    if (**str_cpy != '[') {
        json_value_free(output_value);
        return NULL;
    }
    output_array = json_value_get_array(output_value);
    SKIP_CHAR(str_cpy);
    SKIP_WHITESPACES(str_cpy);
    if (**str_cpy == ']'){ /* empty array */
        SKIP_CHAR(str_cpy);
        return output_value;
    }
    while (**str_cpy != '\0') {
        if(**str_cpy == ',')
        {
            int i = 10;
        }
        new_array_value = parse_value(str_cpy, nesting);
        if (new_array_value == NULL) {
            json_value_free(output_value);
            return NULL;
        }
        if (json_array_add(output_array, new_array_value) == JSONFailure) {
            json_value_free(new_array_value);
            json_value_free(output_value);
            return NULL;
        }
        SKIP_WHITESPACES(str_cpy);
        if (**str_cpy != ',') _Checked {
            break;
        }
        SKIP_CHAR(str_cpy);
        SKIP_WHITESPACES(str_cpy);
    }
    SKIP_WHITESPACES(str_cpy);
    if (**str_cpy != ']' || /* Trim array after parsing is over */
     json_array_resize(output_array, json_array_get_count(output_array)) == JSONFailure) {
            json_value_free(output_value);
            return NULL;
    }
    SKIP_CHAR(str_cpy);
    return output_value;
}

_TPtr<TJSON_Value> parse_string_value(_Ptr<_TPtr<const char>> str_cpy) {
    _TPtr<TJSON_Value> value = NULL;
    _TPtr<char> new_string = get_quoted_string(str_cpy);
    if (new_string == NULL) {
        return NULL;
    }
    value = json_value_init_string_no_copy(new_string);
    if (value == NULL) {
        parson_tainted_free(char, new_string);
        return NULL;
    }
    return value;
}
/*
/*
 * No Unchecked operation, hence no need to be tainted
 * Id_Checked eally we could have this as a mirror function, but I am m_Checked aking it tainted,
 * as it will only ever be called from a Callback function with tainted_Checked  values
 */
_TPtr<TJSON_Value> parse_boolean_value(_Ptr<_TPtr<const char>> str_cpy) {
    size_t true_token_size = SIZEOF_TOKEN("true");
    size_t false_token_size = SIZEOF_TOKEN("false");
    if (t_strncmp("true", *str_cpy, true_token_size) == 0) {
        *str_cpy += true_token_size;
        return json_value_init_boolean(1);
    } else if (t_strncmp("false", *str_cpy, false_token_size) == 0) {
        *str_cpy += false_token_size;
        return json_value_init_boolean(0);
    }
    return NULL;
}

/* T_Checked ODO: The way this function deals with end is not well supported by the compiler.
 * No initialization, needing to take the address, we_Checked ird counting.
 * Leaving this function unchecked for now as a result. */
/*
 * No Unchecked_Checked  operation, hence no need to be tainted
 */
_Unchecked _TPtr<TJSON_Value> parse_number_value(_Ptr<_TPtr<const char>> str_cpy) {
    _TPtr<char> end = NULL;
    double number = 0;
    errno = 0;
    number = t_strtod(*str_cpy, &end);
    if (errno || !is_decimal(*str_cpy, (size_t)(end - *str_cpy))) {
        return NULL;
    }
    *str_cpy = end;
    return json_value_init_number(number);
}
/*
 * No Unchecked operation, hence no need _Checked to be tainted
 */
static _TPtr<TJSON_Value> parse_null_value(_Ptr<_TPtr<const char>> str_cpy) _Unchecked{
    size_t token_size = SIZEOF_TOKEN("null");
    if (t_strncmp("null", *str_cpy, token_size) == 0) {
        *str_cpy += token_size;
        return json_value_init_null();
    }
    return NULL;
}

/* Serialization */

#define APPEND_STRING(str) do { written = append_string(buf, (str), buf_start, buf_len);\
                                if (written < 0) { return -1; }\
                                if (buf != NULL) { buf += written; }\
                                written_total += written; } while(0)

#define APPEND_INDENT(level) do { written = append_indent(buf, (level), buf_start, buf_len);\
                                  if (written < 0) { return -1; }\
                                  if (buf != NULL) { buf += written; }\
                                  written_total += written; } while(0)
/*
 * TODO: NO IDEA?? TAINTED OR NOT??
 */
int json_serialize_to_buffer_r(_TPtr<const TJSON_Value> value,
                                               _TPtr<char> buf,
    int level,
    int is_pretty,
   _TPtr<char> num_buf,
    _TPtr<char> buf_start,
    size_t buf_len)
    {
        _TPtr<const char> key = NULL;
        _TPtr<const char> string = NULL;
        _TPtr<TJSON_Value> temp_value = NULL;
        _TPtr<TJSON_Array> array = NULL;
        _TPtr<TJSON_Object> object = NULL;

        size_t i = 0, count = 0;
        double num = 0.0;
        int written = -1, written_total = 0;

        switch (json_value_get_type(value)) {
            case JSONArray:

            array = json_value_get_array(value);
            count = json_array_get_count(array);
APPEND_STRING("[");
if (count > 0 && is_pretty) {
APPEND_STRING("\n");
}
for (i = 0; i < count; i++) {
if (is_pretty) {
APPEND_INDENT(level+1);
}
temp_value = json_array_get_value(array, i);
written = json_serialize_to_buffer_r(temp_value, buf, level+1, is_pretty, num_buf, buf_start, buf_len);
if (written < 0) {
return -1;
}
if (buf != NULL) {
buf += written;
}
written_total += written;
if (i < (count - 1)) {
APPEND_STRING(",");
}
if (is_pretty) {
APPEND_STRING("\n");
}
}
if (count > 0 && is_pretty) {
APPEND_INDENT(level);
}
APPEND_STRING("]");
return written_total;
case JSONObject:
object = json_value_get_object(value);
count  = json_object_get_count(object);
APPEND_STRING("{");
if (count > 0 && is_pretty) {
APPEND_STRING("\n");
}
for (i = 0; i < count; i++) {
key = json_object_get_name(object, i);
if (key == NULL) {
return -1;
}
if (is_pretty) {
APPEND_INDENT(level+1);
}
written = json_serialize_string(key,buf,buf_start, buf_len);
if (written < 0) {
return -1;
}
if (buf != NULL) {
buf += written;
}
written_total += written;
APPEND_STRING(":");
if (is_pretty) {
APPEND_STRING(" ");
}
temp_value = json_object_get_value(object,key);
written = json_serialize_to_buffer_r(temp_value, buf, level+1, is_pretty, num_buf, buf_start, buf_len);
if (written < 0) {
return -1;
}
if (buf != NULL) {
buf += written;
}
written_total += written;
if (i < (count - 1)) {
APPEND_STRING(",");
}
if (is_pretty) {
APPEND_STRING("\n");
}
}
if (count > 0 && is_pretty) {
APPEND_INDENT(level);
}
APPEND_STRING("}");
return written_total;
case JSONString:
string = json_value_get_string(value);
if (string == NULL) {
return -1;
}
written = json_serialize_string(string, buf, buf_start, buf_len);
if (written < 0) {
return -1;
}
if (buf != NULL) {
buf += written;
}
written_total += written;
return written_total;
case JSONBoolean:
if (json_value_get_boolean(value)) {
APPEND_STRING("true");
} else {
APPEND_STRING("false");
}
return written_total;
case JSONNumber:
num = json_value_get_number(value);
_Unchecked {
if (buf != NULL) {
/*
 * DO NOT PERFORM CASTS INSIDE THE CHECKCBOX TYPE CASTS
 * C4 CANT DETONATE
 */
_TPtr<char> temp_buf = (_TPtr<char>)buf;
num_buf = temp_buf;
}
written = t_sprintf(num_buf, FLOAT_FORMAT, num);
}
if (written < 0) {
return -1;
}
if (buf != NULL) {
buf += written;
}
written_total += written;
return written_total;
case JSONNull:
APPEND_STRING("null");
return written_total;
case JSONError:
return -1;
default:
return -1;
}
}
/*
 *_Checked  TODO: Nothing really harmful here
 */
int json_serialize_string(_TPtr<const char> str_unbounded,
                                          _TPtr<char> buf,
_TPtr<char> buf_start,
        size_t buf_len) {
size_t i = 0, len = t_strlen(str_unbounded);
_TPtr<const char> string = NULL;
_Unchecked {
string = str_unbounded;
}
char c = '\0';
int written = -1, written_total = 0;
APPEND_STRING("\"");
for (i = 0; i < len; i++) {
c = string[i];
switch (c) {
case '\"': APPEND_STRING("\\\""); break;
case '\\': APPEND_STRING("\\\\"); break;
case '\b': APPEND_STRING("\\b"); break;
case '\f': APPEND_STRING("\\f"); break;
case '\n': APPEND_STRING("\\n"); break;
case '\r': APPEND_STRING("\\r"); break;
case '\t': APPEND_STRING("\\t"); break;
case '\x00': APPEND_STRING("\\u0000"); break;
case '\x01': APPEND_STRING("\\u0001"); break;
case '\x02': APPEND_STRING("\\u0002"); break;
case '\x03': APPEND_STRING("\\u0003"); break;
case '\x04': APPEND_STRING("\\u0004"); break;
case '\x05': APPEND_STRING("\\u0005"); break;
case '\x06': APPEND_STRING("\\u0006"); break;
case '\x07': APPEND_STRING("\\u0007"); break;
case '\x0b': APPEND_STRING("\\u000b"); break;
case '\x0e': APPEND_STRING("\\u000e"); break;
case '\x0f': APPEND_STRING("\\u000f"); break;
case '\x10': APPEND_STRING("\\u0010"); break;
case '\x11': APPEND_STRING("\\u0011"); break;
case '\x12': APPEND_STRING("\\u0012"); break;
case '\x13': APPEND_STRING("\\u0013"); break;
case '\x14': APPEND_STRING("\\u0014"); break;
case '\x15': APPEND_STRING("\\u0015"); break;
case '\x16': APPEND_STRING("\\u0016"); break;
case '\x17': APPEND_STRING("\\u0017"); break;
case '\x18': APPEND_STRING("\\u0018"); break;
case '\x19': APPEND_STRING("\\u0019"); break;
case '\x1a': APPEND_STRING("\\u001a"); break;
case '\x1b': APPEND_STRING("\\u001b"); break;
case '\x1c': APPEND_STRING("\\u001c"); break;
case '\x1d': APPEND_STRING("\\u001d"); break;
case '\x1e': APPEND_STRING("\\u001e"); break;
case '\x1f': APPEND_STRING("\\u001f"); break;
case '/':
if (parson_escape_slashes) {
APPEND_STRING("\\/");  /* to make json embeddable in xml\/html */
} else {
APPEND_STRING("/");
}
break;
default:
if (buf != NULL) {
buf[0] = c;
buf += 1;
}
written_total += 1;
break;
}
}
APPEND_STRING("\"");
return written_total;
}

/*
 * No Unchecked-ness, so no need to perform any tainting
 */
static int append_indent(_TPtr<char> buf ,
                         int level,
                         _TPtr<char> buf_start,
                         size_t buf_len) _Checked {
    int i;
    int written = -1, written_total = 0;
    for (i = 0; i < level; i++) _Unchecked {
      APPEND_STRING("    ");
    }
    return written_total;
}
/*
 * Very often used utility function.
 * I do not see a real danger here.
 */
_Unchecked static int append_string(_TPtr<char> buf,
const char* string : itype(_Nt_array_ptr<const char>),
                         _TPtr<char> buf_start,
                         size_t buf_len) {
    size_t len = strlen(string);
    if (buf == NULL) {
        return (int) len;
    }

    // TODO: This does not go through properly if bounded string is a const char, as it should be
    _Array_ptr<char> boundedString : count(len) = NULL;
    _Unchecked {
        boundedString = _Assume_bounds_cast<_Array_ptr<char>>(string, count(len));
    }

    _TPtr<char> tainted_bounded_string = string_tainted_malloc(len*sizeof(char));
    t_strncpy(tainted_bounded_string, string, len);
    _Dynamic_check(buf >= buf_start && buf + len < buf_start + buf_len);
    _TPtr<char> buf_tmp = buf;
    t_memcpy<char>(buf_tmp, tainted_bounded_string,
                 len);
    buf[len] = '\0';
    return len;
}
#undef APPEND_STRING
#undef APPEND_INDENT

/* Parser API */
/*
 * This API is exposed to the public and reads the payload input through from the user
 * Hence this function is best suggested to be tainted
 */
_TPtr<TJSON_Value> json_parse_file(_Nt_array_ptr<const char>filename) {
    _Nt_array_ptr<char> file_contents = read_file(filename);
    _TPtr<TJSON_Value> output_value = NULL;
    if (file_contents == NULL) {
        return NULL;
    }

    _TPtr<char> Tainted_file_contents = NULL;
    int len = strlen(file_contents);
    Tainted_file_contents = string_tainted_malloc(len*sizeof(char));
    t_strcpy(Tainted_file_contents, file_contents);
    output_value = json_parse_string(Tainted_file_contents);
    parson_tainted_free(char, Tainted_file_contents);
    parson_free(char, file_contents);
    return output_value;
}
/*
 * This API is exposed to the public and reads the payload input through from the user
 * Hence this function is best suggested to be tainted
 */

_TPtr<TJSON_Value> json_parse_file_with_comments(_Nt_array_ptr<const char> filename) {
    _Nt_array_ptr<char> file_contents = read_file(filename);
    _TPtr<TJSON_Value> output_value = NULL;
    if (file_contents == NULL) {
        return NULL;
    }
    _TPtr<char> Tainted_file_contents = NULL;
    int len = strlen(file_contents);
    Tainted_file_contents = string_tainted_malloc(len *sizeof(char));
    t_strcpy(Tainted_file_contents, file_contents);
    output_value = json_parse_string_with_comments(Tainted_file_contents);
    parson_tainted_free(char, Tainted_file_contents);
    parson_free(char, file_contents);
    return output_value;
}
/*
 * This API is exposed to the public and reads the payload input through from the user
 * Hence this function is best suggested to be tainted
 */
/*
 * parse_value is callback, hence its best suggested to be passed as an argument
 */
_TPtr<TJSON_Value> json_parse_string(_TPtr<const char> string) {
    if (string == NULL) {
        return NULL;
    }
      _Unchecked {
//    const char* tmp = (const char*)string;
    if (string[0] == '\xEF' && string[1] == '\xBB' && string[2] == '\xBF') _Checked {
        string = string + 3; /* Support for UTF-8 BOM */
    }
    return parse_value(&string, 0);
   }
}
/*
 * This API is exposed to the public and reads the payload input through from the user
 * Hence this function is best suggested to be tainted
 */

_TPtr<TJSON_Value> json_parse_string_with_comments(_TPtr<const char> string) {
    _TPtr<TJSON_Value> result = NULL;
    _TPtr<char> string_mutable_copy = (_TPtr<char>)tainted_parson_strdup(string);
    if (string_mutable_copy == NULL) {
        return NULL;
    }
    remove_comments(string_mutable_copy, "/*", "*/");
    remove_comments(string_mutable_copy, "//", "\n");
    _Unchecked {
        _TPtr<const char> string_mutable_copy_ptr[1] = { NULL };
        string_mutable_copy_ptr[0] = string_mutable_copy;
        result = (_TPtr<TJSON_Value>)parse_value(string_mutable_copy_ptr, 0);
        parson_tainted_free(char, string_mutable_copy);
        return result;
  }
}

/* JSON Object API */
/*
 * Just using an already fetched value. Hence, I see no real harm here
 */
_TPtr<TJSON_Value> json_object_get_value  (_TPtr<const TJSON_Object> object, _TPtr<const char> name) {
    if (object == NULL || name == NULL) {
        return NULL;
    }
    size_t nameLen = t_strlen(name);
    _TPtr<const char> name_with_len = NULL;
    _Unchecked {
        name_with_len = name;
    }
    return json_object_getn_value(object, name_with_len, nameLen);
}
/*
 * No uncheckedness.
 */
_TPtr<const char> json_object_get_string (_TPtr<const TJSON_Object> object, _TPtr<const char> name) _Checked {
    return json_value_get_string(json_object_get_value(object, name));
}
/*
 * No uncheckedness.
 */
double        json_object_get_number (_TPtr<const TJSON_Object> object, _TPtr<const char> name) _Checked {
    return json_value_get_number(json_object_get_value(object, name));
}
/*
 * No uncheckedness.
 */
_TPtr<TJSON_Object> json_object_get_object (_TPtr<const TJSON_Object> object , _TPtr<const char> name) _Checked {
    return json_value_get_object(json_object_get_value(object, name));
}
/*
 * No uncheckedness.
 */
_TPtr<TJSON_Array> json_object_get_array  (_TPtr<const TJSON_Object> object, _TPtr<const char> name) _Checked {
    return json_value_get_array(json_object_get_value(object, name));
}
/*
 * No uncheckedness.
 */
int json_object_get_boolean(_TPtr<const TJSON_Object> object, _TPtr<const char> name) _Checked {
    return json_value_get_boolean(json_object_get_value(object, name));
}
/*
 * Just using an already fetched value. Hence, I see no real harm here
 */
_TPtr<TJSON_Value> json_object_dotget_value  (_TPtr<const TJSON_Object> object , _TPtr<const char> name) {
    _TPtr<const char> dot_position = t_strchr(name, '.');
    if (!dot_position) _Checked {
        return json_object_get_value(object, name);
    }
    _TPtr<const char> after_dot = NULL;
    _Unchecked {
        after_dot = name;
    }
    object = json_value_get_object(json_object_getn_value(object, after_dot, (size_t)(dot_position - name)));
    _TPtr<const char> one_past_dot = NULL;
    _Unchecked {
        one_past_dot = dot_position + 1;
    }
    return json_object_dotget_value(object, one_past_dot);
}

_TPtr<const char> json_object_dotget_string(_TPtr<const TJSON_Object> object, _TPtr<const char> name) _Checked {
    return json_value_get_string(json_object_dotget_value(object, name));
}

double json_object_dotget_number (_TPtr<const TJSON_Object> object, _TPtr<const char> name) _Checked {
    return json_value_get_number(json_object_dotget_value(object, name));
}

_TPtr<TJSON_Object> json_object_dotget_object(_TPtr<const TJSON_Object> object , _TPtr<const char> name) _Checked {
    return json_value_get_object(json_object_dotget_value(object, name));
}

_TPtr<TJSON_Array> json_object_dotget_array  (_TPtr<const TJSON_Object> object, _TPtr<const char> name ) _Checked {
    return json_value_get_array(json_object_dotget_value(object, name));
}

int json_object_dotget_boolean(_TPtr<const TJSON_Object> object , _TPtr<const char>name) _Checked {
    return json_value_get_boolean(json_object_dotget_value(object, name));
}

size_t json_object_get_count   (_TPtr<const TJSON_Object>object)_Checked {
    return object ? object->count : 0;
}

_TPtr<const char> json_object_get_name    (_TPtr<const TJSON_Object> object, size_t index) _Unchecked{
    if (object == NULL || index >= json_object_get_count(object)) {
        return NULL;
    }
    //int str_len = t_strlen(object->names[index]);
    //return _Tainted_Assume_bounds_cast<_TPtr<const char>>(object->names[index], count(str_len));
    return object->names[index];
}

_TPtr<TJSON_Value> json_object_get_value_at(_TPtr<const TJSON_Object> object, size_t index){
    if (object == NULL || index >= json_object_get_count(object)) {
        return NULL;
    }
    return _Tainted_Dynamic_bounds_cast<_TPtr<TJSON_Value>>(
        object->values[index], count(object->capacity));
}

_TPtr<TJSON_Value> json_object_get_wrapping_value(_TPtr<const TJSON_Object> object) _Checked {
    return object->wrapping_value;
}

int json_object_has_value (_TPtr<const TJSON_Object>object , _TPtr<const char> name) _Checked {
    return json_object_get_value(object, name) != NULL;
}

int json_object_has_value_of_type(_TPtr<const TJSON_Object>object, _TPtr<const char> name , JSON_Value_Type type) {
    _TPtr<TJSON_Value> val = json_object_get_value(object, name);
    return val != NULL && json_value_get_type(val) == type;
}

int json_object_dothas_value (_TPtr<const TJSON_Object> object, _TPtr<const char> name) _Checked {
    return json_object_dotget_value(object, name) != NULL;
}

int json_object_dothas_value_of_type(_TPtr<const TJSON_Object> object, _TPtr<const char> name, JSON_Value_Type type) {
    _TPtr<TJSON_Value> val = json_object_dotget_value(object, name);
    return val != NULL && json_value_get_type(val) == type;
}

/* JSON Array API */
_TPtr<TJSON_Value> json_array_get_value  (_TPtr<const TJSON_Array> array, size_t index)
{
    if (array == NULL || index >= json_array_get_count(array)) {
        return NULL;
    }
    return array->items[index];
}

_TPtr<const char> json_array_get_string (_TPtr<const TJSON_Array> array, size_t index) _Checked {
    return json_value_get_string(json_array_get_value(array, index));
}

double        json_array_get_number (_TPtr<const TJSON_Array>array, size_t index) _Checked {
    return json_value_get_number(json_array_get_value(array, index));
}

_TPtr<TJSON_Object>  json_array_get_object (_TPtr<const TJSON_Array> array, size_t index) _Checked {
    return json_value_get_object(json_array_get_value(array, index));
}

_TPtr<TJSON_Array> json_array_get_array  (_TPtr<const TJSON_Array> array , size_t index) _Checked {
    return json_value_get_array(json_array_get_value(array, index));
}

int json_array_get_boolean(_TPtr<const TJSON_Array>array, size_t index)_Checked {
    return json_value_get_boolean(json_array_get_value(array, index));
}

size_t json_array_get_count  (_TPtr<const TJSON_Array> array) _Checked {
    return array ? array->count : 0;
}

_TPtr<TJSON_Value> json_array_get_wrapping_value(_TPtr<const TJSON_Array>array) _Checked {
    return array->wrapping_value;
}

/* JSON Value API */
JSON_Value_Type json_value_get_type   (_TPtr<const TJSON_Value> value)_Checked {
    return value ? value->type : JSONError;
}

_TPtr<TJSON_Object> json_value_get_object(_TPtr<const TJSON_Value> value) _Checked {
    return json_value_get_type(value) == JSONObject ? value->value.object : NULL;
}

_TPtr<TJSON_Array> json_value_get_array  (_TPtr<const TJSON_Value> value) _Checked {
    return json_value_get_type(value) == JSONArray ? value->value.array : NULL;
}

_TPtr<const char>json_value_get_string (_TPtr<const TJSON_Value> value) _Checked {
    return json_value_get_type(value) == JSONString ? value->value.string : NULL;
}

double json_value_get_number (_TPtr<const TJSON_Value> value) _Checked {
    return json_value_get_type(value) == JSONNumber ? value->value.number : 0;
}

int             json_value_get_boolean(_TPtr<const TJSON_Value> value)_Checked {
    return json_value_get_type(value) == JSONBoolean ? value->value.boolean : -1;
}

_TPtr<TJSON_Value>   json_value_get_parent (_TPtr<const TJSON_Value> value) {
    return value ? value->parent : NULL;
}
/*
 * No Uncheckedness
 * But we will taint this as all you are basically free-ing tainted
 * pointers. Makes more sense
 */
void json_value_free(_TPtr<TJSON_Value> value) _Checked {
    switch (json_value_get_type(value)) {
        case JSONObject:
            json_object_free(value->value.object);
            break;
        case JSONString:
            parson_tainted_free(_TPtr<char>, value->value.string);
            break;
        case JSONArray:
            json_array_free(value->value.array);
            break;
        default:
            break;
    }
    //causing crash
    //parson_tainted_free(TJSON_Value, value);
}
/*
 * No Uncheckedness
 */
_TPtr<TJSON_Object> json_object_init(_TPtr<TJSON_Value> wrapping_value_ip) {
_TPtr<TJSON_Object> new_obj = parson_tainted_malloc(TJSON_Object, sizeof(TJSON_Object));
_TPtr<int> g = parson_tainted_malloc(int, sizeof(int));
*g = 10;
if (new_obj == NULL) {
return NULL;
}
new_obj->wrapping_value = wrapping_value_ip;
new_obj->names = NULL;
new_obj->values = NULL;
new_obj->capacity = 0;
new_obj->count = 0;
return new_obj;
}

_TPtr<TJSON_Value> json_value_init_object (void) {
    _TPtr<TJSON_Value> new_value = parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONObject;
    new_value->value.object = json_object_init(new_value);
    if (!new_value->value.object) {
        parson_tainted_free(TJSON_Value, new_value);
        return NULL;
    }
    return new_value;
}
/*
/*
 * No Uncheckedness
 */
_TPtr<TJSON_Value> json_value_init_array  (void) {
    _TPtr<TJSON_Value> new_value = parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONArray;
    new_value->value.array = json_array_init(new_value);
    if (!new_value->value.array) {
        parson_tainted_free(TJSON_Value, new_value);
        return NULL;
    }
    return new_value;
}

/*
 * Moving to Tainted Region
 */
_TPtr<TJSON_Value> json_value_init_string (_TPtr<const char> string) {
    _TPtr<char> copy = NULL;
    _TPtr<TJSON_Value> value = NULL;
    size_t string_len = 0;
    if (string == NULL) {
        return NULL;
    }
    string_len = t_strlen(string);
    _TPtr<const char> str_with_len = NULL;
    _Unchecked {
        str_with_len = string;
    }
    if (!is_valid_utf8(str_with_len, string_len)) {
        return NULL;
    }
    copy = tainted_parson_strndup(str_with_len, string_len);
    if (copy == NULL) {
        return NULL;
    }
    value = json_value_init_string_no_copy(copy);
    if (value == NULL) _Checked {
        parson_tainted_free(char, copy);
    }
    return value;
}
/*
 * No Uncheckedness
 */
_TPtr<TJSON_Value> json_value_init_number (double number) {
    _TPtr<TJSON_Value> new_value =  parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
    if (IS_NUMBER_INVALID(number)) {
        return NULL;
    }
    if (new_value == NULL) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONNumber;
    new_value->value.number = number;
    return new_value;
}
/*
 * No Uncheckedness
 */
_TPtr<TJSON_Value> json_value_init_boolean(int boolean){
    _TPtr<TJSON_Value> new_value = parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONBoolean;
    new_value->value.boolean = boolean ? 1 : 0;
    return new_value;
}
/*
 * No Uncheckedness
 */
_TPtr<TJSON_Value> json_value_init_null   (void) {
    _TPtr<TJSON_Value> new_value = parson_tainted_malloc(TJSON_Value, sizeof(TJSON_Value));
    if (!new_value) {
        return NULL;
    }
    new_value->parent = NULL;
    new_value->type = JSONNull;
    return new_value;
}
/*
 * No Uncheckedness
 */
_TPtr<TJSON_Value> json_value_deep_copy   (_TPtr<const TJSON_Value> value) {
    size_t i = 0;
    _TPtr<TJSON_Value> return_value = NULL;
    _TPtr<TJSON_Value> temp_value_copy = NULL;
    _TPtr<TJSON_Value> temp_value = NULL;
    _TPtr<const char> temp_string = NULL;
    _TPtr<const char> temp_key = NULL;
    _TPtr<char> temp_string_copy = NULL;
    _TPtr<TJSON_Array> temp_array = NULL;
    _TPtr<TJSON_Array> temp_array_copy = NULL;
    _TPtr<TJSON_Object> temp_object = NULL;
    _TPtr<TJSON_Object> temp_object_copy = NULL;

    switch (json_value_get_type(value)) {
        case JSONArray:
            temp_array = json_value_get_array(value);
            return_value = json_value_init_array();
            if (return_value == NULL) {
                return NULL;
            }
            temp_array_copy = json_value_get_array(return_value);
            for (i = 0; i < json_array_get_count(temp_array); i++) {
                temp_value = json_array_get_value(temp_array, i);
                temp_value_copy = json_value_deep_copy(temp_value);
                if (temp_value_copy == NULL) {
                    json_value_free(return_value);
                    return NULL;
                }
                if (json_array_add(temp_array_copy, temp_value_copy) == JSONFailure) {
                    json_value_free(return_value);
                    json_value_free(temp_value_copy);
                    return NULL;
                }
            }
            return return_value;
        case JSONObject:
            temp_object = json_value_get_object(value);
            return_value = json_value_init_object();
            if (return_value == NULL) {
                return NULL;
            }
            temp_object_copy = json_value_get_object(return_value);
            for (i = 0; i < json_object_get_count(temp_object); i++) {
                temp_key = json_object_get_name(temp_object, i);
                temp_value = json_object_get_value(temp_object, temp_key);
                temp_value_copy = json_value_deep_copy(temp_value);
                if (temp_value_copy == NULL) {
                    json_value_free(return_value);
                    return NULL;
                }
                if (json_object_add(temp_object_copy, temp_key, temp_value_copy) == JSONFailure) {
                    json_value_free(return_value);
                    json_value_free(temp_value_copy);
                    return NULL;
                }
            }
            return return_value;
        case JSONBoolean:
            return json_value_init_boolean(json_value_get_boolean(value));
        case JSONNumber:
            return json_value_init_number(json_value_get_number(value));
        case JSONString:
            temp_string = (_TPtr<const char>)json_value_get_string(value);
            if (temp_string == NULL) {
                return NULL;
            }
            temp_string_copy = tainted_parson_strdup(temp_string);
            if (temp_string_copy == NULL) {
                return NULL;
            }
            return_value = json_value_init_string_no_copy(temp_string_copy);
            if (return_value == NULL) _Checked {
                parson_tainted_free(char, temp_string_copy);
            }
            return return_value;
        case JSONNull:
            return json_value_init_null();
        case JSONError:
            return NULL;
        default:
            return NULL;
    }
}
/*
 * No Uncheckedness
 */
size_t      json_serialization_size(_TPtr<const TJSON_Value> value) {
    //char num_buf _Nt_checked[NUM_BUF_SIZE]; /* recursively allocating buffer on stack is a bad idea, so done statically */
    /*
     * Since stack does not offer a seperate partition for tainted memory
     * num_buf has to be a tainted pointer into the tainted region
     */
    _TPtr<char> num_buf= string_tainted_malloc(NUM_BUF_SIZE);
    /*
    * Tainted Marshalling Needed here
    */
    int res = json_serialize_to_buffer_r((_TPtr<const TJSON_Value>)value, NULL, 0, 0, num_buf, NULL, 0);
    return res < 0 ? 0 : (size_t)(res + 1);
}
/*
 * No Uncheckedness
 */
JSON_Status json_serialize_to_buffer(_TPtr<const TJSON_Value> value, _TPtr<char> buf , size_t buf_size_in_bytes) {
    int written = -1;
    size_t needed_size_in_bytes = json_serialization_size(value);
    if (needed_size_in_bytes == 0 || buf_size_in_bytes < needed_size_in_bytes) _Checked {
        return JSONFailure;
    }
    /*
    * Tainted Marshalling Needed here
    */
    written = json_serialize_to_buffer_r((_TPtr<const TJSON_Value>)value, buf, 0, 0, NULL, buf, buf_size_in_bytes);
    if (written < 0) _Checked {
        buf[0] = '\0';
        return JSONFailure;
    }
    buf[written] = '\0';
    return JSONSuccess;
}

JSON_Status json_serialize_to_buffer_pretty(_TPtr<const TJSON_Value> value, _TPtr<char> buf , size_t buf_size_in_bytes) {
int written = -1;
size_t needed_size_in_bytes = json_serialization_size_pretty(value);
if (needed_size_in_bytes == 0 || buf_size_in_bytes < needed_size_in_bytes) {
return JSONFailure;
}
written = json_serialize_to_buffer_r(value, buf, 0, 1, NULL, buf, buf_size_in_bytes);
if (written < 0) {
buf[0] = '\0';
return JSONFailure;
}
buf[written] = '\0';
return JSONSuccess;
}
/*
 * No Uncheckedness
 */
_TPtr<char>      json_serialize_to_string(_TPtr<const TJSON_Value> value) {
    JSON_Status serialization_result = JSONFailure;
    size_t buf_size_bytes = json_serialization_size(value);
    _TPtr<char> buf  = NULL;
    if (buf_size_bytes == 0) {
        return NULL;
    }
    buf = string_tainted_malloc(buf_size_bytes);
    if (buf == NULL) {
        return NULL;
    }
    serialization_result = json_serialize_to_buffer(value, buf, buf_size_bytes);
    if (serialization_result == JSONFailure) {
        json_free_serialized_string(buf);
        return NULL;
    }
    return buf;
}
/*
 * No Unchec_Checked kedness
 */
size_t      json_serialization_size_pretty(_TPtr<const TJSON_Value> value) {
//char num_buf _Nt_checked[NUM_BUF_SIZE]; /* recursively allocating buffer on stack is a bad idea, so let's do it only once */
/*
 * There is no seperate partition on static space for tainted memory
 */
_TPtr<char> num_buf = string_tainted_malloc(NUM_BUF_SIZE);
int res = json_serialize_to_buffer_r((_TPtr<const TJSON_Value>)value, NULL, 0, 1, num_buf, NULL, 0);
return res < 0 ? 0 : (size_t)(res + 1);
}
/*
 * This can be untain_Checked ted later on, once the definition for t_fopen has been written
 */
JSON_Status json_serialize_to_file_pretty(_TPtr<const TJSON_Value> value, _Nt_array_ptr<const char> filename) {
    JSON_Status return_code = JSONSuccess;
    _Ptr<FILE> fp = NULL;
    _TPtr<char> serialized_string = json_serialize_to_string_pretty(value);
    _Nt_array_ptr<char> checked_serialized_string = NULL;
    int len = t_strlen(serialized_string);
    checked_serialized_string = parson_string_malloc(len*sizeof(char));
    t_strcpy(checked_serialized_string, serialized_string);
    if (serialized_string == NULL) {
        return JSONFailure;
    }
    fp = fopen(filename, "w");
    if (fp == NULL) {
        json_free_serialized_string(serialized_string);
        parson_free(char, checked_serialized_string);
        return JSONFailure;
    }
    if (fputs(checked_serialized_string, fp) == EOF) {
        return_code = JSONFailure;
    }
    if (fclose(fp) == EOF) {
        return_code = JSONFailure;
    }
    json_free_serialized_string(serialized_string);
    parson_free(char, checked_serialized_string);
    return return_code;
}
/*
 * No Uncheckedness
 */
_TPtr<char> json_serialize_to_string_pretty(_TPtr<const TJSON_Value> value) {
JSON_Status serialization_result = JSONFailure;
size_t buf_size_bytes = json_serialization_size_pretty(value);
_TPtr<char> buf = NULL;
if (buf_size_bytes == 0) {
return NULL;
}
buf = string_tainted_malloc(buf_size_bytes);
if (buf == NULL) {
return NULL;
}
serialization_result = json_serialize_to_buffer_pretty(value, buf, buf_size_bytes);
if (serialization_result == JSONFailure) {
json_free_serialized_string(buf);
return NULL;
}
return buf;
}
/*
 * No Uncheckedness
 */
void json_free_serialized_string(_TPtr<const char> string) _Checked {
    parson_tainted_free(char, string);
}
/*
 * TODO: No Real Harm Here
 */
JSON_Status json_array_remove(_TPtr<TJSON_Array> array, size_t ix) {
    size_t to_move_bytes = 0;
    if (array == NULL || ix >= json_array_get_count(array)) {
        return JSONFailure;
    }
    json_value_free(json_array_get_value(array, ix));
    to_move_bytes = (json_array_get_count(array) - 1 - ix) * sizeof(_TPtr<TJSON_Value>);
    // TODO: Unchecked because memmove doesn't yet take a type argument
    t_memmove<void>(array->items + ix, array->items + ix + 1, to_move_bytes);
    array->count -= 1;
    return JSONSuccess;
}
/*
 * No UncheckedNess
 */
JSON_Status json_array_replace_value(_TPtr<TJSON_Array>array, size_t ix, _TPtr<TJSON_Value> value) {
    if (array == NULL || value == NULL || value->parent != NULL || ix >= json_array_get_count(array)) _Checked {
        return JSONFailure;
    }
    json_value_free(json_array_get_value(array, ix));
    value->parent = json_array_get_wrapping_value(array);
    array->items[ix] = value;
    return JSONSuccess;
}
/*
 * No UncheckedNess
 */
JSON_Status json_array_replace_string(_TPtr<TJSON_Array> array, size_t i, _TPtr<const char> string) {
    _TPtr<TJSON_Value> value = json_value_init_string(string);
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_array_replace_value(array, i, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}

JSON_Status json_array_replace_number(_TPtr<TJSON_Array> array , size_t i, double number) {
    _TPtr<TJSON_Value> value = json_value_init_number(number);
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_array_replace_value(array, i, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}
/*
 * No UncheckedNess
 */
JSON_Status json_array_replace_boolean(_TPtr<TJSON_Array> array, size_t i, int boolean) {
    _TPtr<TJSON_Value> value = json_value_init_boolean(boolean);
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_array_replace_value(array, i, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}
/*
 * No UncheckedNess
 */
JSON_Status json_array_replace_null(_TPtr<TJSON_Array> array, size_t i) {
    _TPtr<TJSON_Value> value = json_value_init_null();
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_array_replace_value(array, i, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}
/*
 * No UncheckedNess
 */
JSON_Status json_array_clear(_TPtr<TJSON_Array> array ) {
    size_t i = 0;
    if (array == NULL) _Checked {
        return JSONFailure;
    }
    for (i = 0; i < json_array_get_count(array); i++) _Checked {
        json_value_free(json_array_get_value(array, i));
    }
    array->count = 0;
    return JSONSuccess;
}
/*
 * No UncheckedNess
 */
JSON_Status json_array_append_value(_TPtr<TJSON_Array> array, _TPtr<TJSON_Value> value) {
    if (array == NULL || value == NULL || value->parent != NULL) _Checked {
        return JSONFailure;
    }
    return json_array_add(array, value);
}
/*
 * No UncheckedNess
 */
JSON_Status json_array_append_string(_TPtr<TJSON_Array> array, _TPtr<const char> string) {
    _TPtr<TJSON_Value> value = json_value_init_string(string);
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_array_append_value(array, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}
/*
 * No UncheckedNess
 */
JSON_Status json_array_append_number(_TPtr<TJSON_Array> array, double number) {
    _TPtr<TJSON_Value> value = json_value_init_number(number);
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_array_append_value(array, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}
/*
 * No UncheckedNess
 */
JSON_Status json_array_append_boolean(_TPtr<TJSON_Array> array, int boolean) {
    _TPtr<TJSON_Value> value = json_value_init_boolean(boolean);
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_array_append_value(array, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}
/*
 * No UncheckedNess
 */
JSON_Status json_array_append_null(_TPtr<TJSON_Array> array) {
    _TPtr<TJSON_Value> value = json_value_init_null();
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_array_append_value(array, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}
/*
 * No UncheckedNess
 */
JSON_Status json_object_set_value(_TPtr<TJSON_Object> object, _TPtr<const char> name, _TPtr<TJSON_Value> value) {
    size_t i = 0;
    _TPtr<TJSON_Value> old_value = NULL;
    if (object == NULL || name == NULL || value == NULL || value->parent != NULL) _Checked {
        return JSONFailure;
    }
    old_value = json_object_get_value(object, name);
    if (old_value != NULL) _Checked { /* free and overwrite old value */
        json_value_free(old_value);
        for (i = 0; i < json_object_get_count(object); i++) _Unchecked {
            if (t_strcmp(object->names[i], name) == 0) _Checked {
                value->parent = json_object_get_wrapping_value(object);
                object->values[i] = value;
                return JSONSuccess;
            }
        }
    }
    /* add new key value pair */
    return json_object_add(object, name, value);
}
/*
 * No UncheckedNess
 */
JSON_Status json_object_set_string(_TPtr<TJSON_Object> object, _TPtr<const char> name, _TPtr<const char> string) _Checked {
    return json_object_set_value(object, name, json_value_init_string(string));
}

JSON_Status json_object_set_number(_TPtr<TJSON_Object>object , _TPtr<const char> name, double number) _Checked {
    return json_object_set_value(object, name, json_value_init_number(number));
}

JSON_Status json_object_set_boolean(_TPtr<TJSON_Object> object, _TPtr<const char> name, int boolean) _Checked {
    return json_object_set_value(object, name, json_value_init_boolean(boolean));
}

JSON_Status json_object_set_null(_TPtr<TJSON_Object> object , _TPtr<const char> name ) _Checked {
    return json_object_set_value(object, name, json_value_init_null());
}
/*
 * Moving to Tainted Region just to expose callbacks
 */
JSON_Status json_object_dotset_value(_TPtr<TJSON_Object> object , _TPtr<const char> name, _TPtr<TJSON_Value>value)
{
    _TPtr<const char> dot_pos = NULL;
    _TPtr<TJSON_Value> temp_value = NULL;
    _TPtr<TJSON_Value> new_value = NULL;
    _TPtr<TJSON_Object> temp_object = NULL;
    _TPtr<TJSON_Object> new_object = NULL;
    JSON_Status status = JSONFailure;
    size_t name_len = 0;
    if (object == NULL || name == NULL || value == NULL) _Checked {
        return JSONFailure;
    }
    dot_pos = t_strchr(name, '.');
    if (dot_pos == NULL) _Checked {
        return json_object_set_value(object, name, value);
    }
    _TPtr<const char> after_dot = NULL;
    _Unchecked {
        after_dot = dot_pos + 1;
    }
    name_len = dot_pos - name;
    _TPtr<const char> name_with_len = NULL;
    _Unchecked {
        name_with_len = name;
    }
    temp_value = json_object_getn_value(object, name_with_len, name_len);
    if (temp_value) _Checked {
        /* Don't overwrite existing non-object (unlike json_object_set_value, but it shouldn't be changed at this point) */
        if (json_value_get_type(temp_value) != JSONObject) {
            return JSONFailure;
        }
        temp_object = json_value_get_object(temp_value);
        return json_object_dotset_value(temp_object, after_dot, value);
    }
    new_value = json_value_init_object();
    if (new_value == NULL) _Checked {
        return JSONFailure;
    }
    new_object = json_value_get_object(new_value);
    status = json_object_dotset_value(new_object, after_dot, value);
    if (status != JSONSuccess) _Checked {
        json_value_free(new_value);
        return JSONFailure;
    }
    status = json_object_addn(object, name_with_len, name_len, new_value);
    if (status != JSONSuccess) _Checked {
        json_object_dotremove_internal(new_object, after_dot, 0);
        json_value_free(new_value);
        return JSONFailure;
    }
    return JSONSuccess;
}

JSON_Status json_object_dotset_string(_TPtr<TJSON_Object> object , _TPtr<const char> name, _TPtr<const char> string) {
    _TPtr<TJSON_Value> value = json_value_init_string(string);
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_object_dotset_value(object, name, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}

JSON_Status json_object_dotset_number(_TPtr<TJSON_Object> object, _TPtr<const char> name , double number) {
    _TPtr<TJSON_Value> value = json_value_init_number(number);
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_object_dotset_value(object, name, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}

JSON_Status json_object_dotset_boolean(_TPtr<TJSON_Object> object , _TPtr<const char> name , int boolean) {
    _TPtr<TJSON_Value> value = json_value_init_boolean(boolean);
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_object_dotset_value(object, name, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}

JSON_Status json_object_dotset_null(_TPtr<TJSON_Object> object, _TPtr<const char> name) {
    _TPtr<TJSON_Value> value = json_value_init_null();
    if (value == NULL) _Checked {
        return JSONFailure;
    }
    if (json_object_dotset_value(object, name, value) == JSONFailure) _Checked {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}

JSON_Status json_object_remove(_TPtr<TJSON_Object> object, _TPtr<const char> name) _Checked {
    return json_object_remove_internal(object, name, 1);
}

JSON_Status json_object_dotremove(_TPtr<TJSON_Object> object, _TPtr<const char> name) _Checked {
    return json_object_dotremove_internal(object, name, 1);
}
/*
 * No UncheckedNess
 */
JSON_Status json_object_clear(_TPtr<TJSON_Object> object) {
    size_t i = 0;
    if (object == NULL) {
        return JSONFailure;
    }
    for (i = 0; i < json_object_get_count(object); i++) {
        parson_tainted_free(char, object->names[i]);
        json_value_free(object->values[i]);
    }
    object->count = 0;
    return JSONSuccess;
}
/*
 * No UncheckedNess
 */
JSON_Status json_validate(_TPtr<const TJSON_Value> schema , _TPtr<const TJSON_Value> value) {
    _TPtr<TJSON_Value> temp_schema_value = NULL;
    _TPtr<TJSON_Value> temp_value = NULL;
    _TPtr<TJSON_Array> schema_array = NULL;
    _TPtr<TJSON_Array> value_array = NULL;
    _TPtr<TJSON_Object> schema_object = NULL;
    _TPtr<TJSON_Object> value_object = NULL;
    JSON_Value_Type schema_type = JSONError, value_type = JSONError;
    _TPtr<const char> key = NULL;
    size_t i = 0, count = 0;
    if (schema == NULL || value == NULL) _Checked {
        return JSONFailure;
    }
    schema_type = json_value_get_type(schema);
    value_type = json_value_get_type(value);
    if (schema_type != value_type && schema_type != JSONNull) _Checked { /* null represents all values */
        return JSONFailure;
    }
    switch (schema_type) _Checked {
        case JSONArray:
            schema_array = json_value_get_array(schema);
            value_array = json_value_get_array(value);
            count = json_array_get_count(schema_array);
            if (count == 0) {
                return JSONSuccess; /* Empty array allows all types */
            }
            /* Get first value from array, rest is ignored */
            temp_schema_value = json_array_get_value(schema_array, 0);
            for (i = 0; i < json_array_get_count(value_array); i++) {
                temp_value = json_array_get_value(value_array, i);
                if (json_validate(temp_schema_value, temp_value) == JSONFailure) {
                    return JSONFailure;
                }
            }
            return JSONSuccess;
        case JSONObject:
            schema_object = json_value_get_object(schema);
            value_object = json_value_get_object(value);
            count = json_object_get_count(schema_object);
            if (count == 0) {
                return JSONSuccess; /* Empty object allows all objects */
            } else if (json_object_get_count(value_object) < count) {
                return JSONFailure; /* Tested object mustn't have less name-value pairs than schema */
            }
            for (i = 0; i < count; i++) _Unchecked {
                key = json_object_get_name(schema_object, i);
                temp_schema_value = json_object_get_value(schema_object, key);
                temp_value = json_object_get_value(value_object, key);
                if (temp_value == NULL) _Checked {
                    return JSONFailure;
                }
                if (json_validate(temp_schema_value, temp_value) == JSONFailure) _Checked {
                    return JSONFailure;
                }
            }
            return JSONSuccess;
        case JSONString: case JSONNumber: case JSONBoolean: case JSONNull:
            return JSONSuccess; /* equality already tested before switch */
        case JSONError: default:
            return JSONFailure;
    }
}

int  json_value_equals(_TPtr<const TJSON_Value> a, _TPtr<const TJSON_Value> b) {
    _TPtr<TJSON_Object> a_object = NULL;
    _TPtr<TJSON_Object> b_object = NULL;
    _TPtr<TJSON_Array> a_array = NULL;
    _TPtr<TJSON_Array> b_array = NULL;
    _TPtr<const char> a_string = NULL;
    _TPtr<const char> b_string = NULL;
    _TPtr<const char> key = NULL;
    size_t a_count = 0, b_count = 0, i = 0;
    JSON_Value_Type a_type, b_type;
    a_type = json_value_get_type(a);
    b_type = json_value_get_type(b);
    if (a_type != b_type) _Checked {
        return 0;
    }
    switch (a_type) {
        case JSONArray:
            a_array = json_value_get_array(a);
            b_array = json_value_get_array(b);
            a_count = json_array_get_count(a_array);
            b_count = json_array_get_count(b_array);
            if (a_count != b_count) _Checked {
                return 0;
            }
            for (i = 0; i < a_count; i++) _Checked {
                if (!json_value_equals(json_array_get_value(a_array, i),
                                       json_array_get_value(b_array, i))) {
                    return 0;
                }
            }
            return 1;
        case JSONObject:
            a_object = json_value_get_object(a);
            b_object = json_value_get_object(b);
            a_count = json_object_get_count(a_object);
            b_count = json_object_get_count(b_object);
            if (a_count != b_count) _Checked {
                return 0;
            }
            for (i = 0; i < a_count; i++) _Checked {
                key = json_object_get_name(a_object, i);
                if (!json_value_equals(json_object_get_value(a_object, key),
                                       json_object_get_value(b_object, key))) {
                    return 0;
                }
            }
            return 1;
        case JSONString:
            a_string = json_value_get_string(a);
            b_string = json_value_get_string(b);
            if (a_string == NULL || b_string == NULL) _Checked {
                return 0; /* shouldn't happen */
            }
            return t_strcmp(a_string, b_string) == 0;
        case JSONBoolean:
            return json_value_get_boolean(a) == json_value_get_boolean(b);
        case JSONNumber:
            return fabs(json_value_get_number(a) - json_value_get_number(b)) < 0.000001; /* EPSILON */
        case JSONError:
            return 1;
        case JSONNull:
            return 1;
        default:
            return 1;
    }
}

JSON_Value_Type json_type   (_TPtr<const TJSON_Value> value) {
    return json_value_get_type(value);
}

_TPtr<TJSON_Object>   json_object (_TPtr<const TJSON_Value> value) {
    return json_value_get_object(value);
}

_TPtr<TJSON_Array>   json_array  (_TPtr<const TJSON_Value> value) {
    return json_value_get_array(value);
}

_TPtr<const char> json_string (_TPtr<const TJSON_Value> value) {
    return json_value_get_string(value);
}

double json_number (_TPtr<const TJSON_Value> value)
{
    return json_value_get_number(value);
}

int             json_boolean(_TPtr<const TJSON_Value> value) {
    return json_value_get_boolean(value);
}

//_Itype_for_any(T) void json_set_allocation_functions(_TPtr<_TArray_ptr<T>(size_t s) : byte_count(s)> malloc_fun,
//_TPtr<void (_TArray_ptr<T> : byte_count(0))> free_fun) _Checked {
//    if(malloc_fun || free_fun) {
//        #undef parson_tainted_malloc
//        #undef parson_tainted_free
//        parson_tainted_malloc = malloc_fun;
//        parson_tainted_free = free_fun;
//    }
//    return;
//}

void json_set_escape_slashes(int escape_slashes) {
    parson_escape_slashes = escape_slashes;
}


JSON_Status json_serialize_to_file(_TPtr<const TJSON_Value> value,
                                   _Nt_array_ptr<char> filename) _Unchecked{
    JSON_Status return_code = JSONSuccess;
    _Ptr<FILE> fp = NULL;
    _TPtr<char> serialized_string = json_serialize_to_string(value);
    if (serialized_string == NULL) {
        return JSONFailure;
    }
    fp = fopen(filename, "w");
    if (fp == NULL) {
        json_free_serialized_string(serialized_string);
        return JSONFailure;
    }
    /*
     * Marshalling tainted serialized string into a checked serialized string
     *
     */
    int len = t_strlen(serialized_string);
    char* serialized_string_checked =
            (char* )malloc(t_strlen(serialized_string)*sizeof(char));
    t_strcpy(serialized_string_checked, serialized_string);
    if (fputs((const char*)serialized_string_checked, fp) == EOF) {
        return_code = JSONFailure;
    }
    if (fclose(fp) == EOF) {
        return_code = JSONFailure;
    }
    json_free_serialized_string(serialized_string);
    free(serialized_string_checked);
    return return_code;
}
#pragma CHECKED_SCOPE pop
