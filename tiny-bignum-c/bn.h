#ifndef __BIGNUM_H__
#define __BIGNUM_H__
/*

Big number library - arithmetic on multiple-precision unsigned integers.

This library is an implementation of arithmetic on arbitrarily large integers.

The difference between this and other implementations, is that the data structure
has optimal memory utilization (i.e. a 1024 bit integer takes up 128 bytes RAM),
and all memory is allocated statically: no dynamic allocation for better or worse.

Primary goals are correctness, clarity of code and clean, portable implementation.
Secondary goal is a memory footprint small enough to make it suitable for use in
embedded applications.


The current state is correct functionality and adequate performance.
There may well be room for performance-optimizations and improvements.

*/

#include <stdint.h>
#include <assert.h>
#include <stdlib_tainted.h>
#include <string_tainted.h>
#include <stdio_tainted.h>
#include <checkcbox_extensions.h>
/* This macro defines the word size in bytes of the array that constitues the big-number data structure. */
#ifndef WORD_SIZE
  #define WORD_SIZE 4
#endif

/* Size of big-numbers in bytes */
#define BN_ARRAY_SIZE    (128 / WORD_SIZE)

#ifdef WASM_SBX
#define __malloc__(S) t_malloc(S)
#define __free__(S) t_free(S)
#elif HEAP_SBX
#define __malloc__(S) hoard_malloc(S)
#define __free__(S) hoard_free(S)
#else
#define __malloc__(S) malloc(S)
#define __free__(S) free(S)
#endif

/* Here comes the compile-time specialization for how large the underlying array size should be. */
/* The choices are 1, 2 and 4 bytes in size with uint32, uint64 for WORD_SIZE==4, as temporary. */
#ifndef WORD_SIZE
  #error Must define WORD_SIZE to be 1, 2, 4
#elif (WORD_SIZE == 1)
  /* Data type of array in structure */
  #define DTYPE                    uint8_t
  /* bitmask for getting MSB */
  #define DTYPE_MSB                ((DTYPE_TMP)(0x80))
  /* Data-type larger than DTYPE, for holding intermediate results of calculations */
  #define DTYPE_TMP                uint32_t
  /* sprintf format string */
  #define SPRINTF_FORMAT_STR       "%.02x"
  #define SSCANF_FORMAT_STR        "%2hhx"
  /* Max value of integer type */
  #define MAX_VAL                  ((DTYPE_TMP)0xFF)
#elif (WORD_SIZE == 2)
  #define DTYPE                    uint16_t
  #define DTYPE_TMP                uint32_t
  #define DTYPE_MSB                ((DTYPE_TMP)(0x8000))
  #define SPRINTF_FORMAT_STR       "%.04x"
  #define SSCANF_FORMAT_STR        "%4hx"
  #define MAX_VAL                  ((DTYPE_TMP)0xFFFF)
#elif (WORD_SIZE == 4)
  #define DTYPE                    uint32_t
  #define DTYPE_TMP                uint64_t
  #define DTYPE_MSB                ((DTYPE_TMP)(0x80000000))
  #define SPRINTF_FORMAT_STR       "%.08x"
  #define SSCANF_FORMAT_STR        "%8x"
  #define MAX_VAL                  ((DTYPE_TMP)0xFFFFFFFF)
#endif
#ifndef DTYPE
  #error DTYPE must be defined to uint8_t, uint16_t uint32_t or whatever
#endif


/* Custom assert macro - easy to disable */
#define require(p, msg) assert(p && msg)

_TLIB void w2c_bignum_to_string(void*, unsigned int, unsigned int, int);

/* Data-holding structure: array of DTYPEs */
_Tainted typedef Tstruct bn
{
  _TPtr<DTYPE> array;
}_T_bn;
//gotta malloc this --> [BN_ARRAY_SIZE]


/* Tokens returned by bignum_cmp() for value comparison */
enum { SMALLER = -1, EQUAL = 0, LARGER = 1 };



/* Initialization functions: */
void bignum_init(_TPtr<_T_bn> n);
void bignum_from_int(_TPtr<_T_bn> n, DTYPE_TMP i);
int  bignum_to_int(_TPtr<_T_bn> n);
void bignum_from_string(_TPtr<_T_bn> n, char* str, int nbytes);
_Tainted void bignum_to_string(_TPtr<_T_bn> n, _TPtr<char> str, int maxsize);

/* Basic arithmetic operations: */
void bignum_add(_TPtr<_T_bn> a, _TPtr<_T_bn> b, _TPtr<_T_bn> c); /* c = a + b */
void bignum_sub(_TPtr<_T_bn> a, _TPtr<_T_bn> b, _TPtr<_T_bn> c); /* c = a - b */
void bignum_mul(_TPtr<_T_bn> a, _TPtr<_T_bn> b, _TPtr<_T_bn> c); /* c = a * b */
void bignum_div(_TPtr<_T_bn> a, _TPtr<_T_bn> b, _TPtr<_T_bn> c); /* c = a / b */
void bignum_mod(_TPtr<_T_bn> a, _TPtr<_T_bn> b, _TPtr<_T_bn> c); /* c = a % b */
void bignum_divmod(_TPtr<_T_bn> a, _TPtr<_T_bn> b, _TPtr<_T_bn> c, _TPtr<_T_bn> d); /* c = a/b, d = a%b */

/* Bitwise operations: */
void bignum_and(_TPtr<_T_bn> a, _TPtr<_T_bn> b, _TPtr<_T_bn> c); /* c = a & b */
void bignum_or(_TPtr<_T_bn> a, _TPtr<_T_bn> b, _TPtr<_T_bn> c);  /* c = a | b */
void bignum_xor(_TPtr<_T_bn> a, _TPtr<_T_bn> b, _TPtr<_T_bn> c); /* c = a ^ b */
void bignum_lshift(_TPtr<_T_bn> a, _TPtr<_T_bn> b, int nbits); /* b = a << nbits */
void bignum_rshift(_TPtr<_T_bn> a, _TPtr<_T_bn> b, int nbits); /* b = a >> nbits */

/* Special operators and comparison */
int  bignum_cmp(_TPtr<_T_bn> a, _TPtr<_T_bn> b);               /* Compare: returns LARGER, EQUAL or SMALLER */
int  bignum_is_zero(_TPtr<_T_bn> n);                         /* For comparison with zero */
void bignum_inc(_TPtr<_T_bn> n);                             /* Increment: add one to n */
void bignum_dec(_TPtr<_T_bn> n);                             /* Decrement: subtract one from n */
void bignum_pow(_TPtr<_T_bn> a, _TPtr<_T_bn> b, _TPtr<_T_bn> c); /* Calculate a^b -- e.g. 2^10 => 1024 */
void bignum_isqrt(_TPtr<_T_bn> a, _TPtr<_T_bn> b);             /* Integer square root -- e.g. isqrt(5) => 2*/
void bignum_assign(_TPtr<_T_bn> dst, _TPtr<_T_bn> src);        /* Copy src into dst -- dst := src */


#endif /* #ifndef __BIGNUM_H__ */


