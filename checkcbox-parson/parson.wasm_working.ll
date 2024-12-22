; ModuleID = 'parson.wasm.c'
source_filename = "parson.wasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%Tstruct.Spl_json_value_value_t_t = type { i32, double, i32, i32, i32, i32 }
%Tstruct.Spl_json_value_t_t = type { i32, i32, %Tstruct.Spl_json_value_value_t_t }
%Tstruct.Spl_json_object_t_t = type { i32, i32, i32, i32, i32 }
%Tstruct.Spl_json_array_t_t = type { i32, i32, i32, i32 }
%Tstruct.json_value_t_t = type { %Tstruct.json_value_t_t*, i32, %Tstruct.json_value_value_t_t }
%Tstruct.json_value_value_t_t = type { i8*, double, %Tstruct.json_object_t_t*, %Tstruct.json_array_t_t*, i32, i32 }
%Tstruct.json_object_t_t = type { %Tstruct.json_value_t_t*, i8**, %Tstruct.json_value_t_t**, i32, i32 }
%Tstruct.json_array_t_t = type { %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t**, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@sbxHeap = common global i64 0
@sbxHeapRange = common global i32 0
@parson_escape_slashes = dso_local global i32 1, align 4
@Spl_TJSON_Value_Value_Val = dso_local global %Tstruct.Spl_json_value_value_t_t zeroinitializer, align 8
@Spl_json_value_t_t_Val = dso_local global %Tstruct.Spl_json_value_t_t zeroinitializer, align 8
@Spl_json_object_t_t_Val = dso_local global %Tstruct.Spl_json_object_t_t zeroinitializer, align 4
@Spl_json_array_t_t_Val = dso_local global %Tstruct.Spl_json_array_t_t zeroinitializer, align 4
@__const.registerCallback_ProcessString.ret_param_types = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@process_string_trampoline_callback_val = dso_local global i32 0, align 4
@__const.registerCallback_ParseValue.ret_param_types = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@parse_value_trampoline_callback_val = dso_local global i32 0, align 4
@__const.parse_array_value.ret_param_types = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@__const.parse_string_value.ret_param_types = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%1.17g\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"\\u0000\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\\u0001\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"\\u0002\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\\u0003\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\\u0004\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\\u0005\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"\\u0006\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"\\u0007\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"\\u000b\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\\u000e\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"\\u000f\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\\u0010\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"\\u0011\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\\u0012\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"\\u0013\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"\\u0014\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"\\u0015\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\\u0016\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"\\u0017\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"\\u0018\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"\\u0019\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"\\u001a\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"\\u001b\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\\u001c\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"\\u001d\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"\\u001e\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\\u001f\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@parson_tainted_malloc = dso_local global i8* (i64)* null, align 8
@parson_tainted_free = dso_local global void (i8*)* null, align 8
@.str.53 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dummy_Spl_TJSON_Value_Value(%Tstruct.Spl_json_value_value_t_t* noalias sret(%Tstruct.Spl_json_value_value_t_t) align 8 %agg.result) #0 {
entry:
  %0 = bitcast %Tstruct.Spl_json_value_value_t_t* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%Tstruct.Spl_json_value_value_t_t* @Spl_TJSON_Value_Value_Val to i8*), i64 32, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dummy_Spl_json_value_t_t(%Tstruct.Spl_json_value_t_t* noalias sret(%Tstruct.Spl_json_value_t_t) align 8 %agg.result) #0 {
entry:
  %0 = bitcast %Tstruct.Spl_json_value_t_t* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%Tstruct.Spl_json_value_t_t* @Spl_json_value_t_t_Val to i8*), i64 40, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dummy_Spl_json_object_t_t(%Tstruct.Spl_json_object_t_t* noalias sret(%Tstruct.Spl_json_object_t_t) align 4 %agg.result) #0 {
entry:
  %0 = bitcast %Tstruct.Spl_json_object_t_t* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%Tstruct.Spl_json_object_t_t* @Spl_json_object_t_t_Val to i8*), i64 20, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @Dummy_Spl_json_array_t_t() #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_array_t_t, align 4
  %0 = bitcast %Tstruct.Spl_json_array_t_t* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%Tstruct.Spl_json_array_t_t* @Spl_json_array_t_t_Val to i8*), i64 16, i1 false)
  %1 = bitcast %Tstruct.Spl_json_array_t_t* %retval to { i64, i64 }*
  %2 = load { i64, i64 }, { i64, i64 }* %1, align 4
  ret { i64, i64 } %2
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @tainted_parson_strndup(i8* %string, i64 %n) #2 {
entry:
  %string.addr = alloca i8*, align 4
  %n.addr = alloca i64, align 8
  %0 = ptrtoint i8* %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  store i64 %n, i64* %n.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load i8*, i8** %string.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %5 = load i64, i64* %n.addr, align 8
  %call1 = call i32 @w2c_tainted_parson_strndup(i8* %call, i32 %4, i64 %5)
  %conv = zext i32 %call1 to i64
  %6 = inttoptr i64 %conv to i8*
  ret i8* %6
}

declare dso_local i32 @w2c_tainted_parson_strndup(i8*, i32, i64) #3

declare dso_local i8* @c_fetch_sandbox_address(...) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @tainted_parson_strdup(i8* %string) #2 {
entry:
  %string.addr = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load i8*, i8** %string.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %call1 = call i32 @w2c_tainted_parson_strdup(i8* %call, i32 %4)
  %conv = zext i32 %call1 to i64
  %5 = inttoptr i64 %conv to i8*
  ret i8* %5
}

declare dso_local i32 @w2c_tainted_parson_strdup(i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registerCallback_ProcessString() #0 {
entry:
  %ret_param_types = alloca [3 x i32], align 4
  %0 = bitcast [3 x i32]* %ret_param_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.registerCallback_ProcessString.ret_param_types to i8*), i64 12, i1 false)
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %ret_param_types, i64 0, i64 0
  %call = call i32 @sbx_register_callback(i8* bitcast (i32 (i32, i32, i64)* @process_string_trampoline to i8*), i32 2, i32 1, i32* %arraydecay)
  store i32 %call, i32* @process_string_trampoline_callback_val, align 4
  ret void
}

declare dso_local i32 @sbx_register_callback(i8*, i32, i32, i32*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_string_trampoline(i32 %sandbox, i32 %arg_1, i64 %arg_2) #0 {
entry:
  %sandbox.addr = alloca i32, align 4
  %arg_1.addr = alloca i32, align 4
  %arg_2.addr = alloca i64, align 8
  %tmp = alloca i8*, align 4
  store i32 %sandbox, i32* %sandbox.addr, align 4
  store i32 %arg_1, i32* %arg_1.addr, align 4
  store i64 %arg_2, i64* %arg_2.addr, align 8
  %0 = load i32, i32* %arg_1.addr, align 4
  %call = call i8* @c_fetch_pointer_from_offset(i32 %0)
  %1 = load i64, i64* %arg_2.addr, align 8
  %call1 = call i8* @process_string(i8* %call, i64 %1)
  %2 = ptrtoint i8* %call1 to i32
  %3 = inttoptr i32 %2 to i8*
  store i8* %3, i8** %tmp, align 4
  %4 = load i8*, i8** %tmp, align 4
  %5 = load i32, i32* @sbxHeapRange, align 8
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = ptrtoint i8* %4 to i32
  %8 = zext i32 %7 to i64
  %9 = add i64 %6, %8
  %10 = icmp ult i32 %7, %5
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %11 = inttoptr i64 %9 to i8*
  %call2 = call i32 @c_fetch_pointer_offset(i8* %11)
  ret i32 %call2

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registerCallback_ParseValue() #0 {
entry:
  %ret_param_types = alloca [3 x i32], align 4
  %0 = bitcast [3 x i32]* %ret_param_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.registerCallback_ParseValue.ret_param_types to i8*), i64 12, i1 false)
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %ret_param_types, i64 0, i64 0
  %call = call i32 @sbx_register_callback(i8* bitcast (i32 (i32, i32, i64)* @parse_value_trampoline to i8*), i32 2, i32 1, i32* %arraydecay)
  store i32 %call, i32* @parse_value_trampoline_callback_val, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_value_trampoline(i32 %sandbox, i32 %arg_1, i64 %arg_2) #0 {
entry:
  %sandbox.addr = alloca i32, align 4
  %arg_1.addr = alloca i32, align 4
  %arg_2.addr = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  store i32 %sandbox, i32* %sandbox.addr, align 4
  store i32 %arg_1, i32* %arg_1.addr, align 4
  store i64 %arg_2, i64* %arg_2.addr, align 8
  %0 = load i32, i32* %arg_1.addr, align 4
  %conv = zext i32 %0 to i64
  %1 = inttoptr i64 %conv to i8**
  %2 = load i64, i64* %arg_2.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @parse_value(i8** %1, i64 %2)
  %3 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %4 = bitcast %Tstruct.json_value_t_t* %3 to i8*
  %5 = ptrtoint i8* %4 to i32
  %6 = inttoptr i32 %5 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %6, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %7 to i8*
  %9 = load i32, i32* @sbxHeapRange, align 8
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = ptrtoint i8* %8 to i32
  %12 = zext i32 %11 to i64
  %13 = add i64 %10, %12
  %14 = icmp ult i32 %11, %9
  br i1 %14, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %15 = inttoptr i64 %13 to i8*
  %call1 = call i32 @c_fetch_pointer_offset(i8* %15)
  ret i32 %call1

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @verify_utf8_sequence(i8* %string, i32* %len) #2 {
entry:
  %string.addr = alloca i8*, align 4
  %len.addr = alloca i32*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  %3 = ptrtoint i32* %len to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i32** %len.addr to i64*
  store i64 %4, i64* %5, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %6 = load i8*, i8** %string.addr, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = load i32*, i32** %len.addr, align 4
  %9 = ptrtoint i32* %8 to i32
  %call1 = call i32 @w2c_verify_utf8_sequence(i8* %call, i32 %7, i32 %9)
  ret i32 %call1
}

declare dso_local i32 @w2c_verify_utf8_sequence(i8*, i32, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @is_decimal(i8* %string, i64 %length) #2 {
entry:
  %string.addr = alloca i8*, align 4
  %length.addr = alloca i64, align 8
  %0 = ptrtoint i8* %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  store i64 %length, i64* %length.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load i8*, i8** %string.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %5 = load i64, i64* %length.addr, align 8
  %call1 = call i32 @w2c_is_decimal(i8* %call, i32 %4, i64 %5)
  ret i32 %call1
}

declare dso_local i32 @w2c_is_decimal(i8*, i32, i64) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_object_addn(%Tstruct.json_object_t_t* %object, i8* %name, i64 %name_len, %Tstruct.json_value_t_t* %value) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %name_len.addr = alloca i64, align 8
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  store i64 %name_len, i64* %name_len.addr, align 8
  %6 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %7, i32* %8, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %10 = ptrtoint %Tstruct.Spl_json_object_t_t* %9 to i32
  %11 = load i8*, i8** %name.addr, align 4
  %12 = ptrtoint i8* %11 to i32
  %13 = load i64, i64* %name_len.addr, align 8
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %call1 = call i32 @w2c_json_object_addn(i8* %call, i32 %10, i32 %12, i64 %13, i32 %15)
  ret i32 %call1
}

declare dso_local i32 @w2c_json_object_addn(i8*, i32, i32, i64, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_object_resize(%Tstruct.json_object_t_t* %object, i64 %new_capacity) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %new_capacity.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %new_capacity, i64* %new_capacity.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %5 = load i64, i64* %new_capacity.addr, align 8
  %conv = trunc i64 %5 to i32
  %call1 = call i32 @w2c_json_object_resize(i8* %call, i32 %4, i32 %conv)
  ret i32 %call1
}

declare dso_local i32 @w2c_json_object_resize(i8*, i32, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %object, i8* %name, i64 %name_len) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %name_len.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  store i64 %name_len, i64* %name_len.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %6 to i32
  %8 = load i8*, i8** %name.addr, align 4
  %9 = ptrtoint i8* %8 to i32
  %10 = load i64, i64* %name_len.addr, align 8
  %call1 = call i32 @w2c_json_object_getn_value(i8* %call, i32 %7, i32 %9, i64 %10)
  %conv = zext i32 %call1 to i64
  %11 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %11
}

declare dso_local i32 @w2c_json_object_getn_value(i8*, i32, i32, i64) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_object_remove_internal(%Tstruct.json_object_t_t* %object, i8* %name, i32 %free_value) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %free_value.addr = alloca i32, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  store i32 %free_value, i32* %free_value.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %6 to i32
  %8 = load i8*, i8** %name.addr, align 4
  %9 = ptrtoint i8* %8 to i32
  %10 = load i32, i32* %free_value.addr, align 4
  %conv = sext i32 %10 to i64
  %call1 = call i32 @w2c_json_object_remove_internal(i8* %call, i32 %7, i32 %9, i64 %conv)
  ret i32 %call1
}

declare dso_local i32 @w2c_json_object_remove_internal(i8*, i32, i32, i64) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_object_dotremove_internal(%Tstruct.json_object_t_t* %object, i8* %name, i32 %free_value) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %free_value.addr = alloca i32, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  store i32 %free_value, i32* %free_value.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %6 to i32
  %8 = load i8*, i8** %name.addr, align 4
  %9 = ptrtoint i8* %8 to i32
  %10 = load i32, i32* %free_value.addr, align 4
  %call1 = call i32 @w2c_json_object_dotremove_internal(i8* %call, i32 %7, i32 %9, i32 %10)
  ret i32 %call1
}

declare dso_local i32 @w2c_json_object_dotremove_internal(i8*, i32, i32, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local void @json_object_free(%Tstruct.json_object_t_t* %object) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  call void @w2c_json_object_free(i8* %call, i32 %4)
  ret void
}

declare dso_local void @w2c_json_object_free(i8*, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_array_add(%Tstruct.json_array_t_t* %array, %Tstruct.json_value_t_t* %value) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %4, i32* %5, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %6 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_array_t_t* %6 to i32
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %call1 = call i32 @w2c_json_array_add(i8* %call, i32 %7, i32 %9)
  ret i32 %call1
}

declare dso_local i32 @w2c_json_array_add(i8*, i32, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_array_resize(%Tstruct.json_array_t_t* %array, i64 %new_capacity) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %new_capacity.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %new_capacity, i64* %new_capacity.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %5 = load i64, i64* %new_capacity.addr, align 8
  %call1 = call i32 @w2c_json_array_resize(i8* %call, i32 %4, i64 %5)
  ret i32 %call1
}

declare dso_local i32 @w2c_json_array_resize(i8*, i32, i64) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local void @json_array_free(%Tstruct.json_array_t_t* %array) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  call void @w2c_json_array_free(i8* %call, i32 %4)
  ret void
}

declare dso_local void @w2c_json_array_free(i8*, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_string_no_copy(i8* %string) #2 {
entry:
  %string.addr = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load i8*, i8** %string.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %call1 = call i32 @w2c_json_value_init_string_no_copy(i8* %call, i32 %4)
  %conv = zext i32 %call1 to i64
  %5 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %5
}

declare dso_local i32 @w2c_json_value_init_string_no_copy(i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_utf16(i8** %unprocessed, i8** %processed) #0 {
entry:
  %unprocessed.addr = alloca i8**, align 4
  %processed.addr = alloca i8**, align 4
  %0 = ptrtoint i8** %unprocessed to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8*** %unprocessed.addr to i64*
  store i64 %1, i64* %2, align 4
  %3 = ptrtoint i8** %processed to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8*** %processed.addr to i64*
  store i64 %4, i64* %5, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %6 = load i8**, i8*** %unprocessed.addr, align 4
  %7 = ptrtoint i8** %6 to i32
  %8 = load i8**, i8*** %processed.addr, align 4
  %9 = ptrtoint i8** %8 to i32
  %call1 = call i32 @w2c_parse_utf16(i8* %call, i32 %7, i32 %9)
  ret i32 %call1
}

declare dso_local i32 @w2c_parse_utf16(i8*, i32, i32) #3

declare dso_local i32 @c_fetch_pointer_offset(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @process_string(i8* %input, i64 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %input.addr = alloca i8*, align 4
  %len.addr = alloca i64, align 8
  %input_ptr = alloca i8*, align 4
  %initial_size = alloca i64, align 8
  %final_size = alloca i64, align 8
  %output = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %output_ptr = alloca i8*, align 4
  %input_tmp = alloca i8**, align 4
  %tmp40 = alloca i8*, align 4
  %output_tmp = alloca i8**, align 4
  %tmp44 = alloca i8*, align 4
  %resized_output = alloca i8*, align 4
  %tmp81 = alloca i8*, align 4
  %tmp91 = alloca i8*, align 4
  %tmp92 = alloca i8*, align 4
  %tmp96 = alloca i8*, align 4
  %tmp97 = alloca i8*, align 4
  %tmp98 = alloca i8*, align 4
  %tmp99 = alloca i8*, align 4
  %tmp106 = alloca i8*, align 4
  %tmp111 = alloca i8*, align 4
  %tmp112 = alloca i8*, align 4
  %tmp114 = alloca i8*, align 4
  %tmp115 = alloca i8*, align 4
  %0 = call i64 @c_fetch_sandbox_heap_bound()
  %1 = call i64 @c_fetch_sandbox_heap_address()
  %2 = sub i64 %0, %1
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* @sbxHeapRange, align 8
  %4 = ptrtoint i8* %input to i32
  %5 = zext i32 %4 to i64
  %6 = bitcast i8** %input.addr to i64*
  store i64 %5, i64* %6, align 4
  store i64 %len, i64* %len.addr, align 8
  %7 = load i8*, i8** %input.addr, align 4
  %8 = ptrtoint i8* %7 to i32
  %9 = zext i32 %8 to i64
  %10 = bitcast i8** %input_ptr to i64*
  store i64 %9, i64* %10, align 4
  %11 = load i64, i64* %len.addr, align 8
  %add = add i64 %11, 1
  %mul = mul i64 %add, 1
  store i64 %mul, i64* %initial_size, align 8
  store i64 0, i64* %final_size, align 8
  %12 = bitcast i8** %output to i64*
  store i64 0, i64* %12, align 4
  %13 = load i64, i64* %initial_size, align 8
  %call = call i8* @string_tainted_malloc(i64 %13)
  %14 = ptrtoint i8* %call to i32
  %15 = inttoptr i32 %14 to i8*
  store i8* %15, i8** %tmp, align 4
  %16 = load i8*, i8** %tmp, align 4
  %17 = ptrtoint i8* %16 to i32
  %18 = zext i32 %17 to i64
  %19 = bitcast i8** %output to i64*
  store i64 %18, i64* %19, align 4
  %20 = bitcast i8** %output_ptr to i64*
  store i64 0, i64* %20, align 4
  %21 = load i8*, i8** %output, align 4
  %22 = ptrtoint i8* %21 to i32
  %23 = zext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = ptrtoint i8* %24 to i32
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %26 = load i8*, i8** %output, align 4
  %27 = ptrtoint i8* %26 to i32
  %28 = zext i32 %27 to i64
  %29 = bitcast i8** %output_ptr to i64*
  store i64 %28, i64* %29, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end71, %if.end
  %30 = load i8*, i8** %input_ptr, align 4
  %31 = load i32, i32* @sbxHeapRange, align 8
  %32 = load i64, i64* @sbxHeap, align 8
  %33 = ptrtoint i8* %30 to i32
  %34 = zext i32 %33 to i64
  %35 = add i64 %32, %34
  %36 = icmp ult i32 %33, %31
  br i1 %36, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %while.cond
  %37 = inttoptr i64 %35 to i8*
  %38 = load i8, i8* %37, align 1
  %conv = sext i8 %38 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %_Dynamic_check.succeeded
  %39 = load i8*, i8** %input_ptr, align 4
  %40 = load i8*, i8** %input.addr, align 4
  %41 = ptrtoint i8* %39 to i32
  %sub.ptr.lhs.cast = zext i32 %41 to i64
  %42 = ptrtoint i8* %40 to i32
  %sub.ptr.rhs.cast = zext i32 %42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %43 = load i64, i64* %len.addr, align 8
  %cmp3 = icmp ult i64 %sub.ptr.sub, %43
  %conv4 = zext i1 %cmp3 to i32
  %conv5 = sext i32 %conv4 to i64
  %tobool = icmp ne i64 %conv5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %_Dynamic_check.succeeded
  %44 = phi i1 [ false, %_Dynamic_check.succeeded ], [ %tobool, %land.rhs ]
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %45 = load i8*, i8** %input_ptr, align 4
  %46 = load i32, i32* @sbxHeapRange, align 8
  %47 = load i64, i64* @sbxHeap, align 8
  %48 = ptrtoint i8* %45 to i32
  %49 = zext i32 %48 to i64
  %50 = add i64 %47, %49
  %51 = icmp ult i32 %48, %46
  br i1 %51, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %while.body
  %52 = inttoptr i64 %50 to i8*
  %53 = load i8, i8* %52, align 1
  %conv8 = sext i8 %53 to i32
  %cmp9 = icmp eq i32 %conv8, 92
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %_Dynamic_check.succeeded7
  %54 = load i8*, i8** %input_ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  %55 = ptrtoint i8* %incdec.ptr to i32
  %56 = zext i32 %55 to i64
  %57 = bitcast i8** %input_ptr to i64*
  store i64 %56, i64* %57, align 4
  %58 = load i8*, i8** %input_ptr, align 4
  %59 = load i32, i32* @sbxHeapRange, align 8
  %60 = load i64, i64* @sbxHeap, align 8
  %61 = ptrtoint i8* %58 to i32
  %62 = zext i32 %61 to i64
  %63 = add i64 %60, %62
  %64 = icmp ult i32 %61, %59
  br i1 %64, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %if.then11
  %65 = inttoptr i64 %63 to i8*
  %66 = load i8, i8* %65, align 1
  %conv14 = sext i8 %66 to i32
  switch i32 %conv14, label %sw.default [
    i32 34, label %sw.bb
    i32 92, label %sw.bb17
    i32 47, label %sw.bb20
    i32 98, label %sw.bb23
    i32 102, label %sw.bb26
    i32 110, label %sw.bb29
    i32 114, label %sw.bb32
    i32 116, label %sw.bb35
    i32 117, label %sw.bb38
  ]

_Dynamic_check.failed:                            ; preds = %while.cond
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %while.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %if.then11
  call void @llvm.trap() #8
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded13
  %67 = load i8*, i8** %output_ptr, align 4
  %68 = load i32, i32* @sbxHeapRange, align 8
  %69 = load i64, i64* @sbxHeap, align 8
  %70 = ptrtoint i8* %67 to i32
  %71 = zext i32 %70 to i64
  %72 = add i64 %69, %71
  %73 = icmp ult i32 %70, %68
  br i1 %73, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %sw.bb
  %74 = inttoptr i64 %72 to i8*
  store i8 34, i8* %74, align 1
  br label %sw.epilog

_Dynamic_check.failed15:                          ; preds = %sw.bb
  call void @llvm.trap() #8
  unreachable

sw.bb17:                                          ; preds = %_Dynamic_check.succeeded13
  %75 = load i8*, i8** %output_ptr, align 4
  %76 = load i32, i32* @sbxHeapRange, align 8
  %77 = load i64, i64* @sbxHeap, align 8
  %78 = ptrtoint i8* %75 to i32
  %79 = zext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = icmp ult i32 %78, %76
  br i1 %81, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %sw.bb17
  %82 = inttoptr i64 %80 to i8*
  store i8 92, i8* %82, align 1
  br label %sw.epilog

_Dynamic_check.failed18:                          ; preds = %sw.bb17
  call void @llvm.trap() #8
  unreachable

sw.bb20:                                          ; preds = %_Dynamic_check.succeeded13
  %83 = load i8*, i8** %output_ptr, align 4
  %84 = load i32, i32* @sbxHeapRange, align 8
  %85 = load i64, i64* @sbxHeap, align 8
  %86 = ptrtoint i8* %83 to i32
  %87 = zext i32 %86 to i64
  %88 = add i64 %85, %87
  %89 = icmp ult i32 %86, %84
  br i1 %89, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %sw.bb20
  %90 = inttoptr i64 %88 to i8*
  store i8 47, i8* %90, align 1
  br label %sw.epilog

_Dynamic_check.failed21:                          ; preds = %sw.bb20
  call void @llvm.trap() #8
  unreachable

sw.bb23:                                          ; preds = %_Dynamic_check.succeeded13
  %91 = load i8*, i8** %output_ptr, align 4
  %92 = load i32, i32* @sbxHeapRange, align 8
  %93 = load i64, i64* @sbxHeap, align 8
  %94 = ptrtoint i8* %91 to i32
  %95 = zext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = icmp ult i32 %94, %92
  br i1 %97, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %sw.bb23
  %98 = inttoptr i64 %96 to i8*
  store i8 8, i8* %98, align 1
  br label %sw.epilog

_Dynamic_check.failed24:                          ; preds = %sw.bb23
  call void @llvm.trap() #8
  unreachable

sw.bb26:                                          ; preds = %_Dynamic_check.succeeded13
  %99 = load i8*, i8** %output_ptr, align 4
  %100 = load i32, i32* @sbxHeapRange, align 8
  %101 = load i64, i64* @sbxHeap, align 8
  %102 = ptrtoint i8* %99 to i32
  %103 = zext i32 %102 to i64
  %104 = add i64 %101, %103
  %105 = icmp ult i32 %102, %100
  br i1 %105, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %sw.bb26
  %106 = inttoptr i64 %104 to i8*
  store i8 12, i8* %106, align 1
  br label %sw.epilog

_Dynamic_check.failed27:                          ; preds = %sw.bb26
  call void @llvm.trap() #8
  unreachable

sw.bb29:                                          ; preds = %_Dynamic_check.succeeded13
  %107 = load i8*, i8** %output_ptr, align 4
  %108 = load i32, i32* @sbxHeapRange, align 8
  %109 = load i64, i64* @sbxHeap, align 8
  %110 = ptrtoint i8* %107 to i32
  %111 = zext i32 %110 to i64
  %112 = add i64 %109, %111
  %113 = icmp ult i32 %110, %108
  br i1 %113, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %sw.bb29
  %114 = inttoptr i64 %112 to i8*
  store i8 10, i8* %114, align 1
  br label %sw.epilog

_Dynamic_check.failed30:                          ; preds = %sw.bb29
  call void @llvm.trap() #8
  unreachable

sw.bb32:                                          ; preds = %_Dynamic_check.succeeded13
  %115 = load i8*, i8** %output_ptr, align 4
  %116 = load i32, i32* @sbxHeapRange, align 8
  %117 = load i64, i64* @sbxHeap, align 8
  %118 = ptrtoint i8* %115 to i32
  %119 = zext i32 %118 to i64
  %120 = add i64 %117, %119
  %121 = icmp ult i32 %118, %116
  br i1 %121, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %sw.bb32
  %122 = inttoptr i64 %120 to i8*
  store i8 13, i8* %122, align 1
  br label %sw.epilog

_Dynamic_check.failed33:                          ; preds = %sw.bb32
  call void @llvm.trap() #8
  unreachable

sw.bb35:                                          ; preds = %_Dynamic_check.succeeded13
  %123 = load i8*, i8** %output_ptr, align 4
  %124 = load i32, i32* @sbxHeapRange, align 8
  %125 = load i64, i64* @sbxHeap, align 8
  %126 = ptrtoint i8* %123 to i32
  %127 = zext i32 %126 to i64
  %128 = add i64 %125, %127
  %129 = icmp ult i32 %126, %124
  br i1 %129, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %sw.bb35
  %130 = inttoptr i64 %128 to i8*
  store i8 9, i8* %130, align 1
  br label %sw.epilog

_Dynamic_check.failed36:                          ; preds = %sw.bb35
  call void @llvm.trap() #8
  unreachable

sw.bb38:                                          ; preds = %_Dynamic_check.succeeded13
  %call39 = call i8* @t_malloc(i64 8)
  %131 = ptrtoint i8* %call39 to i32
  %132 = inttoptr i32 %131 to i8*
  store i8* %132, i8** %tmp40, align 4
  %133 = load i8*, i8** %tmp40, align 4
  %134 = call i64 @c_fetch_sandbox_heap_bound()
  %135 = call i64 @c_fetch_sandbox_heap_address()
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* @sbxHeapRange, align 8
  %138 = bitcast i8* %133 to i8**
  %139 = ptrtoint i8** %138 to i32
  %140 = zext i32 %139 to i64
  %141 = bitcast i8*** %input_tmp to i64*
  store i64 %140, i64* %141, align 4
  %142 = load i8*, i8** %input_ptr, align 4
  %143 = load i8**, i8*** %input_tmp, align 4
  %144 = load i32, i32* @sbxHeapRange, align 8
  %145 = load i64, i64* @sbxHeap, align 8
  %146 = ptrtoint i8** %143 to i32
  %147 = zext i32 %146 to i64
  %148 = add i64 %145, %147
  %149 = icmp ult i32 %146, %144
  br i1 %149, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %sw.bb38
  %150 = inttoptr i64 %148 to i8**
  %arrayidx = getelementptr inbounds i8*, i8** %150, i64 0
  %151 = ptrtoint i8* %142 to i32
  %152 = zext i32 %151 to i64
  %153 = bitcast i8** %arrayidx to i64*
  store i64 %152, i64* %153, align 4
  %call43 = call i8* @t_malloc(i64 8)
  %154 = ptrtoint i8* %call43 to i32
  %155 = inttoptr i32 %154 to i8*
  store i8* %155, i8** %tmp44, align 4
  %156 = load i8*, i8** %tmp44, align 4
  %157 = call i64 @c_fetch_sandbox_heap_bound()
  %158 = call i64 @c_fetch_sandbox_heap_address()
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* @sbxHeapRange, align 8
  %161 = bitcast i8* %156 to i8**
  %162 = ptrtoint i8** %161 to i32
  %163 = zext i32 %162 to i64
  %164 = bitcast i8*** %output_tmp to i64*
  store i64 %163, i64* %164, align 4
  %165 = load i8*, i8** %output_ptr, align 4
  %166 = load i8**, i8*** %output_tmp, align 4
  %167 = load i32, i32* @sbxHeapRange, align 8
  %168 = load i64, i64* @sbxHeap, align 8
  %169 = ptrtoint i8** %166 to i32
  %170 = zext i32 %169 to i64
  %171 = add i64 %168, %170
  %172 = icmp ult i32 %169, %167
  br i1 %172, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %_Dynamic_check.succeeded42
  %173 = inttoptr i64 %171 to i8**
  %arrayidx47 = getelementptr inbounds i8*, i8** %173, i64 0
  %174 = ptrtoint i8* %165 to i32
  %175 = zext i32 %174 to i64
  %176 = bitcast i8** %arrayidx47 to i64*
  store i64 %175, i64* %176, align 4
  %177 = load i8**, i8*** %input_tmp, align 4
  %178 = load i8**, i8*** %output_tmp, align 4
  %call48 = call i32 @parse_utf16(i8** %177, i8** %178)
  %cmp49 = icmp eq i32 %call48, -1
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %_Dynamic_check.succeeded46
  br label %error

_Dynamic_check.failed41:                          ; preds = %sw.bb38
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed45:                          ; preds = %_Dynamic_check.succeeded42
  call void @llvm.trap() #8
  unreachable

if.end52:                                         ; preds = %_Dynamic_check.succeeded46
  %179 = load i8**, i8*** %input_tmp, align 4
  %180 = load i32, i32* @sbxHeapRange, align 8
  %181 = load i64, i64* @sbxHeap, align 8
  %182 = ptrtoint i8** %179 to i32
  %183 = zext i32 %182 to i64
  %184 = add i64 %181, %183
  %185 = icmp ult i32 %182, %180
  br i1 %185, label %_Dynamic_check.succeeded54, label %_Dynamic_check.failed53

_Dynamic_check.succeeded54:                       ; preds = %if.end52
  %186 = inttoptr i64 %184 to i8**
  %arrayidx55 = getelementptr inbounds i8*, i8** %186, i64 0
  %187 = load i8*, i8** %arrayidx55, align 4
  %188 = ptrtoint i8* %187 to i32
  %189 = zext i32 %188 to i64
  %190 = bitcast i8** %input_ptr to i64*
  store i64 %189, i64* %190, align 4
  %191 = load i8**, i8*** %output_tmp, align 4
  %192 = load i32, i32* @sbxHeapRange, align 8
  %193 = load i64, i64* @sbxHeap, align 8
  %194 = ptrtoint i8** %191 to i32
  %195 = zext i32 %194 to i64
  %196 = add i64 %193, %195
  %197 = icmp ult i32 %194, %192
  br i1 %197, label %_Dynamic_check.succeeded57, label %_Dynamic_check.failed56

_Dynamic_check.succeeded57:                       ; preds = %_Dynamic_check.succeeded54
  %198 = inttoptr i64 %196 to i8**
  %arrayidx58 = getelementptr inbounds i8*, i8** %198, i64 0
  %199 = load i8*, i8** %arrayidx58, align 4
  %200 = ptrtoint i8* %199 to i32
  %201 = zext i32 %200 to i64
  %202 = bitcast i8** %output_ptr to i64*
  store i64 %201, i64* %202, align 4
  br label %sw.epilog

_Dynamic_check.failed53:                          ; preds = %if.end52
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed56:                          ; preds = %_Dynamic_check.succeeded54
  call void @llvm.trap() #8
  unreachable

sw.default:                                       ; preds = %_Dynamic_check.succeeded13
  br label %error

sw.epilog:                                        ; preds = %_Dynamic_check.succeeded57, %_Dynamic_check.succeeded37, %_Dynamic_check.succeeded34, %_Dynamic_check.succeeded31, %_Dynamic_check.succeeded28, %_Dynamic_check.succeeded25, %_Dynamic_check.succeeded22, %_Dynamic_check.succeeded19, %_Dynamic_check.succeeded16
  br label %if.end71

if.else:                                          ; preds = %_Dynamic_check.succeeded7
  %203 = load i8*, i8** %input_ptr, align 4
  %204 = load i32, i32* @sbxHeapRange, align 8
  %205 = load i64, i64* @sbxHeap, align 8
  %206 = ptrtoint i8* %203 to i32
  %207 = zext i32 %206 to i64
  %208 = add i64 %205, %207
  %209 = icmp ult i32 %206, %204
  br i1 %209, label %_Dynamic_check.succeeded60, label %_Dynamic_check.failed59

_Dynamic_check.succeeded60:                       ; preds = %if.else
  %210 = inttoptr i64 %208 to i8*
  %211 = load i8, i8* %210, align 1
  %conv61 = zext i8 %211 to i32
  %cmp62 = icmp slt i32 %conv61, 32
  br i1 %cmp62, label %if.then64, label %if.else65

if.then64:                                        ; preds = %_Dynamic_check.succeeded60
  br label %error

_Dynamic_check.failed59:                          ; preds = %if.else
  call void @llvm.trap() #8
  unreachable

if.else65:                                        ; preds = %_Dynamic_check.succeeded60
  %212 = load i8*, i8** %input_ptr, align 4
  %213 = load i32, i32* @sbxHeapRange, align 8
  %214 = load i64, i64* @sbxHeap, align 8
  %215 = ptrtoint i8* %212 to i32
  %216 = zext i32 %215 to i64
  %217 = add i64 %214, %216
  %218 = icmp ult i32 %215, %213
  br i1 %218, label %_Dynamic_check.succeeded67, label %_Dynamic_check.failed66

_Dynamic_check.succeeded67:                       ; preds = %if.else65
  %219 = inttoptr i64 %217 to i8*
  %220 = load i8, i8* %219, align 1
  %221 = load i8*, i8** %output_ptr, align 4
  %222 = load i32, i32* @sbxHeapRange, align 8
  %223 = load i64, i64* @sbxHeap, align 8
  %224 = ptrtoint i8* %221 to i32
  %225 = zext i32 %224 to i64
  %226 = add i64 %223, %225
  %227 = icmp ult i32 %224, %222
  br i1 %227, label %_Dynamic_check.succeeded69, label %_Dynamic_check.failed68

_Dynamic_check.succeeded69:                       ; preds = %_Dynamic_check.succeeded67
  %228 = inttoptr i64 %226 to i8*
  store i8 %220, i8* %228, align 1
  br label %if.end70

_Dynamic_check.failed66:                          ; preds = %if.else65
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed68:                          ; preds = %_Dynamic_check.succeeded67
  call void @llvm.trap() #8
  unreachable

if.end70:                                         ; preds = %_Dynamic_check.succeeded69
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %sw.epilog
  %229 = load i8*, i8** %output_ptr, align 4
  %incdec.ptr72 = getelementptr inbounds i8, i8* %229, i32 1
  %230 = ptrtoint i8* %incdec.ptr72 to i32
  %231 = zext i32 %230 to i64
  %232 = bitcast i8** %output_ptr to i64*
  store i64 %231, i64* %232, align 4
  %233 = load i8*, i8** %input_ptr, align 4
  %incdec.ptr73 = getelementptr inbounds i8, i8* %233, i32 1
  %234 = ptrtoint i8* %incdec.ptr73 to i32
  %235 = zext i32 %234 to i64
  %236 = bitcast i8** %input_ptr to i64*
  store i64 %235, i64* %236, align 4
  br label %while.cond, !llvm.loop !2

while.end:                                        ; preds = %land.end
  %237 = load i8*, i8** %output_ptr, align 4
  %238 = load i32, i32* @sbxHeapRange, align 8
  %239 = load i64, i64* @sbxHeap, align 8
  %240 = ptrtoint i8* %237 to i32
  %241 = zext i32 %240 to i64
  %242 = add i64 %239, %241
  %243 = icmp ult i32 %240, %238
  br i1 %243, label %_Dynamic_check.succeeded75, label %_Dynamic_check.failed74

_Dynamic_check.succeeded75:                       ; preds = %while.end
  %244 = inttoptr i64 %242 to i8*
  store i8 0, i8* %244, align 1
  %245 = load i8*, i8** %output_ptr, align 4
  %246 = load i8*, i8** %output, align 4
  %247 = ptrtoint i8* %245 to i32
  %sub.ptr.lhs.cast76 = zext i32 %247 to i64
  %248 = ptrtoint i8* %246 to i32
  %sub.ptr.rhs.cast77 = zext i32 %248 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %add79 = add i64 %sub.ptr.sub78, 1
  store i64 %add79, i64* %final_size, align 8
  %249 = load i64, i64* %final_size, align 8
  %call80 = call i8* @string_tainted_malloc(i64 %249)
  %250 = ptrtoint i8* %call80 to i32
  %251 = inttoptr i32 %250 to i8*
  store i8* %251, i8** %tmp81, align 4
  %252 = load i8*, i8** %tmp81, align 4
  %253 = ptrtoint i8* %252 to i32
  %254 = zext i32 %253 to i64
  %255 = bitcast i8** %resized_output to i64*
  store i64 %254, i64* %255, align 4
  %256 = load i8*, i8** %resized_output, align 4
  %257 = ptrtoint i8* %256 to i32
  %258 = zext i32 %257 to i64
  %259 = inttoptr i64 %258 to i8*
  %260 = ptrtoint i8* %259 to i32
  %cmp82 = icmp eq i32 %260, 0
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %_Dynamic_check.succeeded75
  br label %error

_Dynamic_check.failed74:                          ; preds = %while.end
  call void @llvm.trap() #8
  unreachable

if.end85:                                         ; preds = %_Dynamic_check.succeeded75
  %261 = load i8*, i8** %resized_output, align 4
  %262 = load i8*, i8** %output, align 4
  %263 = load i64, i64* %final_size, align 8
  %264 = load i32, i32* @sbxHeapRange, align 8
  %265 = load i64, i64* @sbxHeap, align 8
  %266 = ptrtoint i8* %261 to i32
  %267 = zext i32 %266 to i64
  %268 = add i64 %265, %267
  %269 = icmp ult i32 %266, %264
  br i1 %269, label %_Dynamic_check.succeeded87, label %_Dynamic_check.failed86

_Dynamic_check.succeeded87:                       ; preds = %if.end85
  %270 = inttoptr i64 %268 to i8*
  %271 = load i32, i32* @sbxHeapRange, align 8
  %272 = load i64, i64* @sbxHeap, align 8
  %273 = ptrtoint i8* %262 to i32
  %274 = zext i32 %273 to i64
  %275 = add i64 %272, %274
  %276 = icmp ult i32 %273, %271
  br i1 %276, label %_Dynamic_check.succeeded89, label %_Dynamic_check.failed88

_Dynamic_check.succeeded89:                       ; preds = %_Dynamic_check.succeeded87
  %277 = inttoptr i64 %275 to i8*
  %call90 = call i8* @t_memcpy(i8* %270, i8* %277, i64 %263)
  %278 = ptrtoint i8* %call90 to i32
  %279 = inttoptr i32 %278 to i8*
  store i8* %279, i8** %tmp91, align 4
  %280 = load i8*, i8** %tmp91, align 4
  %281 = load i8*, i8** %output, align 4
  %282 = ptrtoint i8* %281 to i32
  %_Dynamic_check.is_null = icmp eq i32 %282, 0
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded89
  %283 = load i8*, i8** %output, align 4
  %284 = load i8*, i8** %output, align 4
  %add.ptr = getelementptr inbounds i8, i8* %284, i64 1
  store i8* %add.ptr, i8** %tmp92, align 4
  %285 = load i8*, i8** %tmp92, align 4
  %286 = ptrtoint i8* %281 to i32
  %_Dynamic_check.non_null = icmp ne i32 %286, 0
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded94, label %_Dynamic_check.failed93

_Dynamic_check.succeeded94:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr95 = getelementptr inbounds i8, i8* %281, i64 0
  %287 = ptrtoint i8* %283 to i32
  %288 = inttoptr i32 %287 to i8*
  store i8* %288, i8** %tmp96, align 4
  %289 = load i8*, i8** %tmp96, align 4
  %290 = ptrtoint i8* %281 to i32
  %291 = inttoptr i32 %290 to i8*
  store i8* %291, i8** %tmp97, align 4
  %292 = load i8*, i8** %tmp97, align 4
  %293 = ptrtoint i8* %289 to i32
  %294 = ptrtoint i8* %292 to i32
  %_Dynamic_check.lower = icmp ule i32 %293, %294
  %295 = ptrtoint i8* %add.ptr95 to i32
  %296 = inttoptr i32 %295 to i8*
  store i8* %296, i8** %tmp98, align 4
  %297 = load i8*, i8** %tmp98, align 4
  %298 = ptrtoint i8* %285 to i32
  %299 = inttoptr i32 %298 to i8*
  store i8* %299, i8** %tmp99, align 4
  %300 = load i8*, i8** %tmp99, align 4
  %301 = ptrtoint i8* %297 to i32
  %302 = ptrtoint i8* %300 to i32
  %_Dynamic_check.upper = icmp ule i32 %301, %302
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed100

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded94, %_Dynamic_check.succeeded89
  %303 = load i32, i32* @sbxHeapRange, align 8
  %304 = load i64, i64* @sbxHeap, align 8
  %305 = ptrtoint i8* %281 to i32
  %306 = zext i32 %305 to i64
  %307 = add i64 %304, %306
  %308 = icmp ult i32 %305, %303
  br i1 %308, label %_Dynamic_check.succeeded102, label %_Dynamic_check.failed101

_Dynamic_check.succeeded102:                      ; preds = %_Dynamic_check.success
  %309 = inttoptr i64 %307 to i8*
  call void @t_free(i8* %309)
  %310 = call i64 @c_fetch_sandbox_heap_bound()
  %311 = call i64 @c_fetch_sandbox_heap_address()
  %312 = sub i64 %310, %311
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* @sbxHeapRange, align 8
  %314 = load i8*, i8** %resized_output, align 4
  store i8* %314, i8** %retval, align 8
  br label %return

_Dynamic_check.failed86:                          ; preds = %if.end85
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed88:                          ; preds = %_Dynamic_check.succeeded87
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed93:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed100:                         ; preds = %_Dynamic_check.succeeded94
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed101:                         ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

error:                                            ; preds = %if.then84, %if.then64, %sw.default, %if.then51, %if.then
  %315 = load i8*, i8** %output, align 4
  %316 = ptrtoint i8* %315 to i32
  %_Dynamic_check.is_null103 = icmp eq i32 %316, 0
  br i1 %_Dynamic_check.is_null103, label %_Dynamic_check.success119, label %_Dynamic_check.subsumption104

_Dynamic_check.subsumption104:                    ; preds = %error
  %317 = load i8*, i8** %output, align 4
  %318 = load i8*, i8** %output, align 4
  %add.ptr105 = getelementptr inbounds i8, i8* %318, i64 1
  store i8* %add.ptr105, i8** %tmp106, align 4
  %319 = load i8*, i8** %tmp106, align 4
  %320 = ptrtoint i8* %315 to i32
  %_Dynamic_check.non_null107 = icmp ne i32 %320, 0
  br i1 %_Dynamic_check.non_null107, label %_Dynamic_check.succeeded109, label %_Dynamic_check.failed108

_Dynamic_check.succeeded109:                      ; preds = %_Dynamic_check.subsumption104
  %add.ptr110 = getelementptr inbounds i8, i8* %315, i64 0
  %321 = ptrtoint i8* %317 to i32
  %322 = inttoptr i32 %321 to i8*
  store i8* %322, i8** %tmp111, align 4
  %323 = load i8*, i8** %tmp111, align 4
  %324 = ptrtoint i8* %315 to i32
  %325 = inttoptr i32 %324 to i8*
  store i8* %325, i8** %tmp112, align 4
  %326 = load i8*, i8** %tmp112, align 4
  %327 = ptrtoint i8* %323 to i32
  %328 = ptrtoint i8* %326 to i32
  %_Dynamic_check.lower113 = icmp ule i32 %327, %328
  %329 = ptrtoint i8* %add.ptr110 to i32
  %330 = inttoptr i32 %329 to i8*
  store i8* %330, i8** %tmp114, align 4
  %331 = load i8*, i8** %tmp114, align 4
  %332 = ptrtoint i8* %319 to i32
  %333 = inttoptr i32 %332 to i8*
  store i8* %333, i8** %tmp115, align 4
  %334 = load i8*, i8** %tmp115, align 4
  %335 = ptrtoint i8* %331 to i32
  %336 = ptrtoint i8* %334 to i32
  %_Dynamic_check.upper116 = icmp ule i32 %335, %336
  %_Dynamic_check.cast117 = and i1 %_Dynamic_check.lower113, %_Dynamic_check.upper116
  br i1 %_Dynamic_check.cast117, label %_Dynamic_check.success119, label %_Dynamic_check.failed118

_Dynamic_check.success119:                        ; preds = %_Dynamic_check.succeeded109, %error
  %337 = load i32, i32* @sbxHeapRange, align 8
  %338 = load i64, i64* @sbxHeap, align 8
  %339 = ptrtoint i8* %315 to i32
  %340 = zext i32 %339 to i64
  %341 = add i64 %338, %340
  %342 = icmp ult i32 %339, %337
  br i1 %342, label %_Dynamic_check.succeeded121, label %_Dynamic_check.failed120

_Dynamic_check.succeeded121:                      ; preds = %_Dynamic_check.success119
  %343 = inttoptr i64 %341 to i8*
  call void @t_free(i8* %343)
  %344 = call i64 @c_fetch_sandbox_heap_bound()
  %345 = call i64 @c_fetch_sandbox_heap_address()
  %346 = sub i64 %344, %345
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* @sbxHeapRange, align 8
  store i8* null, i8** %retval, align 8
  br label %return

_Dynamic_check.failed108:                         ; preds = %_Dynamic_check.subsumption104
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed118:                         ; preds = %_Dynamic_check.succeeded109
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed120:                         ; preds = %_Dynamic_check.success119
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded121, %_Dynamic_check.succeeded102
  %348 = load i8*, i8** %retval, align 8
  ret i8* %348
}

declare dso_local i8* @c_fetch_pointer_from_offset(i32) #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #4

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @get_quoted_string(i8** %string, i8* (i8*, i64)* %process_string) #2 {
entry:
  %string.addr = alloca i8**, align 4
  %process_string.addr = alloca i8* (i8*, i64)*, align 4
  %0 = ptrtoint i8** %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8*** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  %3 = ptrtoint i8* (i8*, i64)* %process_string to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8* (i8*, i64)** %process_string.addr to i64*
  store i64 %4, i64* %5, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %6 = load i8**, i8*** %string.addr, align 4
  %7 = ptrtoint i8** %6 to i32
  %8 = load i32, i32* @process_string_trampoline_callback_val, align 4
  %call1 = call i32 @w2c_get_quoted_string(i8* %call, i32 %7, i32 %8)
  %conv = zext i32 %call1 to i64
  %9 = inttoptr i64 %conv to i8*
  ret i8* %9
}

declare dso_local i32 @w2c_get_quoted_string(i8*, i32, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @parse_value(i8** %string, i64 %nesting) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8**, align 4
  %nesting.addr = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp14 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp17 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp20 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp23 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp26 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = call i64 @c_fetch_sandbox_heap_bound()
  %1 = call i64 @c_fetch_sandbox_heap_address()
  %2 = sub i64 %0, %1
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* @sbxHeapRange, align 8
  %4 = ptrtoint i8** %string to i32
  %5 = zext i32 %4 to i64
  %6 = bitcast i8*** %string.addr to i64*
  store i64 %5, i64* %6, align 4
  store i64 %nesting, i64* %nesting.addr, align 8
  %7 = load i64, i64* %nesting.addr, align 8
  %cmp = icmp ugt i64 %7, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %_Dynamic_check.succeeded4, %if.end
  %8 = load i8**, i8*** %string.addr, align 4
  %9 = load i32, i32* @sbxHeapRange, align 8
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = ptrtoint i8** %8 to i32
  %12 = zext i32 %11 to i64
  %13 = add i64 %10, %12
  %14 = icmp ult i32 %11, %9
  br i1 %14, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %while.cond
  %15 = inttoptr i64 %13 to i8**
  %16 = load i8*, i8** %15, align 4
  %17 = load i32, i32* @sbxHeapRange, align 8
  %18 = load i64, i64* @sbxHeap, align 8
  %19 = ptrtoint i8* %16 to i32
  %20 = zext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = icmp ult i32 %19, %17
  br i1 %22, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %23 = inttoptr i64 %21 to i8*
  %24 = load i8, i8* %23, align 1
  %conv = zext i8 %24 to i32
  %call = call i32 @isspace(i32 %conv) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %_Dynamic_check.succeeded2
  %25 = load i8**, i8*** %string.addr, align 4
  %26 = load i32, i32* @sbxHeapRange, align 8
  %27 = load i64, i64* @sbxHeap, align 8
  %28 = ptrtoint i8** %25 to i32
  %29 = zext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = icmp ult i32 %28, %26
  br i1 %31, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %while.body
  %32 = inttoptr i64 %30 to i8**
  %33 = load i8*, i8** %32, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  %34 = ptrtoint i8* %incdec.ptr to i32
  %35 = zext i32 %34 to i64
  %36 = bitcast i8** %32 to i64*
  store i64 %35, i64* %36, align 4
  br label %while.cond, !llvm.loop !4

_Dynamic_check.failed:                            ; preds = %while.cond
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %while.body
  call void @llvm.trap() #8
  unreachable

while.end:                                        ; preds = %_Dynamic_check.succeeded2
  %37 = load i8**, i8*** %string.addr, align 4
  %38 = load i32, i32* @sbxHeapRange, align 8
  %39 = load i64, i64* @sbxHeap, align 8
  %40 = ptrtoint i8** %37 to i32
  %41 = zext i32 %40 to i64
  %42 = add i64 %39, %41
  %43 = icmp ult i32 %40, %38
  br i1 %43, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %while.end
  %44 = inttoptr i64 %42 to i8**
  %45 = load i8*, i8** %44, align 4
  %46 = load i32, i32* @sbxHeapRange, align 8
  %47 = load i64, i64* @sbxHeap, align 8
  %48 = ptrtoint i8* %45 to i32
  %49 = zext i32 %48 to i64
  %50 = add i64 %47, %49
  %51 = icmp ult i32 %48, %46
  br i1 %51, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %52 = inttoptr i64 %50 to i8*
  %53 = load i8, i8* %52, align 1
  %conv9 = sext i8 %53 to i32
  switch i32 %conv9, label %sw.default [
    i32 123, label %sw.bb
    i32 91, label %sw.bb11
    i32 34, label %sw.bb15
    i32 102, label %sw.bb18
    i32 116, label %sw.bb18
    i32 45, label %sw.bb21
    i32 48, label %sw.bb21
    i32 49, label %sw.bb21
    i32 50, label %sw.bb21
    i32 51, label %sw.bb21
    i32 52, label %sw.bb21
    i32 53, label %sw.bb21
    i32 54, label %sw.bb21
    i32 55, label %sw.bb21
    i32 56, label %sw.bb21
    i32 57, label %sw.bb21
    i32 110, label %sw.bb24
  ]

_Dynamic_check.failed5:                           ; preds = %while.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded8
  %54 = load i8**, i8*** %string.addr, align 4
  %55 = load i64, i64* %nesting.addr, align 8
  %add = add i64 %55, 1
  %call10 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**, i64, i8* (i8*, i64)*, %Tstruct.Spl_json_value_t_t* (i8**, i64)*)* @parse_object_value to %Tstruct.Spl_json_value_t_t* (i8**, i64, i8* (i8*, i64)*, %Tstruct.Spl_json_value_t_t* (i8**, i64)*)*)(i8** %54, i64 %add, i8* (i8*, i64)* @process_string, %Tstruct.Spl_json_value_t_t* (i8**, i64)* @parse_value)
  %56 = bitcast %Tstruct.Spl_json_value_t_t* %call10 to %Tstruct.json_value_t_t*
  %57 = bitcast %Tstruct.json_value_t_t* %56 to i8*
  %58 = ptrtoint i8* %57 to i32
  %59 = inttoptr i32 %58 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %59, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %60 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  store %Tstruct.Spl_json_value_t_t* %60, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %_Dynamic_check.succeeded8
  %61 = load i8**, i8*** %string.addr, align 4
  %62 = load i64, i64* %nesting.addr, align 8
  %add12 = add i64 %62, 1
  %call13 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**, i64, %Tstruct.Spl_json_value_t_t* (i8**, i64)*)* @parse_array_value to %Tstruct.Spl_json_value_t_t* (i8**, i64, %Tstruct.Spl_json_value_t_t* (i8**, i64)*)*)(i8** %61, i64 %add12, %Tstruct.Spl_json_value_t_t* (i8**, i64)* @parse_value)
  %63 = bitcast %Tstruct.Spl_json_value_t_t* %call13 to %Tstruct.json_value_t_t*
  %64 = bitcast %Tstruct.json_value_t_t* %63 to i8*
  %65 = ptrtoint i8* %64 to i32
  %66 = inttoptr i32 %65 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %66, %Tstruct.Spl_json_value_t_t** %tmp14, align 4
  %67 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp14, align 4
  store %Tstruct.Spl_json_value_t_t* %67, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %_Dynamic_check.succeeded8
  %68 = load i8**, i8*** %string.addr, align 4
  %call16 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**, i8* (i8*, i64)*)* @parse_string_value to %Tstruct.Spl_json_value_t_t* (i8**, i8* (i8*, i64)*)*)(i8** %68, i8* (i8*, i64)* @process_string)
  %69 = bitcast %Tstruct.Spl_json_value_t_t* %call16 to %Tstruct.json_value_t_t*
  %70 = bitcast %Tstruct.json_value_t_t* %69 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = inttoptr i32 %71 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %72, %Tstruct.Spl_json_value_t_t** %tmp17, align 4
  %73 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp17, align 4
  store %Tstruct.Spl_json_value_t_t* %73, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb18:                                          ; preds = %_Dynamic_check.succeeded8, %_Dynamic_check.succeeded8
  %74 = load i8**, i8*** %string.addr, align 4
  %call19 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**)* @parse_boolean_value to %Tstruct.Spl_json_value_t_t* (i8**)*)(i8** %74)
  %75 = bitcast %Tstruct.Spl_json_value_t_t* %call19 to %Tstruct.json_value_t_t*
  %76 = bitcast %Tstruct.json_value_t_t* %75 to i8*
  %77 = ptrtoint i8* %76 to i32
  %78 = inttoptr i32 %77 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %78, %Tstruct.Spl_json_value_t_t** %tmp20, align 4
  %79 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp20, align 4
  store %Tstruct.Spl_json_value_t_t* %79, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb21:                                          ; preds = %_Dynamic_check.succeeded8, %_Dynamic_check.succeeded8, %_Dynamic_check.succeeded8, %_Dynamic_check.succeeded8, %_Dynamic_check.succeeded8, %_Dynamic_check.succeeded8, %_Dynamic_check.succeeded8, %_Dynamic_check.succeeded8, %_Dynamic_check.succeeded8, %_Dynamic_check.succeeded8, %_Dynamic_check.succeeded8
  %80 = load i8**, i8*** %string.addr, align 4
  %call22 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**)* @parse_number_value to %Tstruct.Spl_json_value_t_t* (i8**)*)(i8** %80)
  %81 = bitcast %Tstruct.Spl_json_value_t_t* %call22 to %Tstruct.json_value_t_t*
  %82 = bitcast %Tstruct.json_value_t_t* %81 to i8*
  %83 = ptrtoint i8* %82 to i32
  %84 = inttoptr i32 %83 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %84, %Tstruct.Spl_json_value_t_t** %tmp23, align 4
  %85 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp23, align 4
  store %Tstruct.Spl_json_value_t_t* %85, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb24:                                          ; preds = %_Dynamic_check.succeeded8
  %86 = load i8**, i8*** %string.addr, align 4
  %call25 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**)* @parse_null_value to %Tstruct.Spl_json_value_t_t* (i8**)*)(i8** %86)
  %87 = bitcast %Tstruct.Spl_json_value_t_t* %call25 to %Tstruct.json_value_t_t*
  %88 = bitcast %Tstruct.json_value_t_t* %87 to i8*
  %89 = ptrtoint i8* %88 to i32
  %90 = inttoptr i32 %89 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %90, %Tstruct.Spl_json_value_t_t** %tmp26, align 4
  %91 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp26, align 4
  store %Tstruct.Spl_json_value_t_t* %91, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.default:                                       ; preds = %_Dynamic_check.succeeded8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb24, %sw.bb21, %sw.bb18, %sw.bb15, %sw.bb11, %sw.bb, %if.then
  %92 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %92
}

declare i64 @c_fetch_sandbox_heap_bound()

declare i64 @c_fetch_sandbox_heap_address()

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #5

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.json_value_t_t* @parse_object_value(i8** %str_cpy, i64 %nesting, i8* (i8*, i64)* %process_string, %Tstruct.Spl_json_value_t_t* (i8**, i64)* %parse_value) #2 {
entry:
  %str_cpy.addr = alloca i8**, align 4
  %nesting.addr = alloca i64, align 8
  %process_string.addr = alloca i8* (i8*, i64)*, align 4
  %parse_value.addr = alloca %Tstruct.Spl_json_value_t_t* (i8**, i64)*, align 4
  %0 = ptrtoint i8** %str_cpy to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8*** %str_cpy.addr to i64*
  store i64 %1, i64* %2, align 4
  store i64 %nesting, i64* %nesting.addr, align 8
  %3 = ptrtoint i8* (i8*, i64)* %process_string to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8* (i8*, i64)** %process_string.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* (i8**, i64)* %parse_value to i32
  %7 = zext i32 %6 to i64
  %8 = bitcast %Tstruct.Spl_json_value_t_t* (i8**, i64)** %parse_value.addr to i64*
  store i64 %7, i64* %8, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %9 = load i8**, i8*** %str_cpy.addr, align 4
  %10 = ptrtoint i8** %9 to i32
  %11 = load i64, i64* %nesting.addr, align 8
  %12 = load i32, i32* @process_string_trampoline_callback_val, align 4
  %13 = load i32, i32* @parse_value_trampoline_callback_val, align 4
  %call1 = call i32 @w2c_parse_object_value(i8* %call, i32 %10, i64 %11, i32 %12, i32 %13)
  %conv = zext i32 %call1 to i64
  %14 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %14
}

declare dso_local i32 @w2c_parse_object_value(i8*, i32, i64, i32, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.json_value_t_t* @parse_array_value(i8** %str_cpy, i64 %nesting, %Tstruct.Spl_json_value_t_t* (i8**, i64)* %parse_value) #2 {
entry:
  %str_cpy.addr = alloca i8**, align 4
  %nesting.addr = alloca i64, align 8
  %parse_value.addr = alloca %Tstruct.Spl_json_value_t_t* (i8**, i64)*, align 4
  %ret_param_types = alloca [3 x i32], align 4
  %0 = ptrtoint i8** %str_cpy to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8*** %str_cpy.addr to i64*
  store i64 %1, i64* %2, align 4
  store i64 %nesting, i64* %nesting.addr, align 8
  %3 = ptrtoint %Tstruct.Spl_json_value_t_t* (i8**, i64)* %parse_value to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast %Tstruct.Spl_json_value_t_t* (i8**, i64)** %parse_value.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = bitcast [3 x i32]* %ret_param_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ([3 x i32]* @__const.parse_array_value.ret_param_types to i8*), i64 12, i1 false)
  %call = call i8* (...) @c_fetch_sandbox_address()
  %7 = load i8**, i8*** %str_cpy.addr, align 4
  %8 = ptrtoint i8** %7 to i32
  %9 = load i64, i64* %nesting.addr, align 8
  %10 = load i32, i32* @parse_value_trampoline_callback_val, align 4
  %call1 = call i32 @w2c_parse_array_value(i8* %call, i32 %8, i64 %9, i32 %10)
  %conv = zext i32 %call1 to i64
  %11 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %11
}

declare dso_local i32 @w2c_parse_array_value(i8*, i32, i64, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.json_value_t_t* @parse_string_value(i8** %str_cpy, i8* (i8*, i64)* %process_string) #2 {
entry:
  %str_cpy.addr = alloca i8**, align 4
  %process_string.addr = alloca i8* (i8*, i64)*, align 4
  %ret_param_types = alloca [3 x i32], align 4
  %0 = ptrtoint i8** %str_cpy to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8*** %str_cpy.addr to i64*
  store i64 %1, i64* %2, align 4
  %3 = ptrtoint i8* (i8*, i64)* %process_string to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8* (i8*, i64)** %process_string.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = bitcast [3 x i32]* %ret_param_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ([3 x i32]* @__const.parse_string_value.ret_param_types to i8*), i64 12, i1 false)
  %call = call i8* (...) @c_fetch_sandbox_address()
  %7 = load i8**, i8*** %str_cpy.addr, align 4
  %8 = ptrtoint i8** %7 to i32
  %9 = load i32, i32* @process_string_trampoline_callback_val, align 4
  %call1 = call i32 @w2c_parse_string_value(i8* %call, i32 %8, i32 %9)
  %conv = zext i32 %call1 to i64
  %10 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %10
}

declare dso_local i32 @w2c_parse_string_value(i8*, i32, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.json_value_t_t* @parse_number_value(i8** %str_cpy) #2 {
entry:
  %str_cpy.addr = alloca i8**, align 4
  %0 = ptrtoint i8** %str_cpy to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8*** %str_cpy.addr to i64*
  store i64 %1, i64* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load i8**, i8*** %str_cpy.addr, align 4
  %4 = ptrtoint i8** %3 to i32
  %call1 = call i32 @w2c_parse_number_value(i8* %call, i32 %4)
  %conv = zext i32 %call1 to i64
  %5 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %5
}

declare dso_local i32 @w2c_parse_number_value(i8*, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.json_value_t_t* @parse_null_value(i8** %str_cpy) #2 {
entry:
  %str_cpy.addr = alloca i8**, align 4
  %0 = ptrtoint i8** %str_cpy to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8*** %str_cpy.addr to i64*
  store i64 %1, i64* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load i8**, i8*** %str_cpy.addr, align 4
  %4 = ptrtoint i8** %3 to i32
  %call1 = call i32 @w2c_parse_null_value(i8* %call, i32 %4)
  %conv = zext i32 %call1 to i64
  %5 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %5
}

declare dso_local i32 @w2c_parse_null_value(i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %value, i8* %buf, i32 %level, i32 %is_pretty, i8* %num_buf, i8* %buf_start, i64 %buf_len) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %buf.addr = alloca i8*, align 4
  %level.addr = alloca i32, align 4
  %is_pretty.addr = alloca i32, align 4
  %num_buf.addr = alloca i8*, align 4
  %buf_start.addr = alloca i8*, align 4
  %buf_len.addr = alloca i64, align 8
  %key = alloca i8*, align 4
  %string = alloca i8*, align 4
  %temp_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %num = alloca double, align 8
  %written = alloca i32, align 4
  %written_total = alloca i32, align 4
  %tmp = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %tmp6 = alloca i8*, align 4
  %tmp19 = alloca i8*, align 4
  %tmp37 = alloca i8*, align 4
  %tmp43 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp53 = alloca i8*, align 4
  %tmp67 = alloca i8*, align 4
  %tmp83 = alloca i8*, align 4
  %tmp101 = alloca i8*, align 4
  %tmp115 = alloca i8*, align 4
  %tmp121 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %tmp132 = alloca i8*, align 4
  %tmp149 = alloca i8*, align 4
  %tmp158 = alloca i8*, align 4
  %tmp174 = alloca i8*, align 4
  %tmp187 = alloca i8*, align 4
  %tmp199 = alloca i8*, align 4
  %tmp214 = alloca i8*, align 4
  %tmp220 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp230 = alloca i8*, align 4
  %tmp245 = alloca i8*, align 4
  %tmp261 = alloca i8*, align 4
  %tmp282 = alloca i8*, align 4
  %tmp296 = alloca i8*, align 4
  %tmp302 = alloca i8*, align 4
  %tmp314 = alloca i8*, align 4
  %tmp330 = alloca i8*, align 4
  %tmp343 = alloca i8*, align 4
  %temp_buf = alloca i8*, align 4
  %tmp361 = alloca i8*, align 4
  %tmp374 = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %buf to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %buf.addr to i64*
  store i64 %4, i64* %5, align 4
  store i32 %level, i32* %level.addr, align 4
  store i32 %is_pretty, i32* %is_pretty.addr, align 4
  %6 = ptrtoint i8* %num_buf to i32
  %7 = zext i32 %6 to i64
  %8 = bitcast i8** %num_buf.addr to i64*
  store i64 %7, i64* %8, align 4
  %9 = ptrtoint i8* %buf_start to i32
  %10 = zext i32 %9 to i64
  %11 = bitcast i8** %buf_start.addr to i64*
  store i64 %10, i64* %11, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  %12 = bitcast i8** %key to i64*
  store i64 0, i64* %12, align 4
  %13 = bitcast i8** %string to i64*
  store i64 0, i64* %13, align 4
  %14 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 0, i32* %14, align 4
  %15 = bitcast %Tstruct.Spl_json_array_t_t** %array to i32*
  store i32 0, i32* %15, align 4
  %16 = bitcast %Tstruct.Spl_json_object_t_t** %object to i32*
  store i32 0, i32* %16, align 4
  store i64 0, i64* %i, align 8
  store i64 0, i64* %count, align 8
  store double 0.000000e+00, double* %num, align 8
  store i32 -1, i32* %written, align 4
  store i32 0, i32* %written_total, align 4
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb119
    i32 2, label %sw.bb300
    i32 6, label %sw.bb317
    i32 3, label %sw.bb348
    i32 1, label %sw.bb364
    i32 -1, label %sw.bb378
  ]

sw.bb:                                            ; preds = %entry
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call1 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %18)
  %19 = bitcast %Tstruct.Spl_json_array_t_t* %call1 to %Tstruct.json_array_t_t*
  %20 = bitcast %Tstruct.json_array_t_t* %19 to i8*
  %21 = ptrtoint i8* %20 to i32
  %22 = inttoptr i32 %21 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %22, %Tstruct.Spl_json_array_t_t** %tmp, align 4
  %23 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp, align 4
  %24 = ptrtoint %Tstruct.Spl_json_array_t_t* %23 to i32
  %25 = bitcast %Tstruct.Spl_json_array_t_t** %array to i32*
  store i32 %24, i32* %25, align 4
  %26 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array, align 4
  %call2 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %26)
  store i64 %call2, i64* %count, align 8
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %27 = load i8*, i8** %buf.addr, align 4
  %28 = load i8*, i8** %buf_start.addr, align 4
  %29 = load i64, i64* %buf_len.addr, align 8
  %call3 = call i32 @append_string(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %28, i64 %29)
  store i32 %call3, i32* %written, align 4
  %30 = load i32, i32* %written, align 4
  %cmp = icmp slt i32 %30, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  %31 = load i8*, i8** %buf.addr, align 4
  %32 = ptrtoint i8* %31 to i32
  %33 = zext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %cmp4 = icmp ne i8* %34, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %35 = load i32, i32* %written, align 4
  %36 = load i8*, i8** %buf.addr, align 4
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  store i8* %add.ptr, i8** %tmp6, align 4
  %37 = load i8*, i8** %tmp6, align 4
  %38 = ptrtoint i8* %37 to i32
  %39 = zext i32 %38 to i64
  %40 = bitcast i8** %buf.addr to i64*
  store i64 %39, i64* %40, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %41 = load i32, i32* %written, align 4
  %42 = load i32, i32* %written_total, align 4
  %add = add nsw i32 %42, %41
  store i32 %add, i32* %written_total, align 4
  br label %do.end

do.end:                                           ; preds = %if.end7
  %43 = load i64, i64* %count, align 8
  %cmp8 = icmp ugt i64 %43, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %do.end
  %44 = load i32, i32* %is_pretty.addr, align 4
  %tobool = icmp ne i32 %44, 0
  br i1 %tobool, label %if.then9, label %if.end23

if.then9:                                         ; preds = %land.lhs.true
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  %45 = load i8*, i8** %buf.addr, align 4
  %46 = load i8*, i8** %buf_start.addr, align 4
  %47 = load i64, i64* %buf_len.addr, align 8
  %call11 = call i32 @append_string(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %46, i64 %47)
  store i32 %call11, i32* %written, align 4
  %48 = load i32, i32* %written, align 4
  %cmp12 = icmp slt i32 %48, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body10
  store i32 -1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %do.body10
  %49 = load i8*, i8** %buf.addr, align 4
  %50 = ptrtoint i8* %49 to i32
  %51 = zext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %cmp15 = icmp ne i8* %52, null
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end14
  %53 = load i32, i32* %written, align 4
  %54 = load i8*, i8** %buf.addr, align 4
  %idx.ext17 = sext i32 %53 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %54, i64 %idx.ext17
  store i8* %add.ptr18, i8** %tmp19, align 4
  %55 = load i8*, i8** %tmp19, align 4
  %56 = ptrtoint i8* %55 to i32
  %57 = zext i32 %56 to i64
  %58 = bitcast i8** %buf.addr to i64*
  store i64 %57, i64* %58, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end14
  %59 = load i32, i32* %written, align 4
  %60 = load i32, i32* %written_total, align 4
  %add21 = add nsw i32 %60, %59
  store i32 %add21, i32* %written_total, align 4
  br label %do.end22

do.end22:                                         ; preds = %if.end20
  br label %if.end23

if.end23:                                         ; preds = %do.end22, %land.lhs.true, %do.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end23
  %61 = load i64, i64* %i, align 8
  %62 = load i64, i64* %count, align 8
  %cmp24 = icmp ult i64 %61, %62
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %is_pretty.addr, align 4
  %tobool25 = icmp ne i32 %63, 0
  br i1 %tobool25, label %if.then26, label %if.end41

if.then26:                                        ; preds = %for.body
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  %64 = load i8*, i8** %buf.addr, align 4
  %65 = load i32, i32* %level.addr, align 4
  %add28 = add nsw i32 %65, 1
  %66 = load i8*, i8** %buf_start.addr, align 4
  %67 = load i64, i64* %buf_len.addr, align 8
  %call29 = call i32 @append_indent(i8* %64, i32 %add28, i8* %66, i64 %67)
  store i32 %call29, i32* %written, align 4
  %68 = load i32, i32* %written, align 4
  %cmp30 = icmp slt i32 %68, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body27
  store i32 -1, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %do.body27
  %69 = load i8*, i8** %buf.addr, align 4
  %70 = ptrtoint i8* %69 to i32
  %71 = zext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %cmp33 = icmp ne i8* %72, null
  br i1 %cmp33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end32
  %73 = load i32, i32* %written, align 4
  %74 = load i8*, i8** %buf.addr, align 4
  %idx.ext35 = sext i32 %73 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %74, i64 %idx.ext35
  store i8* %add.ptr36, i8** %tmp37, align 4
  %75 = load i8*, i8** %tmp37, align 4
  %76 = ptrtoint i8* %75 to i32
  %77 = zext i32 %76 to i64
  %78 = bitcast i8** %buf.addr to i64*
  store i64 %77, i64* %78, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end32
  %79 = load i32, i32* %written, align 4
  %80 = load i32, i32* %written_total, align 4
  %add39 = add nsw i32 %80, %79
  store i32 %add39, i32* %written_total, align 4
  br label %do.end40

do.end40:                                         ; preds = %if.end38
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %for.body
  %81 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array, align 4
  %82 = load i64, i64* %i, align 8
  %call42 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %81, i64 %82)
  %83 = bitcast %Tstruct.Spl_json_value_t_t* %call42 to %Tstruct.json_value_t_t*
  %84 = bitcast %Tstruct.json_value_t_t* %83 to i8*
  %85 = ptrtoint i8* %84 to i32
  %86 = inttoptr i32 %85 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %86, %Tstruct.Spl_json_value_t_t** %tmp43, align 4
  %87 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp43, align 4
  %88 = ptrtoint %Tstruct.Spl_json_value_t_t* %87 to i32
  %89 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %88, i32* %89, align 4
  %90 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %91 = load i8*, i8** %buf.addr, align 4
  %92 = load i32, i32* %level.addr, align 4
  %add44 = add nsw i32 %92, 1
  %93 = load i32, i32* %is_pretty.addr, align 4
  %94 = load i8*, i8** %num_buf.addr, align 4
  %95 = load i8*, i8** %buf_start.addr, align 4
  %96 = load i64, i64* %buf_len.addr, align 8
  %call45 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %90, i8* %91, i32 %add44, i32 %93, i8* %94, i8* %95, i64 %96)
  store i32 %call45, i32* %written, align 4
  %97 = load i32, i32* %written, align 4
  %cmp46 = icmp slt i32 %97, 0
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end41
  store i32 -1, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end41
  %98 = load i8*, i8** %buf.addr, align 4
  %99 = ptrtoint i8* %98 to i32
  %100 = zext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %cmp49 = icmp ne i8* %101, null
  br i1 %cmp49, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.end48
  %102 = load i32, i32* %written, align 4
  %103 = load i8*, i8** %buf.addr, align 4
  %idx.ext51 = sext i32 %102 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %103, i64 %idx.ext51
  store i8* %add.ptr52, i8** %tmp53, align 4
  %104 = load i8*, i8** %tmp53, align 4
  %105 = ptrtoint i8* %104 to i32
  %106 = zext i32 %105 to i64
  %107 = bitcast i8** %buf.addr to i64*
  store i64 %106, i64* %107, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end48
  %108 = load i32, i32* %written, align 4
  %109 = load i32, i32* %written_total, align 4
  %add55 = add nsw i32 %109, %108
  store i32 %add55, i32* %written_total, align 4
  %110 = load i64, i64* %i, align 8
  %111 = load i64, i64* %count, align 8
  %sub = sub i64 %111, 1
  %cmp56 = icmp ult i64 %110, %sub
  br i1 %cmp56, label %if.then57, label %if.end71

if.then57:                                        ; preds = %if.end54
  br label %do.body58

do.body58:                                        ; preds = %if.then57
  %112 = load i8*, i8** %buf.addr, align 4
  %113 = load i8*, i8** %buf_start.addr, align 4
  %114 = load i64, i64* %buf_len.addr, align 8
  %call59 = call i32 @append_string(i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %113, i64 %114)
  store i32 %call59, i32* %written, align 4
  %115 = load i32, i32* %written, align 4
  %cmp60 = icmp slt i32 %115, 0
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.body58
  store i32 -1, i32* %retval, align 4
  br label %return

if.end62:                                         ; preds = %do.body58
  %116 = load i8*, i8** %buf.addr, align 4
  %117 = ptrtoint i8* %116 to i32
  %118 = zext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %cmp63 = icmp ne i8* %119, null
  br i1 %cmp63, label %if.then64, label %if.end68

if.then64:                                        ; preds = %if.end62
  %120 = load i32, i32* %written, align 4
  %121 = load i8*, i8** %buf.addr, align 4
  %idx.ext65 = sext i32 %120 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %121, i64 %idx.ext65
  store i8* %add.ptr66, i8** %tmp67, align 4
  %122 = load i8*, i8** %tmp67, align 4
  %123 = ptrtoint i8* %122 to i32
  %124 = zext i32 %123 to i64
  %125 = bitcast i8** %buf.addr to i64*
  store i64 %124, i64* %125, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end62
  %126 = load i32, i32* %written, align 4
  %127 = load i32, i32* %written_total, align 4
  %add69 = add nsw i32 %127, %126
  store i32 %add69, i32* %written_total, align 4
  br label %do.end70

do.end70:                                         ; preds = %if.end68
  br label %if.end71

if.end71:                                         ; preds = %do.end70, %if.end54
  %128 = load i32, i32* %is_pretty.addr, align 4
  %tobool72 = icmp ne i32 %128, 0
  br i1 %tobool72, label %if.then73, label %if.end87

if.then73:                                        ; preds = %if.end71
  br label %do.body74

do.body74:                                        ; preds = %if.then73
  %129 = load i8*, i8** %buf.addr, align 4
  %130 = load i8*, i8** %buf_start.addr, align 4
  %131 = load i64, i64* %buf_len.addr, align 8
  %call75 = call i32 @append_string(i8* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %130, i64 %131)
  store i32 %call75, i32* %written, align 4
  %132 = load i32, i32* %written, align 4
  %cmp76 = icmp slt i32 %132, 0
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %do.body74
  store i32 -1, i32* %retval, align 4
  br label %return

if.end78:                                         ; preds = %do.body74
  %133 = load i8*, i8** %buf.addr, align 4
  %134 = ptrtoint i8* %133 to i32
  %135 = zext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %cmp79 = icmp ne i8* %136, null
  br i1 %cmp79, label %if.then80, label %if.end84

if.then80:                                        ; preds = %if.end78
  %137 = load i32, i32* %written, align 4
  %138 = load i8*, i8** %buf.addr, align 4
  %idx.ext81 = sext i32 %137 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %138, i64 %idx.ext81
  store i8* %add.ptr82, i8** %tmp83, align 4
  %139 = load i8*, i8** %tmp83, align 4
  %140 = ptrtoint i8* %139 to i32
  %141 = zext i32 %140 to i64
  %142 = bitcast i8** %buf.addr to i64*
  store i64 %141, i64* %142, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.end78
  %143 = load i32, i32* %written, align 4
  %144 = load i32, i32* %written_total, align 4
  %add85 = add nsw i32 %144, %143
  store i32 %add85, i32* %written_total, align 4
  br label %do.end86

do.end86:                                         ; preds = %if.end84
  br label %if.end87

if.end87:                                         ; preds = %do.end86, %if.end71
  br label %for.inc

for.inc:                                          ; preds = %if.end87
  %145 = load i64, i64* %i, align 8
  %inc = add i64 %145, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %146 = load i64, i64* %count, align 8
  %cmp88 = icmp ugt i64 %146, 0
  br i1 %cmp88, label %land.lhs.true89, label %if.end105

land.lhs.true89:                                  ; preds = %for.end
  %147 = load i32, i32* %is_pretty.addr, align 4
  %tobool90 = icmp ne i32 %147, 0
  br i1 %tobool90, label %if.then91, label %if.end105

if.then91:                                        ; preds = %land.lhs.true89
  br label %do.body92

do.body92:                                        ; preds = %if.then91
  %148 = load i8*, i8** %buf.addr, align 4
  %149 = load i32, i32* %level.addr, align 4
  %150 = load i8*, i8** %buf_start.addr, align 4
  %151 = load i64, i64* %buf_len.addr, align 8
  %call93 = call i32 @append_indent(i8* %148, i32 %149, i8* %150, i64 %151)
  store i32 %call93, i32* %written, align 4
  %152 = load i32, i32* %written, align 4
  %cmp94 = icmp slt i32 %152, 0
  br i1 %cmp94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %do.body92
  store i32 -1, i32* %retval, align 4
  br label %return

if.end96:                                         ; preds = %do.body92
  %153 = load i8*, i8** %buf.addr, align 4
  %154 = ptrtoint i8* %153 to i32
  %155 = zext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %cmp97 = icmp ne i8* %156, null
  br i1 %cmp97, label %if.then98, label %if.end102

if.then98:                                        ; preds = %if.end96
  %157 = load i32, i32* %written, align 4
  %158 = load i8*, i8** %buf.addr, align 4
  %idx.ext99 = sext i32 %157 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %158, i64 %idx.ext99
  store i8* %add.ptr100, i8** %tmp101, align 4
  %159 = load i8*, i8** %tmp101, align 4
  %160 = ptrtoint i8* %159 to i32
  %161 = zext i32 %160 to i64
  %162 = bitcast i8** %buf.addr to i64*
  store i64 %161, i64* %162, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.end96
  %163 = load i32, i32* %written, align 4
  %164 = load i32, i32* %written_total, align 4
  %add103 = add nsw i32 %164, %163
  store i32 %add103, i32* %written_total, align 4
  br label %do.end104

do.end104:                                        ; preds = %if.end102
  br label %if.end105

if.end105:                                        ; preds = %do.end104, %land.lhs.true89, %for.end
  br label %do.body106

do.body106:                                       ; preds = %if.end105
  %165 = load i8*, i8** %buf.addr, align 4
  %166 = load i8*, i8** %buf_start.addr, align 4
  %167 = load i64, i64* %buf_len.addr, align 8
  %call107 = call i32 @append_string(i8* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %166, i64 %167)
  store i32 %call107, i32* %written, align 4
  %168 = load i32, i32* %written, align 4
  %cmp108 = icmp slt i32 %168, 0
  br i1 %cmp108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %do.body106
  store i32 -1, i32* %retval, align 4
  br label %return

if.end110:                                        ; preds = %do.body106
  %169 = load i8*, i8** %buf.addr, align 4
  %170 = ptrtoint i8* %169 to i32
  %171 = zext i32 %170 to i64
  %172 = inttoptr i64 %171 to i8*
  %cmp111 = icmp ne i8* %172, null
  br i1 %cmp111, label %if.then112, label %if.end116

if.then112:                                       ; preds = %if.end110
  %173 = load i32, i32* %written, align 4
  %174 = load i8*, i8** %buf.addr, align 4
  %idx.ext113 = sext i32 %173 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %174, i64 %idx.ext113
  store i8* %add.ptr114, i8** %tmp115, align 4
  %175 = load i8*, i8** %tmp115, align 4
  %176 = ptrtoint i8* %175 to i32
  %177 = zext i32 %176 to i64
  %178 = bitcast i8** %buf.addr to i64*
  store i64 %177, i64* %178, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %if.end110
  %179 = load i32, i32* %written, align 4
  %180 = load i32, i32* %written_total, align 4
  %add117 = add nsw i32 %180, %179
  store i32 %add117, i32* %written_total, align 4
  br label %do.end118

do.end118:                                        ; preds = %if.end116
  %181 = load i32, i32* %written_total, align 4
  store i32 %181, i32* %retval, align 4
  br label %return

sw.bb119:                                         ; preds = %entry
  %182 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call120 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %182)
  %183 = bitcast %Tstruct.Spl_json_object_t_t* %call120 to %Tstruct.json_object_t_t*
  %184 = bitcast %Tstruct.json_object_t_t* %183 to i8*
  %185 = ptrtoint i8* %184 to i32
  %186 = inttoptr i32 %185 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %186, %Tstruct.Spl_json_object_t_t** %tmp121, align 4
  %187 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp121, align 4
  %188 = ptrtoint %Tstruct.Spl_json_object_t_t* %187 to i32
  %189 = bitcast %Tstruct.Spl_json_object_t_t** %object to i32*
  store i32 %188, i32* %189, align 4
  %190 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object, align 4
  %call122 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %190)
  store i64 %call122, i64* %count, align 8
  br label %do.body123

do.body123:                                       ; preds = %sw.bb119
  %191 = load i8*, i8** %buf.addr, align 4
  %192 = load i8*, i8** %buf_start.addr, align 4
  %193 = load i64, i64* %buf_len.addr, align 8
  %call124 = call i32 @append_string(i8* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %192, i64 %193)
  store i32 %call124, i32* %written, align 4
  %194 = load i32, i32* %written, align 4
  %cmp125 = icmp slt i32 %194, 0
  br i1 %cmp125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %do.body123
  store i32 -1, i32* %retval, align 4
  br label %return

if.end127:                                        ; preds = %do.body123
  %195 = load i8*, i8** %buf.addr, align 4
  %196 = ptrtoint i8* %195 to i32
  %197 = zext i32 %196 to i64
  %198 = inttoptr i64 %197 to i8*
  %cmp128 = icmp ne i8* %198, null
  br i1 %cmp128, label %if.then129, label %if.end133

if.then129:                                       ; preds = %if.end127
  %199 = load i32, i32* %written, align 4
  %200 = load i8*, i8** %buf.addr, align 4
  %idx.ext130 = sext i32 %199 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %200, i64 %idx.ext130
  store i8* %add.ptr131, i8** %tmp132, align 4
  %201 = load i8*, i8** %tmp132, align 4
  %202 = ptrtoint i8* %201 to i32
  %203 = zext i32 %202 to i64
  %204 = bitcast i8** %buf.addr to i64*
  store i64 %203, i64* %204, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %if.end127
  %205 = load i32, i32* %written, align 4
  %206 = load i32, i32* %written_total, align 4
  %add134 = add nsw i32 %206, %205
  store i32 %add134, i32* %written_total, align 4
  br label %do.end135

do.end135:                                        ; preds = %if.end133
  %207 = load i64, i64* %count, align 8
  %cmp136 = icmp ugt i64 %207, 0
  br i1 %cmp136, label %land.lhs.true137, label %if.end153

land.lhs.true137:                                 ; preds = %do.end135
  %208 = load i32, i32* %is_pretty.addr, align 4
  %tobool138 = icmp ne i32 %208, 0
  br i1 %tobool138, label %if.then139, label %if.end153

if.then139:                                       ; preds = %land.lhs.true137
  br label %do.body140

do.body140:                                       ; preds = %if.then139
  %209 = load i8*, i8** %buf.addr, align 4
  %210 = load i8*, i8** %buf_start.addr, align 4
  %211 = load i64, i64* %buf_len.addr, align 8
  %call141 = call i32 @append_string(i8* %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %210, i64 %211)
  store i32 %call141, i32* %written, align 4
  %212 = load i32, i32* %written, align 4
  %cmp142 = icmp slt i32 %212, 0
  br i1 %cmp142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %do.body140
  store i32 -1, i32* %retval, align 4
  br label %return

if.end144:                                        ; preds = %do.body140
  %213 = load i8*, i8** %buf.addr, align 4
  %214 = ptrtoint i8* %213 to i32
  %215 = zext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  %cmp145 = icmp ne i8* %216, null
  br i1 %cmp145, label %if.then146, label %if.end150

if.then146:                                       ; preds = %if.end144
  %217 = load i32, i32* %written, align 4
  %218 = load i8*, i8** %buf.addr, align 4
  %idx.ext147 = sext i32 %217 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %218, i64 %idx.ext147
  store i8* %add.ptr148, i8** %tmp149, align 4
  %219 = load i8*, i8** %tmp149, align 4
  %220 = ptrtoint i8* %219 to i32
  %221 = zext i32 %220 to i64
  %222 = bitcast i8** %buf.addr to i64*
  store i64 %221, i64* %222, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then146, %if.end144
  %223 = load i32, i32* %written, align 4
  %224 = load i32, i32* %written_total, align 4
  %add151 = add nsw i32 %224, %223
  store i32 %add151, i32* %written_total, align 4
  br label %do.end152

do.end152:                                        ; preds = %if.end150
  br label %if.end153

if.end153:                                        ; preds = %do.end152, %land.lhs.true137, %do.end135
  store i64 0, i64* %i, align 8
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc266, %if.end153
  %225 = load i64, i64* %i, align 8
  %226 = load i64, i64* %count, align 8
  %cmp155 = icmp ult i64 %225, %226
  br i1 %cmp155, label %for.body156, label %for.end268

for.body156:                                      ; preds = %for.cond154
  %227 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object, align 4
  %228 = load i64, i64* %i, align 8
  %call157 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %227, i64 %228)
  %229 = ptrtoint i8* %call157 to i32
  %230 = inttoptr i32 %229 to i8*
  store i8* %230, i8** %tmp158, align 4
  %231 = load i8*, i8** %tmp158, align 4
  %232 = ptrtoint i8* %231 to i32
  %233 = zext i32 %232 to i64
  %234 = bitcast i8** %key to i64*
  store i64 %233, i64* %234, align 4
  %235 = load i8*, i8** %key, align 4
  %236 = ptrtoint i8* %235 to i32
  %237 = zext i32 %236 to i64
  %238 = inttoptr i64 %237 to i8*
  %cmp159 = icmp eq i8* %238, null
  br i1 %cmp159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %for.body156
  store i32 -1, i32* %retval, align 4
  br label %return

if.end161:                                        ; preds = %for.body156
  %239 = load i32, i32* %is_pretty.addr, align 4
  %tobool162 = icmp ne i32 %239, 0
  br i1 %tobool162, label %if.then163, label %if.end178

if.then163:                                       ; preds = %if.end161
  br label %do.body164

do.body164:                                       ; preds = %if.then163
  %240 = load i8*, i8** %buf.addr, align 4
  %241 = load i32, i32* %level.addr, align 4
  %add165 = add nsw i32 %241, 1
  %242 = load i8*, i8** %buf_start.addr, align 4
  %243 = load i64, i64* %buf_len.addr, align 8
  %call166 = call i32 @append_indent(i8* %240, i32 %add165, i8* %242, i64 %243)
  store i32 %call166, i32* %written, align 4
  %244 = load i32, i32* %written, align 4
  %cmp167 = icmp slt i32 %244, 0
  br i1 %cmp167, label %if.then168, label %if.end169

if.then168:                                       ; preds = %do.body164
  store i32 -1, i32* %retval, align 4
  br label %return

if.end169:                                        ; preds = %do.body164
  %245 = load i8*, i8** %buf.addr, align 4
  %246 = ptrtoint i8* %245 to i32
  %247 = zext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %cmp170 = icmp ne i8* %248, null
  br i1 %cmp170, label %if.then171, label %if.end175

if.then171:                                       ; preds = %if.end169
  %249 = load i32, i32* %written, align 4
  %250 = load i8*, i8** %buf.addr, align 4
  %idx.ext172 = sext i32 %249 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %250, i64 %idx.ext172
  store i8* %add.ptr173, i8** %tmp174, align 4
  %251 = load i8*, i8** %tmp174, align 4
  %252 = ptrtoint i8* %251 to i32
  %253 = zext i32 %252 to i64
  %254 = bitcast i8** %buf.addr to i64*
  store i64 %253, i64* %254, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then171, %if.end169
  %255 = load i32, i32* %written, align 4
  %256 = load i32, i32* %written_total, align 4
  %add176 = add nsw i32 %256, %255
  store i32 %add176, i32* %written_total, align 4
  br label %do.end177

do.end177:                                        ; preds = %if.end175
  br label %if.end178

if.end178:                                        ; preds = %do.end177, %if.end161
  %257 = load i8*, i8** %key, align 4
  %258 = load i8*, i8** %buf.addr, align 4
  %259 = load i8*, i8** %buf_start.addr, align 4
  %260 = load i64, i64* %buf_len.addr, align 8
  %call179 = call i32 @json_serialize_string(i8* %257, i8* %258, i8* %259, i64 %260)
  store i32 %call179, i32* %written, align 4
  %261 = load i32, i32* %written, align 4
  %cmp180 = icmp slt i32 %261, 0
  br i1 %cmp180, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end178
  store i32 -1, i32* %retval, align 4
  br label %return

if.end182:                                        ; preds = %if.end178
  %262 = load i8*, i8** %buf.addr, align 4
  %263 = ptrtoint i8* %262 to i32
  %264 = zext i32 %263 to i64
  %265 = inttoptr i64 %264 to i8*
  %cmp183 = icmp ne i8* %265, null
  br i1 %cmp183, label %if.then184, label %if.end188

if.then184:                                       ; preds = %if.end182
  %266 = load i32, i32* %written, align 4
  %267 = load i8*, i8** %buf.addr, align 4
  %idx.ext185 = sext i32 %266 to i64
  %add.ptr186 = getelementptr inbounds i8, i8* %267, i64 %idx.ext185
  store i8* %add.ptr186, i8** %tmp187, align 4
  %268 = load i8*, i8** %tmp187, align 4
  %269 = ptrtoint i8* %268 to i32
  %270 = zext i32 %269 to i64
  %271 = bitcast i8** %buf.addr to i64*
  store i64 %270, i64* %271, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then184, %if.end182
  %272 = load i32, i32* %written, align 4
  %273 = load i32, i32* %written_total, align 4
  %add189 = add nsw i32 %273, %272
  store i32 %add189, i32* %written_total, align 4
  br label %do.body190

do.body190:                                       ; preds = %if.end188
  %274 = load i8*, i8** %buf.addr, align 4
  %275 = load i8*, i8** %buf_start.addr, align 4
  %276 = load i64, i64* %buf_len.addr, align 8
  %call191 = call i32 @append_string(i8* %274, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* %275, i64 %276)
  store i32 %call191, i32* %written, align 4
  %277 = load i32, i32* %written, align 4
  %cmp192 = icmp slt i32 %277, 0
  br i1 %cmp192, label %if.then193, label %if.end194

if.then193:                                       ; preds = %do.body190
  store i32 -1, i32* %retval, align 4
  br label %return

if.end194:                                        ; preds = %do.body190
  %278 = load i8*, i8** %buf.addr, align 4
  %279 = ptrtoint i8* %278 to i32
  %280 = zext i32 %279 to i64
  %281 = inttoptr i64 %280 to i8*
  %cmp195 = icmp ne i8* %281, null
  br i1 %cmp195, label %if.then196, label %if.end200

if.then196:                                       ; preds = %if.end194
  %282 = load i32, i32* %written, align 4
  %283 = load i8*, i8** %buf.addr, align 4
  %idx.ext197 = sext i32 %282 to i64
  %add.ptr198 = getelementptr inbounds i8, i8* %283, i64 %idx.ext197
  store i8* %add.ptr198, i8** %tmp199, align 4
  %284 = load i8*, i8** %tmp199, align 4
  %285 = ptrtoint i8* %284 to i32
  %286 = zext i32 %285 to i64
  %287 = bitcast i8** %buf.addr to i64*
  store i64 %286, i64* %287, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.then196, %if.end194
  %288 = load i32, i32* %written, align 4
  %289 = load i32, i32* %written_total, align 4
  %add201 = add nsw i32 %289, %288
  store i32 %add201, i32* %written_total, align 4
  br label %do.end202

do.end202:                                        ; preds = %if.end200
  %290 = load i32, i32* %is_pretty.addr, align 4
  %tobool203 = icmp ne i32 %290, 0
  br i1 %tobool203, label %if.then204, label %if.end218

if.then204:                                       ; preds = %do.end202
  br label %do.body205

do.body205:                                       ; preds = %if.then204
  %291 = load i8*, i8** %buf.addr, align 4
  %292 = load i8*, i8** %buf_start.addr, align 4
  %293 = load i64, i64* %buf_len.addr, align 8
  %call206 = call i32 @append_string(i8* %291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %292, i64 %293)
  store i32 %call206, i32* %written, align 4
  %294 = load i32, i32* %written, align 4
  %cmp207 = icmp slt i32 %294, 0
  br i1 %cmp207, label %if.then208, label %if.end209

if.then208:                                       ; preds = %do.body205
  store i32 -1, i32* %retval, align 4
  br label %return

if.end209:                                        ; preds = %do.body205
  %295 = load i8*, i8** %buf.addr, align 4
  %296 = ptrtoint i8* %295 to i32
  %297 = zext i32 %296 to i64
  %298 = inttoptr i64 %297 to i8*
  %cmp210 = icmp ne i8* %298, null
  br i1 %cmp210, label %if.then211, label %if.end215

if.then211:                                       ; preds = %if.end209
  %299 = load i32, i32* %written, align 4
  %300 = load i8*, i8** %buf.addr, align 4
  %idx.ext212 = sext i32 %299 to i64
  %add.ptr213 = getelementptr inbounds i8, i8* %300, i64 %idx.ext212
  store i8* %add.ptr213, i8** %tmp214, align 4
  %301 = load i8*, i8** %tmp214, align 4
  %302 = ptrtoint i8* %301 to i32
  %303 = zext i32 %302 to i64
  %304 = bitcast i8** %buf.addr to i64*
  store i64 %303, i64* %304, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then211, %if.end209
  %305 = load i32, i32* %written, align 4
  %306 = load i32, i32* %written_total, align 4
  %add216 = add nsw i32 %306, %305
  store i32 %add216, i32* %written_total, align 4
  br label %do.end217

do.end217:                                        ; preds = %if.end215
  br label %if.end218

if.end218:                                        ; preds = %do.end217, %do.end202
  %307 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object, align 4
  %308 = load i8*, i8** %key, align 4
  %call219 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %307, i8* %308)
  %309 = bitcast %Tstruct.Spl_json_value_t_t* %call219 to %Tstruct.json_value_t_t*
  %310 = bitcast %Tstruct.json_value_t_t* %309 to i8*
  %311 = ptrtoint i8* %310 to i32
  %312 = inttoptr i32 %311 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %312, %Tstruct.Spl_json_value_t_t** %tmp220, align 4
  %313 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp220, align 4
  %314 = ptrtoint %Tstruct.Spl_json_value_t_t* %313 to i32
  %315 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %314, i32* %315, align 4
  %316 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %317 = load i8*, i8** %buf.addr, align 4
  %318 = load i32, i32* %level.addr, align 4
  %add221 = add nsw i32 %318, 1
  %319 = load i32, i32* %is_pretty.addr, align 4
  %320 = load i8*, i8** %num_buf.addr, align 4
  %321 = load i8*, i8** %buf_start.addr, align 4
  %322 = load i64, i64* %buf_len.addr, align 8
  %call222 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %316, i8* %317, i32 %add221, i32 %319, i8* %320, i8* %321, i64 %322)
  store i32 %call222, i32* %written, align 4
  %323 = load i32, i32* %written, align 4
  %cmp223 = icmp slt i32 %323, 0
  br i1 %cmp223, label %if.then224, label %if.end225

if.then224:                                       ; preds = %if.end218
  store i32 -1, i32* %retval, align 4
  br label %return

if.end225:                                        ; preds = %if.end218
  %324 = load i8*, i8** %buf.addr, align 4
  %325 = ptrtoint i8* %324 to i32
  %326 = zext i32 %325 to i64
  %327 = inttoptr i64 %326 to i8*
  %cmp226 = icmp ne i8* %327, null
  br i1 %cmp226, label %if.then227, label %if.end231

if.then227:                                       ; preds = %if.end225
  %328 = load i32, i32* %written, align 4
  %329 = load i8*, i8** %buf.addr, align 4
  %idx.ext228 = sext i32 %328 to i64
  %add.ptr229 = getelementptr inbounds i8, i8* %329, i64 %idx.ext228
  store i8* %add.ptr229, i8** %tmp230, align 4
  %330 = load i8*, i8** %tmp230, align 4
  %331 = ptrtoint i8* %330 to i32
  %332 = zext i32 %331 to i64
  %333 = bitcast i8** %buf.addr to i64*
  store i64 %332, i64* %333, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then227, %if.end225
  %334 = load i32, i32* %written, align 4
  %335 = load i32, i32* %written_total, align 4
  %add232 = add nsw i32 %335, %334
  store i32 %add232, i32* %written_total, align 4
  %336 = load i64, i64* %i, align 8
  %337 = load i64, i64* %count, align 8
  %sub233 = sub i64 %337, 1
  %cmp234 = icmp ult i64 %336, %sub233
  br i1 %cmp234, label %if.then235, label %if.end249

if.then235:                                       ; preds = %if.end231
  br label %do.body236

do.body236:                                       ; preds = %if.then235
  %338 = load i8*, i8** %buf.addr, align 4
  %339 = load i8*, i8** %buf_start.addr, align 4
  %340 = load i64, i64* %buf_len.addr, align 8
  %call237 = call i32 @append_string(i8* %338, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %339, i64 %340)
  store i32 %call237, i32* %written, align 4
  %341 = load i32, i32* %written, align 4
  %cmp238 = icmp slt i32 %341, 0
  br i1 %cmp238, label %if.then239, label %if.end240

if.then239:                                       ; preds = %do.body236
  store i32 -1, i32* %retval, align 4
  br label %return

if.end240:                                        ; preds = %do.body236
  %342 = load i8*, i8** %buf.addr, align 4
  %343 = ptrtoint i8* %342 to i32
  %344 = zext i32 %343 to i64
  %345 = inttoptr i64 %344 to i8*
  %cmp241 = icmp ne i8* %345, null
  br i1 %cmp241, label %if.then242, label %if.end246

if.then242:                                       ; preds = %if.end240
  %346 = load i32, i32* %written, align 4
  %347 = load i8*, i8** %buf.addr, align 4
  %idx.ext243 = sext i32 %346 to i64
  %add.ptr244 = getelementptr inbounds i8, i8* %347, i64 %idx.ext243
  store i8* %add.ptr244, i8** %tmp245, align 4
  %348 = load i8*, i8** %tmp245, align 4
  %349 = ptrtoint i8* %348 to i32
  %350 = zext i32 %349 to i64
  %351 = bitcast i8** %buf.addr to i64*
  store i64 %350, i64* %351, align 4
  br label %if.end246

if.end246:                                        ; preds = %if.then242, %if.end240
  %352 = load i32, i32* %written, align 4
  %353 = load i32, i32* %written_total, align 4
  %add247 = add nsw i32 %353, %352
  store i32 %add247, i32* %written_total, align 4
  br label %do.end248

do.end248:                                        ; preds = %if.end246
  br label %if.end249

if.end249:                                        ; preds = %do.end248, %if.end231
  %354 = load i32, i32* %is_pretty.addr, align 4
  %tobool250 = icmp ne i32 %354, 0
  br i1 %tobool250, label %if.then251, label %if.end265

if.then251:                                       ; preds = %if.end249
  br label %do.body252

do.body252:                                       ; preds = %if.then251
  %355 = load i8*, i8** %buf.addr, align 4
  %356 = load i8*, i8** %buf_start.addr, align 4
  %357 = load i64, i64* %buf_len.addr, align 8
  %call253 = call i32 @append_string(i8* %355, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %356, i64 %357)
  store i32 %call253, i32* %written, align 4
  %358 = load i32, i32* %written, align 4
  %cmp254 = icmp slt i32 %358, 0
  br i1 %cmp254, label %if.then255, label %if.end256

if.then255:                                       ; preds = %do.body252
  store i32 -1, i32* %retval, align 4
  br label %return

if.end256:                                        ; preds = %do.body252
  %359 = load i8*, i8** %buf.addr, align 4
  %360 = ptrtoint i8* %359 to i32
  %361 = zext i32 %360 to i64
  %362 = inttoptr i64 %361 to i8*
  %cmp257 = icmp ne i8* %362, null
  br i1 %cmp257, label %if.then258, label %if.end262

if.then258:                                       ; preds = %if.end256
  %363 = load i32, i32* %written, align 4
  %364 = load i8*, i8** %buf.addr, align 4
  %idx.ext259 = sext i32 %363 to i64
  %add.ptr260 = getelementptr inbounds i8, i8* %364, i64 %idx.ext259
  store i8* %add.ptr260, i8** %tmp261, align 4
  %365 = load i8*, i8** %tmp261, align 4
  %366 = ptrtoint i8* %365 to i32
  %367 = zext i32 %366 to i64
  %368 = bitcast i8** %buf.addr to i64*
  store i64 %367, i64* %368, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.then258, %if.end256
  %369 = load i32, i32* %written, align 4
  %370 = load i32, i32* %written_total, align 4
  %add263 = add nsw i32 %370, %369
  store i32 %add263, i32* %written_total, align 4
  br label %do.end264

do.end264:                                        ; preds = %if.end262
  br label %if.end265

if.end265:                                        ; preds = %do.end264, %if.end249
  br label %for.inc266

for.inc266:                                       ; preds = %if.end265
  %371 = load i64, i64* %i, align 8
  %inc267 = add i64 %371, 1
  store i64 %inc267, i64* %i, align 8
  br label %for.cond154, !llvm.loop !6

for.end268:                                       ; preds = %for.cond154
  %372 = load i64, i64* %count, align 8
  %cmp269 = icmp ugt i64 %372, 0
  br i1 %cmp269, label %land.lhs.true270, label %if.end286

land.lhs.true270:                                 ; preds = %for.end268
  %373 = load i32, i32* %is_pretty.addr, align 4
  %tobool271 = icmp ne i32 %373, 0
  br i1 %tobool271, label %if.then272, label %if.end286

if.then272:                                       ; preds = %land.lhs.true270
  br label %do.body273

do.body273:                                       ; preds = %if.then272
  %374 = load i8*, i8** %buf.addr, align 4
  %375 = load i32, i32* %level.addr, align 4
  %376 = load i8*, i8** %buf_start.addr, align 4
  %377 = load i64, i64* %buf_len.addr, align 8
  %call274 = call i32 @append_indent(i8* %374, i32 %375, i8* %376, i64 %377)
  store i32 %call274, i32* %written, align 4
  %378 = load i32, i32* %written, align 4
  %cmp275 = icmp slt i32 %378, 0
  br i1 %cmp275, label %if.then276, label %if.end277

if.then276:                                       ; preds = %do.body273
  store i32 -1, i32* %retval, align 4
  br label %return

if.end277:                                        ; preds = %do.body273
  %379 = load i8*, i8** %buf.addr, align 4
  %380 = ptrtoint i8* %379 to i32
  %381 = zext i32 %380 to i64
  %382 = inttoptr i64 %381 to i8*
  %cmp278 = icmp ne i8* %382, null
  br i1 %cmp278, label %if.then279, label %if.end283

if.then279:                                       ; preds = %if.end277
  %383 = load i32, i32* %written, align 4
  %384 = load i8*, i8** %buf.addr, align 4
  %idx.ext280 = sext i32 %383 to i64
  %add.ptr281 = getelementptr inbounds i8, i8* %384, i64 %idx.ext280
  store i8* %add.ptr281, i8** %tmp282, align 4
  %385 = load i8*, i8** %tmp282, align 4
  %386 = ptrtoint i8* %385 to i32
  %387 = zext i32 %386 to i64
  %388 = bitcast i8** %buf.addr to i64*
  store i64 %387, i64* %388, align 4
  br label %if.end283

if.end283:                                        ; preds = %if.then279, %if.end277
  %389 = load i32, i32* %written, align 4
  %390 = load i32, i32* %written_total, align 4
  %add284 = add nsw i32 %390, %389
  store i32 %add284, i32* %written_total, align 4
  br label %do.end285

do.end285:                                        ; preds = %if.end283
  br label %if.end286

if.end286:                                        ; preds = %do.end285, %land.lhs.true270, %for.end268
  br label %do.body287

do.body287:                                       ; preds = %if.end286
  %391 = load i8*, i8** %buf.addr, align 4
  %392 = load i8*, i8** %buf_start.addr, align 4
  %393 = load i64, i64* %buf_len.addr, align 8
  %call288 = call i32 @append_string(i8* %391, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* %392, i64 %393)
  store i32 %call288, i32* %written, align 4
  %394 = load i32, i32* %written, align 4
  %cmp289 = icmp slt i32 %394, 0
  br i1 %cmp289, label %if.then290, label %if.end291

if.then290:                                       ; preds = %do.body287
  store i32 -1, i32* %retval, align 4
  br label %return

if.end291:                                        ; preds = %do.body287
  %395 = load i8*, i8** %buf.addr, align 4
  %396 = ptrtoint i8* %395 to i32
  %397 = zext i32 %396 to i64
  %398 = inttoptr i64 %397 to i8*
  %cmp292 = icmp ne i8* %398, null
  br i1 %cmp292, label %if.then293, label %if.end297

if.then293:                                       ; preds = %if.end291
  %399 = load i32, i32* %written, align 4
  %400 = load i8*, i8** %buf.addr, align 4
  %idx.ext294 = sext i32 %399 to i64
  %add.ptr295 = getelementptr inbounds i8, i8* %400, i64 %idx.ext294
  store i8* %add.ptr295, i8** %tmp296, align 4
  %401 = load i8*, i8** %tmp296, align 4
  %402 = ptrtoint i8* %401 to i32
  %403 = zext i32 %402 to i64
  %404 = bitcast i8** %buf.addr to i64*
  store i64 %403, i64* %404, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.then293, %if.end291
  %405 = load i32, i32* %written, align 4
  %406 = load i32, i32* %written_total, align 4
  %add298 = add nsw i32 %406, %405
  store i32 %add298, i32* %written_total, align 4
  br label %do.end299

do.end299:                                        ; preds = %if.end297
  %407 = load i32, i32* %written_total, align 4
  store i32 %407, i32* %retval, align 4
  br label %return

sw.bb300:                                         ; preds = %entry
  %408 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call301 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %408)
  %409 = ptrtoint i8* %call301 to i32
  %410 = inttoptr i32 %409 to i8*
  store i8* %410, i8** %tmp302, align 4
  %411 = load i8*, i8** %tmp302, align 4
  %412 = ptrtoint i8* %411 to i32
  %413 = zext i32 %412 to i64
  %414 = bitcast i8** %string to i64*
  store i64 %413, i64* %414, align 4
  %415 = load i8*, i8** %string, align 4
  %416 = ptrtoint i8* %415 to i32
  %417 = zext i32 %416 to i64
  %418 = inttoptr i64 %417 to i8*
  %cmp303 = icmp eq i8* %418, null
  br i1 %cmp303, label %if.then304, label %if.end305

if.then304:                                       ; preds = %sw.bb300
  store i32 -1, i32* %retval, align 4
  br label %return

if.end305:                                        ; preds = %sw.bb300
  %419 = load i8*, i8** %string, align 4
  %420 = load i8*, i8** %buf.addr, align 4
  %421 = load i8*, i8** %buf_start.addr, align 4
  %422 = load i64, i64* %buf_len.addr, align 8
  %call306 = call i32 @json_serialize_string(i8* %419, i8* %420, i8* %421, i64 %422)
  store i32 %call306, i32* %written, align 4
  %423 = load i32, i32* %written, align 4
  %cmp307 = icmp slt i32 %423, 0
  br i1 %cmp307, label %if.then308, label %if.end309

if.then308:                                       ; preds = %if.end305
  store i32 -1, i32* %retval, align 4
  br label %return

if.end309:                                        ; preds = %if.end305
  %424 = load i8*, i8** %buf.addr, align 4
  %425 = ptrtoint i8* %424 to i32
  %426 = zext i32 %425 to i64
  %427 = inttoptr i64 %426 to i8*
  %cmp310 = icmp ne i8* %427, null
  br i1 %cmp310, label %if.then311, label %if.end315

if.then311:                                       ; preds = %if.end309
  %428 = load i32, i32* %written, align 4
  %429 = load i8*, i8** %buf.addr, align 4
  %idx.ext312 = sext i32 %428 to i64
  %add.ptr313 = getelementptr inbounds i8, i8* %429, i64 %idx.ext312
  store i8* %add.ptr313, i8** %tmp314, align 4
  %430 = load i8*, i8** %tmp314, align 4
  %431 = ptrtoint i8* %430 to i32
  %432 = zext i32 %431 to i64
  %433 = bitcast i8** %buf.addr to i64*
  store i64 %432, i64* %433, align 4
  br label %if.end315

if.end315:                                        ; preds = %if.then311, %if.end309
  %434 = load i32, i32* %written, align 4
  %435 = load i32, i32* %written_total, align 4
  %add316 = add nsw i32 %435, %434
  store i32 %add316, i32* %written_total, align 4
  %436 = load i32, i32* %written_total, align 4
  store i32 %436, i32* %retval, align 4
  br label %return

sw.bb317:                                         ; preds = %entry
  %437 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call318 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %437)
  %tobool319 = icmp ne i32 %call318, 0
  br i1 %tobool319, label %if.then320, label %if.else

if.then320:                                       ; preds = %sw.bb317
  br label %do.body321

do.body321:                                       ; preds = %if.then320
  %438 = load i8*, i8** %buf.addr, align 4
  %439 = load i8*, i8** %buf_start.addr, align 4
  %440 = load i64, i64* %buf_len.addr, align 8
  %call322 = call i32 @append_string(i8* %438, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %439, i64 %440)
  store i32 %call322, i32* %written, align 4
  %441 = load i32, i32* %written, align 4
  %cmp323 = icmp slt i32 %441, 0
  br i1 %cmp323, label %if.then324, label %if.end325

if.then324:                                       ; preds = %do.body321
  store i32 -1, i32* %retval, align 4
  br label %return

if.end325:                                        ; preds = %do.body321
  %442 = load i8*, i8** %buf.addr, align 4
  %443 = ptrtoint i8* %442 to i32
  %444 = zext i32 %443 to i64
  %445 = inttoptr i64 %444 to i8*
  %cmp326 = icmp ne i8* %445, null
  br i1 %cmp326, label %if.then327, label %if.end331

if.then327:                                       ; preds = %if.end325
  %446 = load i32, i32* %written, align 4
  %447 = load i8*, i8** %buf.addr, align 4
  %idx.ext328 = sext i32 %446 to i64
  %add.ptr329 = getelementptr inbounds i8, i8* %447, i64 %idx.ext328
  store i8* %add.ptr329, i8** %tmp330, align 4
  %448 = load i8*, i8** %tmp330, align 4
  %449 = ptrtoint i8* %448 to i32
  %450 = zext i32 %449 to i64
  %451 = bitcast i8** %buf.addr to i64*
  store i64 %450, i64* %451, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.then327, %if.end325
  %452 = load i32, i32* %written, align 4
  %453 = load i32, i32* %written_total, align 4
  %add332 = add nsw i32 %453, %452
  store i32 %add332, i32* %written_total, align 4
  br label %do.end333

do.end333:                                        ; preds = %if.end331
  br label %if.end347

if.else:                                          ; preds = %sw.bb317
  br label %do.body334

do.body334:                                       ; preds = %if.else
  %454 = load i8*, i8** %buf.addr, align 4
  %455 = load i8*, i8** %buf_start.addr, align 4
  %456 = load i64, i64* %buf_len.addr, align 8
  %call335 = call i32 @append_string(i8* %454, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %455, i64 %456)
  store i32 %call335, i32* %written, align 4
  %457 = load i32, i32* %written, align 4
  %cmp336 = icmp slt i32 %457, 0
  br i1 %cmp336, label %if.then337, label %if.end338

if.then337:                                       ; preds = %do.body334
  store i32 -1, i32* %retval, align 4
  br label %return

if.end338:                                        ; preds = %do.body334
  %458 = load i8*, i8** %buf.addr, align 4
  %459 = ptrtoint i8* %458 to i32
  %460 = zext i32 %459 to i64
  %461 = inttoptr i64 %460 to i8*
  %cmp339 = icmp ne i8* %461, null
  br i1 %cmp339, label %if.then340, label %if.end344

if.then340:                                       ; preds = %if.end338
  %462 = load i32, i32* %written, align 4
  %463 = load i8*, i8** %buf.addr, align 4
  %idx.ext341 = sext i32 %462 to i64
  %add.ptr342 = getelementptr inbounds i8, i8* %463, i64 %idx.ext341
  store i8* %add.ptr342, i8** %tmp343, align 4
  %464 = load i8*, i8** %tmp343, align 4
  %465 = ptrtoint i8* %464 to i32
  %466 = zext i32 %465 to i64
  %467 = bitcast i8** %buf.addr to i64*
  store i64 %466, i64* %467, align 4
  br label %if.end344

if.end344:                                        ; preds = %if.then340, %if.end338
  %468 = load i32, i32* %written, align 4
  %469 = load i32, i32* %written_total, align 4
  %add345 = add nsw i32 %469, %468
  store i32 %add345, i32* %written_total, align 4
  br label %do.end346

do.end346:                                        ; preds = %if.end344
  br label %if.end347

if.end347:                                        ; preds = %do.end346, %do.end333
  %470 = load i32, i32* %written_total, align 4
  store i32 %470, i32* %retval, align 4
  br label %return

sw.bb348:                                         ; preds = %entry
  %471 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call349 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %471)
  store double %call349, double* %num, align 8
  %472 = load i8*, i8** %buf.addr, align 4
  %473 = ptrtoint i8* %472 to i32
  %474 = zext i32 %473 to i64
  %475 = inttoptr i64 %474 to i8*
  %cmp350 = icmp ne i8* %475, null
  br i1 %cmp350, label %if.then351, label %if.end352

if.then351:                                       ; preds = %sw.bb348
  %476 = load i8*, i8** %buf.addr, align 4
  %477 = ptrtoint i8* %476 to i32
  %478 = zext i32 %477 to i64
  %479 = bitcast i8** %temp_buf to i64*
  store i64 %478, i64* %479, align 4
  %480 = load i8*, i8** %temp_buf, align 4
  %481 = ptrtoint i8* %480 to i32
  %482 = zext i32 %481 to i64
  %483 = bitcast i8** %num_buf.addr to i64*
  store i64 %482, i64* %483, align 4
  br label %if.end352

if.end352:                                        ; preds = %if.then351, %sw.bb348
  %484 = load i8*, i8** %num_buf.addr, align 4
  %485 = load double, double* %num, align 8
  %486 = load i32, i32* @sbxHeapRange, align 8
  %487 = load i64, i64* @sbxHeap, align 8
  %488 = ptrtoint i8* %484 to i32
  %489 = zext i32 %488 to i64
  %490 = add i64 %487, %489
  %491 = icmp ult i32 %488, %486
  br i1 %491, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end352
  %492 = inttoptr i64 %490 to i8*
  %call353 = call i32 (i8*, i8*, ...) @t_sprintf(i8* %492, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), double %485)
  store i32 %call353, i32* %written, align 4
  %493 = load i32, i32* %written, align 4
  %cmp354 = icmp slt i32 %493, 0
  br i1 %cmp354, label %if.then355, label %if.end356

if.then355:                                       ; preds = %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end352
  call void @llvm.trap() #8
  unreachable

if.end356:                                        ; preds = %_Dynamic_check.succeeded
  %494 = load i8*, i8** %buf.addr, align 4
  %495 = ptrtoint i8* %494 to i32
  %496 = zext i32 %495 to i64
  %497 = inttoptr i64 %496 to i8*
  %cmp357 = icmp ne i8* %497, null
  br i1 %cmp357, label %if.then358, label %if.end362

if.then358:                                       ; preds = %if.end356
  %498 = load i32, i32* %written, align 4
  %499 = load i8*, i8** %buf.addr, align 4
  %idx.ext359 = sext i32 %498 to i64
  %add.ptr360 = getelementptr inbounds i8, i8* %499, i64 %idx.ext359
  store i8* %add.ptr360, i8** %tmp361, align 4
  %500 = load i8*, i8** %tmp361, align 4
  %501 = ptrtoint i8* %500 to i32
  %502 = zext i32 %501 to i64
  %503 = bitcast i8** %buf.addr to i64*
  store i64 %502, i64* %503, align 4
  br label %if.end362

if.end362:                                        ; preds = %if.then358, %if.end356
  %504 = load i32, i32* %written, align 4
  %505 = load i32, i32* %written_total, align 4
  %add363 = add nsw i32 %505, %504
  store i32 %add363, i32* %written_total, align 4
  %506 = load i32, i32* %written_total, align 4
  store i32 %506, i32* %retval, align 4
  br label %return

sw.bb364:                                         ; preds = %entry
  br label %do.body365

do.body365:                                       ; preds = %sw.bb364
  %507 = load i8*, i8** %buf.addr, align 4
  %508 = load i8*, i8** %buf_start.addr, align 4
  %509 = load i64, i64* %buf_len.addr, align 8
  %call366 = call i32 @append_string(i8* %507, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %508, i64 %509)
  store i32 %call366, i32* %written, align 4
  %510 = load i32, i32* %written, align 4
  %cmp367 = icmp slt i32 %510, 0
  br i1 %cmp367, label %if.then368, label %if.end369

if.then368:                                       ; preds = %do.body365
  store i32 -1, i32* %retval, align 4
  br label %return

if.end369:                                        ; preds = %do.body365
  %511 = load i8*, i8** %buf.addr, align 4
  %512 = ptrtoint i8* %511 to i32
  %513 = zext i32 %512 to i64
  %514 = inttoptr i64 %513 to i8*
  %cmp370 = icmp ne i8* %514, null
  br i1 %cmp370, label %if.then371, label %if.end375

if.then371:                                       ; preds = %if.end369
  %515 = load i32, i32* %written, align 4
  %516 = load i8*, i8** %buf.addr, align 4
  %idx.ext372 = sext i32 %515 to i64
  %add.ptr373 = getelementptr inbounds i8, i8* %516, i64 %idx.ext372
  store i8* %add.ptr373, i8** %tmp374, align 4
  %517 = load i8*, i8** %tmp374, align 4
  %518 = ptrtoint i8* %517 to i32
  %519 = zext i32 %518 to i64
  %520 = bitcast i8** %buf.addr to i64*
  store i64 %519, i64* %520, align 4
  br label %if.end375

if.end375:                                        ; preds = %if.then371, %if.end369
  %521 = load i32, i32* %written, align 4
  %522 = load i32, i32* %written_total, align 4
  %add376 = add nsw i32 %522, %521
  store i32 %add376, i32* %written_total, align 4
  br label %do.end377

do.end377:                                        ; preds = %if.end375
  %523 = load i32, i32* %written_total, align 4
  store i32 %523, i32* %retval, align 4
  br label %return

sw.bb378:                                         ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb378, %do.end377, %if.then368, %if.end362, %if.then355, %if.end347, %if.then337, %if.then324, %if.end315, %if.then308, %if.then304, %do.end299, %if.then290, %if.then276, %if.then255, %if.then239, %if.then224, %if.then208, %if.then193, %if.then181, %if.then168, %if.then160, %if.then143, %if.then126, %do.end118, %if.then109, %if.then95, %if.then77, %if.then61, %if.then47, %if.then31, %if.then13, %if.then
  %524 = load i32, i32* %retval, align 4
  ret i32 %524
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_string(i8* %buf, i8* %string, i8* %buf_start, i64 %buf_len) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 4
  %string.addr = alloca i8*, align 8
  %buf_start.addr = alloca i8*, align 4
  %buf_len.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %boundedString = alloca i8*, align 8
  %tainted_bounded_string = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %tmp3 = alloca i8*, align 4
  %tmp6 = alloca i8*, align 4
  %tmp8 = alloca i8*, align 4
  %buf_tmp = alloca i8*, align 4
  %tmp18 = alloca i8*, align 4
  %0 = ptrtoint i8* %buf to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %buf.addr to i64*
  store i64 %1, i64* %2, align 4
  store i8* %string, i8** %string.addr, align 8
  %3 = ptrtoint i8* %buf_start to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %buf_start.addr to i64*
  store i64 %4, i64* %5, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  %6 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %6) #9
  store i64 %call, i64* %len, align 8
  %7 = load i8*, i8** %buf.addr, align 4
  %8 = ptrtoint i8* %7 to i32
  %9 = zext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = ptrtoint i8* %10 to i32
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i64, i64* %len, align 8
  %conv = trunc i64 %12 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %boundedString, align 8
  %13 = load i8*, i8** %string.addr, align 8
  store i8* %13, i8** %boundedString, align 8
  %14 = load i64, i64* %len, align 8
  %mul = mul i64 %14, 1
  %call1 = call i8* @string_tainted_malloc(i64 %mul)
  %15 = ptrtoint i8* %call1 to i32
  %16 = inttoptr i32 %15 to i8*
  store i8* %16, i8** %tmp, align 4
  %17 = load i8*, i8** %tmp, align 4
  %18 = ptrtoint i8* %17 to i32
  %19 = zext i32 %18 to i64
  %20 = bitcast i8** %tainted_bounded_string to i64*
  store i64 %19, i64* %20, align 4
  %21 = load i8*, i8** %tainted_bounded_string, align 4
  %22 = load i8*, i8** %string.addr, align 8
  %23 = load i64, i64* %len, align 8
  %24 = load i32, i32* @sbxHeapRange, align 8
  %25 = load i64, i64* @sbxHeap, align 8
  %26 = ptrtoint i8* %21 to i32
  %27 = zext i32 %26 to i64
  %28 = add i64 %25, %27
  %29 = icmp ult i32 %26, %24
  br i1 %29, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %30 = inttoptr i64 %28 to i8*
  %call2 = call i8* @t_strncpy(i8* %30, i8* %22, i64 %23)
  %31 = ptrtoint i8* %call2 to i32
  %32 = inttoptr i32 %31 to i8*
  store i8* %32, i8** %tmp3, align 4
  %33 = load i8*, i8** %tmp3, align 4
  %34 = load i8*, i8** %buf.addr, align 4
  %35 = load i8*, i8** %buf_start.addr, align 4
  %36 = ptrtoint i8* %34 to i32
  %37 = zext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = ptrtoint i8* %35 to i32
  %40 = zext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = ptrtoint i8* %38 to i32
  %43 = ptrtoint i8* %41 to i32
  %cmp4 = icmp uge i32 %42, %43
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %_Dynamic_check.succeeded
  %44 = load i8*, i8** %buf.addr, align 4
  %45 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %add.ptr, i8** %tmp6, align 4
  %46 = load i8*, i8** %tmp6, align 4
  %47 = load i8*, i8** %buf_start.addr, align 4
  %48 = load i64, i64* %buf_len.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %add.ptr7, i8** %tmp8, align 4
  %49 = load i8*, i8** %tmp8, align 4
  %50 = ptrtoint i8* %46 to i32
  %51 = zext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = ptrtoint i8* %49 to i32
  %54 = zext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = ptrtoint i8* %52 to i32
  %57 = ptrtoint i8* %55 to i32
  %cmp9 = icmp ult i32 %56, %57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %_Dynamic_check.succeeded
  %58 = phi i1 [ false, %_Dynamic_check.succeeded ], [ %cmp9, %land.rhs ]
  br i1 %58, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %land.end
  %59 = load i8*, i8** %buf.addr, align 4
  %60 = ptrtoint i8* %59 to i32
  %61 = zext i32 %60 to i64
  %62 = bitcast i8** %buf_tmp to i64*
  store i64 %61, i64* %62, align 4
  %63 = load i8*, i8** %buf_tmp, align 4
  %64 = load i8*, i8** %tainted_bounded_string, align 4
  %65 = load i64, i64* %len, align 8
  %66 = load i32, i32* @sbxHeapRange, align 8
  %67 = load i64, i64* @sbxHeap, align 8
  %68 = ptrtoint i8* %63 to i32
  %69 = zext i32 %68 to i64
  %70 = add i64 %67, %69
  %71 = icmp ult i32 %68, %66
  br i1 %71, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.succeeded12
  %72 = inttoptr i64 %70 to i8*
  %73 = load i32, i32* @sbxHeapRange, align 8
  %74 = load i64, i64* @sbxHeap, align 8
  %75 = ptrtoint i8* %64 to i32
  %76 = zext i32 %75 to i64
  %77 = add i64 %74, %76
  %78 = icmp ult i32 %75, %73
  br i1 %78, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded14
  %79 = inttoptr i64 %77 to i8*
  %call17 = call i8* @t_memcpy(i8* %72, i8* %79, i64 %65)
  %80 = ptrtoint i8* %call17 to i32
  %81 = inttoptr i32 %80 to i8*
  store i8* %81, i8** %tmp18, align 4
  %82 = load i8*, i8** %tmp18, align 4
  %83 = load i8*, i8** %buf.addr, align 4
  %84 = load i64, i64* %len, align 8
  %85 = load i32, i32* @sbxHeapRange, align 8
  %86 = load i64, i64* @sbxHeap, align 8
  %87 = ptrtoint i8* %83 to i32
  %88 = zext i32 %87 to i64
  %89 = add i64 %86, %88
  %90 = icmp ult i32 %87, %85
  br i1 %90, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.succeeded16
  %91 = inttoptr i64 %89 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %91, i64 %84
  store i8 0, i8* %arrayidx, align 4
  %92 = load i64, i64* %len, align 8
  %conv21 = trunc i64 %92 to i32
  store i32 %conv21, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed11:                          ; preds = %land.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded20, %if.then
  %93 = load i32, i32* %retval, align 4
  ret i32 %93
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_indent(i8* %buf, i32 %level, i8* %buf_start, i64 %buf_len) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 4
  %level.addr = alloca i32, align 4
  %buf_start.addr = alloca i8*, align 4
  %buf_len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %written = alloca i32, align 4
  %written_total = alloca i32, align 4
  %tmp = alloca i8*, align 4
  %0 = ptrtoint i8* %buf to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %buf.addr to i64*
  store i64 %1, i64* %2, align 4
  store i32 %level, i32* %level.addr, align 4
  %3 = ptrtoint i8* %buf_start to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %buf_start.addr to i64*
  store i64 %4, i64* %5, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  store i32 -1, i32* %written, align 4
  store i32 0, i32* %written_total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %level.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8*, i8** %buf.addr, align 4
  %9 = load i8*, i8** %buf_start.addr, align 4
  %10 = load i64, i64* %buf_len.addr, align 8
  %call = call i32 @append_string(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* %9, i64 %10)
  store i32 %call, i32* %written, align 4
  %11 = load i32, i32* %written, align 4
  %cmp1 = icmp slt i32 %11, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  %12 = load i8*, i8** %buf.addr, align 4
  %13 = ptrtoint i8* %12 to i32
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = ptrtoint i8* %15 to i32
  %cmp2 = icmp ne i32 %16, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %17 = load i32, i32* %written, align 4
  %18 = load i8*, i8** %buf.addr, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %tmp, align 4
  %19 = load i8*, i8** %tmp, align 4
  %20 = ptrtoint i8* %19 to i32
  %21 = zext i32 %20 to i64
  %22 = bitcast i8** %buf.addr to i64*
  store i64 %21, i64* %22, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %23 = load i32, i32* %written, align 4
  %24 = load i32, i32* %written_total, align 4
  %add = add nsw i32 %24, %23
  store i32 %add, i32* %written_total, align 4
  br label %do.end

do.end:                                           ; preds = %if.end4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %written_total, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_string(i8* %str_unbounded, i8* %buf, i8* %buf_start, i64 %buf_len) #0 {
entry:
  %retval = alloca i32, align 4
  %str_unbounded.addr = alloca i8*, align 4
  %buf.addr = alloca i8*, align 4
  %buf_start.addr = alloca i8*, align 4
  %buf_len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %string = alloca i8*, align 4
  %c = alloca i8, align 1
  %written = alloca i32, align 4
  %written_total = alloca i32, align 4
  %tmp = alloca i8*, align 4
  %tmp19 = alloca i8*, align 4
  %tmp35 = alloca i8*, align 4
  %tmp51 = alloca i8*, align 4
  %tmp67 = alloca i8*, align 4
  %tmp83 = alloca i8*, align 4
  %tmp99 = alloca i8*, align 4
  %tmp115 = alloca i8*, align 4
  %tmp131 = alloca i8*, align 4
  %tmp147 = alloca i8*, align 4
  %tmp163 = alloca i8*, align 4
  %tmp179 = alloca i8*, align 4
  %tmp195 = alloca i8*, align 4
  %tmp211 = alloca i8*, align 4
  %tmp227 = alloca i8*, align 4
  %tmp243 = alloca i8*, align 4
  %tmp259 = alloca i8*, align 4
  %tmp275 = alloca i8*, align 4
  %tmp291 = alloca i8*, align 4
  %tmp307 = alloca i8*, align 4
  %tmp323 = alloca i8*, align 4
  %tmp339 = alloca i8*, align 4
  %tmp355 = alloca i8*, align 4
  %tmp371 = alloca i8*, align 4
  %tmp387 = alloca i8*, align 4
  %tmp403 = alloca i8*, align 4
  %tmp419 = alloca i8*, align 4
  %tmp435 = alloca i8*, align 4
  %tmp451 = alloca i8*, align 4
  %tmp467 = alloca i8*, align 4
  %tmp483 = alloca i8*, align 4
  %tmp499 = alloca i8*, align 4
  %tmp515 = alloca i8*, align 4
  %tmp531 = alloca i8*, align 4
  %tmp547 = alloca i8*, align 4
  %tmp564 = alloca i8*, align 4
  %tmp579 = alloca i8*, align 4
  %tmp591 = alloca i8*, align 4
  %tmp605 = alloca i8*, align 4
  %0 = ptrtoint i8* %str_unbounded to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %str_unbounded.addr to i64*
  store i64 %1, i64* %2, align 4
  %3 = ptrtoint i8* %buf to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %buf.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = ptrtoint i8* %buf_start to i32
  %7 = zext i32 %6 to i64
  %8 = bitcast i8** %buf_start.addr to i64*
  store i64 %7, i64* %8, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  store i64 0, i64* %i, align 8
  %9 = load i8*, i8** %str_unbounded.addr, align 4
  %10 = load i32, i32* @sbxHeapRange, align 8
  %11 = load i64, i64* @sbxHeap, align 8
  %12 = ptrtoint i8* %9 to i32
  %13 = zext i32 %12 to i64
  %14 = add i64 %11, %13
  %15 = icmp ult i32 %12, %10
  br i1 %15, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %16 = inttoptr i64 %14 to i8*
  %call = call i64 @t_strlen(i8* %16)
  store i64 %call, i64* %len, align 8
  %17 = bitcast i8** %string to i64*
  store i64 0, i64* %17, align 4
  %18 = load i8*, i8** %str_unbounded.addr, align 4
  %19 = ptrtoint i8* %18 to i32
  %20 = zext i32 %19 to i64
  %21 = bitcast i8** %string to i64*
  store i64 %20, i64* %21, align 4
  store i8 0, i8* %c, align 1
  store i32 -1, i32* %written, align 4
  store i32 0, i32* %written_total, align 4
  br label %do.body

do.body:                                          ; preds = %_Dynamic_check.succeeded
  %22 = load i8*, i8** %buf.addr, align 4
  %23 = load i8*, i8** %buf_start.addr, align 4
  %24 = load i64, i64* %buf_len.addr, align 8
  %call1 = call i32 @append_string(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* %23, i64 %24)
  store i32 %call1, i32* %written, align 4
  %25 = load i32, i32* %written, align 4
  %cmp = icmp slt i32 %25, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %do.body
  %26 = load i8*, i8** %buf.addr, align 4
  %27 = ptrtoint i8* %26 to i32
  %28 = zext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %cmp2 = icmp ne i8* %29, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %30 = load i32, i32* %written, align 4
  %31 = load i8*, i8** %buf.addr, align 4
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.ext
  store i8* %add.ptr, i8** %tmp, align 4
  %32 = load i8*, i8** %tmp, align 4
  %33 = ptrtoint i8* %32 to i32
  %34 = zext i32 %33 to i64
  %35 = bitcast i8** %buf.addr to i64*
  store i64 %34, i64* %35, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %36 = load i32, i32* %written, align 4
  %37 = load i32, i32* %written_total, align 4
  %add = add nsw i32 %37, %36
  store i32 %add, i32* %written_total, align 4
  br label %do.end

do.end:                                           ; preds = %if.end4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %38 = load i64, i64* %i, align 8
  %39 = load i64, i64* %len, align 8
  %cmp5 = icmp ult i64 %38, %39
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i8*, i8** %string, align 4
  %41 = load i64, i64* %i, align 8
  %42 = load i32, i32* @sbxHeapRange, align 8
  %43 = load i64, i64* @sbxHeap, align 8
  %44 = ptrtoint i8* %40 to i32
  %45 = zext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = icmp ult i32 %44, %42
  br i1 %47, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %for.body
  %48 = inttoptr i64 %46 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %48, i64 %41
  %49 = load i8, i8* %arrayidx, align 4
  store i8 %49, i8* %c, align 1
  %50 = load i8, i8* %c, align 1
  %conv = sext i8 %50 to i32
  switch i32 %conv, label %sw.default [
    i32 34, label %sw.bb
    i32 92, label %sw.bb23
    i32 8, label %sw.bb39
    i32 12, label %sw.bb55
    i32 10, label %sw.bb71
    i32 13, label %sw.bb87
    i32 9, label %sw.bb103
    i32 0, label %sw.bb119
    i32 1, label %sw.bb135
    i32 2, label %sw.bb151
    i32 3, label %sw.bb167
    i32 4, label %sw.bb183
    i32 5, label %sw.bb199
    i32 6, label %sw.bb215
    i32 7, label %sw.bb231
    i32 11, label %sw.bb247
    i32 14, label %sw.bb263
    i32 15, label %sw.bb279
    i32 16, label %sw.bb295
    i32 17, label %sw.bb311
    i32 18, label %sw.bb327
    i32 19, label %sw.bb343
    i32 20, label %sw.bb359
    i32 21, label %sw.bb375
    i32 22, label %sw.bb391
    i32 23, label %sw.bb407
    i32 24, label %sw.bb423
    i32 25, label %sw.bb439
    i32 26, label %sw.bb455
    i32 27, label %sw.bb471
    i32 28, label %sw.bb487
    i32 29, label %sw.bb503
    i32 30, label %sw.bb519
    i32 31, label %sw.bb535
    i32 47, label %sw.bb551
  ]

_Dynamic_check.failed6:                           ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded7
  br label %do.body8

do.body8:                                         ; preds = %sw.bb
  %51 = load i8*, i8** %buf.addr, align 4
  %52 = load i8*, i8** %buf_start.addr, align 4
  %53 = load i64, i64* %buf_len.addr, align 8
  %call9 = call i32 @append_string(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %52, i64 %53)
  store i32 %call9, i32* %written, align 4
  %54 = load i32, i32* %written, align 4
  %cmp10 = icmp slt i32 %54, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.body8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %do.body8
  %55 = load i8*, i8** %buf.addr, align 4
  %56 = ptrtoint i8* %55 to i32
  %57 = zext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %cmp14 = icmp ne i8* %58, null
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end13
  %59 = load i32, i32* %written, align 4
  %60 = load i8*, i8** %buf.addr, align 4
  %idx.ext17 = sext i32 %59 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %60, i64 %idx.ext17
  store i8* %add.ptr18, i8** %tmp19, align 4
  %61 = load i8*, i8** %tmp19, align 4
  %62 = ptrtoint i8* %61 to i32
  %63 = zext i32 %62 to i64
  %64 = bitcast i8** %buf.addr to i64*
  store i64 %63, i64* %64, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13
  %65 = load i32, i32* %written, align 4
  %66 = load i32, i32* %written_total, align 4
  %add21 = add nsw i32 %66, %65
  store i32 %add21, i32* %written_total, align 4
  br label %do.end22

do.end22:                                         ; preds = %if.end20
  br label %sw.epilog

sw.bb23:                                          ; preds = %_Dynamic_check.succeeded7
  br label %do.body24

do.body24:                                        ; preds = %sw.bb23
  %67 = load i8*, i8** %buf.addr, align 4
  %68 = load i8*, i8** %buf_start.addr, align 4
  %69 = load i64, i64* %buf_len.addr, align 8
  %call25 = call i32 @append_string(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %68, i64 %69)
  store i32 %call25, i32* %written, align 4
  %70 = load i32, i32* %written, align 4
  %cmp26 = icmp slt i32 %70, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body24
  store i32 -1, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %do.body24
  %71 = load i8*, i8** %buf.addr, align 4
  %72 = ptrtoint i8* %71 to i32
  %73 = zext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %cmp30 = icmp ne i8* %74, null
  br i1 %cmp30, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end29
  %75 = load i32, i32* %written, align 4
  %76 = load i8*, i8** %buf.addr, align 4
  %idx.ext33 = sext i32 %75 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %76, i64 %idx.ext33
  store i8* %add.ptr34, i8** %tmp35, align 4
  %77 = load i8*, i8** %tmp35, align 4
  %78 = ptrtoint i8* %77 to i32
  %79 = zext i32 %78 to i64
  %80 = bitcast i8** %buf.addr to i64*
  store i64 %79, i64* %80, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end29
  %81 = load i32, i32* %written, align 4
  %82 = load i32, i32* %written_total, align 4
  %add37 = add nsw i32 %82, %81
  store i32 %add37, i32* %written_total, align 4
  br label %do.end38

do.end38:                                         ; preds = %if.end36
  br label %sw.epilog

sw.bb39:                                          ; preds = %_Dynamic_check.succeeded7
  br label %do.body40

do.body40:                                        ; preds = %sw.bb39
  %83 = load i8*, i8** %buf.addr, align 4
  %84 = load i8*, i8** %buf_start.addr, align 4
  %85 = load i64, i64* %buf_len.addr, align 8
  %call41 = call i32 @append_string(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %84, i64 %85)
  store i32 %call41, i32* %written, align 4
  %86 = load i32, i32* %written, align 4
  %cmp42 = icmp slt i32 %86, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %do.body40
  store i32 -1, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %do.body40
  %87 = load i8*, i8** %buf.addr, align 4
  %88 = ptrtoint i8* %87 to i32
  %89 = zext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %cmp46 = icmp ne i8* %90, null
  br i1 %cmp46, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end45
  %91 = load i32, i32* %written, align 4
  %92 = load i8*, i8** %buf.addr, align 4
  %idx.ext49 = sext i32 %91 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %92, i64 %idx.ext49
  store i8* %add.ptr50, i8** %tmp51, align 4
  %93 = load i8*, i8** %tmp51, align 4
  %94 = ptrtoint i8* %93 to i32
  %95 = zext i32 %94 to i64
  %96 = bitcast i8** %buf.addr to i64*
  store i64 %95, i64* %96, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end45
  %97 = load i32, i32* %written, align 4
  %98 = load i32, i32* %written_total, align 4
  %add53 = add nsw i32 %98, %97
  store i32 %add53, i32* %written_total, align 4
  br label %do.end54

do.end54:                                         ; preds = %if.end52
  br label %sw.epilog

sw.bb55:                                          ; preds = %_Dynamic_check.succeeded7
  br label %do.body56

do.body56:                                        ; preds = %sw.bb55
  %99 = load i8*, i8** %buf.addr, align 4
  %100 = load i8*, i8** %buf_start.addr, align 4
  %101 = load i64, i64* %buf_len.addr, align 8
  %call57 = call i32 @append_string(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %100, i64 %101)
  store i32 %call57, i32* %written, align 4
  %102 = load i32, i32* %written, align 4
  %cmp58 = icmp slt i32 %102, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body56
  store i32 -1, i32* %retval, align 4
  br label %return

if.end61:                                         ; preds = %do.body56
  %103 = load i8*, i8** %buf.addr, align 4
  %104 = ptrtoint i8* %103 to i32
  %105 = zext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %cmp62 = icmp ne i8* %106, null
  br i1 %cmp62, label %if.then64, label %if.end68

if.then64:                                        ; preds = %if.end61
  %107 = load i32, i32* %written, align 4
  %108 = load i8*, i8** %buf.addr, align 4
  %idx.ext65 = sext i32 %107 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %108, i64 %idx.ext65
  store i8* %add.ptr66, i8** %tmp67, align 4
  %109 = load i8*, i8** %tmp67, align 4
  %110 = ptrtoint i8* %109 to i32
  %111 = zext i32 %110 to i64
  %112 = bitcast i8** %buf.addr to i64*
  store i64 %111, i64* %112, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end61
  %113 = load i32, i32* %written, align 4
  %114 = load i32, i32* %written_total, align 4
  %add69 = add nsw i32 %114, %113
  store i32 %add69, i32* %written_total, align 4
  br label %do.end70

do.end70:                                         ; preds = %if.end68
  br label %sw.epilog

sw.bb71:                                          ; preds = %_Dynamic_check.succeeded7
  br label %do.body72

do.body72:                                        ; preds = %sw.bb71
  %115 = load i8*, i8** %buf.addr, align 4
  %116 = load i8*, i8** %buf_start.addr, align 4
  %117 = load i64, i64* %buf_len.addr, align 8
  %call73 = call i32 @append_string(i8* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %116, i64 %117)
  store i32 %call73, i32* %written, align 4
  %118 = load i32, i32* %written, align 4
  %cmp74 = icmp slt i32 %118, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %do.body72
  store i32 -1, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %do.body72
  %119 = load i8*, i8** %buf.addr, align 4
  %120 = ptrtoint i8* %119 to i32
  %121 = zext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %cmp78 = icmp ne i8* %122, null
  br i1 %cmp78, label %if.then80, label %if.end84

if.then80:                                        ; preds = %if.end77
  %123 = load i32, i32* %written, align 4
  %124 = load i8*, i8** %buf.addr, align 4
  %idx.ext81 = sext i32 %123 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %124, i64 %idx.ext81
  store i8* %add.ptr82, i8** %tmp83, align 4
  %125 = load i8*, i8** %tmp83, align 4
  %126 = ptrtoint i8* %125 to i32
  %127 = zext i32 %126 to i64
  %128 = bitcast i8** %buf.addr to i64*
  store i64 %127, i64* %128, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.end77
  %129 = load i32, i32* %written, align 4
  %130 = load i32, i32* %written_total, align 4
  %add85 = add nsw i32 %130, %129
  store i32 %add85, i32* %written_total, align 4
  br label %do.end86

do.end86:                                         ; preds = %if.end84
  br label %sw.epilog

sw.bb87:                                          ; preds = %_Dynamic_check.succeeded7
  br label %do.body88

do.body88:                                        ; preds = %sw.bb87
  %131 = load i8*, i8** %buf.addr, align 4
  %132 = load i8*, i8** %buf_start.addr, align 4
  %133 = load i64, i64* %buf_len.addr, align 8
  %call89 = call i32 @append_string(i8* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %132, i64 %133)
  store i32 %call89, i32* %written, align 4
  %134 = load i32, i32* %written, align 4
  %cmp90 = icmp slt i32 %134, 0
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %do.body88
  store i32 -1, i32* %retval, align 4
  br label %return

if.end93:                                         ; preds = %do.body88
  %135 = load i8*, i8** %buf.addr, align 4
  %136 = ptrtoint i8* %135 to i32
  %137 = zext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %cmp94 = icmp ne i8* %138, null
  br i1 %cmp94, label %if.then96, label %if.end100

if.then96:                                        ; preds = %if.end93
  %139 = load i32, i32* %written, align 4
  %140 = load i8*, i8** %buf.addr, align 4
  %idx.ext97 = sext i32 %139 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %140, i64 %idx.ext97
  store i8* %add.ptr98, i8** %tmp99, align 4
  %141 = load i8*, i8** %tmp99, align 4
  %142 = ptrtoint i8* %141 to i32
  %143 = zext i32 %142 to i64
  %144 = bitcast i8** %buf.addr to i64*
  store i64 %143, i64* %144, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %if.end93
  %145 = load i32, i32* %written, align 4
  %146 = load i32, i32* %written_total, align 4
  %add101 = add nsw i32 %146, %145
  store i32 %add101, i32* %written_total, align 4
  br label %do.end102

do.end102:                                        ; preds = %if.end100
  br label %sw.epilog

sw.bb103:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body104

do.body104:                                       ; preds = %sw.bb103
  %147 = load i8*, i8** %buf.addr, align 4
  %148 = load i8*, i8** %buf_start.addr, align 4
  %149 = load i64, i64* %buf_len.addr, align 8
  %call105 = call i32 @append_string(i8* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %148, i64 %149)
  store i32 %call105, i32* %written, align 4
  %150 = load i32, i32* %written, align 4
  %cmp106 = icmp slt i32 %150, 0
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %do.body104
  store i32 -1, i32* %retval, align 4
  br label %return

if.end109:                                        ; preds = %do.body104
  %151 = load i8*, i8** %buf.addr, align 4
  %152 = ptrtoint i8* %151 to i32
  %153 = zext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %cmp110 = icmp ne i8* %154, null
  br i1 %cmp110, label %if.then112, label %if.end116

if.then112:                                       ; preds = %if.end109
  %155 = load i32, i32* %written, align 4
  %156 = load i8*, i8** %buf.addr, align 4
  %idx.ext113 = sext i32 %155 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %156, i64 %idx.ext113
  store i8* %add.ptr114, i8** %tmp115, align 4
  %157 = load i8*, i8** %tmp115, align 4
  %158 = ptrtoint i8* %157 to i32
  %159 = zext i32 %158 to i64
  %160 = bitcast i8** %buf.addr to i64*
  store i64 %159, i64* %160, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %if.end109
  %161 = load i32, i32* %written, align 4
  %162 = load i32, i32* %written_total, align 4
  %add117 = add nsw i32 %162, %161
  store i32 %add117, i32* %written_total, align 4
  br label %do.end118

do.end118:                                        ; preds = %if.end116
  br label %sw.epilog

sw.bb119:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body120

do.body120:                                       ; preds = %sw.bb119
  %163 = load i8*, i8** %buf.addr, align 4
  %164 = load i8*, i8** %buf_start.addr, align 4
  %165 = load i64, i64* %buf_len.addr, align 8
  %call121 = call i32 @append_string(i8* %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %164, i64 %165)
  store i32 %call121, i32* %written, align 4
  %166 = load i32, i32* %written, align 4
  %cmp122 = icmp slt i32 %166, 0
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %do.body120
  store i32 -1, i32* %retval, align 4
  br label %return

if.end125:                                        ; preds = %do.body120
  %167 = load i8*, i8** %buf.addr, align 4
  %168 = ptrtoint i8* %167 to i32
  %169 = zext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  %cmp126 = icmp ne i8* %170, null
  br i1 %cmp126, label %if.then128, label %if.end132

if.then128:                                       ; preds = %if.end125
  %171 = load i32, i32* %written, align 4
  %172 = load i8*, i8** %buf.addr, align 4
  %idx.ext129 = sext i32 %171 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %172, i64 %idx.ext129
  store i8* %add.ptr130, i8** %tmp131, align 4
  %173 = load i8*, i8** %tmp131, align 4
  %174 = ptrtoint i8* %173 to i32
  %175 = zext i32 %174 to i64
  %176 = bitcast i8** %buf.addr to i64*
  store i64 %175, i64* %176, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.end125
  %177 = load i32, i32* %written, align 4
  %178 = load i32, i32* %written_total, align 4
  %add133 = add nsw i32 %178, %177
  store i32 %add133, i32* %written_total, align 4
  br label %do.end134

do.end134:                                        ; preds = %if.end132
  br label %sw.epilog

sw.bb135:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body136

do.body136:                                       ; preds = %sw.bb135
  %179 = load i8*, i8** %buf.addr, align 4
  %180 = load i8*, i8** %buf_start.addr, align 4
  %181 = load i64, i64* %buf_len.addr, align 8
  %call137 = call i32 @append_string(i8* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* %180, i64 %181)
  store i32 %call137, i32* %written, align 4
  %182 = load i32, i32* %written, align 4
  %cmp138 = icmp slt i32 %182, 0
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %do.body136
  store i32 -1, i32* %retval, align 4
  br label %return

if.end141:                                        ; preds = %do.body136
  %183 = load i8*, i8** %buf.addr, align 4
  %184 = ptrtoint i8* %183 to i32
  %185 = zext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %cmp142 = icmp ne i8* %186, null
  br i1 %cmp142, label %if.then144, label %if.end148

if.then144:                                       ; preds = %if.end141
  %187 = load i32, i32* %written, align 4
  %188 = load i8*, i8** %buf.addr, align 4
  %idx.ext145 = sext i32 %187 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %188, i64 %idx.ext145
  store i8* %add.ptr146, i8** %tmp147, align 4
  %189 = load i8*, i8** %tmp147, align 4
  %190 = ptrtoint i8* %189 to i32
  %191 = zext i32 %190 to i64
  %192 = bitcast i8** %buf.addr to i64*
  store i64 %191, i64* %192, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %if.end141
  %193 = load i32, i32* %written, align 4
  %194 = load i32, i32* %written_total, align 4
  %add149 = add nsw i32 %194, %193
  store i32 %add149, i32* %written_total, align 4
  br label %do.end150

do.end150:                                        ; preds = %if.end148
  br label %sw.epilog

sw.bb151:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body152

do.body152:                                       ; preds = %sw.bb151
  %195 = load i8*, i8** %buf.addr, align 4
  %196 = load i8*, i8** %buf_start.addr, align 4
  %197 = load i64, i64* %buf_len.addr, align 8
  %call153 = call i32 @append_string(i8* %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* %196, i64 %197)
  store i32 %call153, i32* %written, align 4
  %198 = load i32, i32* %written, align 4
  %cmp154 = icmp slt i32 %198, 0
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %do.body152
  store i32 -1, i32* %retval, align 4
  br label %return

if.end157:                                        ; preds = %do.body152
  %199 = load i8*, i8** %buf.addr, align 4
  %200 = ptrtoint i8* %199 to i32
  %201 = zext i32 %200 to i64
  %202 = inttoptr i64 %201 to i8*
  %cmp158 = icmp ne i8* %202, null
  br i1 %cmp158, label %if.then160, label %if.end164

if.then160:                                       ; preds = %if.end157
  %203 = load i32, i32* %written, align 4
  %204 = load i8*, i8** %buf.addr, align 4
  %idx.ext161 = sext i32 %203 to i64
  %add.ptr162 = getelementptr inbounds i8, i8* %204, i64 %idx.ext161
  store i8* %add.ptr162, i8** %tmp163, align 4
  %205 = load i8*, i8** %tmp163, align 4
  %206 = ptrtoint i8* %205 to i32
  %207 = zext i32 %206 to i64
  %208 = bitcast i8** %buf.addr to i64*
  store i64 %207, i64* %208, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then160, %if.end157
  %209 = load i32, i32* %written, align 4
  %210 = load i32, i32* %written_total, align 4
  %add165 = add nsw i32 %210, %209
  store i32 %add165, i32* %written_total, align 4
  br label %do.end166

do.end166:                                        ; preds = %if.end164
  br label %sw.epilog

sw.bb167:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body168

do.body168:                                       ; preds = %sw.bb167
  %211 = load i8*, i8** %buf.addr, align 4
  %212 = load i8*, i8** %buf_start.addr, align 4
  %213 = load i64, i64* %buf_len.addr, align 8
  %call169 = call i32 @append_string(i8* %211, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %212, i64 %213)
  store i32 %call169, i32* %written, align 4
  %214 = load i32, i32* %written, align 4
  %cmp170 = icmp slt i32 %214, 0
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %do.body168
  store i32 -1, i32* %retval, align 4
  br label %return

if.end173:                                        ; preds = %do.body168
  %215 = load i8*, i8** %buf.addr, align 4
  %216 = ptrtoint i8* %215 to i32
  %217 = zext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  %cmp174 = icmp ne i8* %218, null
  br i1 %cmp174, label %if.then176, label %if.end180

if.then176:                                       ; preds = %if.end173
  %219 = load i32, i32* %written, align 4
  %220 = load i8*, i8** %buf.addr, align 4
  %idx.ext177 = sext i32 %219 to i64
  %add.ptr178 = getelementptr inbounds i8, i8* %220, i64 %idx.ext177
  store i8* %add.ptr178, i8** %tmp179, align 4
  %221 = load i8*, i8** %tmp179, align 4
  %222 = ptrtoint i8* %221 to i32
  %223 = zext i32 %222 to i64
  %224 = bitcast i8** %buf.addr to i64*
  store i64 %223, i64* %224, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %if.end173
  %225 = load i32, i32* %written, align 4
  %226 = load i32, i32* %written_total, align 4
  %add181 = add nsw i32 %226, %225
  store i32 %add181, i32* %written_total, align 4
  br label %do.end182

do.end182:                                        ; preds = %if.end180
  br label %sw.epilog

sw.bb183:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body184

do.body184:                                       ; preds = %sw.bb183
  %227 = load i8*, i8** %buf.addr, align 4
  %228 = load i8*, i8** %buf_start.addr, align 4
  %229 = load i64, i64* %buf_len.addr, align 8
  %call185 = call i32 @append_string(i8* %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* %228, i64 %229)
  store i32 %call185, i32* %written, align 4
  %230 = load i32, i32* %written, align 4
  %cmp186 = icmp slt i32 %230, 0
  br i1 %cmp186, label %if.then188, label %if.end189

if.then188:                                       ; preds = %do.body184
  store i32 -1, i32* %retval, align 4
  br label %return

if.end189:                                        ; preds = %do.body184
  %231 = load i8*, i8** %buf.addr, align 4
  %232 = ptrtoint i8* %231 to i32
  %233 = zext i32 %232 to i64
  %234 = inttoptr i64 %233 to i8*
  %cmp190 = icmp ne i8* %234, null
  br i1 %cmp190, label %if.then192, label %if.end196

if.then192:                                       ; preds = %if.end189
  %235 = load i32, i32* %written, align 4
  %236 = load i8*, i8** %buf.addr, align 4
  %idx.ext193 = sext i32 %235 to i64
  %add.ptr194 = getelementptr inbounds i8, i8* %236, i64 %idx.ext193
  store i8* %add.ptr194, i8** %tmp195, align 4
  %237 = load i8*, i8** %tmp195, align 4
  %238 = ptrtoint i8* %237 to i32
  %239 = zext i32 %238 to i64
  %240 = bitcast i8** %buf.addr to i64*
  store i64 %239, i64* %240, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then192, %if.end189
  %241 = load i32, i32* %written, align 4
  %242 = load i32, i32* %written_total, align 4
  %add197 = add nsw i32 %242, %241
  store i32 %add197, i32* %written_total, align 4
  br label %do.end198

do.end198:                                        ; preds = %if.end196
  br label %sw.epilog

sw.bb199:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body200

do.body200:                                       ; preds = %sw.bb199
  %243 = load i8*, i8** %buf.addr, align 4
  %244 = load i8*, i8** %buf_start.addr, align 4
  %245 = load i64, i64* %buf_len.addr, align 8
  %call201 = call i32 @append_string(i8* %243, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %244, i64 %245)
  store i32 %call201, i32* %written, align 4
  %246 = load i32, i32* %written, align 4
  %cmp202 = icmp slt i32 %246, 0
  br i1 %cmp202, label %if.then204, label %if.end205

if.then204:                                       ; preds = %do.body200
  store i32 -1, i32* %retval, align 4
  br label %return

if.end205:                                        ; preds = %do.body200
  %247 = load i8*, i8** %buf.addr, align 4
  %248 = ptrtoint i8* %247 to i32
  %249 = zext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %cmp206 = icmp ne i8* %250, null
  br i1 %cmp206, label %if.then208, label %if.end212

if.then208:                                       ; preds = %if.end205
  %251 = load i32, i32* %written, align 4
  %252 = load i8*, i8** %buf.addr, align 4
  %idx.ext209 = sext i32 %251 to i64
  %add.ptr210 = getelementptr inbounds i8, i8* %252, i64 %idx.ext209
  store i8* %add.ptr210, i8** %tmp211, align 4
  %253 = load i8*, i8** %tmp211, align 4
  %254 = ptrtoint i8* %253 to i32
  %255 = zext i32 %254 to i64
  %256 = bitcast i8** %buf.addr to i64*
  store i64 %255, i64* %256, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then208, %if.end205
  %257 = load i32, i32* %written, align 4
  %258 = load i32, i32* %written_total, align 4
  %add213 = add nsw i32 %258, %257
  store i32 %add213, i32* %written_total, align 4
  br label %do.end214

do.end214:                                        ; preds = %if.end212
  br label %sw.epilog

sw.bb215:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body216

do.body216:                                       ; preds = %sw.bb215
  %259 = load i8*, i8** %buf.addr, align 4
  %260 = load i8*, i8** %buf_start.addr, align 4
  %261 = load i64, i64* %buf_len.addr, align 8
  %call217 = call i32 @append_string(i8* %259, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* %260, i64 %261)
  store i32 %call217, i32* %written, align 4
  %262 = load i32, i32* %written, align 4
  %cmp218 = icmp slt i32 %262, 0
  br i1 %cmp218, label %if.then220, label %if.end221

if.then220:                                       ; preds = %do.body216
  store i32 -1, i32* %retval, align 4
  br label %return

if.end221:                                        ; preds = %do.body216
  %263 = load i8*, i8** %buf.addr, align 4
  %264 = ptrtoint i8* %263 to i32
  %265 = zext i32 %264 to i64
  %266 = inttoptr i64 %265 to i8*
  %cmp222 = icmp ne i8* %266, null
  br i1 %cmp222, label %if.then224, label %if.end228

if.then224:                                       ; preds = %if.end221
  %267 = load i32, i32* %written, align 4
  %268 = load i8*, i8** %buf.addr, align 4
  %idx.ext225 = sext i32 %267 to i64
  %add.ptr226 = getelementptr inbounds i8, i8* %268, i64 %idx.ext225
  store i8* %add.ptr226, i8** %tmp227, align 4
  %269 = load i8*, i8** %tmp227, align 4
  %270 = ptrtoint i8* %269 to i32
  %271 = zext i32 %270 to i64
  %272 = bitcast i8** %buf.addr to i64*
  store i64 %271, i64* %272, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.then224, %if.end221
  %273 = load i32, i32* %written, align 4
  %274 = load i32, i32* %written_total, align 4
  %add229 = add nsw i32 %274, %273
  store i32 %add229, i32* %written_total, align 4
  br label %do.end230

do.end230:                                        ; preds = %if.end228
  br label %sw.epilog

sw.bb231:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body232

do.body232:                                       ; preds = %sw.bb231
  %275 = load i8*, i8** %buf.addr, align 4
  %276 = load i8*, i8** %buf_start.addr, align 4
  %277 = load i64, i64* %buf_len.addr, align 8
  %call233 = call i32 @append_string(i8* %275, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* %276, i64 %277)
  store i32 %call233, i32* %written, align 4
  %278 = load i32, i32* %written, align 4
  %cmp234 = icmp slt i32 %278, 0
  br i1 %cmp234, label %if.then236, label %if.end237

if.then236:                                       ; preds = %do.body232
  store i32 -1, i32* %retval, align 4
  br label %return

if.end237:                                        ; preds = %do.body232
  %279 = load i8*, i8** %buf.addr, align 4
  %280 = ptrtoint i8* %279 to i32
  %281 = zext i32 %280 to i64
  %282 = inttoptr i64 %281 to i8*
  %cmp238 = icmp ne i8* %282, null
  br i1 %cmp238, label %if.then240, label %if.end244

if.then240:                                       ; preds = %if.end237
  %283 = load i32, i32* %written, align 4
  %284 = load i8*, i8** %buf.addr, align 4
  %idx.ext241 = sext i32 %283 to i64
  %add.ptr242 = getelementptr inbounds i8, i8* %284, i64 %idx.ext241
  store i8* %add.ptr242, i8** %tmp243, align 4
  %285 = load i8*, i8** %tmp243, align 4
  %286 = ptrtoint i8* %285 to i32
  %287 = zext i32 %286 to i64
  %288 = bitcast i8** %buf.addr to i64*
  store i64 %287, i64* %288, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.then240, %if.end237
  %289 = load i32, i32* %written, align 4
  %290 = load i32, i32* %written_total, align 4
  %add245 = add nsw i32 %290, %289
  store i32 %add245, i32* %written_total, align 4
  br label %do.end246

do.end246:                                        ; preds = %if.end244
  br label %sw.epilog

sw.bb247:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body248

do.body248:                                       ; preds = %sw.bb247
  %291 = load i8*, i8** %buf.addr, align 4
  %292 = load i8*, i8** %buf_start.addr, align 4
  %293 = load i64, i64* %buf_len.addr, align 8
  %call249 = call i32 @append_string(i8* %291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* %292, i64 %293)
  store i32 %call249, i32* %written, align 4
  %294 = load i32, i32* %written, align 4
  %cmp250 = icmp slt i32 %294, 0
  br i1 %cmp250, label %if.then252, label %if.end253

if.then252:                                       ; preds = %do.body248
  store i32 -1, i32* %retval, align 4
  br label %return

if.end253:                                        ; preds = %do.body248
  %295 = load i8*, i8** %buf.addr, align 4
  %296 = ptrtoint i8* %295 to i32
  %297 = zext i32 %296 to i64
  %298 = inttoptr i64 %297 to i8*
  %cmp254 = icmp ne i8* %298, null
  br i1 %cmp254, label %if.then256, label %if.end260

if.then256:                                       ; preds = %if.end253
  %299 = load i32, i32* %written, align 4
  %300 = load i8*, i8** %buf.addr, align 4
  %idx.ext257 = sext i32 %299 to i64
  %add.ptr258 = getelementptr inbounds i8, i8* %300, i64 %idx.ext257
  store i8* %add.ptr258, i8** %tmp259, align 4
  %301 = load i8*, i8** %tmp259, align 4
  %302 = ptrtoint i8* %301 to i32
  %303 = zext i32 %302 to i64
  %304 = bitcast i8** %buf.addr to i64*
  store i64 %303, i64* %304, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.then256, %if.end253
  %305 = load i32, i32* %written, align 4
  %306 = load i32, i32* %written_total, align 4
  %add261 = add nsw i32 %306, %305
  store i32 %add261, i32* %written_total, align 4
  br label %do.end262

do.end262:                                        ; preds = %if.end260
  br label %sw.epilog

sw.bb263:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body264

do.body264:                                       ; preds = %sw.bb263
  %307 = load i8*, i8** %buf.addr, align 4
  %308 = load i8*, i8** %buf_start.addr, align 4
  %309 = load i64, i64* %buf_len.addr, align 8
  %call265 = call i32 @append_string(i8* %307, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* %308, i64 %309)
  store i32 %call265, i32* %written, align 4
  %310 = load i32, i32* %written, align 4
  %cmp266 = icmp slt i32 %310, 0
  br i1 %cmp266, label %if.then268, label %if.end269

if.then268:                                       ; preds = %do.body264
  store i32 -1, i32* %retval, align 4
  br label %return

if.end269:                                        ; preds = %do.body264
  %311 = load i8*, i8** %buf.addr, align 4
  %312 = ptrtoint i8* %311 to i32
  %313 = zext i32 %312 to i64
  %314 = inttoptr i64 %313 to i8*
  %cmp270 = icmp ne i8* %314, null
  br i1 %cmp270, label %if.then272, label %if.end276

if.then272:                                       ; preds = %if.end269
  %315 = load i32, i32* %written, align 4
  %316 = load i8*, i8** %buf.addr, align 4
  %idx.ext273 = sext i32 %315 to i64
  %add.ptr274 = getelementptr inbounds i8, i8* %316, i64 %idx.ext273
  store i8* %add.ptr274, i8** %tmp275, align 4
  %317 = load i8*, i8** %tmp275, align 4
  %318 = ptrtoint i8* %317 to i32
  %319 = zext i32 %318 to i64
  %320 = bitcast i8** %buf.addr to i64*
  store i64 %319, i64* %320, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.then272, %if.end269
  %321 = load i32, i32* %written, align 4
  %322 = load i32, i32* %written_total, align 4
  %add277 = add nsw i32 %322, %321
  store i32 %add277, i32* %written_total, align 4
  br label %do.end278

do.end278:                                        ; preds = %if.end276
  br label %sw.epilog

sw.bb279:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body280

do.body280:                                       ; preds = %sw.bb279
  %323 = load i8*, i8** %buf.addr, align 4
  %324 = load i8*, i8** %buf_start.addr, align 4
  %325 = load i64, i64* %buf_len.addr, align 8
  %call281 = call i32 @append_string(i8* %323, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* %324, i64 %325)
  store i32 %call281, i32* %written, align 4
  %326 = load i32, i32* %written, align 4
  %cmp282 = icmp slt i32 %326, 0
  br i1 %cmp282, label %if.then284, label %if.end285

if.then284:                                       ; preds = %do.body280
  store i32 -1, i32* %retval, align 4
  br label %return

if.end285:                                        ; preds = %do.body280
  %327 = load i8*, i8** %buf.addr, align 4
  %328 = ptrtoint i8* %327 to i32
  %329 = zext i32 %328 to i64
  %330 = inttoptr i64 %329 to i8*
  %cmp286 = icmp ne i8* %330, null
  br i1 %cmp286, label %if.then288, label %if.end292

if.then288:                                       ; preds = %if.end285
  %331 = load i32, i32* %written, align 4
  %332 = load i8*, i8** %buf.addr, align 4
  %idx.ext289 = sext i32 %331 to i64
  %add.ptr290 = getelementptr inbounds i8, i8* %332, i64 %idx.ext289
  store i8* %add.ptr290, i8** %tmp291, align 4
  %333 = load i8*, i8** %tmp291, align 4
  %334 = ptrtoint i8* %333 to i32
  %335 = zext i32 %334 to i64
  %336 = bitcast i8** %buf.addr to i64*
  store i64 %335, i64* %336, align 4
  br label %if.end292

if.end292:                                        ; preds = %if.then288, %if.end285
  %337 = load i32, i32* %written, align 4
  %338 = load i32, i32* %written_total, align 4
  %add293 = add nsw i32 %338, %337
  store i32 %add293, i32* %written_total, align 4
  br label %do.end294

do.end294:                                        ; preds = %if.end292
  br label %sw.epilog

sw.bb295:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body296

do.body296:                                       ; preds = %sw.bb295
  %339 = load i8*, i8** %buf.addr, align 4
  %340 = load i8*, i8** %buf_start.addr, align 4
  %341 = load i64, i64* %buf_len.addr, align 8
  %call297 = call i32 @append_string(i8* %339, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %340, i64 %341)
  store i32 %call297, i32* %written, align 4
  %342 = load i32, i32* %written, align 4
  %cmp298 = icmp slt i32 %342, 0
  br i1 %cmp298, label %if.then300, label %if.end301

if.then300:                                       ; preds = %do.body296
  store i32 -1, i32* %retval, align 4
  br label %return

if.end301:                                        ; preds = %do.body296
  %343 = load i8*, i8** %buf.addr, align 4
  %344 = ptrtoint i8* %343 to i32
  %345 = zext i32 %344 to i64
  %346 = inttoptr i64 %345 to i8*
  %cmp302 = icmp ne i8* %346, null
  br i1 %cmp302, label %if.then304, label %if.end308

if.then304:                                       ; preds = %if.end301
  %347 = load i32, i32* %written, align 4
  %348 = load i8*, i8** %buf.addr, align 4
  %idx.ext305 = sext i32 %347 to i64
  %add.ptr306 = getelementptr inbounds i8, i8* %348, i64 %idx.ext305
  store i8* %add.ptr306, i8** %tmp307, align 4
  %349 = load i8*, i8** %tmp307, align 4
  %350 = ptrtoint i8* %349 to i32
  %351 = zext i32 %350 to i64
  %352 = bitcast i8** %buf.addr to i64*
  store i64 %351, i64* %352, align 4
  br label %if.end308

if.end308:                                        ; preds = %if.then304, %if.end301
  %353 = load i32, i32* %written, align 4
  %354 = load i32, i32* %written_total, align 4
  %add309 = add nsw i32 %354, %353
  store i32 %add309, i32* %written_total, align 4
  br label %do.end310

do.end310:                                        ; preds = %if.end308
  br label %sw.epilog

sw.bb311:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body312

do.body312:                                       ; preds = %sw.bb311
  %355 = load i8*, i8** %buf.addr, align 4
  %356 = load i8*, i8** %buf_start.addr, align 4
  %357 = load i64, i64* %buf_len.addr, align 8
  %call313 = call i32 @append_string(i8* %355, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* %356, i64 %357)
  store i32 %call313, i32* %written, align 4
  %358 = load i32, i32* %written, align 4
  %cmp314 = icmp slt i32 %358, 0
  br i1 %cmp314, label %if.then316, label %if.end317

if.then316:                                       ; preds = %do.body312
  store i32 -1, i32* %retval, align 4
  br label %return

if.end317:                                        ; preds = %do.body312
  %359 = load i8*, i8** %buf.addr, align 4
  %360 = ptrtoint i8* %359 to i32
  %361 = zext i32 %360 to i64
  %362 = inttoptr i64 %361 to i8*
  %cmp318 = icmp ne i8* %362, null
  br i1 %cmp318, label %if.then320, label %if.end324

if.then320:                                       ; preds = %if.end317
  %363 = load i32, i32* %written, align 4
  %364 = load i8*, i8** %buf.addr, align 4
  %idx.ext321 = sext i32 %363 to i64
  %add.ptr322 = getelementptr inbounds i8, i8* %364, i64 %idx.ext321
  store i8* %add.ptr322, i8** %tmp323, align 4
  %365 = load i8*, i8** %tmp323, align 4
  %366 = ptrtoint i8* %365 to i32
  %367 = zext i32 %366 to i64
  %368 = bitcast i8** %buf.addr to i64*
  store i64 %367, i64* %368, align 4
  br label %if.end324

if.end324:                                        ; preds = %if.then320, %if.end317
  %369 = load i32, i32* %written, align 4
  %370 = load i32, i32* %written_total, align 4
  %add325 = add nsw i32 %370, %369
  store i32 %add325, i32* %written_total, align 4
  br label %do.end326

do.end326:                                        ; preds = %if.end324
  br label %sw.epilog

sw.bb327:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body328

do.body328:                                       ; preds = %sw.bb327
  %371 = load i8*, i8** %buf.addr, align 4
  %372 = load i8*, i8** %buf_start.addr, align 4
  %373 = load i64, i64* %buf_len.addr, align 8
  %call329 = call i32 @append_string(i8* %371, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* %372, i64 %373)
  store i32 %call329, i32* %written, align 4
  %374 = load i32, i32* %written, align 4
  %cmp330 = icmp slt i32 %374, 0
  br i1 %cmp330, label %if.then332, label %if.end333

if.then332:                                       ; preds = %do.body328
  store i32 -1, i32* %retval, align 4
  br label %return

if.end333:                                        ; preds = %do.body328
  %375 = load i8*, i8** %buf.addr, align 4
  %376 = ptrtoint i8* %375 to i32
  %377 = zext i32 %376 to i64
  %378 = inttoptr i64 %377 to i8*
  %cmp334 = icmp ne i8* %378, null
  br i1 %cmp334, label %if.then336, label %if.end340

if.then336:                                       ; preds = %if.end333
  %379 = load i32, i32* %written, align 4
  %380 = load i8*, i8** %buf.addr, align 4
  %idx.ext337 = sext i32 %379 to i64
  %add.ptr338 = getelementptr inbounds i8, i8* %380, i64 %idx.ext337
  store i8* %add.ptr338, i8** %tmp339, align 4
  %381 = load i8*, i8** %tmp339, align 4
  %382 = ptrtoint i8* %381 to i32
  %383 = zext i32 %382 to i64
  %384 = bitcast i8** %buf.addr to i64*
  store i64 %383, i64* %384, align 4
  br label %if.end340

if.end340:                                        ; preds = %if.then336, %if.end333
  %385 = load i32, i32* %written, align 4
  %386 = load i32, i32* %written_total, align 4
  %add341 = add nsw i32 %386, %385
  store i32 %add341, i32* %written_total, align 4
  br label %do.end342

do.end342:                                        ; preds = %if.end340
  br label %sw.epilog

sw.bb343:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body344

do.body344:                                       ; preds = %sw.bb343
  %387 = load i8*, i8** %buf.addr, align 4
  %388 = load i8*, i8** %buf_start.addr, align 4
  %389 = load i64, i64* %buf_len.addr, align 8
  %call345 = call i32 @append_string(i8* %387, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i8* %388, i64 %389)
  store i32 %call345, i32* %written, align 4
  %390 = load i32, i32* %written, align 4
  %cmp346 = icmp slt i32 %390, 0
  br i1 %cmp346, label %if.then348, label %if.end349

if.then348:                                       ; preds = %do.body344
  store i32 -1, i32* %retval, align 4
  br label %return

if.end349:                                        ; preds = %do.body344
  %391 = load i8*, i8** %buf.addr, align 4
  %392 = ptrtoint i8* %391 to i32
  %393 = zext i32 %392 to i64
  %394 = inttoptr i64 %393 to i8*
  %cmp350 = icmp ne i8* %394, null
  br i1 %cmp350, label %if.then352, label %if.end356

if.then352:                                       ; preds = %if.end349
  %395 = load i32, i32* %written, align 4
  %396 = load i8*, i8** %buf.addr, align 4
  %idx.ext353 = sext i32 %395 to i64
  %add.ptr354 = getelementptr inbounds i8, i8* %396, i64 %idx.ext353
  store i8* %add.ptr354, i8** %tmp355, align 4
  %397 = load i8*, i8** %tmp355, align 4
  %398 = ptrtoint i8* %397 to i32
  %399 = zext i32 %398 to i64
  %400 = bitcast i8** %buf.addr to i64*
  store i64 %399, i64* %400, align 4
  br label %if.end356

if.end356:                                        ; preds = %if.then352, %if.end349
  %401 = load i32, i32* %written, align 4
  %402 = load i32, i32* %written_total, align 4
  %add357 = add nsw i32 %402, %401
  store i32 %add357, i32* %written_total, align 4
  br label %do.end358

do.end358:                                        ; preds = %if.end356
  br label %sw.epilog

sw.bb359:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body360

do.body360:                                       ; preds = %sw.bb359
  %403 = load i8*, i8** %buf.addr, align 4
  %404 = load i8*, i8** %buf_start.addr, align 4
  %405 = load i64, i64* %buf_len.addr, align 8
  %call361 = call i32 @append_string(i8* %403, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* %404, i64 %405)
  store i32 %call361, i32* %written, align 4
  %406 = load i32, i32* %written, align 4
  %cmp362 = icmp slt i32 %406, 0
  br i1 %cmp362, label %if.then364, label %if.end365

if.then364:                                       ; preds = %do.body360
  store i32 -1, i32* %retval, align 4
  br label %return

if.end365:                                        ; preds = %do.body360
  %407 = load i8*, i8** %buf.addr, align 4
  %408 = ptrtoint i8* %407 to i32
  %409 = zext i32 %408 to i64
  %410 = inttoptr i64 %409 to i8*
  %cmp366 = icmp ne i8* %410, null
  br i1 %cmp366, label %if.then368, label %if.end372

if.then368:                                       ; preds = %if.end365
  %411 = load i32, i32* %written, align 4
  %412 = load i8*, i8** %buf.addr, align 4
  %idx.ext369 = sext i32 %411 to i64
  %add.ptr370 = getelementptr inbounds i8, i8* %412, i64 %idx.ext369
  store i8* %add.ptr370, i8** %tmp371, align 4
  %413 = load i8*, i8** %tmp371, align 4
  %414 = ptrtoint i8* %413 to i32
  %415 = zext i32 %414 to i64
  %416 = bitcast i8** %buf.addr to i64*
  store i64 %415, i64* %416, align 4
  br label %if.end372

if.end372:                                        ; preds = %if.then368, %if.end365
  %417 = load i32, i32* %written, align 4
  %418 = load i32, i32* %written_total, align 4
  %add373 = add nsw i32 %418, %417
  store i32 %add373, i32* %written_total, align 4
  br label %do.end374

do.end374:                                        ; preds = %if.end372
  br label %sw.epilog

sw.bb375:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body376

do.body376:                                       ; preds = %sw.bb375
  %419 = load i8*, i8** %buf.addr, align 4
  %420 = load i8*, i8** %buf_start.addr, align 4
  %421 = load i64, i64* %buf_len.addr, align 8
  %call377 = call i32 @append_string(i8* %419, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* %420, i64 %421)
  store i32 %call377, i32* %written, align 4
  %422 = load i32, i32* %written, align 4
  %cmp378 = icmp slt i32 %422, 0
  br i1 %cmp378, label %if.then380, label %if.end381

if.then380:                                       ; preds = %do.body376
  store i32 -1, i32* %retval, align 4
  br label %return

if.end381:                                        ; preds = %do.body376
  %423 = load i8*, i8** %buf.addr, align 4
  %424 = ptrtoint i8* %423 to i32
  %425 = zext i32 %424 to i64
  %426 = inttoptr i64 %425 to i8*
  %cmp382 = icmp ne i8* %426, null
  br i1 %cmp382, label %if.then384, label %if.end388

if.then384:                                       ; preds = %if.end381
  %427 = load i32, i32* %written, align 4
  %428 = load i8*, i8** %buf.addr, align 4
  %idx.ext385 = sext i32 %427 to i64
  %add.ptr386 = getelementptr inbounds i8, i8* %428, i64 %idx.ext385
  store i8* %add.ptr386, i8** %tmp387, align 4
  %429 = load i8*, i8** %tmp387, align 4
  %430 = ptrtoint i8* %429 to i32
  %431 = zext i32 %430 to i64
  %432 = bitcast i8** %buf.addr to i64*
  store i64 %431, i64* %432, align 4
  br label %if.end388

if.end388:                                        ; preds = %if.then384, %if.end381
  %433 = load i32, i32* %written, align 4
  %434 = load i32, i32* %written_total, align 4
  %add389 = add nsw i32 %434, %433
  store i32 %add389, i32* %written_total, align 4
  br label %do.end390

do.end390:                                        ; preds = %if.end388
  br label %sw.epilog

sw.bb391:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body392

do.body392:                                       ; preds = %sw.bb391
  %435 = load i8*, i8** %buf.addr, align 4
  %436 = load i8*, i8** %buf_start.addr, align 4
  %437 = load i64, i64* %buf_len.addr, align 8
  %call393 = call i32 @append_string(i8* %435, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* %436, i64 %437)
  store i32 %call393, i32* %written, align 4
  %438 = load i32, i32* %written, align 4
  %cmp394 = icmp slt i32 %438, 0
  br i1 %cmp394, label %if.then396, label %if.end397

if.then396:                                       ; preds = %do.body392
  store i32 -1, i32* %retval, align 4
  br label %return

if.end397:                                        ; preds = %do.body392
  %439 = load i8*, i8** %buf.addr, align 4
  %440 = ptrtoint i8* %439 to i32
  %441 = zext i32 %440 to i64
  %442 = inttoptr i64 %441 to i8*
  %cmp398 = icmp ne i8* %442, null
  br i1 %cmp398, label %if.then400, label %if.end404

if.then400:                                       ; preds = %if.end397
  %443 = load i32, i32* %written, align 4
  %444 = load i8*, i8** %buf.addr, align 4
  %idx.ext401 = sext i32 %443 to i64
  %add.ptr402 = getelementptr inbounds i8, i8* %444, i64 %idx.ext401
  store i8* %add.ptr402, i8** %tmp403, align 4
  %445 = load i8*, i8** %tmp403, align 4
  %446 = ptrtoint i8* %445 to i32
  %447 = zext i32 %446 to i64
  %448 = bitcast i8** %buf.addr to i64*
  store i64 %447, i64* %448, align 4
  br label %if.end404

if.end404:                                        ; preds = %if.then400, %if.end397
  %449 = load i32, i32* %written, align 4
  %450 = load i32, i32* %written_total, align 4
  %add405 = add nsw i32 %450, %449
  store i32 %add405, i32* %written_total, align 4
  br label %do.end406

do.end406:                                        ; preds = %if.end404
  br label %sw.epilog

sw.bb407:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body408

do.body408:                                       ; preds = %sw.bb407
  %451 = load i8*, i8** %buf.addr, align 4
  %452 = load i8*, i8** %buf_start.addr, align 4
  %453 = load i64, i64* %buf_len.addr, align 8
  %call409 = call i32 @append_string(i8* %451, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* %452, i64 %453)
  store i32 %call409, i32* %written, align 4
  %454 = load i32, i32* %written, align 4
  %cmp410 = icmp slt i32 %454, 0
  br i1 %cmp410, label %if.then412, label %if.end413

if.then412:                                       ; preds = %do.body408
  store i32 -1, i32* %retval, align 4
  br label %return

if.end413:                                        ; preds = %do.body408
  %455 = load i8*, i8** %buf.addr, align 4
  %456 = ptrtoint i8* %455 to i32
  %457 = zext i32 %456 to i64
  %458 = inttoptr i64 %457 to i8*
  %cmp414 = icmp ne i8* %458, null
  br i1 %cmp414, label %if.then416, label %if.end420

if.then416:                                       ; preds = %if.end413
  %459 = load i32, i32* %written, align 4
  %460 = load i8*, i8** %buf.addr, align 4
  %idx.ext417 = sext i32 %459 to i64
  %add.ptr418 = getelementptr inbounds i8, i8* %460, i64 %idx.ext417
  store i8* %add.ptr418, i8** %tmp419, align 4
  %461 = load i8*, i8** %tmp419, align 4
  %462 = ptrtoint i8* %461 to i32
  %463 = zext i32 %462 to i64
  %464 = bitcast i8** %buf.addr to i64*
  store i64 %463, i64* %464, align 4
  br label %if.end420

if.end420:                                        ; preds = %if.then416, %if.end413
  %465 = load i32, i32* %written, align 4
  %466 = load i32, i32* %written_total, align 4
  %add421 = add nsw i32 %466, %465
  store i32 %add421, i32* %written_total, align 4
  br label %do.end422

do.end422:                                        ; preds = %if.end420
  br label %sw.epilog

sw.bb423:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body424

do.body424:                                       ; preds = %sw.bb423
  %467 = load i8*, i8** %buf.addr, align 4
  %468 = load i8*, i8** %buf_start.addr, align 4
  %469 = load i64, i64* %buf_len.addr, align 8
  %call425 = call i32 @append_string(i8* %467, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* %468, i64 %469)
  store i32 %call425, i32* %written, align 4
  %470 = load i32, i32* %written, align 4
  %cmp426 = icmp slt i32 %470, 0
  br i1 %cmp426, label %if.then428, label %if.end429

if.then428:                                       ; preds = %do.body424
  store i32 -1, i32* %retval, align 4
  br label %return

if.end429:                                        ; preds = %do.body424
  %471 = load i8*, i8** %buf.addr, align 4
  %472 = ptrtoint i8* %471 to i32
  %473 = zext i32 %472 to i64
  %474 = inttoptr i64 %473 to i8*
  %cmp430 = icmp ne i8* %474, null
  br i1 %cmp430, label %if.then432, label %if.end436

if.then432:                                       ; preds = %if.end429
  %475 = load i32, i32* %written, align 4
  %476 = load i8*, i8** %buf.addr, align 4
  %idx.ext433 = sext i32 %475 to i64
  %add.ptr434 = getelementptr inbounds i8, i8* %476, i64 %idx.ext433
  store i8* %add.ptr434, i8** %tmp435, align 4
  %477 = load i8*, i8** %tmp435, align 4
  %478 = ptrtoint i8* %477 to i32
  %479 = zext i32 %478 to i64
  %480 = bitcast i8** %buf.addr to i64*
  store i64 %479, i64* %480, align 4
  br label %if.end436

if.end436:                                        ; preds = %if.then432, %if.end429
  %481 = load i32, i32* %written, align 4
  %482 = load i32, i32* %written_total, align 4
  %add437 = add nsw i32 %482, %481
  store i32 %add437, i32* %written_total, align 4
  br label %do.end438

do.end438:                                        ; preds = %if.end436
  br label %sw.epilog

sw.bb439:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body440

do.body440:                                       ; preds = %sw.bb439
  %483 = load i8*, i8** %buf.addr, align 4
  %484 = load i8*, i8** %buf_start.addr, align 4
  %485 = load i64, i64* %buf_len.addr, align 8
  %call441 = call i32 @append_string(i8* %483, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* %484, i64 %485)
  store i32 %call441, i32* %written, align 4
  %486 = load i32, i32* %written, align 4
  %cmp442 = icmp slt i32 %486, 0
  br i1 %cmp442, label %if.then444, label %if.end445

if.then444:                                       ; preds = %do.body440
  store i32 -1, i32* %retval, align 4
  br label %return

if.end445:                                        ; preds = %do.body440
  %487 = load i8*, i8** %buf.addr, align 4
  %488 = ptrtoint i8* %487 to i32
  %489 = zext i32 %488 to i64
  %490 = inttoptr i64 %489 to i8*
  %cmp446 = icmp ne i8* %490, null
  br i1 %cmp446, label %if.then448, label %if.end452

if.then448:                                       ; preds = %if.end445
  %491 = load i32, i32* %written, align 4
  %492 = load i8*, i8** %buf.addr, align 4
  %idx.ext449 = sext i32 %491 to i64
  %add.ptr450 = getelementptr inbounds i8, i8* %492, i64 %idx.ext449
  store i8* %add.ptr450, i8** %tmp451, align 4
  %493 = load i8*, i8** %tmp451, align 4
  %494 = ptrtoint i8* %493 to i32
  %495 = zext i32 %494 to i64
  %496 = bitcast i8** %buf.addr to i64*
  store i64 %495, i64* %496, align 4
  br label %if.end452

if.end452:                                        ; preds = %if.then448, %if.end445
  %497 = load i32, i32* %written, align 4
  %498 = load i32, i32* %written_total, align 4
  %add453 = add nsw i32 %498, %497
  store i32 %add453, i32* %written_total, align 4
  br label %do.end454

do.end454:                                        ; preds = %if.end452
  br label %sw.epilog

sw.bb455:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body456

do.body456:                                       ; preds = %sw.bb455
  %499 = load i8*, i8** %buf.addr, align 4
  %500 = load i8*, i8** %buf_start.addr, align 4
  %501 = load i64, i64* %buf_len.addr, align 8
  %call457 = call i32 @append_string(i8* %499, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* %500, i64 %501)
  store i32 %call457, i32* %written, align 4
  %502 = load i32, i32* %written, align 4
  %cmp458 = icmp slt i32 %502, 0
  br i1 %cmp458, label %if.then460, label %if.end461

if.then460:                                       ; preds = %do.body456
  store i32 -1, i32* %retval, align 4
  br label %return

if.end461:                                        ; preds = %do.body456
  %503 = load i8*, i8** %buf.addr, align 4
  %504 = ptrtoint i8* %503 to i32
  %505 = zext i32 %504 to i64
  %506 = inttoptr i64 %505 to i8*
  %cmp462 = icmp ne i8* %506, null
  br i1 %cmp462, label %if.then464, label %if.end468

if.then464:                                       ; preds = %if.end461
  %507 = load i32, i32* %written, align 4
  %508 = load i8*, i8** %buf.addr, align 4
  %idx.ext465 = sext i32 %507 to i64
  %add.ptr466 = getelementptr inbounds i8, i8* %508, i64 %idx.ext465
  store i8* %add.ptr466, i8** %tmp467, align 4
  %509 = load i8*, i8** %tmp467, align 4
  %510 = ptrtoint i8* %509 to i32
  %511 = zext i32 %510 to i64
  %512 = bitcast i8** %buf.addr to i64*
  store i64 %511, i64* %512, align 4
  br label %if.end468

if.end468:                                        ; preds = %if.then464, %if.end461
  %513 = load i32, i32* %written, align 4
  %514 = load i32, i32* %written_total, align 4
  %add469 = add nsw i32 %514, %513
  store i32 %add469, i32* %written_total, align 4
  br label %do.end470

do.end470:                                        ; preds = %if.end468
  br label %sw.epilog

sw.bb471:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body472

do.body472:                                       ; preds = %sw.bb471
  %515 = load i8*, i8** %buf.addr, align 4
  %516 = load i8*, i8** %buf_start.addr, align 4
  %517 = load i64, i64* %buf_len.addr, align 8
  %call473 = call i32 @append_string(i8* %515, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* %516, i64 %517)
  store i32 %call473, i32* %written, align 4
  %518 = load i32, i32* %written, align 4
  %cmp474 = icmp slt i32 %518, 0
  br i1 %cmp474, label %if.then476, label %if.end477

if.then476:                                       ; preds = %do.body472
  store i32 -1, i32* %retval, align 4
  br label %return

if.end477:                                        ; preds = %do.body472
  %519 = load i8*, i8** %buf.addr, align 4
  %520 = ptrtoint i8* %519 to i32
  %521 = zext i32 %520 to i64
  %522 = inttoptr i64 %521 to i8*
  %cmp478 = icmp ne i8* %522, null
  br i1 %cmp478, label %if.then480, label %if.end484

if.then480:                                       ; preds = %if.end477
  %523 = load i32, i32* %written, align 4
  %524 = load i8*, i8** %buf.addr, align 4
  %idx.ext481 = sext i32 %523 to i64
  %add.ptr482 = getelementptr inbounds i8, i8* %524, i64 %idx.ext481
  store i8* %add.ptr482, i8** %tmp483, align 4
  %525 = load i8*, i8** %tmp483, align 4
  %526 = ptrtoint i8* %525 to i32
  %527 = zext i32 %526 to i64
  %528 = bitcast i8** %buf.addr to i64*
  store i64 %527, i64* %528, align 4
  br label %if.end484

if.end484:                                        ; preds = %if.then480, %if.end477
  %529 = load i32, i32* %written, align 4
  %530 = load i32, i32* %written_total, align 4
  %add485 = add nsw i32 %530, %529
  store i32 %add485, i32* %written_total, align 4
  br label %do.end486

do.end486:                                        ; preds = %if.end484
  br label %sw.epilog

sw.bb487:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body488

do.body488:                                       ; preds = %sw.bb487
  %531 = load i8*, i8** %buf.addr, align 4
  %532 = load i8*, i8** %buf_start.addr, align 4
  %533 = load i64, i64* %buf_len.addr, align 8
  %call489 = call i32 @append_string(i8* %531, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* %532, i64 %533)
  store i32 %call489, i32* %written, align 4
  %534 = load i32, i32* %written, align 4
  %cmp490 = icmp slt i32 %534, 0
  br i1 %cmp490, label %if.then492, label %if.end493

if.then492:                                       ; preds = %do.body488
  store i32 -1, i32* %retval, align 4
  br label %return

if.end493:                                        ; preds = %do.body488
  %535 = load i8*, i8** %buf.addr, align 4
  %536 = ptrtoint i8* %535 to i32
  %537 = zext i32 %536 to i64
  %538 = inttoptr i64 %537 to i8*
  %cmp494 = icmp ne i8* %538, null
  br i1 %cmp494, label %if.then496, label %if.end500

if.then496:                                       ; preds = %if.end493
  %539 = load i32, i32* %written, align 4
  %540 = load i8*, i8** %buf.addr, align 4
  %idx.ext497 = sext i32 %539 to i64
  %add.ptr498 = getelementptr inbounds i8, i8* %540, i64 %idx.ext497
  store i8* %add.ptr498, i8** %tmp499, align 4
  %541 = load i8*, i8** %tmp499, align 4
  %542 = ptrtoint i8* %541 to i32
  %543 = zext i32 %542 to i64
  %544 = bitcast i8** %buf.addr to i64*
  store i64 %543, i64* %544, align 4
  br label %if.end500

if.end500:                                        ; preds = %if.then496, %if.end493
  %545 = load i32, i32* %written, align 4
  %546 = load i32, i32* %written_total, align 4
  %add501 = add nsw i32 %546, %545
  store i32 %add501, i32* %written_total, align 4
  br label %do.end502

do.end502:                                        ; preds = %if.end500
  br label %sw.epilog

sw.bb503:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body504

do.body504:                                       ; preds = %sw.bb503
  %547 = load i8*, i8** %buf.addr, align 4
  %548 = load i8*, i8** %buf_start.addr, align 4
  %549 = load i64, i64* %buf_len.addr, align 8
  %call505 = call i32 @append_string(i8* %547, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* %548, i64 %549)
  store i32 %call505, i32* %written, align 4
  %550 = load i32, i32* %written, align 4
  %cmp506 = icmp slt i32 %550, 0
  br i1 %cmp506, label %if.then508, label %if.end509

if.then508:                                       ; preds = %do.body504
  store i32 -1, i32* %retval, align 4
  br label %return

if.end509:                                        ; preds = %do.body504
  %551 = load i8*, i8** %buf.addr, align 4
  %552 = ptrtoint i8* %551 to i32
  %553 = zext i32 %552 to i64
  %554 = inttoptr i64 %553 to i8*
  %cmp510 = icmp ne i8* %554, null
  br i1 %cmp510, label %if.then512, label %if.end516

if.then512:                                       ; preds = %if.end509
  %555 = load i32, i32* %written, align 4
  %556 = load i8*, i8** %buf.addr, align 4
  %idx.ext513 = sext i32 %555 to i64
  %add.ptr514 = getelementptr inbounds i8, i8* %556, i64 %idx.ext513
  store i8* %add.ptr514, i8** %tmp515, align 4
  %557 = load i8*, i8** %tmp515, align 4
  %558 = ptrtoint i8* %557 to i32
  %559 = zext i32 %558 to i64
  %560 = bitcast i8** %buf.addr to i64*
  store i64 %559, i64* %560, align 4
  br label %if.end516

if.end516:                                        ; preds = %if.then512, %if.end509
  %561 = load i32, i32* %written, align 4
  %562 = load i32, i32* %written_total, align 4
  %add517 = add nsw i32 %562, %561
  store i32 %add517, i32* %written_total, align 4
  br label %do.end518

do.end518:                                        ; preds = %if.end516
  br label %sw.epilog

sw.bb519:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body520

do.body520:                                       ; preds = %sw.bb519
  %563 = load i8*, i8** %buf.addr, align 4
  %564 = load i8*, i8** %buf_start.addr, align 4
  %565 = load i64, i64* %buf_len.addr, align 8
  %call521 = call i32 @append_string(i8* %563, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* %564, i64 %565)
  store i32 %call521, i32* %written, align 4
  %566 = load i32, i32* %written, align 4
  %cmp522 = icmp slt i32 %566, 0
  br i1 %cmp522, label %if.then524, label %if.end525

if.then524:                                       ; preds = %do.body520
  store i32 -1, i32* %retval, align 4
  br label %return

if.end525:                                        ; preds = %do.body520
  %567 = load i8*, i8** %buf.addr, align 4
  %568 = ptrtoint i8* %567 to i32
  %569 = zext i32 %568 to i64
  %570 = inttoptr i64 %569 to i8*
  %cmp526 = icmp ne i8* %570, null
  br i1 %cmp526, label %if.then528, label %if.end532

if.then528:                                       ; preds = %if.end525
  %571 = load i32, i32* %written, align 4
  %572 = load i8*, i8** %buf.addr, align 4
  %idx.ext529 = sext i32 %571 to i64
  %add.ptr530 = getelementptr inbounds i8, i8* %572, i64 %idx.ext529
  store i8* %add.ptr530, i8** %tmp531, align 4
  %573 = load i8*, i8** %tmp531, align 4
  %574 = ptrtoint i8* %573 to i32
  %575 = zext i32 %574 to i64
  %576 = bitcast i8** %buf.addr to i64*
  store i64 %575, i64* %576, align 4
  br label %if.end532

if.end532:                                        ; preds = %if.then528, %if.end525
  %577 = load i32, i32* %written, align 4
  %578 = load i32, i32* %written_total, align 4
  %add533 = add nsw i32 %578, %577
  store i32 %add533, i32* %written_total, align 4
  br label %do.end534

do.end534:                                        ; preds = %if.end532
  br label %sw.epilog

sw.bb535:                                         ; preds = %_Dynamic_check.succeeded7
  br label %do.body536

do.body536:                                       ; preds = %sw.bb535
  %579 = load i8*, i8** %buf.addr, align 4
  %580 = load i8*, i8** %buf_start.addr, align 4
  %581 = load i64, i64* %buf_len.addr, align 8
  %call537 = call i32 @append_string(i8* %579, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* %580, i64 %581)
  store i32 %call537, i32* %written, align 4
  %582 = load i32, i32* %written, align 4
  %cmp538 = icmp slt i32 %582, 0
  br i1 %cmp538, label %if.then540, label %if.end541

if.then540:                                       ; preds = %do.body536
  store i32 -1, i32* %retval, align 4
  br label %return

if.end541:                                        ; preds = %do.body536
  %583 = load i8*, i8** %buf.addr, align 4
  %584 = ptrtoint i8* %583 to i32
  %585 = zext i32 %584 to i64
  %586 = inttoptr i64 %585 to i8*
  %cmp542 = icmp ne i8* %586, null
  br i1 %cmp542, label %if.then544, label %if.end548

if.then544:                                       ; preds = %if.end541
  %587 = load i32, i32* %written, align 4
  %588 = load i8*, i8** %buf.addr, align 4
  %idx.ext545 = sext i32 %587 to i64
  %add.ptr546 = getelementptr inbounds i8, i8* %588, i64 %idx.ext545
  store i8* %add.ptr546, i8** %tmp547, align 4
  %589 = load i8*, i8** %tmp547, align 4
  %590 = ptrtoint i8* %589 to i32
  %591 = zext i32 %590 to i64
  %592 = bitcast i8** %buf.addr to i64*
  store i64 %591, i64* %592, align 4
  br label %if.end548

if.end548:                                        ; preds = %if.then544, %if.end541
  %593 = load i32, i32* %written, align 4
  %594 = load i32, i32* %written_total, align 4
  %add549 = add nsw i32 %594, %593
  store i32 %add549, i32* %written_total, align 4
  br label %do.end550

do.end550:                                        ; preds = %if.end548
  br label %sw.epilog

sw.bb551:                                         ; preds = %_Dynamic_check.succeeded7
  %595 = load i32, i32* @parson_escape_slashes, align 4
  %tobool = icmp ne i32 %595, 0
  br i1 %tobool, label %if.then552, label %if.else

if.then552:                                       ; preds = %sw.bb551
  br label %do.body553

do.body553:                                       ; preds = %if.then552
  %596 = load i8*, i8** %buf.addr, align 4
  %597 = load i8*, i8** %buf_start.addr, align 4
  %598 = load i64, i64* %buf_len.addr, align 8
  %call554 = call i32 @append_string(i8* %596, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i8* %597, i64 %598)
  store i32 %call554, i32* %written, align 4
  %599 = load i32, i32* %written, align 4
  %cmp555 = icmp slt i32 %599, 0
  br i1 %cmp555, label %if.then557, label %if.end558

if.then557:                                       ; preds = %do.body553
  store i32 -1, i32* %retval, align 4
  br label %return

if.end558:                                        ; preds = %do.body553
  %600 = load i8*, i8** %buf.addr, align 4
  %601 = ptrtoint i8* %600 to i32
  %602 = zext i32 %601 to i64
  %603 = inttoptr i64 %602 to i8*
  %cmp559 = icmp ne i8* %603, null
  br i1 %cmp559, label %if.then561, label %if.end565

if.then561:                                       ; preds = %if.end558
  %604 = load i32, i32* %written, align 4
  %605 = load i8*, i8** %buf.addr, align 4
  %idx.ext562 = sext i32 %604 to i64
  %add.ptr563 = getelementptr inbounds i8, i8* %605, i64 %idx.ext562
  store i8* %add.ptr563, i8** %tmp564, align 4
  %606 = load i8*, i8** %tmp564, align 4
  %607 = ptrtoint i8* %606 to i32
  %608 = zext i32 %607 to i64
  %609 = bitcast i8** %buf.addr to i64*
  store i64 %608, i64* %609, align 4
  br label %if.end565

if.end565:                                        ; preds = %if.then561, %if.end558
  %610 = load i32, i32* %written, align 4
  %611 = load i32, i32* %written_total, align 4
  %add566 = add nsw i32 %611, %610
  store i32 %add566, i32* %written_total, align 4
  br label %do.end567

do.end567:                                        ; preds = %if.end565
  br label %if.end583

if.else:                                          ; preds = %sw.bb551
  br label %do.body568

do.body568:                                       ; preds = %if.else
  %612 = load i8*, i8** %buf.addr, align 4
  %613 = load i8*, i8** %buf_start.addr, align 4
  %614 = load i64, i64* %buf_len.addr, align 8
  %call569 = call i32 @append_string(i8* %612, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i8* %613, i64 %614)
  store i32 %call569, i32* %written, align 4
  %615 = load i32, i32* %written, align 4
  %cmp570 = icmp slt i32 %615, 0
  br i1 %cmp570, label %if.then572, label %if.end573

if.then572:                                       ; preds = %do.body568
  store i32 -1, i32* %retval, align 4
  br label %return

if.end573:                                        ; preds = %do.body568
  %616 = load i8*, i8** %buf.addr, align 4
  %617 = ptrtoint i8* %616 to i32
  %618 = zext i32 %617 to i64
  %619 = inttoptr i64 %618 to i8*
  %cmp574 = icmp ne i8* %619, null
  br i1 %cmp574, label %if.then576, label %if.end580

if.then576:                                       ; preds = %if.end573
  %620 = load i32, i32* %written, align 4
  %621 = load i8*, i8** %buf.addr, align 4
  %idx.ext577 = sext i32 %620 to i64
  %add.ptr578 = getelementptr inbounds i8, i8* %621, i64 %idx.ext577
  store i8* %add.ptr578, i8** %tmp579, align 4
  %622 = load i8*, i8** %tmp579, align 4
  %623 = ptrtoint i8* %622 to i32
  %624 = zext i32 %623 to i64
  %625 = bitcast i8** %buf.addr to i64*
  store i64 %624, i64* %625, align 4
  br label %if.end580

if.end580:                                        ; preds = %if.then576, %if.end573
  %626 = load i32, i32* %written, align 4
  %627 = load i32, i32* %written_total, align 4
  %add581 = add nsw i32 %627, %626
  store i32 %add581, i32* %written_total, align 4
  br label %do.end582

do.end582:                                        ; preds = %if.end580
  br label %if.end583

if.end583:                                        ; preds = %do.end582, %do.end567
  br label %sw.epilog

sw.default:                                       ; preds = %_Dynamic_check.succeeded7
  %628 = load i8*, i8** %buf.addr, align 4
  %629 = ptrtoint i8* %628 to i32
  %630 = zext i32 %629 to i64
  %631 = inttoptr i64 %630 to i8*
  %cmp584 = icmp ne i8* %631, null
  br i1 %cmp584, label %if.then586, label %if.end592

if.then586:                                       ; preds = %sw.default
  %632 = load i8, i8* %c, align 1
  %633 = load i8*, i8** %buf.addr, align 4
  %634 = load i32, i32* @sbxHeapRange, align 8
  %635 = load i64, i64* @sbxHeap, align 8
  %636 = ptrtoint i8* %633 to i32
  %637 = zext i32 %636 to i64
  %638 = add i64 %635, %637
  %639 = icmp ult i32 %636, %634
  br i1 %639, label %_Dynamic_check.succeeded588, label %_Dynamic_check.failed587

_Dynamic_check.succeeded588:                      ; preds = %if.then586
  %640 = inttoptr i64 %638 to i8*
  %arrayidx589 = getelementptr inbounds i8, i8* %640, i64 0
  store i8 %632, i8* %arrayidx589, align 4
  %641 = load i8*, i8** %buf.addr, align 4
  %add.ptr590 = getelementptr inbounds i8, i8* %641, i64 1
  store i8* %add.ptr590, i8** %tmp591, align 4
  %642 = load i8*, i8** %tmp591, align 4
  %643 = ptrtoint i8* %642 to i32
  %644 = zext i32 %643 to i64
  %645 = bitcast i8** %buf.addr to i64*
  store i64 %644, i64* %645, align 4
  br label %if.end592

_Dynamic_check.failed587:                         ; preds = %if.then586
  call void @llvm.trap() #8
  unreachable

if.end592:                                        ; preds = %_Dynamic_check.succeeded588, %sw.default
  %646 = load i32, i32* %written_total, align 4
  %add593 = add nsw i32 %646, 1
  store i32 %add593, i32* %written_total, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end592, %if.end583, %do.end550, %do.end534, %do.end518, %do.end502, %do.end486, %do.end470, %do.end454, %do.end438, %do.end422, %do.end406, %do.end390, %do.end374, %do.end358, %do.end342, %do.end326, %do.end310, %do.end294, %do.end278, %do.end262, %do.end246, %do.end230, %do.end214, %do.end198, %do.end182, %do.end166, %do.end150, %do.end134, %do.end118, %do.end102, %do.end86, %do.end70, %do.end54, %do.end38, %do.end22
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %647 = load i64, i64* %i, align 8
  %inc = add i64 %647, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %do.body594

do.body594:                                       ; preds = %for.end
  %648 = load i8*, i8** %buf.addr, align 4
  %649 = load i8*, i8** %buf_start.addr, align 4
  %650 = load i64, i64* %buf_len.addr, align 8
  %call595 = call i32 @append_string(i8* %648, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* %649, i64 %650)
  store i32 %call595, i32* %written, align 4
  %651 = load i32, i32* %written, align 4
  %cmp596 = icmp slt i32 %651, 0
  br i1 %cmp596, label %if.then598, label %if.end599

if.then598:                                       ; preds = %do.body594
  store i32 -1, i32* %retval, align 4
  br label %return

if.end599:                                        ; preds = %do.body594
  %652 = load i8*, i8** %buf.addr, align 4
  %653 = ptrtoint i8* %652 to i32
  %654 = zext i32 %653 to i64
  %655 = inttoptr i64 %654 to i8*
  %cmp600 = icmp ne i8* %655, null
  br i1 %cmp600, label %if.then602, label %if.end606

if.then602:                                       ; preds = %if.end599
  %656 = load i32, i32* %written, align 4
  %657 = load i8*, i8** %buf.addr, align 4
  %idx.ext603 = sext i32 %656 to i64
  %add.ptr604 = getelementptr inbounds i8, i8* %657, i64 %idx.ext603
  store i8* %add.ptr604, i8** %tmp605, align 4
  %658 = load i8*, i8** %tmp605, align 4
  %659 = ptrtoint i8* %658 to i32
  %660 = zext i32 %659 to i64
  %661 = bitcast i8** %buf.addr to i64*
  store i64 %660, i64* %661, align 4
  br label %if.end606

if.end606:                                        ; preds = %if.then602, %if.end599
  %662 = load i32, i32* %written, align 4
  %663 = load i32, i32* %written_total, align 4
  %add607 = add nsw i32 %663, %662
  store i32 %add607, i32* %written_total, align 4
  br label %do.end608

do.end608:                                        ; preds = %if.end606
  %664 = load i32, i32* %written_total, align 4
  store i32 %664, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end608, %if.then598, %if.then572, %if.then557, %if.then540, %if.then524, %if.then508, %if.then492, %if.then476, %if.then460, %if.then444, %if.then428, %if.then412, %if.then396, %if.then380, %if.then364, %if.then348, %if.then332, %if.then316, %if.then300, %if.then284, %if.then268, %if.then252, %if.then236, %if.then220, %if.then204, %if.then188, %if.then172, %if.then156, %if.then140, %if.then124, %if.then108, %if.then92, %if.then76, %if.then60, %if.then44, %if.then28, %if.then12, %if.then
  %665 = load i32, i32* %retval, align 4
  ret i32 %665
}

declare dso_local i32 @t_sprintf(i8*, i8*, ...) #3

declare dso_local i64 @t_strlen(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_parse_file(i8* %filename) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %filename.addr = alloca i8*, align 8
  %file_contents = alloca i8*, align 8
  %output_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %Tainted_file_contents = alloca i8*, align 4
  %len = alloca i32, align 4
  %tmp = alloca i8*, align 4
  %tmp5 = alloca i8*, align 4
  %tmp7 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp8 = alloca i8*, align 4
  %tmp12 = alloca i8*, align 4
  %tmp13 = alloca i8*, align 4
  %tmp14 = alloca i8*, align 4
  %tmp15 = alloca i8*, align 4
  %tmp29 = alloca i8*, align 4
  %tmp30 = alloca i8*, align 4
  %tmp32 = alloca i8*, align 4
  %tmp33 = alloca i8*, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @read_file(i8* %0)
  store i8* %call, i8** %file_contents, align 8
  %1 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 0, i32* %1, align 4
  %2 = load i8*, i8** %file_contents, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = bitcast i8** %Tainted_file_contents to i64*
  store i64 0, i64* %3, align 4
  %4 = load i8*, i8** %file_contents, align 8
  %call1 = call i64 @strlen(i8* %4) #9
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %conv2 = sext i32 %5 to i64
  %mul = mul i64 %conv2, 1
  %call3 = call i8* @string_tainted_malloc(i64 %mul)
  %6 = ptrtoint i8* %call3 to i32
  %7 = inttoptr i32 %6 to i8*
  store i8* %7, i8** %tmp, align 4
  %8 = load i8*, i8** %tmp, align 4
  %9 = ptrtoint i8* %8 to i32
  %10 = zext i32 %9 to i64
  %11 = bitcast i8** %Tainted_file_contents to i64*
  store i64 %10, i64* %11, align 4
  %12 = load i8*, i8** %Tainted_file_contents, align 4
  %13 = load i8*, i8** %file_contents, align 8
  %14 = load i32, i32* @sbxHeapRange, align 8
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = ptrtoint i8* %12 to i32
  %17 = zext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = icmp ult i32 %16, %14
  br i1 %19, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %20 = inttoptr i64 %18 to i8*
  %call4 = call i8* @t_strcpy(i8* %20, i8* %13)
  %21 = ptrtoint i8* %call4 to i32
  %22 = inttoptr i32 %21 to i8*
  store i8* %22, i8** %tmp5, align 4
  %23 = load i8*, i8** %tmp5, align 4
  %24 = load i8*, i8** %Tainted_file_contents, align 4
  %call6 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_parse_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %24)
  %25 = bitcast %Tstruct.Spl_json_value_t_t* %call6 to %Tstruct.json_value_t_t*
  %26 = bitcast %Tstruct.json_value_t_t* %25 to i8*
  %27 = ptrtoint i8* %26 to i32
  %28 = inttoptr i32 %27 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %28, %Tstruct.Spl_json_value_t_t** %tmp7, align 4
  %29 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp7, align 4
  %30 = ptrtoint %Tstruct.Spl_json_value_t_t* %29 to i32
  %31 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 %30, i32* %31, align 4
  %32 = load i8*, i8** %Tainted_file_contents, align 4
  %33 = ptrtoint i8* %32 to i32
  %_Dynamic_check.is_null = icmp eq i32 %33, 0
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded
  %34 = load i8*, i8** %Tainted_file_contents, align 4
  %35 = load i8*, i8** %Tainted_file_contents, align 4
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %add.ptr, i8** %tmp8, align 4
  %36 = load i8*, i8** %tmp8, align 4
  %_Dynamic_check.non_null = icmp ne i8* %32, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr11 = getelementptr inbounds i8, i8* %32, i64 0
  %37 = ptrtoint i8* %34 to i32
  %38 = inttoptr i32 %37 to i8*
  store i8* %38, i8** %tmp12, align 4
  %39 = load i8*, i8** %tmp12, align 4
  %40 = ptrtoint i8* %32 to i32
  %41 = inttoptr i32 %40 to i8*
  store i8* %41, i8** %tmp13, align 4
  %42 = load i8*, i8** %tmp13, align 4
  %_Dynamic_check.lower = icmp ule i8* %39, %42
  %43 = ptrtoint i8* %add.ptr11 to i32
  %44 = inttoptr i32 %43 to i8*
  store i8* %44, i8** %tmp14, align 4
  %45 = load i8*, i8** %tmp14, align 4
  %46 = ptrtoint i8* %36 to i32
  %47 = inttoptr i32 %46 to i8*
  store i8* %47, i8** %tmp15, align 4
  %48 = load i8*, i8** %tmp15, align 4
  %_Dynamic_check.upper = icmp ule i8* %45, %48
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed16

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded10, %_Dynamic_check.succeeded
  %49 = load i32, i32* @sbxHeapRange, align 8
  %50 = load i64, i64* @sbxHeap, align 8
  %51 = ptrtoint i8* %32 to i32
  %52 = zext i32 %51 to i64
  %53 = add i64 %50, %52
  %54 = icmp ult i32 %51, %49
  br i1 %54, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.success
  %55 = inttoptr i64 %53 to i8*
  call void @t_free(i8* %55)
  %56 = call i64 @c_fetch_sandbox_heap_bound()
  %57 = call i64 @c_fetch_sandbox_heap_address()
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* @sbxHeapRange, align 8
  %60 = load i8*, i8** %file_contents, align 8
  %_Dynamic_check.is_null19 = icmp eq i8* %60, null
  br i1 %_Dynamic_check.is_null19, label %_Dynamic_check.success37, label %_Dynamic_check.subsumption20

_Dynamic_check.subsumption20:                     ; preds = %_Dynamic_check.succeeded18
  %61 = load i8*, i8** %file_contents, align 8
  %62 = load i8*, i8** %file_contents, align 8
  %_Dynamic_check.non_null21 = icmp ne i8* %62, null
  br i1 %_Dynamic_check.non_null21, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.subsumption20
  %add.ptr24 = getelementptr inbounds i8, i8* %62, i64 0
  %_Dynamic_check.non_null25 = icmp ne i8* %60, null
  br i1 %_Dynamic_check.non_null25, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded23
  %add.ptr28 = getelementptr inbounds i8, i8* %60, i64 0
  %63 = ptrtoint i8* %61 to i32
  %64 = inttoptr i32 %63 to i8*
  store i8* %64, i8** %tmp29, align 4
  %65 = load i8*, i8** %tmp29, align 4
  %66 = ptrtoint i8* %60 to i32
  %67 = inttoptr i32 %66 to i8*
  store i8* %67, i8** %tmp30, align 4
  %68 = load i8*, i8** %tmp30, align 4
  %_Dynamic_check.lower31 = icmp ule i8* %65, %68
  %69 = ptrtoint i8* %add.ptr28 to i32
  %70 = inttoptr i32 %69 to i8*
  store i8* %70, i8** %tmp32, align 4
  %71 = load i8*, i8** %tmp32, align 4
  %72 = ptrtoint i8* %add.ptr24 to i32
  %73 = inttoptr i32 %72 to i8*
  store i8* %73, i8** %tmp33, align 4
  %74 = load i8*, i8** %tmp33, align 4
  %_Dynamic_check.upper34 = icmp ule i8* %71, %74
  %_Dynamic_check.cast35 = and i1 %_Dynamic_check.lower31, %_Dynamic_check.upper34
  br i1 %_Dynamic_check.cast35, label %_Dynamic_check.success37, label %_Dynamic_check.failed36

_Dynamic_check.success37:                         ; preds = %_Dynamic_check.succeeded27, %_Dynamic_check.succeeded18
  call void @free(i8* %60) #10
  %75 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %75, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.subsumption20
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed36:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.success37, %if.then
  %76 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %76
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_file(i8* %filename) #0 {
entry:
  %retval = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %size_to_read = alloca i64, align 8
  %size_read = alloca i64, align 8
  %pos = alloca i64, align 8
  %file_contents = alloca i8*, align 8
  %tmp = alloca i8*, align 4
  %tmp23 = alloca i8*, align 4
  %tmp24 = alloca i8*, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  store i64 0, i64* %size_to_read, align 8
  store i64 0, i64* %size_read, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 @fseek(%struct._IO_FILE* %2, i64 0, i32 2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i64 @ftell(%struct._IO_FILE* %3)
  store i64 %call2, i64* %pos, align 8
  %4 = load i64, i64* %pos, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %5)
  store i8* null, i8** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load i64, i64* %pos, align 8
  store i64 %6, i64* %size_to_read, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @rewind(%struct._IO_FILE* %7)
  %8 = load i64, i64* %size_to_read, align 8
  %mul = mul i64 1, %8
  %call6 = call i8* @parson_string_malloc(i64 %mul)
  store i8* %call6, i8** %file_contents, align 8
  %9 = load i8*, i8** %file_contents, align 8
  %10 = ptrtoint i8* %9 to i32
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call9 = call i32 @fclose(%struct._IO_FILE* %11)
  store i8* null, i8** %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end5
  %12 = load i8*, i8** %file_contents, align 8
  %13 = load i64, i64* %size_to_read, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i64 @fread(i8* %12, i64 1, i64 %13, %struct._IO_FILE* %14)
  store i64 %call11, i64* %size_read, align 8
  %15 = load i64, i64* %size_read, align 8
  %cmp12 = icmp eq i64 %15, 0
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call13 = call i32 @ferror(%struct._IO_FILE* %16) #10
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %lor.lhs.false, %if.end10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %17)
  store i8* null, i8** %retval, align 8
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call18 = call i32 @fclose(%struct._IO_FILE* %18)
  %19 = load i8*, i8** %file_contents, align 8
  %20 = load i64, i64* %size_read, align 8
  %21 = ptrtoint i8* %19 to i32
  %_Dynamic_check.non_null = icmp ne i32 %21, 0
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end17
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = ptrtoint i8* %arrayidx to i32
  %23 = inttoptr i32 %22 to i8*
  store i8* %23, i8** %tmp, align 4
  %24 = load i8*, i8** %tmp, align 4
  %25 = load i8*, i8** %file_contents, align 8
  %26 = load i8*, i8** %file_contents, align 8
  %27 = load i64, i64* %size_to_read, align 8
  %mul19 = mul i64 1, %27
  %28 = ptrtoint i8* %26 to i32
  %_Dynamic_check.non_null20 = icmp ne i32 %28, 0
  br i1 %_Dynamic_check.non_null20, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %mul19
  %29 = ptrtoint i8* %add.ptr to i32
  %30 = inttoptr i32 %29 to i8*
  store i8* %30, i8** %tmp23, align 4
  %31 = load i8*, i8** %tmp23, align 4
  %32 = ptrtoint i8* %25 to i32
  %33 = inttoptr i32 %32 to i8*
  store i8* %33, i8** %tmp24, align 4
  %34 = load i8*, i8** %tmp24, align 4
  %35 = ptrtoint i8* %34 to i32
  %36 = ptrtoint i8* %24 to i32
  %_Dynamic_check.lower = icmp ule i32 %35, %36
  %37 = ptrtoint i8* %24 to i32
  %38 = ptrtoint i8* %31 to i32
  %_Dynamic_check.upper = icmp ult i32 %37, %38
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded26, label %_Nullterm_range_check.failed

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded22, %_Nullterm_range_check.failed
  store i8 0, i8* %arrayidx, align 1
  %39 = load i8*, i8** %file_contents, align 8
  store i8* %39, i8** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end17
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Nullterm_range_check.failed:                     ; preds = %_Dynamic_check.succeeded22
  %40 = ptrtoint i8* %24 to i32
  %41 = ptrtoint i8* %31 to i32
  %_Dynamic_check.at_upper = icmp eq i32 %40, %41
  %_Dynamic_check.nt_upper_bound = and i1 %_Dynamic_check.lower, %_Dynamic_check.at_upper
  br i1 %_Dynamic_check.nt_upper_bound, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.failed25:                          ; preds = %_Nullterm_range_check.failed
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded26, %if.then15, %if.then8, %if.then3, %if.then
  %42 = load i8*, i8** %retval, align 8
  ret i8* %42
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @string_tainted_malloc(i64 %sz) #0 {
entry:
  %retval = alloca i8*, align 8
  %sz.addr = alloca i64, align 8
  %p = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %tmp3 = alloca i8*, align 4
  %tmp5 = alloca i8*, align 4
  %tmp6 = alloca i8*, align 4
  %tmp7 = alloca i8*, align 4
  store i64 %sz, i64* %sz.addr, align 8
  %0 = load i64, i64* %sz.addr, align 8
  %cmp = icmp uge i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %sz.addr, align 8
  %add = add i64 %1, 1
  %call = call i8* @t_malloc(i64 %add)
  %2 = ptrtoint i8* %call to i32
  %3 = inttoptr i32 %2 to i8*
  store i8* %3, i8** %tmp, align 4
  %4 = load i8*, i8** %tmp, align 4
  %5 = call i64 @c_fetch_sandbox_heap_bound()
  %6 = call i64 @c_fetch_sandbox_heap_address()
  %7 = sub i64 %5, %6
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @sbxHeapRange, align 8
  %9 = ptrtoint i8* %4 to i32
  %10 = zext i32 %9 to i64
  %11 = bitcast i8** %p to i64*
  store i64 %10, i64* %11, align 4
  %12 = load i8*, i8** %p, align 4
  %13 = ptrtoint i8* %12 to i32
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = ptrtoint i8* %15 to i32
  %cmp1 = icmp ne i32 %16, 0
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %17 = load i8*, i8** %p, align 4
  %18 = load i64, i64* %sz.addr, align 8
  %19 = load i32, i32* @sbxHeapRange, align 8
  %20 = load i64, i64* @sbxHeap, align 8
  %21 = ptrtoint i8* %17 to i32
  %22 = zext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = icmp ult i32 %21, %19
  br i1 %24, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.then2
  %25 = inttoptr i64 %23 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %18
  %26 = ptrtoint i8* %arrayidx to i32
  %27 = inttoptr i32 %26 to i8*
  store i8* %27, i8** %tmp3, align 4
  %28 = load i8*, i8** %tmp3, align 4
  %29 = load i8*, i8** %p, align 4
  %30 = load i8*, i8** %p, align 4
  %31 = load i64, i64* %sz.addr, align 8
  %add4 = add i64 %31, 1
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %add4
  store i8* %add.ptr, i8** %tmp5, align 4
  %32 = load i8*, i8** %tmp5, align 4
  %33 = ptrtoint i8* %32 to i32
  %34 = inttoptr i32 %33 to i8*
  store i8* %34, i8** %tmp6, align 4
  %35 = load i8*, i8** %tmp6, align 4
  %36 = ptrtoint i8* %29 to i32
  %37 = inttoptr i32 %36 to i8*
  store i8* %37, i8** %tmp7, align 4
  %38 = load i8*, i8** %tmp7, align 4
  %39 = ptrtoint i8* %38 to i32
  %40 = ptrtoint i8* %28 to i32
  %_Dynamic_check.lower = icmp ule i32 %39, %40
  %41 = ptrtoint i8* %28 to i32
  %42 = ptrtoint i8* %35 to i32
  %_Dynamic_check.upper = icmp ult i32 %41, %42
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded
  store i8 0, i8* %arrayidx, align 4
  br label %if.end10

_Dynamic_check.failed:                            ; preds = %if.then2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded9, %if.end
  %43 = load i8*, i8** %p, align 4
  store i8* %43, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %44 = load i8*, i8** %retval, align 8
  ret i8* %44
}

declare dso_local i8* @t_strcpy(i8*, i8*) #3

declare dso_local void @t_free(i8*) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_parse_file_with_comments(i8* %filename) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %filename.addr = alloca i8*, align 8
  %file_contents = alloca i8*, align 8
  %output_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %Tainted_file_contents = alloca i8*, align 4
  %len = alloca i32, align 4
  %tmp = alloca i8*, align 4
  %tmp5 = alloca i8*, align 4
  %tmp7 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp8 = alloca i8*, align 4
  %tmp12 = alloca i8*, align 4
  %tmp13 = alloca i8*, align 4
  %tmp14 = alloca i8*, align 4
  %tmp15 = alloca i8*, align 4
  %tmp29 = alloca i8*, align 4
  %tmp30 = alloca i8*, align 4
  %tmp32 = alloca i8*, align 4
  %tmp33 = alloca i8*, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @read_file(i8* %0)
  store i8* %call, i8** %file_contents, align 8
  %1 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 0, i32* %1, align 4
  %2 = load i8*, i8** %file_contents, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = bitcast i8** %Tainted_file_contents to i64*
  store i64 0, i64* %3, align 4
  %4 = load i8*, i8** %file_contents, align 8
  %call1 = call i64 @strlen(i8* %4) #9
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %conv2 = sext i32 %5 to i64
  %mul = mul i64 %conv2, 1
  %call3 = call i8* @string_tainted_malloc(i64 %mul)
  %6 = ptrtoint i8* %call3 to i32
  %7 = inttoptr i32 %6 to i8*
  store i8* %7, i8** %tmp, align 4
  %8 = load i8*, i8** %tmp, align 4
  %9 = ptrtoint i8* %8 to i32
  %10 = zext i32 %9 to i64
  %11 = bitcast i8** %Tainted_file_contents to i64*
  store i64 %10, i64* %11, align 4
  %12 = load i8*, i8** %Tainted_file_contents, align 4
  %13 = load i8*, i8** %file_contents, align 8
  %14 = load i32, i32* @sbxHeapRange, align 8
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = ptrtoint i8* %12 to i32
  %17 = zext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = icmp ult i32 %16, %14
  br i1 %19, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %20 = inttoptr i64 %18 to i8*
  %call4 = call i8* @t_strcpy(i8* %20, i8* %13)
  %21 = ptrtoint i8* %call4 to i32
  %22 = inttoptr i32 %21 to i8*
  store i8* %22, i8** %tmp5, align 4
  %23 = load i8*, i8** %tmp5, align 4
  %24 = load i8*, i8** %Tainted_file_contents, align 4
  %call6 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_parse_string_with_comments to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %24)
  %25 = bitcast %Tstruct.Spl_json_value_t_t* %call6 to %Tstruct.json_value_t_t*
  %26 = bitcast %Tstruct.json_value_t_t* %25 to i8*
  %27 = ptrtoint i8* %26 to i32
  %28 = inttoptr i32 %27 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %28, %Tstruct.Spl_json_value_t_t** %tmp7, align 4
  %29 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp7, align 4
  %30 = ptrtoint %Tstruct.Spl_json_value_t_t* %29 to i32
  %31 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 %30, i32* %31, align 4
  %32 = load i8*, i8** %Tainted_file_contents, align 4
  %_Dynamic_check.is_null = icmp eq i8* %32, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded
  %33 = load i8*, i8** %Tainted_file_contents, align 4
  %34 = load i8*, i8** %Tainted_file_contents, align 4
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %add.ptr, i8** %tmp8, align 4
  %35 = load i8*, i8** %tmp8, align 4
  %_Dynamic_check.non_null = icmp ne i8* %32, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr11 = getelementptr inbounds i8, i8* %32, i64 0
  %36 = ptrtoint i8* %33 to i32
  %37 = inttoptr i32 %36 to i8*
  store i8* %37, i8** %tmp12, align 4
  %38 = load i8*, i8** %tmp12, align 4
  %39 = ptrtoint i8* %32 to i32
  %40 = inttoptr i32 %39 to i8*
  store i8* %40, i8** %tmp13, align 4
  %41 = load i8*, i8** %tmp13, align 4
  %_Dynamic_check.lower = icmp ule i8* %38, %41
  %42 = ptrtoint i8* %add.ptr11 to i32
  %43 = inttoptr i32 %42 to i8*
  store i8* %43, i8** %tmp14, align 4
  %44 = load i8*, i8** %tmp14, align 4
  %45 = ptrtoint i8* %35 to i32
  %46 = inttoptr i32 %45 to i8*
  store i8* %46, i8** %tmp15, align 4
  %47 = load i8*, i8** %tmp15, align 4
  %_Dynamic_check.upper = icmp ule i8* %44, %47
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed16

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded10, %_Dynamic_check.succeeded
  %48 = load i32, i32* @sbxHeapRange, align 8
  %49 = load i64, i64* @sbxHeap, align 8
  %50 = ptrtoint i8* %32 to i32
  %51 = zext i32 %50 to i64
  %52 = add i64 %49, %51
  %53 = icmp ult i32 %50, %48
  br i1 %53, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.success
  %54 = inttoptr i64 %52 to i8*
  call void @t_free(i8* %54)
  %55 = call i64 @c_fetch_sandbox_heap_bound()
  %56 = call i64 @c_fetch_sandbox_heap_address()
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* @sbxHeapRange, align 8
  %59 = load i8*, i8** %file_contents, align 8
  %_Dynamic_check.is_null19 = icmp eq i8* %59, null
  br i1 %_Dynamic_check.is_null19, label %_Dynamic_check.success37, label %_Dynamic_check.subsumption20

_Dynamic_check.subsumption20:                     ; preds = %_Dynamic_check.succeeded18
  %60 = load i8*, i8** %file_contents, align 8
  %61 = load i8*, i8** %file_contents, align 8
  %_Dynamic_check.non_null21 = icmp ne i8* %61, null
  br i1 %_Dynamic_check.non_null21, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.subsumption20
  %add.ptr24 = getelementptr inbounds i8, i8* %61, i64 0
  %_Dynamic_check.non_null25 = icmp ne i8* %59, null
  br i1 %_Dynamic_check.non_null25, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded23
  %add.ptr28 = getelementptr inbounds i8, i8* %59, i64 0
  %62 = ptrtoint i8* %60 to i32
  %63 = inttoptr i32 %62 to i8*
  store i8* %63, i8** %tmp29, align 4
  %64 = load i8*, i8** %tmp29, align 4
  %65 = ptrtoint i8* %59 to i32
  %66 = inttoptr i32 %65 to i8*
  store i8* %66, i8** %tmp30, align 4
  %67 = load i8*, i8** %tmp30, align 4
  %_Dynamic_check.lower31 = icmp ule i8* %64, %67
  %68 = ptrtoint i8* %add.ptr28 to i32
  %69 = inttoptr i32 %68 to i8*
  store i8* %69, i8** %tmp32, align 4
  %70 = load i8*, i8** %tmp32, align 4
  %71 = ptrtoint i8* %add.ptr24 to i32
  %72 = inttoptr i32 %71 to i8*
  store i8* %72, i8** %tmp33, align 4
  %73 = load i8*, i8** %tmp33, align 4
  %_Dynamic_check.upper34 = icmp ule i8* %70, %73
  %_Dynamic_check.cast35 = and i1 %_Dynamic_check.lower31, %_Dynamic_check.upper34
  br i1 %_Dynamic_check.cast35, label %_Dynamic_check.success37, label %_Dynamic_check.failed36

_Dynamic_check.success37:                         ; preds = %_Dynamic_check.succeeded27, %_Dynamic_check.succeeded18
  call void @free(i8* %59) #10
  %74 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %74, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.subsumption20
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed36:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.success37, %if.then
  %75 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %75
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_parse_string(i8* %string) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %string_ptr = alloca i8**, align 4
  %tmp18 = alloca i8*, align 4
  %tmp22 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  %3 = load i8*, i8** %string.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %5 = zext i32 %4 to i64
  %6 = inttoptr i64 %5 to i8*
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %string.addr, align 4
  %8 = load i32, i32* @sbxHeapRange, align 8
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = ptrtoint i8* %7 to i32
  %11 = zext i32 %10 to i64
  %12 = add i64 %9, %11
  %13 = icmp ult i32 %10, %8
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %14 = inttoptr i64 %12 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx, align 4
  %conv = sext i8 %15 to i32
  %cmp1 = icmp eq i32 %conv, -17
  br i1 %cmp1, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded
  %16 = load i8*, i8** %string.addr, align 4
  %17 = load i32, i32* @sbxHeapRange, align 8
  %18 = load i64, i64* @sbxHeap, align 8
  %19 = ptrtoint i8* %16 to i32
  %20 = zext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = icmp ult i32 %19, %17
  br i1 %22, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %land.lhs.true
  %23 = inttoptr i64 %21 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx5, align 4
  %conv6 = sext i8 %24 to i32
  %cmp7 = icmp eq i32 %conv6, -69
  br i1 %cmp7, label %land.lhs.true9, label %if.end17

land.lhs.true9:                                   ; preds = %_Dynamic_check.succeeded4
  %25 = load i8*, i8** %string.addr, align 4
  %26 = load i32, i32* @sbxHeapRange, align 8
  %27 = load i64, i64* @sbxHeap, align 8
  %28 = ptrtoint i8* %25 to i32
  %29 = zext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = icmp ult i32 %28, %26
  br i1 %31, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %land.lhs.true9
  %32 = inttoptr i64 %30 to i8*
  %arrayidx12 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx12, align 4
  %conv13 = sext i8 %33 to i32
  %cmp14 = icmp eq i32 %conv13, -65
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %_Dynamic_check.succeeded11
  %34 = load i8*, i8** %string.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 3
  store i8* %add.ptr, i8** %tmp, align 4
  %35 = load i8*, i8** %tmp, align 4
  %36 = ptrtoint i8* %35 to i32
  %37 = zext i32 %36 to i64
  %38 = bitcast i8** %string.addr to i64*
  store i64 %37, i64* %38, align 4
  br label %if.end17

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %land.lhs.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed10:                          ; preds = %land.lhs.true9
  call void @llvm.trap() #8
  unreachable

if.end17:                                         ; preds = %if.then16, %_Dynamic_check.succeeded11, %_Dynamic_check.succeeded4, %_Dynamic_check.succeeded
  %call = call i8* @t_malloc(i64 8)
  %39 = ptrtoint i8* %call to i32
  %40 = inttoptr i32 %39 to i8*
  store i8* %40, i8** %tmp18, align 4
  %41 = load i8*, i8** %tmp18, align 4
  %42 = call i64 @c_fetch_sandbox_heap_bound()
  %43 = call i64 @c_fetch_sandbox_heap_address()
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* @sbxHeapRange, align 8
  %46 = bitcast i8* %41 to i8**
  %47 = ptrtoint i8** %46 to i32
  %48 = zext i32 %47 to i64
  %49 = bitcast i8*** %string_ptr to i64*
  store i64 %48, i64* %49, align 4
  %50 = load i8*, i8** %string.addr, align 4
  %51 = load i8**, i8*** %string_ptr, align 4
  %52 = load i32, i32* @sbxHeapRange, align 8
  %53 = load i64, i64* @sbxHeap, align 8
  %54 = ptrtoint i8** %51 to i32
  %55 = zext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = icmp ult i32 %54, %52
  br i1 %57, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %if.end17
  %58 = inttoptr i64 %56 to i8**
  %59 = ptrtoint i8* %50 to i32
  %60 = zext i32 %59 to i64
  %61 = bitcast i8** %58 to i64*
  store i64 %60, i64* %61, align 4
  %62 = load i8**, i8*** %string_ptr, align 4
  %call21 = call %Tstruct.Spl_json_value_t_t* @parse_value(i8** %62, i64 0)
  %63 = bitcast %Tstruct.Spl_json_value_t_t* %call21 to %Tstruct.json_value_t_t*
  %64 = bitcast %Tstruct.json_value_t_t* %63 to i8*
  %65 = ptrtoint i8* %64 to i32
  %66 = inttoptr i32 %65 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %66, %Tstruct.Spl_json_value_t_t** %tmp22, align 4
  %67 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp22, align 4
  store %Tstruct.Spl_json_value_t_t* %67, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed19:                          ; preds = %if.end17
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded20, %if.then
  %68 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %68
}

declare dso_local i8* @t_malloc(i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_parse_string_with_comments(i8* %string) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %result = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %string_mutable_copy = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %string_mutable_copy_ptr = alloca i8**, align 4
  %tmp2 = alloca i8*, align 4
  %tmp4 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp5 = alloca i8*, align 4
  %tmp9 = alloca i8*, align 4
  %tmp10 = alloca i8*, align 4
  %tmp11 = alloca i8*, align 4
  %tmp12 = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  %3 = bitcast %Tstruct.Spl_json_value_t_t** %result to i32*
  store i32 0, i32* %3, align 4
  %4 = load i8*, i8** %string.addr, align 4
  %call = call i8* @tainted_parson_strdup(i8* %4)
  %5 = ptrtoint i8* %call to i32
  %6 = inttoptr i32 %5 to i8*
  store i8* %6, i8** %tmp, align 4
  %7 = load i8*, i8** %tmp, align 4
  %8 = call i64 @c_fetch_sandbox_heap_bound()
  %9 = call i64 @c_fetch_sandbox_heap_address()
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* @sbxHeapRange, align 8
  %12 = ptrtoint i8* %7 to i32
  %13 = zext i32 %12 to i64
  %14 = bitcast i8** %string_mutable_copy to i64*
  store i64 %13, i64* %14, align 4
  %15 = load i8*, i8** %string_mutable_copy, align 4
  %16 = ptrtoint i8* %15 to i32
  %17 = zext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = ptrtoint i8* %18 to i32
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %20 = load i8*, i8** %string_mutable_copy, align 4
  call void @remove_comments(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0))
  %21 = load i8*, i8** %string_mutable_copy, align 4
  call void @remove_comments(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %call1 = call i8* @t_malloc(i64 8)
  %22 = ptrtoint i8* %call1 to i32
  %23 = inttoptr i32 %22 to i8*
  store i8* %23, i8** %tmp2, align 4
  %24 = load i8*, i8** %tmp2, align 4
  %25 = call i64 @c_fetch_sandbox_heap_bound()
  %26 = call i64 @c_fetch_sandbox_heap_address()
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @sbxHeapRange, align 8
  %29 = bitcast i8* %24 to i8**
  %30 = ptrtoint i8** %29 to i32
  %31 = zext i32 %30 to i64
  %32 = bitcast i8*** %string_mutable_copy_ptr to i64*
  store i64 %31, i64* %32, align 4
  %33 = load i8*, i8** %string_mutable_copy, align 4
  %34 = load i8**, i8*** %string_mutable_copy_ptr, align 4
  %35 = load i32, i32* @sbxHeapRange, align 8
  %36 = load i64, i64* @sbxHeap, align 8
  %37 = ptrtoint i8** %34 to i32
  %38 = zext i32 %37 to i64
  %39 = add i64 %36, %38
  %40 = icmp ult i32 %37, %35
  br i1 %40, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %41 = inttoptr i64 %39 to i8**
  %arrayidx = getelementptr inbounds i8*, i8** %41, i64 0
  %42 = ptrtoint i8* %33 to i32
  %43 = zext i32 %42 to i64
  %44 = bitcast i8** %arrayidx to i64*
  store i64 %43, i64* %44, align 4
  %45 = load i8**, i8*** %string_mutable_copy_ptr, align 4
  %call3 = call %Tstruct.Spl_json_value_t_t* @parse_value(i8** %45, i64 0)
  %46 = bitcast %Tstruct.Spl_json_value_t_t* %call3 to %Tstruct.json_value_t_t*
  %47 = bitcast %Tstruct.json_value_t_t* %46 to i8*
  %48 = ptrtoint i8* %47 to i32
  %49 = inttoptr i32 %48 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %49, %Tstruct.Spl_json_value_t_t** %tmp4, align 4
  %50 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp4, align 4
  %51 = ptrtoint %Tstruct.Spl_json_value_t_t* %50 to i32
  %52 = bitcast %Tstruct.Spl_json_value_t_t** %result to i32*
  store i32 %51, i32* %52, align 4
  %53 = load i8*, i8** %string_mutable_copy, align 4
  %54 = ptrtoint i8* %53 to i32
  %_Dynamic_check.is_null = icmp eq i32 %54, 0
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded
  %55 = load i8*, i8** %string_mutable_copy, align 4
  %56 = load i8*, i8** %string_mutable_copy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %add.ptr, i8** %tmp5, align 4
  %57 = load i8*, i8** %tmp5, align 4
  %58 = ptrtoint i8* %53 to i32
  %_Dynamic_check.non_null = icmp ne i32 %58, 0
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.subsumption
  %add.ptr8 = getelementptr inbounds i8, i8* %53, i64 0
  %59 = ptrtoint i8* %55 to i32
  %60 = inttoptr i32 %59 to i8*
  store i8* %60, i8** %tmp9, align 4
  %61 = load i8*, i8** %tmp9, align 4
  %62 = ptrtoint i8* %53 to i32
  %63 = inttoptr i32 %62 to i8*
  store i8* %63, i8** %tmp10, align 4
  %64 = load i8*, i8** %tmp10, align 4
  %65 = ptrtoint i8* %61 to i32
  %66 = ptrtoint i8* %64 to i32
  %_Dynamic_check.lower = icmp ule i32 %65, %66
  %67 = ptrtoint i8* %add.ptr8 to i32
  %68 = inttoptr i32 %67 to i8*
  store i8* %68, i8** %tmp11, align 4
  %69 = load i8*, i8** %tmp11, align 4
  %70 = ptrtoint i8* %57 to i32
  %71 = inttoptr i32 %70 to i8*
  store i8* %71, i8** %tmp12, align 4
  %72 = load i8*, i8** %tmp12, align 4
  %73 = ptrtoint i8* %69 to i32
  %74 = ptrtoint i8* %72 to i32
  %_Dynamic_check.upper = icmp ule i32 %73, %74
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed13

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded7, %_Dynamic_check.succeeded
  %75 = load i32, i32* @sbxHeapRange, align 8
  %76 = load i64, i64* @sbxHeap, align 8
  %77 = ptrtoint i8* %53 to i32
  %78 = zext i32 %77 to i64
  %79 = add i64 %76, %78
  %80 = icmp ult i32 %77, %75
  br i1 %80, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.success
  %81 = inttoptr i64 %79 to i8*
  call void @t_free(i8* %81)
  %82 = call i64 @c_fetch_sandbox_heap_bound()
  %83 = call i64 @c_fetch_sandbox_heap_address()
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* @sbxHeapRange, align 8
  %86 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %result, align 4
  store %Tstruct.Spl_json_value_t_t* %86, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.succeeded7
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed14:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded15, %if.then
  %87 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %87
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_comments(i8* %string, i8* %start_token, i8* %end_token) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %start_token.addr = alloca i8*, align 8
  %end_token.addr = alloca i8*, align 8
  %in_string = alloca i32, align 4
  %escaped = alloca i32, align 4
  %i = alloca i64, align 8
  %current_char = alloca i8, align 1
  %start_token_len = alloca i64, align 8
  %end_token_len = alloca i64, align 8
  %unchecked_string = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %ptr_ = alloca i8*, align 4
  %tmp32 = alloca i8*, align 4
  %tmp47 = alloca i8*, align 4
  %tmp49 = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  store i8* %start_token, i8** %start_token.addr, align 8
  store i8* %end_token, i8** %end_token.addr, align 8
  store i32 0, i32* %in_string, align 4
  store i32 0, i32* %escaped, align 4
  %3 = load i8*, i8** %start_token.addr, align 8
  %call = call i64 @strlen(i8* %3) #9
  store i64 %call, i64* %start_token_len, align 8
  %4 = load i8*, i8** %end_token.addr, align 8
  %call1 = call i64 @strlen(i8* %4) #9
  store i64 %call1, i64* %end_token_len, align 8
  %5 = load i64, i64* %start_token_len, align 8
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i64, i64* %end_token_len, align 8
  %cmp2 = icmp eq i64 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end52, %if.then8, %if.end
  %7 = load i8*, i8** %string.addr, align 4
  %8 = load i32, i32* @sbxHeapRange, align 8
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = ptrtoint i8* %7 to i32
  %11 = zext i32 %10 to i64
  %12 = add i64 %9, %11
  %13 = icmp ult i32 %10, %8
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %while.cond
  %14 = inttoptr i64 %12 to i8*
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %current_char, align 1
  %conv = sext i8 %15 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %_Dynamic_check.succeeded
  %16 = load i8, i8* %current_char, align 1
  %conv5 = sext i8 %16 to i32
  %cmp6 = icmp eq i32 %conv5, 92
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %17 = load i32, i32* %escaped, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.else, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  store i32 1, i32* %escaped, align 4
  %18 = load i8*, i8** %string.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  %19 = ptrtoint i8* %incdec.ptr to i32
  %20 = zext i32 %19 to i64
  %21 = bitcast i8** %string.addr to i64*
  store i64 %20, i64* %21, align 4
  br label %while.cond, !llvm.loop !9

_Dynamic_check.failed:                            ; preds = %while.cond
  call void @llvm.trap() #8
  unreachable

if.else:                                          ; preds = %land.lhs.true, %while.body
  %22 = load i8, i8* %current_char, align 1
  %conv9 = sext i8 %22 to i32
  %cmp10 = icmp eq i32 %conv9, 34
  br i1 %cmp10, label %land.lhs.true12, label %if.else16

land.lhs.true12:                                  ; preds = %if.else
  %23 = load i32, i32* %escaped, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %if.else16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true12
  %24 = load i32, i32* %in_string, align 4
  %tobool15 = icmp ne i32 %24, 0
  %lnot = xor i1 %tobool15, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %in_string, align 4
  br label %if.end51

if.else16:                                        ; preds = %land.lhs.true12, %if.else
  %25 = load i8*, i8** %string.addr, align 4
  %26 = ptrtoint i8* %25 to i32
  %27 = zext i32 %26 to i64
  %28 = bitcast i8** %unchecked_string to i64*
  store i64 %27, i64* %28, align 4
  %29 = load i32, i32* %in_string, align 4
  %tobool17 = icmp ne i32 %29, 0
  br i1 %tobool17, label %if.end50, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.else16
  %30 = load i8*, i8** %unchecked_string, align 4
  %31 = load i8*, i8** %start_token.addr, align 8
  %32 = load i64, i64* %start_token_len, align 8
  %33 = load i32, i32* @sbxHeapRange, align 8
  %34 = load i64, i64* @sbxHeap, align 8
  %35 = ptrtoint i8* %30 to i32
  %36 = zext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = icmp ult i32 %35, %33
  br i1 %38, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %land.lhs.true18
  %39 = inttoptr i64 %37 to i8*
  %call21 = call i32 @t_strncmp(i8* %39, i8* %31, i64 %32)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end50

if.then24:                                        ; preds = %_Dynamic_check.succeeded20
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then24
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* %start_token_len, align 8
  %cmp25 = icmp ult i64 %40, %41
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i8*, i8** %unchecked_string, align 4
  %43 = load i64, i64* %i, align 8
  %44 = load i32, i32* @sbxHeapRange, align 8
  %45 = load i64, i64* @sbxHeap, align 8
  %46 = ptrtoint i8* %42 to i32
  %47 = zext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = icmp ult i32 %46, %44
  br i1 %49, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %for.body
  %50 = inttoptr i64 %48 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %50, i64 %43
  store i8 32, i8* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %_Dynamic_check.succeeded28
  %51 = load i64, i64* %i, align 8
  %inc = add i64 %51, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

_Dynamic_check.failed19:                          ; preds = %land.lhs.true18
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed27:                          ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

for.end:                                          ; preds = %for.cond
  %52 = load i8*, i8** %unchecked_string, align 4
  %53 = load i64, i64* %start_token_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %add.ptr, i8** %tmp, align 4
  %54 = load i8*, i8** %tmp, align 4
  %55 = ptrtoint i8* %54 to i32
  %56 = zext i32 %55 to i64
  %57 = bitcast i8** %unchecked_string to i64*
  store i64 %56, i64* %57, align 4
  %58 = load i8*, i8** %unchecked_string, align 4
  %59 = load i8*, i8** %end_token.addr, align 8
  %60 = load i32, i32* @sbxHeapRange, align 8
  %61 = load i64, i64* @sbxHeap, align 8
  %62 = ptrtoint i8* %58 to i32
  %63 = zext i32 %62 to i64
  %64 = add i64 %61, %63
  %65 = icmp ult i32 %62, %60
  br i1 %65, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %for.end
  %66 = inttoptr i64 %64 to i8*
  %call31 = call i8* @t_strstr(i8* %66, i8* %59)
  %67 = ptrtoint i8* %call31 to i32
  %68 = inttoptr i32 %67 to i8*
  store i8* %68, i8** %tmp32, align 4
  %69 = load i8*, i8** %tmp32, align 4
  %70 = ptrtoint i8* %69 to i32
  %71 = zext i32 %70 to i64
  %72 = bitcast i8** %ptr_ to i64*
  store i64 %71, i64* %72, align 4
  %73 = load i8*, i8** %ptr_, align 4
  %74 = ptrtoint i8* %73 to i32
  %tobool33 = icmp ne i32 %74, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %_Dynamic_check.succeeded30
  br label %while.end

_Dynamic_check.failed29:                          ; preds = %for.end
  call void @llvm.trap() #8
  unreachable

if.end35:                                         ; preds = %_Dynamic_check.succeeded30
  store i64 0, i64* %i, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc43, %if.end35
  %75 = load i64, i64* %i, align 8
  %76 = load i8*, i8** %ptr_, align 4
  %77 = load i8*, i8** %unchecked_string, align 4
  %78 = ptrtoint i8* %76 to i32
  %sub.ptr.lhs.cast = zext i32 %78 to i64
  %79 = ptrtoint i8* %77 to i32
  %sub.ptr.rhs.cast = zext i32 %79 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %80 = load i64, i64* %end_token_len, align 8
  %add = add i64 %sub.ptr.sub, %80
  %cmp37 = icmp ult i64 %75, %add
  br i1 %cmp37, label %for.body39, label %for.end45

for.body39:                                       ; preds = %for.cond36
  %81 = load i8*, i8** %unchecked_string, align 4
  %82 = load i64, i64* %i, align 8
  %83 = load i32, i32* @sbxHeapRange, align 8
  %84 = load i64, i64* @sbxHeap, align 8
  %85 = ptrtoint i8* %81 to i32
  %86 = zext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = icmp ult i32 %85, %83
  br i1 %88, label %_Dynamic_check.succeeded41, label %_Dynamic_check.failed40

_Dynamic_check.succeeded41:                       ; preds = %for.body39
  %89 = inttoptr i64 %87 to i8*
  %arrayidx42 = getelementptr inbounds i8, i8* %89, i64 %82
  store i8 32, i8* %arrayidx42, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %_Dynamic_check.succeeded41
  %90 = load i64, i64* %i, align 8
  %inc44 = add i64 %90, 1
  store i64 %inc44, i64* %i, align 8
  br label %for.cond36, !llvm.loop !11

_Dynamic_check.failed40:                          ; preds = %for.body39
  call void @llvm.trap() #8
  unreachable

for.end45:                                        ; preds = %for.cond36
  %91 = load i8*, i8** %ptr_, align 4
  %92 = load i64, i64* %end_token_len, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %add.ptr46, i8** %tmp47, align 4
  %93 = load i8*, i8** %tmp47, align 4
  %add.ptr48 = getelementptr inbounds i8, i8* %93, i64 -1
  store i8* %add.ptr48, i8** %tmp49, align 4
  %94 = load i8*, i8** %tmp49, align 4
  %95 = ptrtoint i8* %94 to i32
  %96 = zext i32 %95 to i64
  %97 = bitcast i8** %string.addr to i64*
  store i64 %96, i64* %97, align 4
  br label %if.end50

if.end50:                                         ; preds = %for.end45, %_Dynamic_check.succeeded20, %if.else16
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then14
  br label %if.end52

if.end52:                                         ; preds = %if.end51
  store i32 0, i32* %escaped, align 4
  %98 = load i8*, i8** %string.addr, align 4
  %incdec.ptr53 = getelementptr inbounds i8, i8* %98, i32 1
  %99 = ptrtoint i8* %incdec.ptr53 to i32
  %100 = zext i32 %99 to i64
  %101 = bitcast i8** %string.addr to i64*
  store i64 %100, i64* %101, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %if.then, %if.then34, %_Dynamic_check.succeeded
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_object_get_value(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %nameLen = alloca i64, align 8
  %name_with_len = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %6 to i32
  %8 = zext i32 %7 to i64
  %9 = inttoptr i64 %8 to %Tstruct.Spl_json_object_t_t*
  %cmp = icmp eq %Tstruct.Spl_json_object_t_t* %9, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i8*, i8** %name.addr, align 4
  %11 = ptrtoint i8* %10 to i32
  %12 = zext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = ptrtoint i8* %13 to i32
  %cmp1 = icmp eq i32 %14, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %15 = load i8*, i8** %name.addr, align 4
  %16 = load i32, i32* @sbxHeapRange, align 8
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = ptrtoint i8* %15 to i32
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = icmp ult i32 %18, %16
  br i1 %21, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %22 = inttoptr i64 %20 to i8*
  %call = call i64 @t_strlen(i8* %22)
  store i64 %call, i64* %nameLen, align 8
  %23 = bitcast i8** %name_with_len to i64*
  store i64 0, i64* %23, align 4
  %24 = load i8*, i8** %name.addr, align 4
  %25 = ptrtoint i8* %24 to i32
  %26 = zext i32 %25 to i64
  %27 = bitcast i8** %name_with_len to i64*
  store i64 %26, i64* %27, align 4
  %28 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %29 = load i8*, i8** %name_with_len, align 4
  %30 = load i64, i64* %nameLen, align 8
  %call2 = call %Tstruct.Spl_json_value_t_t* @json_object_getn_value(%Tstruct.Spl_json_object_t_t* %28, i8* %29, i64 %30)
  %31 = bitcast %Tstruct.Spl_json_value_t_t* %call2 to %Tstruct.json_value_t_t*
  %32 = bitcast %Tstruct.json_value_t_t* %31 to i8*
  %33 = ptrtoint i8* %32 to i32
  %34 = inttoptr i32 %33 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %34, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %35 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %36 = call i64 @c_fetch_sandbox_heap_bound()
  %37 = call i64 @c_fetch_sandbox_heap_address()
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* @sbxHeapRange, align 8
  store %Tstruct.Spl_json_value_t_t* %35, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded, %if.then
  %40 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_get_string(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp2 = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %12)
  %13 = ptrtoint i8* %call1 to i32
  %14 = inttoptr i32 %13 to i8*
  store i8* %14, i8** %tmp2, align 4
  %15 = load i8*, i8** %tmp2, align 4
  ret i8* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_object_get_number(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %12)
  ret double %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_object_t_t* @json_object_get_object(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp2 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %12)
  %13 = bitcast %Tstruct.Spl_json_object_t_t* %call1 to %Tstruct.json_object_t_t*
  %14 = bitcast %Tstruct.json_object_t_t* %13 to i8*
  %15 = ptrtoint i8* %14 to i32
  %16 = inttoptr i32 %15 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %16, %Tstruct.Spl_json_object_t_t** %tmp2, align 4
  %17 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp2, align 4
  ret %Tstruct.Spl_json_object_t_t* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp2 = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %12)
  %13 = bitcast %Tstruct.Spl_json_array_t_t* %call1 to %Tstruct.json_array_t_t*
  %14 = bitcast %Tstruct.json_array_t_t* %13 to i8*
  %15 = ptrtoint i8* %14 to i32
  %16 = inttoptr i32 %15 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %16, %Tstruct.Spl_json_array_t_t** %tmp2, align 4
  %17 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp2, align 4
  ret %Tstruct.Spl_json_array_t_t* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_get_boolean(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %12)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %dot_position = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %tmp2 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %after_dot = alloca i8*, align 4
  %tmp4 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp6 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %one_past_dot = alloca i8*, align 4
  %tmp7 = alloca i8*, align 4
  %tmp9 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = load i32, i32* @sbxHeapRange, align 8
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = ptrtoint i8* %6 to i32
  %10 = zext i32 %9 to i64
  %11 = add i64 %8, %10
  %12 = icmp ult i32 %9, %7
  br i1 %12, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %13 = inttoptr i64 %11 to i8*
  %call = call i8* @t_strchr(i8* %13, i32 46)
  %14 = ptrtoint i8* %call to i32
  %15 = inttoptr i32 %14 to i8*
  store i8* %15, i8** %tmp, align 4
  %16 = load i8*, i8** %tmp, align 4
  %17 = ptrtoint i8* %16 to i32
  %18 = zext i32 %17 to i64
  %19 = bitcast i8** %dot_position to i64*
  store i64 %18, i64* %19, align 4
  %20 = load i8*, i8** %dot_position, align 4
  %21 = ptrtoint i8* %20 to i32
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %_Dynamic_check.succeeded
  %22 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %23 = load i8*, i8** %name.addr, align 4
  %call1 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %22, i8* %23)
  %24 = bitcast %Tstruct.Spl_json_value_t_t* %call1 to %Tstruct.json_value_t_t*
  %25 = bitcast %Tstruct.json_value_t_t* %24 to i8*
  %26 = ptrtoint i8* %25 to i32
  %27 = inttoptr i32 %26 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %27, %Tstruct.Spl_json_value_t_t** %tmp2, align 4
  %28 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp2, align 4
  store %Tstruct.Spl_json_value_t_t* %28, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %29 = bitcast i8** %after_dot to i64*
  store i64 0, i64* %29, align 4
  %30 = load i8*, i8** %name.addr, align 4
  %31 = ptrtoint i8* %30 to i32
  %32 = zext i32 %31 to i64
  %33 = bitcast i8** %after_dot to i64*
  store i64 %32, i64* %33, align 4
  %34 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %35 = load i8*, i8** %after_dot, align 4
  %36 = load i8*, i8** %dot_position, align 4
  %37 = load i8*, i8** %name.addr, align 4
  %38 = ptrtoint i8* %36 to i32
  %sub.ptr.lhs.cast = zext i32 %38 to i64
  %39 = ptrtoint i8* %37 to i32
  %sub.ptr.rhs.cast = zext i32 %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call3 = call %Tstruct.Spl_json_value_t_t* @json_object_getn_value(%Tstruct.Spl_json_object_t_t* %34, i8* %35, i64 %sub.ptr.sub)
  %40 = bitcast %Tstruct.Spl_json_value_t_t* %call3 to %Tstruct.json_value_t_t*
  %41 = bitcast %Tstruct.json_value_t_t* %40 to i8*
  %42 = ptrtoint i8* %41 to i32
  %43 = inttoptr i32 %42 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %43, %Tstruct.Spl_json_value_t_t** %tmp4, align 4
  %44 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp4, align 4
  %45 = call i64 @c_fetch_sandbox_heap_bound()
  %46 = call i64 @c_fetch_sandbox_heap_address()
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @sbxHeapRange, align 8
  %call5 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %44)
  %49 = bitcast %Tstruct.Spl_json_object_t_t* %call5 to %Tstruct.json_object_t_t*
  %50 = bitcast %Tstruct.json_object_t_t* %49 to i8*
  %51 = ptrtoint i8* %50 to i32
  %52 = inttoptr i32 %51 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %52, %Tstruct.Spl_json_object_t_t** %tmp6, align 4
  %53 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp6, align 4
  %54 = ptrtoint %Tstruct.Spl_json_object_t_t* %53 to i32
  %55 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %54, i32* %55, align 4
  %56 = bitcast i8** %one_past_dot to i64*
  store i64 0, i64* %56, align 4
  %57 = load i8*, i8** %dot_position, align 4
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %add.ptr, i8** %tmp7, align 4
  %58 = load i8*, i8** %tmp7, align 4
  %59 = ptrtoint i8* %58 to i32
  %60 = zext i32 %59 to i64
  %61 = bitcast i8** %one_past_dot to i64*
  store i64 %60, i64* %61, align 4
  %62 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %63 = load i8*, i8** %one_past_dot, align 4
  %call8 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %62, i8* %63)
  %64 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %65 = bitcast %Tstruct.json_value_t_t* %64 to i8*
  %66 = ptrtoint i8* %65 to i32
  %67 = inttoptr i32 %66 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %67, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %68 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  store %Tstruct.Spl_json_value_t_t* %68, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %69 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %69
}

declare dso_local i8* @t_strchr(i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_dotget_string(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp2 = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %12)
  %13 = ptrtoint i8* %call1 to i32
  %14 = inttoptr i32 %13 to i8*
  store i8* %14, i8** %tmp2, align 4
  %15 = load i8*, i8** %tmp2, align 4
  ret i8* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_object_dotget_number(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %12)
  ret double %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_object_t_t* @json_object_dotget_object(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp2 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %12)
  %13 = bitcast %Tstruct.Spl_json_object_t_t* %call1 to %Tstruct.json_object_t_t*
  %14 = bitcast %Tstruct.json_object_t_t* %13 to i8*
  %15 = ptrtoint i8* %14 to i32
  %16 = inttoptr i32 %15 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %16, %Tstruct.Spl_json_object_t_t** %tmp2, align 4
  %17 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp2, align 4
  ret %Tstruct.Spl_json_object_t_t* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_array_t_t* @json_object_dotget_array(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp2 = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %12)
  %13 = bitcast %Tstruct.Spl_json_array_t_t* %call1 to %Tstruct.json_array_t_t*
  %14 = bitcast %Tstruct.json_array_t_t* %13 to i8*
  %15 = ptrtoint i8* %14 to i32
  %16 = inttoptr i32 %15 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %16, %Tstruct.Spl_json_array_t_t** %tmp2, align 4
  %17 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp2, align 4
  ret %Tstruct.Spl_json_array_t_t* %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %12)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_object_get_count(%Tstruct.json_object_t_t* %object) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i32, i32* @sbxHeapRange, align 8
  %7 = load i64, i64* @sbxHeap, align 8
  %8 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %9 = zext i32 %8 to i64
  %10 = add i64 %7, %9
  %11 = icmp ult i32 %8, %6
  br i1 %11, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %12 = inttoptr i64 %10 to %Tstruct.Spl_json_object_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %12, i32 0, i32 3
  %13 = load i32, i32* %count, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi i32 [ %13, %_Dynamic_check.succeeded ], [ 0, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_get_name(%Tstruct.json_object_t_t* %object, i64 %index) #0 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %index.addr = alloca i64, align 8
  %tmp = alloca i8**, align 4
  %tmp15 = alloca i8**, align 4
  %tmp16 = alloca i8**, align 4
  %tmp17 = alloca i8**, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %5 = zext i32 %4 to i64
  %6 = inttoptr i64 %5 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %6 to i32
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i64, i64* %index.addr, align 8
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %9)
  %cmp1 = icmp uge i64 %8, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %11 = load i32, i32* @sbxHeapRange, align 8
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = ptrtoint %Tstruct.Spl_json_object_t_t* %10 to i32
  %14 = zext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = icmp ult i32 %13, %11
  br i1 %16, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %17 = inttoptr i64 %15 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %17, i32 0, i32 1
  %names2 = bitcast i32* %names to i8***
  %18 = load i8**, i8*** %names2, align 4
  %19 = load i64, i64* %index.addr, align 8
  %20 = load i32, i32* @sbxHeapRange, align 8
  %21 = load i64, i64* @sbxHeap, align 8
  %22 = ptrtoint i8** %18 to i32
  %23 = zext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = icmp ult i32 %22, %20
  br i1 %25, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %26 = inttoptr i64 %24 to i8**
  %27 = bitcast i8** %26 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %19
  %28 = bitcast i32* %arrayidx to i8**
  %29 = bitcast i8** %28 to i8*
  %30 = ptrtoint i8* %29 to i32
  %31 = inttoptr i32 %30 to i8**
  store i8** %31, i8*** %tmp, align 4
  %32 = load i8**, i8*** %tmp, align 4
  %33 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %34 = load i32, i32* @sbxHeapRange, align 8
  %35 = load i64, i64* @sbxHeap, align 8
  %36 = ptrtoint %Tstruct.Spl_json_object_t_t* %33 to i32
  %37 = zext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = icmp ult i32 %36, %34
  br i1 %39, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %40 = inttoptr i64 %38 to %Tstruct.Spl_json_object_t_t*
  %names7 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %40, i32 0, i32 1
  %names8 = bitcast i32* %names7 to i8***
  %41 = load i8**, i8*** %names8, align 4
  %42 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %43 = load i32, i32* @sbxHeapRange, align 8
  %44 = load i64, i64* @sbxHeap, align 8
  %45 = ptrtoint %Tstruct.Spl_json_object_t_t* %42 to i32
  %46 = zext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = icmp ult i32 %45, %43
  br i1 %48, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.succeeded6
  %49 = inttoptr i64 %47 to %Tstruct.Spl_json_object_t_t*
  %names11 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %49, i32 0, i32 1
  %names12 = bitcast i32* %names11 to i8***
  %50 = load i8**, i8*** %names12, align 4
  %51 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %52 = load i32, i32* @sbxHeapRange, align 8
  %53 = load i64, i64* @sbxHeap, align 8
  %54 = ptrtoint %Tstruct.Spl_json_object_t_t* %51 to i32
  %55 = zext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = icmp ult i32 %54, %52
  br i1 %57, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.succeeded10
  %58 = inttoptr i64 %56 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %58, i32 0, i32 4
  %59 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %59 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %50, i64 %idx.ext
  store i8** %add.ptr, i8*** %tmp15, align 4
  %60 = load i8**, i8*** %tmp15, align 4
  %61 = bitcast i8** %60 to i8*
  %62 = ptrtoint i8* %61 to i32
  %63 = inttoptr i32 %62 to i8**
  store i8** %63, i8*** %tmp16, align 4
  %64 = load i8**, i8*** %tmp16, align 4
  %65 = bitcast i8** %41 to i8*
  %66 = ptrtoint i8* %65 to i32
  %67 = inttoptr i32 %66 to i8**
  store i8** %67, i8*** %tmp17, align 4
  %68 = load i8**, i8*** %tmp17, align 4
  %69 = ptrtoint i8** %68 to i32
  %70 = ptrtoint i8** %32 to i32
  %_Dynamic_check.lower = icmp ule i32 %69, %70
  %71 = ptrtoint i8** %32 to i32
  %72 = ptrtoint i8** %64 to i32
  %_Dynamic_check.upper = icmp ult i32 %71, %72
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.succeeded14
  %73 = load i8*, i8** %28, align 4
  store i8* %73, i8** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded19, %if.then
  %74 = load i8*, i8** %retval, align 8
  ret i8* %74
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_value_t_t* @json_object_get_value_at(%Tstruct.json_object_t_t* %object, i64 %index) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %index.addr = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp15 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp16 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp17 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp27 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp41 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp42 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp43 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp56 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp70 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp71 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp72 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp79 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp85 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp86 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp87 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp89 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp90 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %5 = zext i32 %4 to i64
  %6 = inttoptr i64 %5 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %6 to i32
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i64, i64* %index.addr, align 8
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %9)
  %cmp1 = icmp uge i64 %8, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %11 = load i32, i32* @sbxHeapRange, align 8
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = ptrtoint %Tstruct.Spl_json_object_t_t* %10 to i32
  %14 = zext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = icmp ult i32 %13, %11
  br i1 %16, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %17 = inttoptr i64 %15 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %17, i32 0, i32 2
  %values2 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %18 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values2, align 4
  %19 = load i64, i64* %index.addr, align 8
  %20 = load i32, i32* @sbxHeapRange, align 8
  %21 = load i64, i64* @sbxHeap, align 8
  %22 = ptrtoint %Tstruct.Spl_json_value_t_t** %18 to i32
  %23 = zext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = icmp ult i32 %22, %20
  br i1 %25, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %26 = inttoptr i64 %24 to %Tstruct.Spl_json_value_t_t**
  %27 = bitcast %Tstruct.Spl_json_value_t_t** %26 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %19
  %28 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %29 = bitcast %Tstruct.Spl_json_value_t_t** %28 to i8*
  %30 = ptrtoint i8* %29 to i32
  %31 = inttoptr i32 %30 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %31, %Tstruct.Spl_json_value_t_t*** %tmp, align 4
  %32 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp, align 4
  %33 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %34 = load i32, i32* @sbxHeapRange, align 8
  %35 = load i64, i64* @sbxHeap, align 8
  %36 = ptrtoint %Tstruct.Spl_json_object_t_t* %33 to i32
  %37 = zext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = icmp ult i32 %36, %34
  br i1 %39, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %40 = inttoptr i64 %38 to %Tstruct.Spl_json_object_t_t*
  %values7 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %40, i32 0, i32 2
  %values8 = bitcast i32* %values7 to %Tstruct.Spl_json_value_t_t***
  %41 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values8, align 4
  %42 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %43 = load i32, i32* @sbxHeapRange, align 8
  %44 = load i64, i64* @sbxHeap, align 8
  %45 = ptrtoint %Tstruct.Spl_json_object_t_t* %42 to i32
  %46 = zext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = icmp ult i32 %45, %43
  br i1 %48, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.succeeded6
  %49 = inttoptr i64 %47 to %Tstruct.Spl_json_object_t_t*
  %values11 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %49, i32 0, i32 2
  %values12 = bitcast i32* %values11 to %Tstruct.Spl_json_value_t_t***
  %50 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values12, align 4
  %51 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %52 = load i32, i32* @sbxHeapRange, align 8
  %53 = load i64, i64* @sbxHeap, align 8
  %54 = ptrtoint %Tstruct.Spl_json_object_t_t* %51 to i32
  %55 = zext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = icmp ult i32 %54, %52
  br i1 %57, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.succeeded10
  %58 = inttoptr i64 %56 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %58, i32 0, i32 4
  %59 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %59 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %50, i64 %idx.ext
  store %Tstruct.Spl_json_value_t_t** %add.ptr, %Tstruct.Spl_json_value_t_t*** %tmp15, align 4
  %60 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp15, align 4
  %61 = bitcast %Tstruct.Spl_json_value_t_t** %60 to i8*
  %62 = ptrtoint i8* %61 to i32
  %63 = inttoptr i32 %62 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %63, %Tstruct.Spl_json_value_t_t*** %tmp16, align 4
  %64 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp16, align 4
  %65 = bitcast %Tstruct.Spl_json_value_t_t** %41 to i8*
  %66 = ptrtoint i8* %65 to i32
  %67 = inttoptr i32 %66 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %67, %Tstruct.Spl_json_value_t_t*** %tmp17, align 4
  %68 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp17, align 4
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %68, %32
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %32, %64
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.succeeded14
  %69 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %28, align 4
  %_Dynamic_check.is_null = icmp eq %Tstruct.Spl_json_value_t_t* %69, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded19
  %70 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %71 = load i32, i32* @sbxHeapRange, align 8
  %72 = load i64, i64* @sbxHeap, align 8
  %73 = ptrtoint %Tstruct.Spl_json_object_t_t* %70 to i32
  %74 = zext i32 %73 to i64
  %75 = add i64 %72, %74
  %76 = icmp ult i32 %73, %71
  br i1 %76, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %_Dynamic_check.subsumption
  %77 = inttoptr i64 %75 to %Tstruct.Spl_json_object_t_t*
  %values22 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %77, i32 0, i32 2
  %values23 = bitcast i32* %values22 to %Tstruct.Spl_json_value_t_t***
  %78 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values23, align 4
  %79 = load i64, i64* %index.addr, align 8
  %80 = load i32, i32* @sbxHeapRange, align 8
  %81 = load i64, i64* @sbxHeap, align 8
  %82 = ptrtoint %Tstruct.Spl_json_value_t_t** %78 to i32
  %83 = zext i32 %82 to i64
  %84 = add i64 %81, %83
  %85 = icmp ult i32 %82, %80
  br i1 %85, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded21
  %86 = inttoptr i64 %84 to %Tstruct.Spl_json_value_t_t**
  %87 = bitcast %Tstruct.Spl_json_value_t_t** %86 to i32*
  %arrayidx26 = getelementptr inbounds i32, i32* %87, i64 %79
  %88 = bitcast i32* %arrayidx26 to %Tstruct.Spl_json_value_t_t**
  %89 = bitcast %Tstruct.Spl_json_value_t_t** %88 to i8*
  %90 = ptrtoint i8* %89 to i32
  %91 = inttoptr i32 %90 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %91, %Tstruct.Spl_json_value_t_t*** %tmp27, align 4
  %92 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp27, align 4
  %93 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %94 = load i32, i32* @sbxHeapRange, align 8
  %95 = load i64, i64* @sbxHeap, align 8
  %96 = ptrtoint %Tstruct.Spl_json_object_t_t* %93 to i32
  %97 = zext i32 %96 to i64
  %98 = add i64 %95, %97
  %99 = icmp ult i32 %96, %94
  br i1 %99, label %_Dynamic_check.succeeded29, label %_Dynamic_check.failed28

_Dynamic_check.succeeded29:                       ; preds = %_Dynamic_check.succeeded25
  %100 = inttoptr i64 %98 to %Tstruct.Spl_json_object_t_t*
  %values30 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %100, i32 0, i32 2
  %values31 = bitcast i32* %values30 to %Tstruct.Spl_json_value_t_t***
  %101 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values31, align 4
  %102 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %103 = load i32, i32* @sbxHeapRange, align 8
  %104 = load i64, i64* @sbxHeap, align 8
  %105 = ptrtoint %Tstruct.Spl_json_object_t_t* %102 to i32
  %106 = zext i32 %105 to i64
  %107 = add i64 %104, %106
  %108 = icmp ult i32 %105, %103
  br i1 %108, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %_Dynamic_check.succeeded29
  %109 = inttoptr i64 %107 to %Tstruct.Spl_json_object_t_t*
  %values34 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %109, i32 0, i32 2
  %values35 = bitcast i32* %values34 to %Tstruct.Spl_json_value_t_t***
  %110 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values35, align 4
  %111 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %112 = load i32, i32* @sbxHeapRange, align 8
  %113 = load i64, i64* @sbxHeap, align 8
  %114 = ptrtoint %Tstruct.Spl_json_object_t_t* %111 to i32
  %115 = zext i32 %114 to i64
  %116 = add i64 %113, %115
  %117 = icmp ult i32 %114, %112
  br i1 %117, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %_Dynamic_check.succeeded33
  %118 = inttoptr i64 %116 to %Tstruct.Spl_json_object_t_t*
  %capacity38 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %118, i32 0, i32 4
  %119 = load i32, i32* %capacity38, align 8
  %idx.ext39 = zext i32 %119 to i64
  %add.ptr40 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %110, i64 %idx.ext39
  store %Tstruct.Spl_json_value_t_t** %add.ptr40, %Tstruct.Spl_json_value_t_t*** %tmp41, align 4
  %120 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp41, align 4
  %121 = bitcast %Tstruct.Spl_json_value_t_t** %120 to i8*
  %122 = ptrtoint i8* %121 to i32
  %123 = inttoptr i32 %122 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %123, %Tstruct.Spl_json_value_t_t*** %tmp42, align 4
  %124 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp42, align 4
  %125 = bitcast %Tstruct.Spl_json_value_t_t** %101 to i8*
  %126 = ptrtoint i8* %125 to i32
  %127 = inttoptr i32 %126 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %127, %Tstruct.Spl_json_value_t_t*** %tmp43, align 4
  %128 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp43, align 4
  %_Dynamic_check.lower44 = icmp ule %Tstruct.Spl_json_value_t_t** %128, %92
  %_Dynamic_check.upper45 = icmp ult %Tstruct.Spl_json_value_t_t** %92, %124
  %_Dynamic_check.range46 = and i1 %_Dynamic_check.lower44, %_Dynamic_check.upper45
  br i1 %_Dynamic_check.range46, label %_Dynamic_check.succeeded48, label %_Dynamic_check.failed47

_Dynamic_check.succeeded48:                       ; preds = %_Dynamic_check.succeeded37
  %129 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %88, align 4
  %130 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %131 = load i32, i32* @sbxHeapRange, align 8
  %132 = load i64, i64* @sbxHeap, align 8
  %133 = ptrtoint %Tstruct.Spl_json_object_t_t* %130 to i32
  %134 = zext i32 %133 to i64
  %135 = add i64 %132, %134
  %136 = icmp ult i32 %133, %131
  br i1 %136, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %_Dynamic_check.succeeded48
  %137 = inttoptr i64 %135 to %Tstruct.Spl_json_object_t_t*
  %values51 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %137, i32 0, i32 2
  %values52 = bitcast i32* %values51 to %Tstruct.Spl_json_value_t_t***
  %138 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values52, align 4
  %139 = load i64, i64* %index.addr, align 8
  %140 = load i32, i32* @sbxHeapRange, align 8
  %141 = load i64, i64* @sbxHeap, align 8
  %142 = ptrtoint %Tstruct.Spl_json_value_t_t** %138 to i32
  %143 = zext i32 %142 to i64
  %144 = add i64 %141, %143
  %145 = icmp ult i32 %142, %140
  br i1 %145, label %_Dynamic_check.succeeded54, label %_Dynamic_check.failed53

_Dynamic_check.succeeded54:                       ; preds = %_Dynamic_check.succeeded50
  %146 = inttoptr i64 %144 to %Tstruct.Spl_json_value_t_t**
  %147 = bitcast %Tstruct.Spl_json_value_t_t** %146 to i32*
  %arrayidx55 = getelementptr inbounds i32, i32* %147, i64 %139
  %148 = bitcast i32* %arrayidx55 to %Tstruct.Spl_json_value_t_t**
  %149 = bitcast %Tstruct.Spl_json_value_t_t** %148 to i8*
  %150 = ptrtoint i8* %149 to i32
  %151 = inttoptr i32 %150 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %151, %Tstruct.Spl_json_value_t_t*** %tmp56, align 4
  %152 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp56, align 4
  %153 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %154 = load i32, i32* @sbxHeapRange, align 8
  %155 = load i64, i64* @sbxHeap, align 8
  %156 = ptrtoint %Tstruct.Spl_json_object_t_t* %153 to i32
  %157 = zext i32 %156 to i64
  %158 = add i64 %155, %157
  %159 = icmp ult i32 %156, %154
  br i1 %159, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %_Dynamic_check.succeeded54
  %160 = inttoptr i64 %158 to %Tstruct.Spl_json_object_t_t*
  %values59 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %160, i32 0, i32 2
  %values60 = bitcast i32* %values59 to %Tstruct.Spl_json_value_t_t***
  %161 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values60, align 4
  %162 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %163 = load i32, i32* @sbxHeapRange, align 8
  %164 = load i64, i64* @sbxHeap, align 8
  %165 = ptrtoint %Tstruct.Spl_json_object_t_t* %162 to i32
  %166 = zext i32 %165 to i64
  %167 = add i64 %164, %166
  %168 = icmp ult i32 %165, %163
  br i1 %168, label %_Dynamic_check.succeeded62, label %_Dynamic_check.failed61

_Dynamic_check.succeeded62:                       ; preds = %_Dynamic_check.succeeded58
  %169 = inttoptr i64 %167 to %Tstruct.Spl_json_object_t_t*
  %values63 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %169, i32 0, i32 2
  %values64 = bitcast i32* %values63 to %Tstruct.Spl_json_value_t_t***
  %170 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values64, align 4
  %171 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %172 = load i32, i32* @sbxHeapRange, align 8
  %173 = load i64, i64* @sbxHeap, align 8
  %174 = ptrtoint %Tstruct.Spl_json_object_t_t* %171 to i32
  %175 = zext i32 %174 to i64
  %176 = add i64 %173, %175
  %177 = icmp ult i32 %174, %172
  br i1 %177, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %_Dynamic_check.succeeded62
  %178 = inttoptr i64 %176 to %Tstruct.Spl_json_object_t_t*
  %capacity67 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %178, i32 0, i32 4
  %179 = load i32, i32* %capacity67, align 8
  %idx.ext68 = zext i32 %179 to i64
  %add.ptr69 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %170, i64 %idx.ext68
  store %Tstruct.Spl_json_value_t_t** %add.ptr69, %Tstruct.Spl_json_value_t_t*** %tmp70, align 4
  %180 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp70, align 4
  %181 = bitcast %Tstruct.Spl_json_value_t_t** %180 to i8*
  %182 = ptrtoint i8* %181 to i32
  %183 = inttoptr i32 %182 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %183, %Tstruct.Spl_json_value_t_t*** %tmp71, align 4
  %184 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp71, align 4
  %185 = bitcast %Tstruct.Spl_json_value_t_t** %161 to i8*
  %186 = ptrtoint i8* %185 to i32
  %187 = inttoptr i32 %186 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %187, %Tstruct.Spl_json_value_t_t*** %tmp72, align 4
  %188 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp72, align 4
  %_Dynamic_check.lower73 = icmp ule %Tstruct.Spl_json_value_t_t** %188, %152
  %_Dynamic_check.upper74 = icmp ult %Tstruct.Spl_json_value_t_t** %152, %184
  %_Dynamic_check.range75 = and i1 %_Dynamic_check.lower73, %_Dynamic_check.upper74
  br i1 %_Dynamic_check.range75, label %_Dynamic_check.succeeded77, label %_Dynamic_check.failed76

_Dynamic_check.succeeded77:                       ; preds = %_Dynamic_check.succeeded66
  %189 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %148, align 4
  %add.ptr78 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %189, i64 1
  store %Tstruct.Spl_json_value_t_t* %add.ptr78, %Tstruct.Spl_json_value_t_t** %tmp79, align 4
  %190 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp79, align 4
  %191 = bitcast %Tstruct.Spl_json_value_t_t* %69 to %Tstruct.json_value_t_t*
  %192 = bitcast %Tstruct.json_value_t_t* %191 to %Tstruct.Spl_json_value_t_t*
  %193 = bitcast %Tstruct.Spl_json_value_t_t* %69 to %Tstruct.json_value_t_t*
  %194 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %195 = load i32, i32* @sbxHeapRange, align 8
  %196 = load i64, i64* @sbxHeap, align 8
  %197 = ptrtoint %Tstruct.Spl_json_object_t_t* %194 to i32
  %198 = zext i32 %197 to i64
  %199 = add i64 %196, %198
  %200 = icmp ult i32 %197, %195
  br i1 %200, label %_Dynamic_check.succeeded81, label %_Dynamic_check.failed80

_Dynamic_check.succeeded81:                       ; preds = %_Dynamic_check.succeeded77
  %201 = inttoptr i64 %199 to %Tstruct.Spl_json_object_t_t*
  %capacity82 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %201, i32 0, i32 4
  %202 = load i32, i32* %capacity82, align 8
  %idx.ext83 = zext i32 %202 to i64
  %add.ptr84 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %193, i64 %idx.ext83
  store %Tstruct.Spl_json_value_t_t* %add.ptr84, %Tstruct.Spl_json_value_t_t** %tmp85, align 4
  %203 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp85, align 4
  %204 = bitcast %Tstruct.Spl_json_value_t_t* %203 to %Tstruct.json_value_t_t*
  %205 = bitcast %Tstruct.json_value_t_t* %204 to %Tstruct.Spl_json_value_t_t*
  %206 = bitcast %Tstruct.Spl_json_value_t_t* %129 to i8*
  %207 = ptrtoint i8* %206 to i32
  %208 = inttoptr i32 %207 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %208, %Tstruct.Spl_json_value_t_t** %tmp86, align 4
  %209 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp86, align 4
  %210 = bitcast %Tstruct.Spl_json_value_t_t* %192 to i8*
  %211 = ptrtoint i8* %210 to i32
  %212 = inttoptr i32 %211 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %212, %Tstruct.Spl_json_value_t_t** %tmp87, align 4
  %213 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp87, align 4
  %_Dynamic_check.lower88 = icmp ule %Tstruct.Spl_json_value_t_t* %209, %213
  %214 = bitcast %Tstruct.Spl_json_value_t_t* %205 to i8*
  %215 = ptrtoint i8* %214 to i32
  %216 = inttoptr i32 %215 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %216, %Tstruct.Spl_json_value_t_t** %tmp89, align 4
  %217 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp89, align 4
  %218 = bitcast %Tstruct.Spl_json_value_t_t* %190 to i8*
  %219 = ptrtoint i8* %218 to i32
  %220 = inttoptr i32 %219 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %220, %Tstruct.Spl_json_value_t_t** %tmp90, align 4
  %221 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp90, align 4
  %_Dynamic_check.upper91 = icmp ule %Tstruct.Spl_json_value_t_t* %217, %221
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower88, %_Dynamic_check.upper91
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed92

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded81, %_Dynamic_check.succeeded19
  store %Tstruct.Spl_json_value_t_t* %69, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed24:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed28:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed32:                          ; preds = %_Dynamic_check.succeeded29
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed36:                          ; preds = %_Dynamic_check.succeeded33
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed47:                          ; preds = %_Dynamic_check.succeeded37
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed49:                          ; preds = %_Dynamic_check.succeeded48
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed53:                          ; preds = %_Dynamic_check.succeeded50
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed57:                          ; preds = %_Dynamic_check.succeeded54
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed61:                          ; preds = %_Dynamic_check.succeeded58
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed65:                          ; preds = %_Dynamic_check.succeeded62
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed76:                          ; preds = %_Dynamic_check.succeeded66
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed80:                          ; preds = %_Dynamic_check.succeeded77
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed92:                          ; preds = %_Dynamic_check.succeeded81
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.success, %if.then
  %222 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %222
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_object_get_wrapping_value(%Tstruct.json_object_t_t* %object) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = load i32, i32* @sbxHeapRange, align 8
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %7 = zext i32 %6 to i64
  %8 = add i64 %5, %7
  %9 = icmp ult i32 %6, %4
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = inttoptr i64 %8 to %Tstruct.Spl_json_object_t_t*
  %wrapping_value = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %10, i32 0, i32 0
  %wrapping_value1 = bitcast i32* %wrapping_value to %Tstruct.Spl_json_value_t_t**
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value1, align 4
  ret %Tstruct.Spl_json_value_t_t* %11

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_has_value(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %14 to %Tstruct.Spl_json_value_t_t*
  %cmp = icmp ne %Tstruct.Spl_json_value_t_t* %15, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %object, i8* %name, i32 %type) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %type.addr = alloca i32, align 4
  %val = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  store i32 %type, i32* %type.addr, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %14 = bitcast %Tstruct.Spl_json_value_t_t** %val to i32*
  store i32 %13, i32* %14, align 4
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %17 = zext i32 %16 to i64
  %18 = inttoptr i64 %17 to %Tstruct.Spl_json_value_t_t*
  %cmp = icmp ne %Tstruct.Spl_json_value_t_t* %18, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %19 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %19)
  %20 = load i32, i32* %type.addr, align 4
  %cmp2 = icmp eq i32 %call1, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %21 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dothas_value(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %14 to %Tstruct.Spl_json_value_t_t*
  %cmp = icmp ne %Tstruct.Spl_json_value_t_t* %15, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %object, i8* %name, i32 %type) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %type.addr = alloca i32, align 4
  %val = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  store i32 %type, i32* %type.addr, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %14 = bitcast %Tstruct.Spl_json_value_t_t** %val to i32*
  store i32 %13, i32* %14, align 4
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %17 = zext i32 %16 to i64
  %18 = inttoptr i64 %17 to %Tstruct.Spl_json_value_t_t*
  %cmp = icmp ne %Tstruct.Spl_json_value_t_t* %18, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %19 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %19)
  %20 = load i32, i32* %type.addr, align 4
  %cmp2 = icmp eq i32 %call1, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %21 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_array_get_value(%Tstruct.json_array_t_t* %array, i64 %index) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp15 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp16 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp17 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %5 = zext i32 %4 to i64
  %6 = inttoptr i64 %5 to %Tstruct.Spl_json_array_t_t*
  %cmp = icmp eq %Tstruct.Spl_json_array_t_t* %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64, i64* %index.addr, align 8
  %8 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %8)
  %cmp1 = icmp uge i64 %7, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %10 = load i32, i32* @sbxHeapRange, align 8
  %11 = load i64, i64* @sbxHeap, align 8
  %12 = ptrtoint %Tstruct.Spl_json_array_t_t* %9 to i32
  %13 = zext i32 %12 to i64
  %14 = add i64 %11, %13
  %15 = icmp ult i32 %12, %10
  br i1 %15, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %16 = inttoptr i64 %14 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %16, i32 0, i32 1
  %items2 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %17 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items2, align 4
  %18 = load i64, i64* %index.addr, align 8
  %19 = load i32, i32* @sbxHeapRange, align 8
  %20 = load i64, i64* @sbxHeap, align 8
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t** %17 to i32
  %22 = zext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = icmp ult i32 %21, %19
  br i1 %24, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %25 = inttoptr i64 %23 to %Tstruct.Spl_json_value_t_t**
  %26 = bitcast %Tstruct.Spl_json_value_t_t** %25 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %26, i64 %18
  %27 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %28 = bitcast %Tstruct.Spl_json_value_t_t** %27 to i8*
  %29 = ptrtoint i8* %28 to i32
  %30 = inttoptr i32 %29 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %30, %Tstruct.Spl_json_value_t_t*** %tmp, align 4
  %31 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp, align 4
  %32 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %33 = load i32, i32* @sbxHeapRange, align 8
  %34 = load i64, i64* @sbxHeap, align 8
  %35 = ptrtoint %Tstruct.Spl_json_array_t_t* %32 to i32
  %36 = zext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = icmp ult i32 %35, %33
  br i1 %38, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %39 = inttoptr i64 %37 to %Tstruct.Spl_json_array_t_t*
  %items7 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %39, i32 0, i32 1
  %items8 = bitcast i32* %items7 to %Tstruct.Spl_json_value_t_t***
  %40 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items8, align 4
  %41 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %42 = load i32, i32* @sbxHeapRange, align 8
  %43 = load i64, i64* @sbxHeap, align 8
  %44 = ptrtoint %Tstruct.Spl_json_array_t_t* %41 to i32
  %45 = zext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = icmp ult i32 %44, %42
  br i1 %47, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.succeeded6
  %48 = inttoptr i64 %46 to %Tstruct.Spl_json_array_t_t*
  %items11 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %48, i32 0, i32 1
  %items12 = bitcast i32* %items11 to %Tstruct.Spl_json_value_t_t***
  %49 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items12, align 4
  %50 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %51 = load i32, i32* @sbxHeapRange, align 8
  %52 = load i64, i64* @sbxHeap, align 8
  %53 = ptrtoint %Tstruct.Spl_json_array_t_t* %50 to i32
  %54 = zext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = icmp ult i32 %53, %51
  br i1 %56, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.succeeded10
  %57 = inttoptr i64 %55 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %57, i32 0, i32 3
  %58 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %58 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %49, i64 %idx.ext
  store %Tstruct.Spl_json_value_t_t** %add.ptr, %Tstruct.Spl_json_value_t_t*** %tmp15, align 4
  %59 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp15, align 4
  %60 = bitcast %Tstruct.Spl_json_value_t_t** %59 to i8*
  %61 = ptrtoint i8* %60 to i32
  %62 = inttoptr i32 %61 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %62, %Tstruct.Spl_json_value_t_t*** %tmp16, align 4
  %63 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp16, align 4
  %64 = bitcast %Tstruct.Spl_json_value_t_t** %40 to i8*
  %65 = ptrtoint i8* %64 to i32
  %66 = inttoptr i32 %65 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %66, %Tstruct.Spl_json_value_t_t*** %tmp17, align 4
  %67 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp17, align 4
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %67, %31
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %31, %63
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.succeeded14
  %68 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %27, align 4
  store %Tstruct.Spl_json_value_t_t* %68, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded19, %if.then
  %69 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_array_get_string(%Tstruct.json_array_t_t* %array, i64 %index) #0 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp2 = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = load i64, i64* %index.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %3, i64 %4)
  %5 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to i8*
  %7 = ptrtoint i8* %6 to i32
  %8 = inttoptr i32 %7 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %8, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %9 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %9)
  %10 = ptrtoint i8* %call1 to i32
  %11 = inttoptr i32 %10 to i8*
  store i8* %11, i8** %tmp2, align 4
  %12 = load i8*, i8** %tmp2, align 4
  ret i8* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_array_get_number(%Tstruct.json_array_t_t* %array, i64 %index) #0 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = load i64, i64* %index.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %3, i64 %4)
  %5 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to i8*
  %7 = ptrtoint i8* %6 to i32
  %8 = inttoptr i32 %7 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %8, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %9 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %9)
  ret double %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_object_t_t* @json_array_get_object(%Tstruct.json_array_t_t* %array, i64 %index) #0 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp2 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = load i64, i64* %index.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %3, i64 %4)
  %5 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to i8*
  %7 = ptrtoint i8* %6 to i32
  %8 = inttoptr i32 %7 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %8, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %9 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %9)
  %10 = bitcast %Tstruct.Spl_json_object_t_t* %call1 to %Tstruct.json_object_t_t*
  %11 = bitcast %Tstruct.json_object_t_t* %10 to i8*
  %12 = ptrtoint i8* %11 to i32
  %13 = inttoptr i32 %12 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %13, %Tstruct.Spl_json_object_t_t** %tmp2, align 4
  %14 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp2, align 4
  ret %Tstruct.Spl_json_object_t_t* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_array_t_t* @json_array_get_array(%Tstruct.json_array_t_t* %array, i64 %index) #0 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp2 = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = load i64, i64* %index.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %3, i64 %4)
  %5 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to i8*
  %7 = ptrtoint i8* %6 to i32
  %8 = inttoptr i32 %7 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %8, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %9 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %9)
  %10 = bitcast %Tstruct.Spl_json_array_t_t* %call1 to %Tstruct.json_array_t_t*
  %11 = bitcast %Tstruct.json_array_t_t* %10 to i8*
  %12 = ptrtoint i8* %11 to i32
  %13 = inttoptr i32 %12 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %13, %Tstruct.Spl_json_array_t_t** %tmp2, align 4
  %14 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp2, align 4
  ret %Tstruct.Spl_json_array_t_t* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_get_boolean(%Tstruct.json_array_t_t* %array, i64 %index) #0 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = load i64, i64* %index.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %3, i64 %4)
  %5 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to i8*
  %7 = ptrtoint i8* %6 to i32
  %8 = inttoptr i32 %7 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %8, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %9 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %9)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_array_get_count(%Tstruct.json_array_t_t* %array) #0 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %6 = load i32, i32* @sbxHeapRange, align 8
  %7 = load i64, i64* @sbxHeap, align 8
  %8 = ptrtoint %Tstruct.Spl_json_array_t_t* %5 to i32
  %9 = zext i32 %8 to i64
  %10 = add i64 %7, %9
  %11 = icmp ult i32 %8, %6
  br i1 %11, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %12 = inttoptr i64 %10 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %12, i32 0, i32 2
  %13 = load i32, i32* %count, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi i32 [ %13, %_Dynamic_check.succeeded ], [ 0, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_array_get_wrapping_value(%Tstruct.json_array_t_t* %array) #0 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = load i32, i32* @sbxHeapRange, align 8
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %7 = zext i32 %6 to i64
  %8 = add i64 %5, %7
  %9 = icmp ult i32 %6, %4
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = inttoptr i64 %8 to %Tstruct.Spl_json_array_t_t*
  %wrapping_value = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %10, i32 0, i32 0
  %wrapping_value1 = bitcast i32* %wrapping_value to %Tstruct.Spl_json_value_t_t**
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value1, align 4
  ret %Tstruct.Spl_json_value_t_t* %11

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_get_type(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %6 = load i32, i32* @sbxHeapRange, align 8
  %7 = load i64, i64* @sbxHeap, align 8
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i32
  %9 = zext i32 %8 to i64
  %10 = add i64 %7, %9
  %11 = icmp ult i32 %8, %6
  br i1 %11, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %12 = inttoptr i64 %10 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 1
  %13 = load i32, i32* %type, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi i32 [ %13, %_Dynamic_check.succeeded ], [ -1, %cond.false ]
  ret i32 %cond

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %5 = load i32, i32* @sbxHeapRange, align 8
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %8 = zext i32 %7 to i64
  %9 = add i64 %6, %8
  %10 = icmp ult i32 %7, %5
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %11 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %value1 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %11, i32 0, i32 2
  %value2 = bitcast %Tstruct.Spl_json_value_value_t_t* %value1 to %Tstruct.Spl_json_value_value_t_t*
  %12 = load i32, i32* @sbxHeapRange, align 8
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value2 to i32
  %15 = zext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = icmp ult i32 %14, %12
  br i1 %17, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %18 = inttoptr i64 %16 to %Tstruct.Spl_json_value_value_t_t*
  %object = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %18, i32 0, i32 2
  %object5 = bitcast i32* %object to %Tstruct.Spl_json_object_t_t**
  %19 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object5, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded4
  %cond = phi %Tstruct.Spl_json_object_t_t* [ %19, %_Dynamic_check.succeeded4 ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_object_t_t* %cond

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_array_t_t* @json_value_get_array(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %5 = load i32, i32* @sbxHeapRange, align 8
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %8 = zext i32 %7 to i64
  %9 = add i64 %6, %8
  %10 = icmp ult i32 %7, %5
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %11 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %value1 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %11, i32 0, i32 2
  %value2 = bitcast %Tstruct.Spl_json_value_value_t_t* %value1 to %Tstruct.Spl_json_value_value_t_t*
  %12 = load i32, i32* @sbxHeapRange, align 8
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value2 to i32
  %15 = zext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = icmp ult i32 %14, %12
  br i1 %17, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %18 = inttoptr i64 %16 to %Tstruct.Spl_json_value_value_t_t*
  %array = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %18, i32 0, i32 3
  %array5 = bitcast i32* %array to %Tstruct.Spl_json_array_t_t**
  %19 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array5, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded4
  %cond = phi %Tstruct.Spl_json_array_t_t* [ %19, %_Dynamic_check.succeeded4 ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_array_t_t* %cond

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_value_get_string(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %5 = load i32, i32* @sbxHeapRange, align 8
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %8 = zext i32 %7 to i64
  %9 = add i64 %6, %8
  %10 = icmp ult i32 %7, %5
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %11 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %value1 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %11, i32 0, i32 2
  %value2 = bitcast %Tstruct.Spl_json_value_value_t_t* %value1 to %Tstruct.Spl_json_value_value_t_t*
  %12 = load i32, i32* @sbxHeapRange, align 8
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value2 to i32
  %15 = zext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = icmp ult i32 %14, %12
  br i1 %17, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %18 = inttoptr i64 %16 to %Tstruct.Spl_json_value_value_t_t*
  %string = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %18, i32 0, i32 0
  %string5 = bitcast i32* %string to i8**
  %19 = load i8*, i8** %string5, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded4
  %cond = phi i8* [ %19, %_Dynamic_check.succeeded4 ], [ null, %cond.false ]
  ret i8* %cond

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_value_get_number(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %5 = load i32, i32* @sbxHeapRange, align 8
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %8 = zext i32 %7 to i64
  %9 = add i64 %6, %8
  %10 = icmp ult i32 %7, %5
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %11 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %value1 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %11, i32 0, i32 2
  %value2 = bitcast %Tstruct.Spl_json_value_value_t_t* %value1 to %Tstruct.Spl_json_value_value_t_t*
  %12 = load i32, i32* @sbxHeapRange, align 8
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value2 to i32
  %15 = zext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = icmp ult i32 %14, %12
  br i1 %17, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %18 = inttoptr i64 %16 to %Tstruct.Spl_json_value_value_t_t*
  %number = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %18, i32 0, i32 1
  %19 = load double, double* %number, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded4
  %cond = phi double [ %19, %_Dynamic_check.succeeded4 ], [ 0.000000e+00, %cond.false ]
  ret double %cond

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_get_boolean(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  %cmp = icmp eq i32 %call, 6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %5 = load i32, i32* @sbxHeapRange, align 8
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %8 = zext i32 %7 to i64
  %9 = add i64 %6, %8
  %10 = icmp ult i32 %7, %5
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %11 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %value1 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %11, i32 0, i32 2
  %value2 = bitcast %Tstruct.Spl_json_value_value_t_t* %value1 to %Tstruct.Spl_json_value_value_t_t*
  %12 = load i32, i32* @sbxHeapRange, align 8
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value2 to i32
  %15 = zext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = icmp ult i32 %14, %12
  br i1 %17, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %18 = inttoptr i64 %16 to %Tstruct.Spl_json_value_value_t_t*
  %boolean = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %18, i32 0, i32 4
  %19 = load i32, i32* %boolean, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded4
  %cond = phi i32 [ %19, %_Dynamic_check.succeeded4 ], [ -1, %cond.false ]
  ret i32 %cond

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %6 = load i32, i32* @sbxHeapRange, align 8
  %7 = load i64, i64* @sbxHeap, align 8
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i32
  %9 = zext i32 %8 to i64
  %10 = add i64 %7, %9
  %11 = icmp ult i32 %8, %6
  br i1 %11, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %12 = inttoptr i64 %10 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 0
  %parent1 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi %Tstruct.Spl_json_value_t_t* [ %13, %_Dynamic_check.succeeded ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_value_t_t* %cond

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local void @json_value_free(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  call void @w2c_json_value_free(i8* %call, i32 %4)
  ret void
}

declare dso_local void @w2c_json_value_free(i8*, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_object_t_t* @json_object_init(%Tstruct.json_value_t_t* %wrapping_value_ip) #2 {
entry:
  %wrapping_value_ip.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %wrapping_value_ip to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %wrapping_value_ip.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value_ip.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %call1 = call i32 @w2c_json_object_init(i8* %call, i32 %4)
  %conv = zext i32 %call1 to i64
  %5 = inttoptr i64 %conv to %Tstruct.Spl_json_object_t_t*
  ret %Tstruct.Spl_json_object_t_t* %5
}

declare dso_local i32 @w2c_json_object_init(i8*, i32) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_object() #2 {
entry:
  %call = call i8* (...) @c_fetch_sandbox_address()
  %call1 = call i32 @w2c_json_value_init_object(i8* %call)
  %conv = zext i32 %call1 to i64
  %0 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %0
}

declare dso_local i32 @w2c_json_value_init_object(i8*) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_array() #2 {
entry:
  %call = call i8* (...) @c_fetch_sandbox_address()
  %call1 = call i32 @w2c_json_value_init_array(i8* %call)
  %conv = zext i32 %call1 to i64
  %0 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %0
}

declare dso_local i32 @w2c_json_value_init_array(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_string(i8* %string) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %copy = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %string_len = alloca i64, align 8
  %str_with_len = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %tmp9 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp12 = alloca i8*, align 4
  %tmp16 = alloca i8*, align 4
  %tmp17 = alloca i8*, align 4
  %tmp18 = alloca i8*, align 4
  %tmp19 = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  %3 = bitcast i8** %copy to i64*
  store i64 0, i64* %3, align 4
  %4 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 0, i32* %4, align 4
  store i64 0, i64* %string_len, align 8
  %5 = load i8*, i8** %string.addr, align 4
  %6 = ptrtoint i8* %5 to i32
  %7 = zext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %string.addr, align 4
  %11 = load i32, i32* @sbxHeapRange, align 8
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = ptrtoint i8* %10 to i32
  %14 = zext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = icmp ult i32 %13, %11
  br i1 %16, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %17 = inttoptr i64 %15 to i8*
  %call = call i64 @t_strlen(i8* %17)
  store i64 %call, i64* %string_len, align 8
  %18 = bitcast i8** %str_with_len to i64*
  store i64 0, i64* %18, align 4
  %19 = load i8*, i8** %string.addr, align 4
  %20 = ptrtoint i8* %19 to i32
  %21 = zext i32 %20 to i64
  %22 = bitcast i8** %str_with_len to i64*
  store i64 %21, i64* %22, align 4
  %23 = load i8*, i8** %str_with_len, align 4
  %24 = load i64, i64* %string_len, align 8
  %call1 = call i32 @is_valid_utf8(i8* %23, i64 %24)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %_Dynamic_check.succeeded
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

if.end3:                                          ; preds = %_Dynamic_check.succeeded
  %25 = load i8*, i8** %str_with_len, align 4
  %26 = load i64, i64* %string_len, align 8
  %call4 = call i8* @tainted_parson_strndup(i8* %25, i64 %26)
  %27 = ptrtoint i8* %call4 to i32
  %28 = inttoptr i32 %27 to i8*
  store i8* %28, i8** %tmp, align 4
  %29 = load i8*, i8** %tmp, align 4
  %30 = call i64 @c_fetch_sandbox_heap_bound()
  %31 = call i64 @c_fetch_sandbox_heap_address()
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* @sbxHeapRange, align 8
  %34 = ptrtoint i8* %29 to i32
  %35 = zext i32 %34 to i64
  %36 = bitcast i8** %copy to i64*
  store i64 %35, i64* %36, align 4
  %37 = load i8*, i8** %copy, align 4
  %38 = ptrtoint i8* %37 to i32
  %39 = zext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = ptrtoint i8* %40 to i32
  %cmp5 = icmp eq i32 %41, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end3
  %42 = load i8*, i8** %copy, align 4
  %call8 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string_no_copy to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %42)
  %43 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %44 = bitcast %Tstruct.json_value_t_t* %43 to i8*
  %45 = ptrtoint i8* %44 to i32
  %46 = inttoptr i32 %45 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %46, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %47 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %48 = call i64 @c_fetch_sandbox_heap_bound()
  %49 = call i64 @c_fetch_sandbox_heap_address()
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* @sbxHeapRange, align 8
  %52 = ptrtoint %Tstruct.Spl_json_value_t_t* %47 to i32
  %53 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %52, i32* %53, align 4
  %54 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %55 = ptrtoint %Tstruct.Spl_json_value_t_t* %54 to i32
  %56 = zext i32 %55 to i64
  %57 = inttoptr i64 %56 to %Tstruct.Spl_json_value_t_t*
  %58 = ptrtoint %Tstruct.Spl_json_value_t_t* %57 to i32
  %cmp10 = icmp eq i32 %58, 0
  br i1 %cmp10, label %if.then11, label %if.end23

if.then11:                                        ; preds = %if.end7
  %59 = load i8*, i8** %copy, align 4
  %60 = ptrtoint i8* %59 to i32
  %_Dynamic_check.is_null = icmp eq i32 %60, 0
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then11
  %61 = load i8*, i8** %copy, align 4
  %62 = load i8*, i8** %copy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %add.ptr, i8** %tmp12, align 4
  %63 = load i8*, i8** %tmp12, align 4
  %64 = ptrtoint i8* %59 to i32
  %_Dynamic_check.non_null = icmp ne i32 %64, 0
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr15 = getelementptr inbounds i8, i8* %59, i64 0
  %65 = ptrtoint i8* %61 to i32
  %66 = inttoptr i32 %65 to i8*
  store i8* %66, i8** %tmp16, align 4
  %67 = load i8*, i8** %tmp16, align 4
  %68 = ptrtoint i8* %59 to i32
  %69 = inttoptr i32 %68 to i8*
  store i8* %69, i8** %tmp17, align 4
  %70 = load i8*, i8** %tmp17, align 4
  %71 = ptrtoint i8* %67 to i32
  %72 = ptrtoint i8* %70 to i32
  %_Dynamic_check.lower = icmp ule i32 %71, %72
  %73 = ptrtoint i8* %add.ptr15 to i32
  %74 = inttoptr i32 %73 to i8*
  store i8* %74, i8** %tmp18, align 4
  %75 = load i8*, i8** %tmp18, align 4
  %76 = ptrtoint i8* %63 to i32
  %77 = inttoptr i32 %76 to i8*
  store i8* %77, i8** %tmp19, align 4
  %78 = load i8*, i8** %tmp19, align 4
  %79 = ptrtoint i8* %75 to i32
  %80 = ptrtoint i8* %78 to i32
  %_Dynamic_check.upper = icmp ule i32 %79, %80
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed20

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded14, %if.then11
  %81 = load i32, i32* @sbxHeapRange, align 8
  %82 = load i64, i64* @sbxHeap, align 8
  %83 = ptrtoint i8* %59 to i32
  %84 = zext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = icmp ult i32 %83, %81
  br i1 %86, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.success
  %87 = inttoptr i64 %85 to i8*
  call void @t_free(i8* %87)
  %88 = call i64 @c_fetch_sandbox_heap_bound()
  %89 = call i64 @c_fetch_sandbox_heap_address()
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* @sbxHeapRange, align 8
  br label %if.end23

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

if.end23:                                         ; preds = %_Dynamic_check.succeeded22, %if.end7
  %92 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  store %Tstruct.Spl_json_value_t_t* %92, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.then6, %if.then2, %if.then
  %93 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %93
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_utf8(i8* %string, i64 %string_len) #0 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i8*, align 4
  %string_len.addr = alloca i64, align 8
  %len = alloca i32*, align 4
  %tmp = alloca i32*, align 4
  %temp = alloca i32*, align 4
  %tmp2 = alloca i32*, align 4
  %string_end = alloca i8*, align 4
  %tmp3 = alloca i8*, align 4
  %tmp8 = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  store i64 %string_len, i64* %string_len.addr, align 8
  %call = call i8* @t_malloc(i64 4)
  %3 = bitcast i8* %call to i32*
  %4 = bitcast i32* %3 to i8*
  %5 = ptrtoint i8* %4 to i32
  %6 = inttoptr i32 %5 to i32*
  store i32* %6, i32** %tmp, align 4
  %7 = load i32*, i32** %tmp, align 4
  %8 = call i64 @c_fetch_sandbox_heap_bound()
  %9 = call i64 @c_fetch_sandbox_heap_address()
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* @sbxHeapRange, align 8
  %12 = ptrtoint i32* %7 to i32
  %13 = zext i32 %12 to i64
  %14 = bitcast i32** %len to i64*
  store i64 %13, i64* %14, align 4
  %15 = load i32*, i32** %len, align 4
  %16 = load i32, i32* @sbxHeapRange, align 8
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = ptrtoint i32* %15 to i32
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = icmp ult i32 %18, %16
  br i1 %21, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %22 = inttoptr i64 %20 to i32*
  store i32 0, i32* %22, align 4
  %call1 = call i8* @t_malloc(i64 4)
  %23 = bitcast i8* %call1 to i32*
  %24 = bitcast i32* %23 to i8*
  %25 = ptrtoint i8* %24 to i32
  %26 = inttoptr i32 %25 to i32*
  store i32* %26, i32** %tmp2, align 4
  %27 = load i32*, i32** %tmp2, align 4
  %28 = call i64 @c_fetch_sandbox_heap_bound()
  %29 = call i64 @c_fetch_sandbox_heap_address()
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @sbxHeapRange, align 8
  %32 = ptrtoint i32* %27 to i32
  %33 = zext i32 %32 to i64
  %34 = bitcast i32** %temp to i64*
  store i64 %33, i64* %34, align 4
  %35 = load i8*, i8** %string.addr, align 4
  %36 = load i64, i64* %string_len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %add.ptr, i8** %tmp3, align 4
  %37 = load i8*, i8** %tmp3, align 4
  %38 = ptrtoint i8* %37 to i32
  %39 = zext i32 %38 to i64
  %40 = bitcast i8** %string_end to i64*
  store i64 %39, i64* %40, align 4
  br label %while.cond

while.cond:                                       ; preds = %_Dynamic_check.succeeded6, %_Dynamic_check.succeeded
  %41 = load i8*, i8** %string.addr, align 4
  %42 = load i8*, i8** %string_end, align 4
  %43 = ptrtoint i8* %41 to i32
  %44 = zext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = ptrtoint i8* %42 to i32
  %47 = zext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = ptrtoint i8* %45 to i32
  %50 = ptrtoint i8* %48 to i32
  %cmp = icmp ult i32 %49, %50
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load i8*, i8** %string.addr, align 4
  %52 = load i32*, i32** %len, align 4
  %call4 = call i32 @verify_utf8_sequence(i8* %51, i32* %52)
  %53 = call i64 @c_fetch_sandbox_heap_bound()
  %54 = call i64 @c_fetch_sandbox_heap_address()
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* @sbxHeapRange, align 8
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %while.body
  %57 = load i32*, i32** %len, align 4
  %58 = load i32, i32* @sbxHeapRange, align 8
  %59 = load i64, i64* @sbxHeap, align 8
  %60 = ptrtoint i32* %57 to i32
  %61 = zext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = icmp ult i32 %60, %58
  br i1 %63, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %if.end
  %64 = inttoptr i64 %62 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %string.addr, align 4
  %idx.ext = sext i32 %65 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %66, i64 %idx.ext
  store i8* %add.ptr7, i8** %tmp8, align 4
  %67 = load i8*, i8** %tmp8, align 4
  %68 = ptrtoint i8* %67 to i32
  %69 = zext i32 %68 to i64
  %70 = bitcast i8** %string.addr to i64*
  store i64 %69, i64* %70, align 4
  br label %while.cond, !llvm.loop !12

_Dynamic_check.failed5:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %71 = load i32, i32* %retval, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %number) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %number.addr = alloca double, align 8
  %new_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  store double %number, double* %number.addr, align 8
  %call = call i8* @t_malloc(i64 56)
  %0 = bitcast i8* %call to %Tstruct.json_value_t_t*
  %1 = bitcast %Tstruct.json_value_t_t* %0 to i8*
  %2 = ptrtoint i8* %1 to i32
  %3 = inttoptr i32 %2 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %3, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %4 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %5 = call i64 @c_fetch_sandbox_heap_bound()
  %6 = call i64 @c_fetch_sandbox_heap_address()
  %7 = sub i64 %5, %6
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @sbxHeapRange, align 8
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %4 to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %11, i32* %12, align 4
  %13 = load double, double* %number.addr, align 8
  %mul = fmul double %13, 0.000000e+00
  %cmp = fcmp une double %mul, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %16 = zext i32 %15 to i64
  %17 = inttoptr i64 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %cmp1 = icmp eq i32 %18, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %19 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %20 = load i32, i32* @sbxHeapRange, align 8
  %21 = load i64, i64* @sbxHeap, align 8
  %22 = ptrtoint %Tstruct.Spl_json_value_t_t* %19 to i32
  %23 = zext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = icmp ult i32 %22, %20
  br i1 %25, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end3
  %26 = inttoptr i64 %24 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %26, i32 0, i32 0
  %parent4 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %27 = bitcast %Tstruct.Spl_json_value_t_t** %parent4 to i32*
  store i32 0, i32* %27, align 4
  %28 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %29 = load i32, i32* @sbxHeapRange, align 8
  %30 = load i64, i64* @sbxHeap, align 8
  %31 = ptrtoint %Tstruct.Spl_json_value_t_t* %28 to i32
  %32 = zext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = icmp ult i32 %31, %29
  br i1 %34, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded
  %35 = inttoptr i64 %33 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %35, i32 0, i32 1
  store i32 3, i32* %type, align 4
  %36 = load double, double* %number.addr, align 8
  %37 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %38 = load i32, i32* @sbxHeapRange, align 8
  %39 = load i64, i64* @sbxHeap, align 8
  %40 = ptrtoint %Tstruct.Spl_json_value_t_t* %37 to i32
  %41 = zext i32 %40 to i64
  %42 = add i64 %39, %41
  %43 = icmp ult i32 %40, %38
  br i1 %43, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %44 = inttoptr i64 %42 to %Tstruct.Spl_json_value_t_t*
  %value = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %44, i32 0, i32 2
  %value9 = bitcast %Tstruct.Spl_json_value_value_t_t* %value to %Tstruct.Spl_json_value_value_t_t*
  %45 = load i32, i32* @sbxHeapRange, align 8
  %46 = load i64, i64* @sbxHeap, align 8
  %47 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value9 to i32
  %48 = zext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = icmp ult i32 %47, %45
  br i1 %50, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %51 = inttoptr i64 %49 to %Tstruct.Spl_json_value_value_t_t*
  %number12 = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %51, i32 0, i32 1
  store double %36, double* %number12, align 8
  %52 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  store %Tstruct.Spl_json_value_t_t* %52, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end3
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded11, %if.then2, %if.then
  %53 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %boolean) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %boolean.addr = alloca i32, align 4
  %new_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  store i32 %boolean, i32* %boolean.addr, align 4
  %call = call i8* @t_malloc(i64 56)
  %0 = bitcast i8* %call to %Tstruct.json_value_t_t*
  %1 = bitcast %Tstruct.json_value_t_t* %0 to i8*
  %2 = ptrtoint i8* %1 to i32
  %3 = inttoptr i32 %2 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %3, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %4 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %5 = call i64 @c_fetch_sandbox_heap_bound()
  %6 = call i64 @c_fetch_sandbox_heap_address()
  %7 = sub i64 %5, %6
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @sbxHeapRange, align 8
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %4 to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %11, i32* %12, align 4
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %16 = load i32, i32* @sbxHeapRange, align 8
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = icmp ult i32 %18, %16
  br i1 %21, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %22 = inttoptr i64 %20 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %22, i32 0, i32 0
  %parent1 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %23 = bitcast %Tstruct.Spl_json_value_t_t** %parent1 to i32*
  store i32 0, i32* %23, align 4
  %24 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %25 = load i32, i32* @sbxHeapRange, align 8
  %26 = load i64, i64* @sbxHeap, align 8
  %27 = ptrtoint %Tstruct.Spl_json_value_t_t* %24 to i32
  %28 = zext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = icmp ult i32 %27, %25
  br i1 %30, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %_Dynamic_check.succeeded
  %31 = inttoptr i64 %29 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %31, i32 0, i32 1
  store i32 6, i32* %type, align 4
  %32 = load i32, i32* %boolean.addr, align 4
  %tobool4 = icmp ne i32 %32, 0
  %33 = zext i1 %tobool4 to i64
  %cond = select i1 %tobool4, i32 1, i32 0
  %34 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %35 = load i32, i32* @sbxHeapRange, align 8
  %36 = load i64, i64* @sbxHeap, align 8
  %37 = ptrtoint %Tstruct.Spl_json_value_t_t* %34 to i32
  %38 = zext i32 %37 to i64
  %39 = add i64 %36, %38
  %40 = icmp ult i32 %37, %35
  br i1 %40, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %41 = inttoptr i64 %39 to %Tstruct.Spl_json_value_t_t*
  %value = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %41, i32 0, i32 2
  %value7 = bitcast %Tstruct.Spl_json_value_value_t_t* %value to %Tstruct.Spl_json_value_value_t_t*
  %42 = load i32, i32* @sbxHeapRange, align 8
  %43 = load i64, i64* @sbxHeap, align 8
  %44 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value7 to i32
  %45 = zext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = icmp ult i32 %44, %42
  br i1 %47, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded6
  %48 = inttoptr i64 %46 to %Tstruct.Spl_json_value_value_t_t*
  %boolean10 = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %48, i32 0, i32 4
  store i32 %cond, i32* %boolean10, align 8
  %49 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  store %Tstruct.Spl_json_value_t_t* %49, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded9, %if.then
  %50 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_null() #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %new_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %call = call i8* @t_malloc(i64 56)
  %0 = bitcast i8* %call to %Tstruct.json_value_t_t*
  %1 = bitcast %Tstruct.json_value_t_t* %0 to i8*
  %2 = ptrtoint i8* %1 to i32
  %3 = inttoptr i32 %2 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %3, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %4 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %5 = call i64 @c_fetch_sandbox_heap_bound()
  %6 = call i64 @c_fetch_sandbox_heap_address()
  %7 = sub i64 %5, %6
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @sbxHeapRange, align 8
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %4 to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %11, i32* %12, align 4
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %16 = load i32, i32* @sbxHeapRange, align 8
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = icmp ult i32 %18, %16
  br i1 %21, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %22 = inttoptr i64 %20 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %22, i32 0, i32 0
  %parent1 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %23 = bitcast %Tstruct.Spl_json_value_t_t** %parent1 to i32*
  store i32 0, i32* %23, align 4
  %24 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %25 = load i32, i32* @sbxHeapRange, align 8
  %26 = load i64, i64* @sbxHeap, align 8
  %27 = ptrtoint %Tstruct.Spl_json_value_t_t* %24 to i32
  %28 = zext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = icmp ult i32 %27, %25
  br i1 %30, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %_Dynamic_check.succeeded
  %31 = inttoptr i64 %29 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %31, i32 0, i32 1
  store i32 1, i32* %type, align 4
  %32 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  store %Tstruct.Spl_json_value_t_t* %32, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded3, %if.then
  %33 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_deep_copy(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %i = alloca i64, align 8
  %return_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_value_copy = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_string = alloca i8*, align 4
  %temp_key = alloca i8*, align 4
  %temp_string_copy = alloca i8*, align 4
  %temp_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %temp_array_copy = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %temp_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %temp_object_copy = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %tmp3 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp5 = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %tmp9 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp11 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp21 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %tmp23 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp28 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %tmp34 = alloca i8*, align 4
  %tmp36 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp38 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp52 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp56 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp59 = alloca i8*, align 4
  %tmp64 = alloca i8*, align 4
  %tmp69 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp72 = alloca i8*, align 4
  %tmp74 = alloca i8*, align 4
  %tmp75 = alloca i8*, align 4
  %tmp76 = alloca i8*, align 4
  %tmp77 = alloca i8*, align 4
  %tmp84 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 0, i64* %i, align 8
  %3 = bitcast %Tstruct.Spl_json_value_t_t** %return_value to i32*
  store i32 0, i32* %3, align 4
  %4 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value_copy to i32*
  store i32 0, i32* %4, align 4
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 0, i32* %5, align 4
  %6 = bitcast i8** %temp_string to i64*
  store i64 0, i64* %6, align 4
  %7 = bitcast i8** %temp_key to i64*
  store i64 0, i64* %7, align 4
  %8 = bitcast i8** %temp_string_copy to i64*
  store i64 0, i64* %8, align 4
  %9 = bitcast %Tstruct.Spl_json_array_t_t** %temp_array to i32*
  store i32 0, i32* %9, align 4
  %10 = bitcast %Tstruct.Spl_json_array_t_t** %temp_array_copy to i32*
  store i32 0, i32* %10, align 4
  %11 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object to i32*
  store i32 0, i32* %11, align 4
  %12 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object_copy to i32*
  store i32 0, i32* %12, align 4
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %13)
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb19
    i32 6, label %sw.bb49
    i32 3, label %sw.bb53
    i32 2, label %sw.bb57
    i32 1, label %sw.bb82
    i32 -1, label %sw.bb85
  ]

sw.bb:                                            ; preds = %entry
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call1 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %14)
  %15 = bitcast %Tstruct.Spl_json_array_t_t* %call1 to %Tstruct.json_array_t_t*
  %16 = bitcast %Tstruct.json_array_t_t* %15 to i8*
  %17 = ptrtoint i8* %16 to i32
  %18 = inttoptr i32 %17 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %18, %Tstruct.Spl_json_array_t_t** %tmp, align 4
  %19 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp, align 4
  %20 = ptrtoint %Tstruct.Spl_json_array_t_t* %19 to i32
  %21 = bitcast %Tstruct.Spl_json_array_t_t** %temp_array to i32*
  store i32 %20, i32* %21, align 4
  %call2 = call %Tstruct.Spl_json_value_t_t* @json_value_init_array()
  %22 = bitcast %Tstruct.Spl_json_value_t_t* %call2 to %Tstruct.json_value_t_t*
  %23 = bitcast %Tstruct.json_value_t_t* %22 to i8*
  %24 = ptrtoint i8* %23 to i32
  %25 = inttoptr i32 %24 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %25, %Tstruct.Spl_json_value_t_t** %tmp3, align 4
  %26 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp3, align 4
  %27 = call i64 @c_fetch_sandbox_heap_bound()
  %28 = call i64 @c_fetch_sandbox_heap_address()
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* @sbxHeapRange, align 8
  %31 = ptrtoint %Tstruct.Spl_json_value_t_t* %26 to i32
  %32 = bitcast %Tstruct.Spl_json_value_t_t** %return_value to i32*
  store i32 %31, i32* %32, align 4
  %33 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %34 = ptrtoint %Tstruct.Spl_json_value_t_t* %33 to i32
  %35 = zext i32 %34 to i64
  %36 = inttoptr i64 %35 to %Tstruct.Spl_json_value_t_t*
  %37 = ptrtoint %Tstruct.Spl_json_value_t_t* %36 to i32
  %cmp = icmp eq i32 %37, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %sw.bb
  %38 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %call4 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %38)
  %39 = bitcast %Tstruct.Spl_json_array_t_t* %call4 to %Tstruct.json_array_t_t*
  %40 = bitcast %Tstruct.json_array_t_t* %39 to i8*
  %41 = ptrtoint i8* %40 to i32
  %42 = inttoptr i32 %41 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %42, %Tstruct.Spl_json_array_t_t** %tmp5, align 4
  %43 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp5, align 4
  %44 = ptrtoint %Tstruct.Spl_json_array_t_t* %43 to i32
  %45 = bitcast %Tstruct.Spl_json_array_t_t** %temp_array_copy to i32*
  store i32 %44, i32* %45, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %46 = load i64, i64* %i, align 8
  %47 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array, align 4
  %call6 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %47)
  %cmp7 = icmp ult i64 %46, %call6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array, align 4
  %49 = load i64, i64* %i, align 8
  %call8 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %48, i64 %49)
  %50 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %51 = bitcast %Tstruct.json_value_t_t* %50 to i8*
  %52 = ptrtoint i8* %51 to i32
  %53 = inttoptr i32 %52 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %53, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %54 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %55 = ptrtoint %Tstruct.Spl_json_value_t_t* %54 to i32
  %56 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %55, i32* %56, align 4
  %57 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %call10 = call %Tstruct.Spl_json_value_t_t* @json_value_deep_copy(%Tstruct.Spl_json_value_t_t* %57)
  %58 = bitcast %Tstruct.Spl_json_value_t_t* %call10 to %Tstruct.json_value_t_t*
  %59 = bitcast %Tstruct.json_value_t_t* %58 to i8*
  %60 = ptrtoint i8* %59 to i32
  %61 = inttoptr i32 %60 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %61, %Tstruct.Spl_json_value_t_t** %tmp11, align 4
  %62 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp11, align 4
  %63 = ptrtoint %Tstruct.Spl_json_value_t_t* %62 to i32
  %64 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value_copy to i32*
  store i32 %63, i32* %64, align 4
  %65 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %66 = ptrtoint %Tstruct.Spl_json_value_t_t* %65 to i32
  %67 = zext i32 %66 to i64
  %68 = inttoptr i64 %67 to %Tstruct.Spl_json_value_t_t*
  %69 = ptrtoint %Tstruct.Spl_json_value_t_t* %68 to i32
  %cmp12 = icmp eq i32 %69, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  %70 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %70)
  %71 = call i64 @c_fetch_sandbox_heap_bound()
  %72 = call i64 @c_fetch_sandbox_heap_address()
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* @sbxHeapRange, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end14:                                         ; preds = %for.body
  %75 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array_copy, align 4
  %76 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %call15 = call i32 @json_array_add(%Tstruct.Spl_json_array_t_t* %75, %Tstruct.Spl_json_value_t_t* %76)
  %77 = call i64 @c_fetch_sandbox_heap_bound()
  %78 = call i64 @c_fetch_sandbox_heap_address()
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* @sbxHeapRange, align 8
  %cmp16 = icmp eq i32 %call15, -1
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %81 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %81)
  %82 = call i64 @c_fetch_sandbox_heap_bound()
  %83 = call i64 @c_fetch_sandbox_heap_address()
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* @sbxHeapRange, align 8
  %86 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %86)
  %87 = call i64 @c_fetch_sandbox_heap_bound()
  %88 = call i64 @c_fetch_sandbox_heap_address()
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* @sbxHeapRange, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end14
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %91 = load i64, i64* %i, align 8
  %inc = add i64 %91, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %92 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %92, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb19:                                          ; preds = %entry
  %93 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call20 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %93)
  %94 = bitcast %Tstruct.Spl_json_object_t_t* %call20 to %Tstruct.json_object_t_t*
  %95 = bitcast %Tstruct.json_object_t_t* %94 to i8*
  %96 = ptrtoint i8* %95 to i32
  %97 = inttoptr i32 %96 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %97, %Tstruct.Spl_json_object_t_t** %tmp21, align 4
  %98 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp21, align 4
  %99 = ptrtoint %Tstruct.Spl_json_object_t_t* %98 to i32
  %100 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object to i32*
  store i32 %99, i32* %100, align 4
  %call22 = call %Tstruct.Spl_json_value_t_t* @json_value_init_object()
  %101 = bitcast %Tstruct.Spl_json_value_t_t* %call22 to %Tstruct.json_value_t_t*
  %102 = bitcast %Tstruct.json_value_t_t* %101 to i8*
  %103 = ptrtoint i8* %102 to i32
  %104 = inttoptr i32 %103 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %104, %Tstruct.Spl_json_value_t_t** %tmp23, align 4
  %105 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp23, align 4
  %106 = call i64 @c_fetch_sandbox_heap_bound()
  %107 = call i64 @c_fetch_sandbox_heap_address()
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* @sbxHeapRange, align 8
  %110 = ptrtoint %Tstruct.Spl_json_value_t_t* %105 to i32
  %111 = bitcast %Tstruct.Spl_json_value_t_t** %return_value to i32*
  store i32 %110, i32* %111, align 4
  %112 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %113 = ptrtoint %Tstruct.Spl_json_value_t_t* %112 to i32
  %114 = zext i32 %113 to i64
  %115 = inttoptr i64 %114 to %Tstruct.Spl_json_value_t_t*
  %116 = ptrtoint %Tstruct.Spl_json_value_t_t* %115 to i32
  %cmp24 = icmp eq i32 %116, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.bb19
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end26:                                         ; preds = %sw.bb19
  %117 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %call27 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %117)
  %118 = bitcast %Tstruct.Spl_json_object_t_t* %call27 to %Tstruct.json_object_t_t*
  %119 = bitcast %Tstruct.json_object_t_t* %118 to i8*
  %120 = ptrtoint i8* %119 to i32
  %121 = inttoptr i32 %120 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %121, %Tstruct.Spl_json_object_t_t** %tmp28, align 4
  %122 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp28, align 4
  %123 = ptrtoint %Tstruct.Spl_json_object_t_t* %122 to i32
  %124 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object_copy to i32*
  store i32 %123, i32* %124, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc46, %if.end26
  %125 = load i64, i64* %i, align 8
  %126 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %call30 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %126)
  %cmp31 = icmp ult i64 %125, %call30
  br i1 %cmp31, label %for.body32, label %for.end48

for.body32:                                       ; preds = %for.cond29
  %127 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %128 = load i64, i64* %i, align 8
  %call33 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %127, i64 %128)
  %129 = ptrtoint i8* %call33 to i32
  %130 = inttoptr i32 %129 to i8*
  store i8* %130, i8** %tmp34, align 4
  %131 = load i8*, i8** %tmp34, align 4
  %132 = ptrtoint i8* %131 to i32
  %133 = zext i32 %132 to i64
  %134 = bitcast i8** %temp_key to i64*
  store i64 %133, i64* %134, align 4
  %135 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %136 = load i8*, i8** %temp_key, align 4
  %call35 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %135, i8* %136)
  %137 = bitcast %Tstruct.Spl_json_value_t_t* %call35 to %Tstruct.json_value_t_t*
  %138 = bitcast %Tstruct.json_value_t_t* %137 to i8*
  %139 = ptrtoint i8* %138 to i32
  %140 = inttoptr i32 %139 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %140, %Tstruct.Spl_json_value_t_t** %tmp36, align 4
  %141 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp36, align 4
  %142 = ptrtoint %Tstruct.Spl_json_value_t_t* %141 to i32
  %143 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %142, i32* %143, align 4
  %144 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %call37 = call %Tstruct.Spl_json_value_t_t* @json_value_deep_copy(%Tstruct.Spl_json_value_t_t* %144)
  %145 = bitcast %Tstruct.Spl_json_value_t_t* %call37 to %Tstruct.json_value_t_t*
  %146 = bitcast %Tstruct.json_value_t_t* %145 to i8*
  %147 = ptrtoint i8* %146 to i32
  %148 = inttoptr i32 %147 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %148, %Tstruct.Spl_json_value_t_t** %tmp38, align 4
  %149 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp38, align 4
  %150 = ptrtoint %Tstruct.Spl_json_value_t_t* %149 to i32
  %151 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value_copy to i32*
  store i32 %150, i32* %151, align 4
  %152 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %153 = ptrtoint %Tstruct.Spl_json_value_t_t* %152 to i32
  %154 = zext i32 %153 to i64
  %155 = inttoptr i64 %154 to %Tstruct.Spl_json_value_t_t*
  %156 = ptrtoint %Tstruct.Spl_json_value_t_t* %155 to i32
  %cmp39 = icmp eq i32 %156, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.body32
  %157 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %157)
  %158 = call i64 @c_fetch_sandbox_heap_bound()
  %159 = call i64 @c_fetch_sandbox_heap_address()
  %160 = sub i64 %158, %159
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* @sbxHeapRange, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end41:                                         ; preds = %for.body32
  %162 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object_copy, align 4
  %163 = load i8*, i8** %temp_key, align 4
  %164 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %call42 = call i32 bitcast (i32 (%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*)* @json_object_add to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %162, i8* %163, %Tstruct.Spl_json_value_t_t* %164)
  %165 = call i64 @c_fetch_sandbox_heap_bound()
  %166 = call i64 @c_fetch_sandbox_heap_address()
  %167 = sub i64 %165, %166
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* @sbxHeapRange, align 8
  %cmp43 = icmp eq i32 %call42, -1
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  %169 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %169)
  %170 = call i64 @c_fetch_sandbox_heap_bound()
  %171 = call i64 @c_fetch_sandbox_heap_address()
  %172 = sub i64 %170, %171
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* @sbxHeapRange, align 8
  %174 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %174)
  %175 = call i64 @c_fetch_sandbox_heap_bound()
  %176 = call i64 @c_fetch_sandbox_heap_address()
  %177 = sub i64 %175, %176
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* @sbxHeapRange, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end45:                                         ; preds = %if.end41
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %179 = load i64, i64* %i, align 8
  %inc47 = add i64 %179, 1
  store i64 %inc47, i64* %i, align 8
  br label %for.cond29, !llvm.loop !14

for.end48:                                        ; preds = %for.cond29
  %180 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %180, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb49:                                          ; preds = %entry
  %181 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call50 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %181)
  %call51 = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %call50)
  %182 = bitcast %Tstruct.Spl_json_value_t_t* %call51 to %Tstruct.json_value_t_t*
  %183 = bitcast %Tstruct.json_value_t_t* %182 to i8*
  %184 = ptrtoint i8* %183 to i32
  %185 = inttoptr i32 %184 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %185, %Tstruct.Spl_json_value_t_t** %tmp52, align 4
  %186 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp52, align 4
  store %Tstruct.Spl_json_value_t_t* %186, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb53:                                          ; preds = %entry
  %187 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call54 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %187)
  %call55 = call %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %call54)
  %188 = bitcast %Tstruct.Spl_json_value_t_t* %call55 to %Tstruct.json_value_t_t*
  %189 = bitcast %Tstruct.json_value_t_t* %188 to i8*
  %190 = ptrtoint i8* %189 to i32
  %191 = inttoptr i32 %190 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %191, %Tstruct.Spl_json_value_t_t** %tmp56, align 4
  %192 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp56, align 4
  store %Tstruct.Spl_json_value_t_t* %192, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb57:                                          ; preds = %entry
  %193 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call58 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %193)
  %194 = ptrtoint i8* %call58 to i32
  %195 = inttoptr i32 %194 to i8*
  store i8* %195, i8** %tmp59, align 4
  %196 = load i8*, i8** %tmp59, align 4
  %197 = ptrtoint i8* %196 to i32
  %198 = zext i32 %197 to i64
  %199 = bitcast i8** %temp_string to i64*
  store i64 %198, i64* %199, align 4
  %200 = load i8*, i8** %temp_string, align 4
  %201 = ptrtoint i8* %200 to i32
  %202 = zext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = ptrtoint i8* %203 to i32
  %cmp60 = icmp eq i32 %204, 0
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %sw.bb57
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end62:                                         ; preds = %sw.bb57
  %205 = load i8*, i8** %temp_string, align 4
  %call63 = call i8* @tainted_parson_strdup(i8* %205)
  %206 = ptrtoint i8* %call63 to i32
  %207 = inttoptr i32 %206 to i8*
  store i8* %207, i8** %tmp64, align 4
  %208 = load i8*, i8** %tmp64, align 4
  %209 = call i64 @c_fetch_sandbox_heap_bound()
  %210 = call i64 @c_fetch_sandbox_heap_address()
  %211 = sub i64 %209, %210
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* @sbxHeapRange, align 8
  %213 = ptrtoint i8* %208 to i32
  %214 = zext i32 %213 to i64
  %215 = bitcast i8** %temp_string_copy to i64*
  store i64 %214, i64* %215, align 4
  %216 = load i8*, i8** %temp_string_copy, align 4
  %217 = ptrtoint i8* %216 to i32
  %218 = zext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = ptrtoint i8* %219 to i32
  %cmp65 = icmp eq i32 %220, 0
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end62
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end67:                                         ; preds = %if.end62
  %221 = load i8*, i8** %temp_string_copy, align 4
  %call68 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string_no_copy to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %221)
  %222 = bitcast %Tstruct.Spl_json_value_t_t* %call68 to %Tstruct.json_value_t_t*
  %223 = bitcast %Tstruct.json_value_t_t* %222 to i8*
  %224 = ptrtoint i8* %223 to i32
  %225 = inttoptr i32 %224 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %225, %Tstruct.Spl_json_value_t_t** %tmp69, align 4
  %226 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp69, align 4
  %227 = call i64 @c_fetch_sandbox_heap_bound()
  %228 = call i64 @c_fetch_sandbox_heap_address()
  %229 = sub i64 %227, %228
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* @sbxHeapRange, align 8
  %231 = ptrtoint %Tstruct.Spl_json_value_t_t* %226 to i32
  %232 = bitcast %Tstruct.Spl_json_value_t_t** %return_value to i32*
  store i32 %231, i32* %232, align 4
  %233 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %234 = ptrtoint %Tstruct.Spl_json_value_t_t* %233 to i32
  %235 = zext i32 %234 to i64
  %236 = inttoptr i64 %235 to %Tstruct.Spl_json_value_t_t*
  %237 = ptrtoint %Tstruct.Spl_json_value_t_t* %236 to i32
  %cmp70 = icmp eq i32 %237, 0
  br i1 %cmp70, label %if.then71, label %if.end81

if.then71:                                        ; preds = %if.end67
  %238 = load i8*, i8** %temp_string_copy, align 4
  %239 = ptrtoint i8* %238 to i32
  %_Dynamic_check.is_null = icmp eq i32 %239, 0
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then71
  %240 = load i8*, i8** %temp_string_copy, align 4
  %241 = load i8*, i8** %temp_string_copy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %241, i64 1
  store i8* %add.ptr, i8** %tmp72, align 4
  %242 = load i8*, i8** %tmp72, align 4
  %243 = ptrtoint i8* %238 to i32
  %_Dynamic_check.non_null = icmp ne i32 %243, 0
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %_Dynamic_check.subsumption
  %add.ptr73 = getelementptr inbounds i8, i8* %238, i64 0
  %244 = ptrtoint i8* %240 to i32
  %245 = inttoptr i32 %244 to i8*
  store i8* %245, i8** %tmp74, align 4
  %246 = load i8*, i8** %tmp74, align 4
  %247 = ptrtoint i8* %238 to i32
  %248 = inttoptr i32 %247 to i8*
  store i8* %248, i8** %tmp75, align 4
  %249 = load i8*, i8** %tmp75, align 4
  %250 = ptrtoint i8* %246 to i32
  %251 = ptrtoint i8* %249 to i32
  %_Dynamic_check.lower = icmp ule i32 %250, %251
  %252 = ptrtoint i8* %add.ptr73 to i32
  %253 = inttoptr i32 %252 to i8*
  store i8* %253, i8** %tmp76, align 4
  %254 = load i8*, i8** %tmp76, align 4
  %255 = ptrtoint i8* %242 to i32
  %256 = inttoptr i32 %255 to i8*
  store i8* %256, i8** %tmp77, align 4
  %257 = load i8*, i8** %tmp77, align 4
  %258 = ptrtoint i8* %254 to i32
  %259 = ptrtoint i8* %257 to i32
  %_Dynamic_check.upper = icmp ule i32 %258, %259
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed78

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded, %if.then71
  %260 = load i32, i32* @sbxHeapRange, align 8
  %261 = load i64, i64* @sbxHeap, align 8
  %262 = ptrtoint i8* %238 to i32
  %263 = zext i32 %262 to i64
  %264 = add i64 %261, %263
  %265 = icmp ult i32 %262, %260
  br i1 %265, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %_Dynamic_check.success
  %266 = inttoptr i64 %264 to i8*
  call void @t_free(i8* %266)
  %267 = call i64 @c_fetch_sandbox_heap_bound()
  %268 = call i64 @c_fetch_sandbox_heap_address()
  %269 = sub i64 %267, %268
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* @sbxHeapRange, align 8
  br label %if.end81

_Dynamic_check.failed:                            ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed78:                          ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed79:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

if.end81:                                         ; preds = %_Dynamic_check.succeeded80, %if.end67
  %271 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %271, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb82:                                          ; preds = %entry
  %call83 = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %272 = bitcast %Tstruct.Spl_json_value_t_t* %call83 to %Tstruct.json_value_t_t*
  %273 = bitcast %Tstruct.json_value_t_t* %272 to i8*
  %274 = ptrtoint i8* %273 to i32
  %275 = inttoptr i32 %274 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %275, %Tstruct.Spl_json_value_t_t** %tmp84, align 4
  %276 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp84, align 4
  store %Tstruct.Spl_json_value_t_t* %276, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb85:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb85, %sw.bb82, %if.end81, %if.then66, %if.then61, %sw.bb53, %sw.bb49, %for.end48, %if.then44, %if.then40, %if.then25, %for.end, %if.then17, %if.then13, %if.then
  %277 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_serialization_size(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %num_buf = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %res = alloca i32, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* @string_tainted_malloc(i64 64)
  %3 = ptrtoint i8* %call to i32
  %4 = inttoptr i32 %3 to i8*
  store i8* %4, i8** %tmp, align 4
  %5 = load i8*, i8** %tmp, align 4
  %6 = ptrtoint i8* %5 to i32
  %7 = zext i32 %6 to i64
  %8 = bitcast i8** %num_buf to i64*
  store i64 %7, i64* %8, align 4
  %9 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %10 = load i8*, i8** %num_buf, align 4
  %call1 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %9, i8* null, i32 0, i32 0, i8* %10, i8* null, i64 0)
  store i32 %call1, i32* %res, align 4
  %11 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %res, align 4
  %add = add nsw i32 %12, 1
  %conv = sext i32 %add to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %conv, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_to_buffer(%Tstruct.json_value_t_t* %value, i8* %buf, i64 %buf_size_in_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %buf.addr = alloca i8*, align 4
  %buf_size_in_bytes.addr = alloca i64, align 8
  %written = alloca i32, align 4
  %needed_size_in_bytes = alloca i64, align 8
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %buf to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %buf.addr to i64*
  store i64 %4, i64* %5, align 4
  store i64 %buf_size_in_bytes, i64* %buf_size_in_bytes.addr, align 8
  store i32 -1, i32* %written, align 4
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i64 @json_serialization_size(%Tstruct.Spl_json_value_t_t* %6)
  store i64 %call, i64* %needed_size_in_bytes, align 8
  %7 = load i64, i64* %needed_size_in_bytes, align 8
  %cmp = icmp eq i64 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %9 = load i64, i64* %needed_size_in_bytes, align 8
  %cmp1 = icmp ult i64 %8, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %11 = load i8*, i8** %buf.addr, align 4
  %12 = load i8*, i8** %buf.addr, align 4
  %13 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %call2 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %10, i8* %11, i32 0, i32 0, i8* null, i8* %12, i64 %13)
  store i32 %call2, i32* %written, align 4
  %14 = load i32, i32* %written, align 4
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %15 = load i8*, i8** %buf.addr, align 4
  %16 = load i32, i32* @sbxHeapRange, align 8
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = ptrtoint i8* %15 to i32
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = icmp ult i32 %18, %16
  br i1 %21, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.then4
  %22 = inttoptr i64 %20 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %arrayidx, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.then4
  call void @llvm.trap() #8
  unreachable

if.end5:                                          ; preds = %if.end
  %23 = load i8*, i8** %buf.addr, align 4
  %24 = load i32, i32* %written, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i32, i32* @sbxHeapRange, align 8
  %26 = load i64, i64* @sbxHeap, align 8
  %27 = ptrtoint i8* %23 to i32
  %28 = zext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = icmp ult i32 %27, %25
  br i1 %30, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.end5
  %31 = inttoptr i64 %29 to i8*
  %arrayidx8 = getelementptr inbounds i8, i8* %31, i64 %idxprom
  store i8 0, i8* %arrayidx8, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed6:                           ; preds = %if.end5
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded7, %_Dynamic_check.succeeded, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_to_buffer_pretty(%Tstruct.json_value_t_t* %value, i8* %buf, i64 %buf_size_in_bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %buf.addr = alloca i8*, align 4
  %buf_size_in_bytes.addr = alloca i64, align 8
  %written = alloca i32, align 4
  %needed_size_in_bytes = alloca i64, align 8
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %buf to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %buf.addr to i64*
  store i64 %4, i64* %5, align 4
  store i64 %buf_size_in_bytes, i64* %buf_size_in_bytes.addr, align 8
  store i32 -1, i32* %written, align 4
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_value_t_t*)* @json_serialization_size_pretty to i64 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %6)
  store i64 %call, i64* %needed_size_in_bytes, align 8
  %7 = load i64, i64* %needed_size_in_bytes, align 8
  %cmp = icmp eq i64 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %9 = load i64, i64* %needed_size_in_bytes, align 8
  %cmp1 = icmp ult i64 %8, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %11 = load i8*, i8** %buf.addr, align 4
  %12 = load i8*, i8** %buf.addr, align 4
  %13 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %call2 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %10, i8* %11, i32 0, i32 1, i8* null, i8* %12, i64 %13)
  store i32 %call2, i32* %written, align 4
  %14 = load i32, i32* %written, align 4
  %cmp3 = icmp slt i32 %14, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %15 = load i8*, i8** %buf.addr, align 4
  %16 = load i32, i32* @sbxHeapRange, align 8
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = ptrtoint i8* %15 to i32
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = icmp ult i32 %18, %16
  br i1 %21, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.then4
  %22 = inttoptr i64 %20 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %arrayidx, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.then4
  call void @llvm.trap() #8
  unreachable

if.end5:                                          ; preds = %if.end
  %23 = load i8*, i8** %buf.addr, align 4
  %24 = load i32, i32* %written, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i32, i32* @sbxHeapRange, align 8
  %26 = load i64, i64* @sbxHeap, align 8
  %27 = ptrtoint i8* %23 to i32
  %28 = zext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = icmp ult i32 %27, %25
  br i1 %30, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.end5
  %31 = inttoptr i64 %29 to i8*
  %arrayidx8 = getelementptr inbounds i8, i8* %31, i64 %idxprom
  store i8 0, i8* %arrayidx8, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed6:                           ; preds = %if.end5
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded7, %_Dynamic_check.succeeded, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %retval = alloca i8*, align 8
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %serialization_result = alloca i32, align 4
  %buf_size_bytes = alloca i64, align 8
  %buf = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  store i32 -1, i32* %serialization_result, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i64 @json_serialization_size(%Tstruct.Spl_json_value_t_t* %3)
  store i64 %call, i64* %buf_size_bytes, align 8
  %4 = bitcast i8** %buf to i64*
  store i64 0, i64* %4, align 4
  %5 = load i64, i64* %buf_size_bytes, align 8
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %buf_size_bytes, align 8
  %call1 = call i8* @string_tainted_malloc(i64 %6)
  %7 = ptrtoint i8* %call1 to i32
  %8 = inttoptr i32 %7 to i8*
  store i8* %8, i8** %tmp, align 4
  %9 = load i8*, i8** %tmp, align 4
  %10 = ptrtoint i8* %9 to i32
  %11 = zext i32 %10 to i64
  %12 = bitcast i8** %buf to i64*
  store i64 %11, i64* %12, align 4
  %13 = load i8*, i8** %buf, align 4
  %14 = ptrtoint i8* %13 to i32
  %15 = zext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = ptrtoint i8* %16 to i32
  %cmp2 = icmp eq i32 %17, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %19 = load i8*, i8** %buf, align 4
  %20 = load i64, i64* %buf_size_bytes, align 8
  %call5 = call i32 @json_serialize_to_buffer(%Tstruct.Spl_json_value_t_t* %18, i8* %19, i64 %20)
  store i32 %call5, i32* %serialization_result, align 4
  %21 = load i32, i32* %serialization_result, align 4
  %cmp6 = icmp eq i32 %21, -1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %22 = load i8*, i8** %buf, align 4
  call void @json_free_serialized_string(i8* %22)
  store i8* null, i8** %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  %23 = load i8*, i8** %buf, align 4
  store i8* %23, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %24 = load i8*, i8** %retval, align 8
  ret i8* %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_free_serialized_string(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %tmp2 = alloca i8*, align 4
  %tmp3 = alloca i8*, align 4
  %tmp4 = alloca i8*, align 4
  %tmp5 = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 4
  %3 = load i8*, i8** %string.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %_Dynamic_check.is_null = icmp eq i32 %4, 0
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %entry
  %5 = load i8*, i8** %string.addr, align 4
  %6 = load i8*, i8** %string.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %add.ptr, i8** %tmp, align 4
  %7 = load i8*, i8** %tmp, align 4
  %8 = ptrtoint i8* %3 to i32
  %_Dynamic_check.non_null = icmp ne i32 %8, 0
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %_Dynamic_check.subsumption
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 0
  %9 = ptrtoint i8* %5 to i32
  %10 = inttoptr i32 %9 to i8*
  store i8* %10, i8** %tmp2, align 4
  %11 = load i8*, i8** %tmp2, align 4
  %12 = ptrtoint i8* %3 to i32
  %13 = inttoptr i32 %12 to i8*
  store i8* %13, i8** %tmp3, align 4
  %14 = load i8*, i8** %tmp3, align 4
  %15 = ptrtoint i8* %11 to i32
  %16 = ptrtoint i8* %14 to i32
  %_Dynamic_check.lower = icmp ule i32 %15, %16
  %17 = ptrtoint i8* %add.ptr1 to i32
  %18 = inttoptr i32 %17 to i8*
  store i8* %18, i8** %tmp4, align 4
  %19 = load i8*, i8** %tmp4, align 4
  %20 = ptrtoint i8* %7 to i32
  %21 = inttoptr i32 %20 to i8*
  store i8* %21, i8** %tmp5, align 4
  %22 = load i8*, i8** %tmp5, align 4
  %23 = ptrtoint i8* %19 to i32
  %24 = ptrtoint i8* %22 to i32
  %_Dynamic_check.upper = icmp ule i32 %23, %24
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed6

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded, %entry
  %25 = load i32, i32* @sbxHeapRange, align 8
  %26 = load i64, i64* @sbxHeap, align 8
  %27 = ptrtoint i8* %3 to i32
  %28 = zext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = icmp ult i32 %27, %25
  br i1 %30, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.success
  %31 = inttoptr i64 %29 to i8*
  call void @t_free(i8* %31)
  %32 = call i64 @c_fetch_sandbox_heap_bound()
  %33 = call i64 @c_fetch_sandbox_heap_address()
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @sbxHeapRange, align 8
  ret void

_Dynamic_check.failed:                            ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_serialization_size_pretty(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %num_buf = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %res = alloca i32, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* @string_tainted_malloc(i64 64)
  %3 = ptrtoint i8* %call to i32
  %4 = inttoptr i32 %3 to i8*
  store i8* %4, i8** %tmp, align 4
  %5 = load i8*, i8** %tmp, align 4
  %6 = ptrtoint i8* %5 to i32
  %7 = zext i32 %6 to i64
  %8 = bitcast i8** %num_buf to i64*
  store i64 %7, i64* %8, align 4
  %9 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %10 = load i8*, i8** %num_buf, align 4
  %call1 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %9, i8* null, i32 0, i32 1, i8* %10, i8* null, i64 0)
  store i32 %call1, i32* %res, align 4
  %11 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %res, align 4
  %add = add nsw i32 %12, 1
  %conv = sext i32 %add to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %conv, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_to_file_pretty(%Tstruct.json_value_t_t* %value, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %filename.addr = alloca i8*, align 8
  %return_code = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %serialized_string = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %checked_serialized_string = alloca i8*, align 8
  %len = alloca i32, align 4
  %tmp7 = alloca i8*, align 4
  %tmp19 = alloca i8*, align 4
  %tmp20 = alloca i8*, align 4
  %tmp21 = alloca i8*, align 4
  %tmp22 = alloca i8*, align 4
  %tmp45 = alloca i8*, align 4
  %tmp46 = alloca i8*, align 4
  %tmp48 = alloca i8*, align 4
  %tmp49 = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 0, i32* %return_code, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_serialize_to_string_pretty to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  %4 = ptrtoint i8* %call to i32
  %5 = inttoptr i32 %4 to i8*
  store i8* %5, i8** %tmp, align 4
  %6 = load i8*, i8** %tmp, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = zext i32 %7 to i64
  %9 = bitcast i8** %serialized_string to i64*
  store i64 %8, i64* %9, align 4
  store i8* null, i8** %checked_serialized_string, align 8
  %10 = load i8*, i8** %serialized_string, align 4
  %11 = load i32, i32* @sbxHeapRange, align 8
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = ptrtoint i8* %10 to i32
  %14 = zext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = icmp ult i32 %13, %11
  br i1 %16, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %17 = inttoptr i64 %15 to i8*
  %call1 = call i64 @t_strlen(i8* %17)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %18 = load i32, i32* %len, align 4
  %conv2 = sext i32 %18 to i64
  %mul = mul i64 %conv2, 1
  %call3 = call i8* @parson_string_malloc(i64 %mul)
  store i8* %call3, i8** %checked_serialized_string, align 8
  %19 = load i8*, i8** %checked_serialized_string, align 8
  %20 = load i8*, i8** %serialized_string, align 4
  %21 = load i32, i32* @sbxHeapRange, align 8
  %22 = load i64, i64* @sbxHeap, align 8
  %23 = ptrtoint i8* %20 to i32
  %24 = zext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = icmp ult i32 %23, %21
  br i1 %26, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded
  %27 = inttoptr i64 %25 to i8*
  %call6 = call i8* @t_strcpy(i8* %19, i8* %27)
  %28 = ptrtoint i8* %call6 to i32
  %29 = inttoptr i32 %28 to i8*
  store i8* %29, i8** %tmp7, align 4
  %30 = load i8*, i8** %tmp7, align 4
  %31 = load i8*, i8** %serialized_string, align 4
  %32 = ptrtoint i8* %31 to i32
  %33 = zext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = ptrtoint i8* %34 to i32
  %cmp = icmp eq i32 %35, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded5
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded5
  %36 = load i8*, i8** %filename.addr, align 8
  %call9 = call noalias %struct._IO_FILE* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0))
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %fp, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %38 = bitcast %struct._IO_FILE* %37 to i8*
  %39 = ptrtoint i8* %38 to i32
  %cmp10 = icmp eq i32 %39, 0
  br i1 %cmp10, label %if.then12, label %if.end24

if.then12:                                        ; preds = %if.end
  %40 = load i8*, i8** %serialized_string, align 4
  call void @json_free_serialized_string(i8* %40)
  %41 = load i8*, i8** %checked_serialized_string, align 8
  %42 = ptrtoint i8* %41 to i32
  %_Dynamic_check.is_null = icmp eq i32 %42, 0
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then12
  %43 = load i8*, i8** %checked_serialized_string, align 8
  %44 = load i8*, i8** %checked_serialized_string, align 8
  %45 = ptrtoint i8* %44 to i32
  %_Dynamic_check.non_null = icmp ne i32 %45, 0
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 0
  %46 = ptrtoint i8* %41 to i32
  %_Dynamic_check.non_null15 = icmp ne i32 %46, 0
  br i1 %_Dynamic_check.non_null15, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.succeeded14
  %add.ptr18 = getelementptr inbounds i8, i8* %41, i64 0
  %47 = ptrtoint i8* %43 to i32
  %48 = inttoptr i32 %47 to i8*
  store i8* %48, i8** %tmp19, align 4
  %49 = load i8*, i8** %tmp19, align 4
  %50 = ptrtoint i8* %41 to i32
  %51 = inttoptr i32 %50 to i8*
  store i8* %51, i8** %tmp20, align 4
  %52 = load i8*, i8** %tmp20, align 4
  %53 = ptrtoint i8* %49 to i32
  %54 = ptrtoint i8* %52 to i32
  %_Dynamic_check.lower = icmp ule i32 %53, %54
  %55 = ptrtoint i8* %add.ptr18 to i32
  %56 = inttoptr i32 %55 to i8*
  store i8* %56, i8** %tmp21, align 4
  %57 = load i8*, i8** %tmp21, align 4
  %58 = ptrtoint i8* %add.ptr to i32
  %59 = inttoptr i32 %58 to i8*
  store i8* %59, i8** %tmp22, align 4
  %60 = load i8*, i8** %tmp22, align 4
  %61 = ptrtoint i8* %57 to i32
  %62 = ptrtoint i8* %60 to i32
  %_Dynamic_check.upper = icmp ule i32 %61, %62
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed23

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded17, %if.then12
  call void @free(i8* %41) #10
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded17
  call void @llvm.trap() #8
  unreachable

if.end24:                                         ; preds = %if.end
  %63 = load i8*, i8** %checked_serialized_string, align 8
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call25 = call i32 @fputs(i8* %63, %struct._IO_FILE* %64)
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  store i32 -1, i32* %return_code, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call30 = call i32 @fclose(%struct._IO_FILE* %65)
  %cmp31 = icmp eq i32 %call30, -1
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  store i32 -1, i32* %return_code, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29
  %66 = load i8*, i8** %serialized_string, align 4
  call void @json_free_serialized_string(i8* %66)
  %67 = load i8*, i8** %checked_serialized_string, align 8
  %68 = ptrtoint i8* %67 to i32
  %_Dynamic_check.is_null35 = icmp eq i32 %68, 0
  br i1 %_Dynamic_check.is_null35, label %_Dynamic_check.success53, label %_Dynamic_check.subsumption36

_Dynamic_check.subsumption36:                     ; preds = %if.end34
  %69 = load i8*, i8** %checked_serialized_string, align 8
  %70 = load i8*, i8** %checked_serialized_string, align 8
  %71 = ptrtoint i8* %70 to i32
  %_Dynamic_check.non_null37 = icmp ne i32 %71, 0
  br i1 %_Dynamic_check.non_null37, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %_Dynamic_check.subsumption36
  %add.ptr40 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = ptrtoint i8* %67 to i32
  %_Dynamic_check.non_null41 = icmp ne i32 %72, 0
  br i1 %_Dynamic_check.non_null41, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %_Dynamic_check.succeeded39
  %add.ptr44 = getelementptr inbounds i8, i8* %67, i64 0
  %73 = ptrtoint i8* %69 to i32
  %74 = inttoptr i32 %73 to i8*
  store i8* %74, i8** %tmp45, align 4
  %75 = load i8*, i8** %tmp45, align 4
  %76 = ptrtoint i8* %67 to i32
  %77 = inttoptr i32 %76 to i8*
  store i8* %77, i8** %tmp46, align 4
  %78 = load i8*, i8** %tmp46, align 4
  %79 = ptrtoint i8* %75 to i32
  %80 = ptrtoint i8* %78 to i32
  %_Dynamic_check.lower47 = icmp ule i32 %79, %80
  %81 = ptrtoint i8* %add.ptr44 to i32
  %82 = inttoptr i32 %81 to i8*
  store i8* %82, i8** %tmp48, align 4
  %83 = load i8*, i8** %tmp48, align 4
  %84 = ptrtoint i8* %add.ptr40 to i32
  %85 = inttoptr i32 %84 to i8*
  store i8* %85, i8** %tmp49, align 4
  %86 = load i8*, i8** %tmp49, align 4
  %87 = ptrtoint i8* %83 to i32
  %88 = ptrtoint i8* %86 to i32
  %_Dynamic_check.upper50 = icmp ule i32 %87, %88
  %_Dynamic_check.cast51 = and i1 %_Dynamic_check.lower47, %_Dynamic_check.upper50
  br i1 %_Dynamic_check.cast51, label %_Dynamic_check.success53, label %_Dynamic_check.failed52

_Dynamic_check.success53:                         ; preds = %_Dynamic_check.succeeded43, %if.end34
  call void @free(i8* %67) #10
  %89 = load i32, i32* %return_code, align 4
  store i32 %89, i32* %retval, align 4
  br label %return

_Dynamic_check.failed38:                          ; preds = %_Dynamic_check.subsumption36
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed42:                          ; preds = %_Dynamic_check.succeeded39
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed52:                          ; preds = %_Dynamic_check.succeeded43
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.success53, %_Dynamic_check.success, %if.then
  %90 = load i32, i32* %retval, align 4
  ret i32 %90
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parson_string_malloc(i64 %sz) #0 {
entry:
  %retval = alloca i8*, align 8
  %sz.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %sz, i64* %sz.addr, align 8
  %0 = load i64, i64* %sz.addr, align 8
  %cmp = icmp uge i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %sz.addr, align 8
  %add = add i64 %1, 1
  %call = call noalias i8* @malloc(i64 %add) #10
  store i8* %call, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = ptrtoint i8* %2 to i32
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %p, align 8
  %5 = load i64, i64* %sz.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  store i8 0, i8* %arrayidx, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load i8*, i8** %p, align 8
  store i8* %6, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %7 = load i8*, i8** %retval, align 8
  ret i8* %7
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %retval = alloca i8*, align 8
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %serialization_result = alloca i32, align 4
  %buf_size_bytes = alloca i64, align 8
  %buf = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  store i32 -1, i32* %serialization_result, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_value_t_t*)* @json_serialization_size_pretty to i64 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  store i64 %call, i64* %buf_size_bytes, align 8
  %4 = bitcast i8** %buf to i64*
  store i64 0, i64* %4, align 4
  %5 = load i64, i64* %buf_size_bytes, align 8
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %buf_size_bytes, align 8
  %call1 = call i8* @string_tainted_malloc(i64 %6)
  %7 = ptrtoint i8* %call1 to i32
  %8 = inttoptr i32 %7 to i8*
  store i8* %8, i8** %tmp, align 4
  %9 = load i8*, i8** %tmp, align 4
  %10 = ptrtoint i8* %9 to i32
  %11 = zext i32 %10 to i64
  %12 = bitcast i8** %buf to i64*
  store i64 %11, i64* %12, align 4
  %13 = load i8*, i8** %buf, align 4
  %14 = ptrtoint i8* %13 to i32
  %15 = zext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = ptrtoint i8* %16 to i32
  %cmp2 = icmp eq i32 %17, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %19 = load i8*, i8** %buf, align 4
  %20 = load i64, i64* %buf_size_bytes, align 8
  %call5 = call i32 @json_serialize_to_buffer_pretty(%Tstruct.Spl_json_value_t_t* %18, i8* %19, i64 %20)
  store i32 %call5, i32* %serialization_result, align 4
  %21 = load i32, i32* %serialization_result, align 4
  %cmp6 = icmp eq i32 %21, -1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %22 = load i8*, i8** %buf, align 4
  call void @json_free_serialized_string(i8* %22)
  store i8* null, i8** %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  %23 = load i8*, i8** %buf, align 4
  store i8* %23, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %24 = load i8*, i8** %retval, align 8
  ret i8* %24
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_array_remove(%Tstruct.json_array_t_t* %array, i64 %ix) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %ix.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %ix, i64* %ix.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %5 = load i64, i64* %ix.addr, align 8
  %call1 = call i32 @w2c_json_array_remove(i8* %call, i32 %4, i64 %5)
  ret i32 %call1
}

declare dso_local i32 @w2c_json_array_remove(i8*, i32, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_value(%Tstruct.json_array_t_t* %array, i64 %ix, %Tstruct.json_value_t_t* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %ix.addr = alloca i64, align 8
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp9 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp19 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp30 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp31 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp32 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %ix, i64* %ix.addr, align 8
  %3 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %4, i32* %5, align 4
  %6 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_array_t_t* %6 to i32
  %8 = zext i32 %7 to i64
  %9 = inttoptr i64 %8 to %Tstruct.Spl_json_array_t_t*
  %10 = ptrtoint %Tstruct.Spl_json_array_t_t* %9 to i32
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = zext i32 %12 to i64
  %14 = inttoptr i64 %13 to %Tstruct.Spl_json_value_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %cmp1 = icmp eq i32 %15, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %16 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %17 = load i32, i32* @sbxHeapRange, align 8
  %18 = load i64, i64* @sbxHeap, align 8
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %20 = zext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = icmp ult i32 %19, %17
  br i1 %22, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false2
  %23 = inttoptr i64 %21 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %23, i32 0, i32 0
  %parent3 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %24 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent3, align 4
  %25 = ptrtoint %Tstruct.Spl_json_value_t_t* %24 to i32
  %26 = zext i32 %25 to i64
  %27 = inttoptr i64 %26 to %Tstruct.Spl_json_value_t_t*
  %28 = ptrtoint %Tstruct.Spl_json_value_t_t* %27 to i32
  %cmp4 = icmp ne i32 %28, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %_Dynamic_check.succeeded
  %29 = load i64, i64* %ix.addr, align 8
  %30 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %30)
  %cmp6 = icmp uge i64 %29, %call
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %_Dynamic_check.succeeded, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false2
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  %31 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %32 = load i64, i64* %ix.addr, align 8
  %call7 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %31, i64 %32)
  %33 = bitcast %Tstruct.Spl_json_value_t_t* %call7 to %Tstruct.json_value_t_t*
  %34 = bitcast %Tstruct.json_value_t_t* %33 to i8*
  %35 = ptrtoint i8* %34 to i32
  %36 = inttoptr i32 %35 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %36, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %37 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %37)
  %38 = call i64 @c_fetch_sandbox_heap_bound()
  %39 = call i64 @c_fetch_sandbox_heap_address()
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @sbxHeapRange, align 8
  %42 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %call8 = call %Tstruct.Spl_json_value_t_t* @json_array_get_wrapping_value(%Tstruct.Spl_json_array_t_t* %42)
  %43 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %44 = bitcast %Tstruct.json_value_t_t* %43 to i8*
  %45 = ptrtoint i8* %44 to i32
  %46 = inttoptr i32 %45 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %46, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %47 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %48 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %49 = load i32, i32* @sbxHeapRange, align 8
  %50 = load i64, i64* @sbxHeap, align 8
  %51 = ptrtoint %Tstruct.Spl_json_value_t_t* %48 to i32
  %52 = zext i32 %51 to i64
  %53 = add i64 %50, %52
  %54 = icmp ult i32 %51, %49
  br i1 %54, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %if.end
  %55 = inttoptr i64 %53 to %Tstruct.Spl_json_value_t_t*
  %parent12 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %55, i32 0, i32 0
  %parent13 = bitcast i32* %parent12 to %Tstruct.Spl_json_value_t_t**
  %56 = ptrtoint %Tstruct.Spl_json_value_t_t* %47 to i32
  %57 = bitcast %Tstruct.Spl_json_value_t_t** %parent13 to i32*
  store i32 %56, i32* %57, align 4
  %58 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %59 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %60 = load i32, i32* @sbxHeapRange, align 8
  %61 = load i64, i64* @sbxHeap, align 8
  %62 = ptrtoint %Tstruct.Spl_json_array_t_t* %59 to i32
  %63 = zext i32 %62 to i64
  %64 = add i64 %61, %63
  %65 = icmp ult i32 %62, %60
  br i1 %65, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.succeeded11
  %66 = inttoptr i64 %64 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %66, i32 0, i32 1
  %items16 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %67 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items16, align 4
  %68 = load i64, i64* %ix.addr, align 8
  %69 = load i32, i32* @sbxHeapRange, align 8
  %70 = load i64, i64* @sbxHeap, align 8
  %71 = ptrtoint %Tstruct.Spl_json_value_t_t** %67 to i32
  %72 = zext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = icmp ult i32 %71, %69
  br i1 %74, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded15
  %75 = inttoptr i64 %73 to %Tstruct.Spl_json_value_t_t**
  %76 = bitcast %Tstruct.Spl_json_value_t_t** %75 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %76, i64 %68
  %77 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %78 = bitcast %Tstruct.Spl_json_value_t_t** %77 to i8*
  %79 = ptrtoint i8* %78 to i32
  %80 = inttoptr i32 %79 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %80, %Tstruct.Spl_json_value_t_t*** %tmp19, align 4
  %81 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp19, align 4
  %82 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %83 = load i32, i32* @sbxHeapRange, align 8
  %84 = load i64, i64* @sbxHeap, align 8
  %85 = ptrtoint %Tstruct.Spl_json_array_t_t* %82 to i32
  %86 = zext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = icmp ult i32 %85, %83
  br i1 %88, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %_Dynamic_check.succeeded18
  %89 = inttoptr i64 %87 to %Tstruct.Spl_json_array_t_t*
  %items22 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %89, i32 0, i32 1
  %items23 = bitcast i32* %items22 to %Tstruct.Spl_json_value_t_t***
  %90 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items23, align 4
  %91 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %92 = load i32, i32* @sbxHeapRange, align 8
  %93 = load i64, i64* @sbxHeap, align 8
  %94 = ptrtoint %Tstruct.Spl_json_array_t_t* %91 to i32
  %95 = zext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = icmp ult i32 %94, %92
  br i1 %97, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded21
  %98 = inttoptr i64 %96 to %Tstruct.Spl_json_array_t_t*
  %items26 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %98, i32 0, i32 1
  %items27 = bitcast i32* %items26 to %Tstruct.Spl_json_value_t_t***
  %99 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items27, align 4
  %100 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %101 = load i32, i32* @sbxHeapRange, align 8
  %102 = load i64, i64* @sbxHeap, align 8
  %103 = ptrtoint %Tstruct.Spl_json_array_t_t* %100 to i32
  %104 = zext i32 %103 to i64
  %105 = add i64 %102, %104
  %106 = icmp ult i32 %103, %101
  br i1 %106, label %_Dynamic_check.succeeded29, label %_Dynamic_check.failed28

_Dynamic_check.succeeded29:                       ; preds = %_Dynamic_check.succeeded25
  %107 = inttoptr i64 %105 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %107, i32 0, i32 3
  %108 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %108 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %99, i64 %idx.ext
  store %Tstruct.Spl_json_value_t_t** %add.ptr, %Tstruct.Spl_json_value_t_t*** %tmp30, align 4
  %109 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp30, align 4
  %110 = bitcast %Tstruct.Spl_json_value_t_t** %109 to i8*
  %111 = ptrtoint i8* %110 to i32
  %112 = inttoptr i32 %111 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %112, %Tstruct.Spl_json_value_t_t*** %tmp31, align 4
  %113 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp31, align 4
  %114 = bitcast %Tstruct.Spl_json_value_t_t** %90 to i8*
  %115 = ptrtoint i8* %114 to i32
  %116 = inttoptr i32 %115 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %116, %Tstruct.Spl_json_value_t_t*** %tmp32, align 4
  %117 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp32, align 4
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %117, %81
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %81, %113
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %_Dynamic_check.succeeded29
  %118 = ptrtoint %Tstruct.Spl_json_value_t_t* %58 to i32
  %119 = bitcast %Tstruct.Spl_json_value_t_t** %77 to i32*
  store i32 %118, i32* %119, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed10:                          ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed14:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed24:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed28:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed33:                          ; preds = %_Dynamic_check.succeeded29
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded34, %if.then
  %120 = load i32, i32* %retval, align 4
  ret i32 %120
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_string(%Tstruct.json_array_t_t* %array, i64 %i, i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i.addr = alloca i64, align 8
  %string.addr = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %i, i64* %i.addr, align 8
  %3 = ptrtoint i8* %string to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %string.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load i8*, i8** %string.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %6)
  %7 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %10 = inttoptr i32 %9 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %10, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %12, i32* %13, align 4
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %16 = zext i32 %15 to i64
  %17 = inttoptr i64 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %19 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %20 = load i64, i64* %i.addr, align 8
  %21 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %19, i64 %20, %Tstruct.Spl_json_value_t_t* %21)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %22)
  %23 = call i64 @c_fetch_sandbox_heap_bound()
  %24 = call i64 @c_fetch_sandbox_heap_address()
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_number(%Tstruct.json_array_t_t* %array, i64 %i, double %number) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i.addr = alloca i64, align 8
  %number.addr = alloca double, align 8
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %i, i64* %i.addr, align 8
  store double %number, double* %number.addr, align 8
  %3 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %3)
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to i8*
  %6 = ptrtoint i8* %5 to i32
  %7 = inttoptr i32 %6 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %7, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %9, i32* %10, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = zext i32 %12 to i64
  %14 = inttoptr i64 %13 to %Tstruct.Spl_json_value_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %17 = load i64, i64* %i.addr, align 8
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %16, i64 %17, %Tstruct.Spl_json_value_t_t* %18)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %19 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %19)
  %20 = call i64 @c_fetch_sandbox_heap_bound()
  %21 = call i64 @c_fetch_sandbox_heap_address()
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_boolean(%Tstruct.json_array_t_t* %array, i64 %i, i32 %boolean) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i.addr = alloca i64, align 8
  %boolean.addr = alloca i32, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %i, i64* %i.addr, align 8
  store i32 %boolean, i32* %boolean.addr, align 4
  %3 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %3)
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to i8*
  %6 = ptrtoint i8* %5 to i32
  %7 = inttoptr i32 %6 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %7, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %9, i32* %10, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = zext i32 %12 to i64
  %14 = inttoptr i64 %13 to %Tstruct.Spl_json_value_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %17 = load i64, i64* %i.addr, align 8
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %16, i64 %17, %Tstruct.Spl_json_value_t_t* %18)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %19 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %19)
  %20 = call i64 @c_fetch_sandbox_heap_bound()
  %21 = call i64 @c_fetch_sandbox_heap_address()
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_null(%Tstruct.json_array_t_t* %array, i64 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i.addr = alloca i64, align 8
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %i, i64* %i.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %3 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %4 = bitcast %Tstruct.json_value_t_t* %3 to i8*
  %5 = ptrtoint i8* %4 to i32
  %6 = inttoptr i32 %5 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %6, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %9 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %8, i32* %9, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = zext i32 %11 to i64
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %16 = load i64, i64* %i.addr, align 8
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %15, i64 %16, %Tstruct.Spl_json_value_t_t* %17)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %18)
  %19 = call i64 @c_fetch_sandbox_heap_bound()
  %20 = call i64 @c_fetch_sandbox_heap_address()
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_clear(%Tstruct.json_array_t_t* %array) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 0, i64* %i, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %5 = zext i32 %4 to i64
  %6 = inttoptr i64 %5 to %Tstruct.Spl_json_array_t_t*
  %7 = ptrtoint %Tstruct.Spl_json_array_t_t* %6 to i32
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, i64* %i, align 8
  %9 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %9)
  %cmp1 = icmp ult i64 %8, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %11 = load i64, i64* %i, align 8
  %call2 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %10, i64 %11)
  %12 = bitcast %Tstruct.Spl_json_value_t_t* %call2 to %Tstruct.json_value_t_t*
  %13 = bitcast %Tstruct.json_value_t_t* %12 to i8*
  %14 = ptrtoint i8* %13 to i32
  %15 = inttoptr i32 %14 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %15, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %16 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %16)
  %17 = call i64 @c_fetch_sandbox_heap_bound()
  %18 = call i64 @c_fetch_sandbox_heap_address()
  %19 = sub i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @sbxHeapRange, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i64, i64* %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %22 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %23 = load i32, i32* @sbxHeapRange, align 8
  %24 = load i64, i64* @sbxHeap, align 8
  %25 = ptrtoint %Tstruct.Spl_json_array_t_t* %22 to i32
  %26 = zext i32 %25 to i64
  %27 = add i64 %24, %26
  %28 = icmp ult i32 %25, %23
  br i1 %28, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %for.end
  %29 = inttoptr i64 %27 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %29, i32 0, i32 2
  store i32 0, i32* %count, align 8
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %for.end
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded, %if.then
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_value(%Tstruct.json_array_t_t* %array, %Tstruct.json_value_t_t* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %4, i32* %5, align 4
  %6 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_array_t_t* %6 to i32
  %8 = zext i32 %7 to i64
  %9 = inttoptr i64 %8 to %Tstruct.Spl_json_array_t_t*
  %10 = ptrtoint %Tstruct.Spl_json_array_t_t* %9 to i32
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = zext i32 %12 to i64
  %14 = inttoptr i64 %13 to %Tstruct.Spl_json_value_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %cmp1 = icmp eq i32 %15, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %16 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %17 = load i32, i32* @sbxHeapRange, align 8
  %18 = load i64, i64* @sbxHeap, align 8
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %20 = zext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = icmp ult i32 %19, %17
  br i1 %22, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false2
  %23 = inttoptr i64 %21 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %23, i32 0, i32 0
  %parent3 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %24 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent3, align 4
  %25 = ptrtoint %Tstruct.Spl_json_value_t_t* %24 to i32
  %26 = zext i32 %25 to i64
  %27 = inttoptr i64 %26 to %Tstruct.Spl_json_value_t_t*
  %28 = ptrtoint %Tstruct.Spl_json_value_t_t* %27 to i32
  %cmp4 = icmp ne i32 %28, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false2
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %29 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %30 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i32 @json_array_add(%Tstruct.Spl_json_array_t_t* %29, %Tstruct.Spl_json_value_t_t* %30)
  %31 = call i64 @c_fetch_sandbox_heap_bound()
  %32 = call i64 @c_fetch_sandbox_heap_address()
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* @sbxHeapRange, align 8
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_string(%Tstruct.json_array_t_t* %array, i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %string.addr = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %string to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %string.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load i8*, i8** %string.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %6)
  %7 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %10 = inttoptr i32 %9 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %10, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %12, i32* %13, align 4
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %16 = zext i32 %15 to i64
  %17 = inttoptr i64 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %19 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %20 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %19, %Tstruct.Spl_json_value_t_t* %20)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %21 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %21)
  %22 = call i64 @c_fetch_sandbox_heap_bound()
  %23 = call i64 @c_fetch_sandbox_heap_address()
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_number(%Tstruct.json_array_t_t* %array, double %number) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %number.addr = alloca double, align 8
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store double %number, double* %number.addr, align 8
  %3 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %3)
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to i8*
  %6 = ptrtoint i8* %5 to i32
  %7 = inttoptr i32 %6 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %7, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %9, i32* %10, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = zext i32 %12 to i64
  %14 = inttoptr i64 %13 to %Tstruct.Spl_json_value_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %16, %Tstruct.Spl_json_value_t_t* %17)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %18)
  %19 = call i64 @c_fetch_sandbox_heap_bound()
  %20 = call i64 @c_fetch_sandbox_heap_address()
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_boolean(%Tstruct.json_array_t_t* %array, i32 %boolean) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %boolean.addr = alloca i32, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i32 %boolean, i32* %boolean.addr, align 4
  %3 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %3)
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to i8*
  %6 = ptrtoint i8* %5 to i32
  %7 = inttoptr i32 %6 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %7, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %9, i32* %10, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = zext i32 %12 to i64
  %14 = inttoptr i64 %13 to %Tstruct.Spl_json_value_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %16, %Tstruct.Spl_json_value_t_t* %17)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %18)
  %19 = call i64 @c_fetch_sandbox_heap_bound()
  %20 = call i64 @c_fetch_sandbox_heap_address()
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_null(%Tstruct.json_array_t_t* %array) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %3 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %4 = bitcast %Tstruct.json_value_t_t* %3 to i8*
  %5 = ptrtoint i8* %4 to i32
  %6 = inttoptr i32 %5 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %6, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %9 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %8, i32* %9, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = zext i32 %11 to i64
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %16 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %15, %Tstruct.Spl_json_value_t_t* %16)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %17)
  %18 = call i64 @c_fetch_sandbox_heap_bound()
  %19 = call i64 @c_fetch_sandbox_heap_address()
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_value(%Tstruct.json_object_t_t* %object, i8* %name, %Tstruct.json_value_t_t* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %i = alloca i64, align 8
  %old_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp16 = alloca i8**, align 4
  %tmp27 = alloca i8**, align 4
  %tmp28 = alloca i8**, align 4
  %tmp29 = alloca i8**, align 4
  %tmp40 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp51 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp65 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp66 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp67 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %7, i32* %8, align 4
  store i64 0, i64* %i, align 8
  %9 = bitcast %Tstruct.Spl_json_value_t_t** %old_value to i32*
  store i32 0, i32* %9, align 4
  %10 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %11 = ptrtoint %Tstruct.Spl_json_object_t_t* %10 to i32
  %12 = zext i32 %11 to i64
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_object_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_object_t_t* %13 to i32
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load i8*, i8** %name.addr, align 4
  %16 = ptrtoint i8* %15 to i32
  %17 = zext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = ptrtoint i8* %18 to i32
  %cmp1 = icmp eq i32 %19, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %20 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t* %20 to i32
  %22 = zext i32 %21 to i64
  %23 = inttoptr i64 %22 to %Tstruct.Spl_json_value_t_t*
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %23 to i32
  %cmp3 = icmp eq i32 %24, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %25 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %26 = load i32, i32* @sbxHeapRange, align 8
  %27 = load i64, i64* @sbxHeap, align 8
  %28 = ptrtoint %Tstruct.Spl_json_value_t_t* %25 to i32
  %29 = zext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = icmp ult i32 %28, %26
  br i1 %31, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false4
  %32 = inttoptr i64 %30 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %32, i32 0, i32 0
  %parent5 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %33 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent5, align 4
  %34 = ptrtoint %Tstruct.Spl_json_value_t_t* %33 to i32
  %35 = zext i32 %34 to i64
  %36 = inttoptr i64 %35 to %Tstruct.Spl_json_value_t_t*
  %37 = ptrtoint %Tstruct.Spl_json_value_t_t* %36 to i32
  %cmp6 = icmp ne i32 %37, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false4
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %38 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %39 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %38, i8* %39)
  %40 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %41 = bitcast %Tstruct.json_value_t_t* %40 to i8*
  %42 = ptrtoint i8* %41 to i32
  %43 = inttoptr i32 %42 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %43, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %44 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %45 = ptrtoint %Tstruct.Spl_json_value_t_t* %44 to i32
  %46 = bitcast %Tstruct.Spl_json_value_t_t** %old_value to i32*
  store i32 %45, i32* %46, align 4
  %47 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %old_value, align 4
  %48 = ptrtoint %Tstruct.Spl_json_value_t_t* %47 to i32
  %49 = zext i32 %48 to i64
  %50 = inttoptr i64 %49 to %Tstruct.Spl_json_value_t_t*
  %51 = ptrtoint %Tstruct.Spl_json_value_t_t* %50 to i32
  %cmp7 = icmp ne i32 %51, 0
  br i1 %cmp7, label %if.then8, label %if.end74

if.then8:                                         ; preds = %if.end
  %52 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %old_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %52)
  %53 = call i64 @c_fetch_sandbox_heap_bound()
  %54 = call i64 @c_fetch_sandbox_heap_address()
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* @sbxHeapRange, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then8
  %57 = load i64, i64* %i, align 8
  %58 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %call9 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %58)
  %cmp10 = icmp ult i64 %57, %call9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %60 = load i32, i32* @sbxHeapRange, align 8
  %61 = load i64, i64* @sbxHeap, align 8
  %62 = ptrtoint %Tstruct.Spl_json_object_t_t* %59 to i32
  %63 = zext i32 %62 to i64
  %64 = add i64 %61, %63
  %65 = icmp ult i32 %62, %60
  br i1 %65, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %for.body
  %66 = inttoptr i64 %64 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %66, i32 0, i32 1
  %names13 = bitcast i32* %names to i8***
  %67 = load i8**, i8*** %names13, align 4
  %68 = load i64, i64* %i, align 8
  %69 = load i32, i32* @sbxHeapRange, align 8
  %70 = load i64, i64* @sbxHeap, align 8
  %71 = ptrtoint i8** %67 to i32
  %72 = zext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = icmp ult i32 %71, %69
  br i1 %74, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.succeeded12
  %75 = inttoptr i64 %73 to i8**
  %76 = bitcast i8** %75 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %76, i64 %68
  %77 = bitcast i32* %arrayidx to i8**
  %78 = bitcast i8** %77 to i8*
  %79 = ptrtoint i8* %78 to i32
  %80 = inttoptr i32 %79 to i8**
  store i8** %80, i8*** %tmp16, align 4
  %81 = load i8**, i8*** %tmp16, align 4
  %82 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %83 = load i32, i32* @sbxHeapRange, align 8
  %84 = load i64, i64* @sbxHeap, align 8
  %85 = ptrtoint %Tstruct.Spl_json_object_t_t* %82 to i32
  %86 = zext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = icmp ult i32 %85, %83
  br i1 %88, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded15
  %89 = inttoptr i64 %87 to %Tstruct.Spl_json_object_t_t*
  %names19 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %89, i32 0, i32 1
  %names20 = bitcast i32* %names19 to i8***
  %90 = load i8**, i8*** %names20, align 4
  %91 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %92 = load i32, i32* @sbxHeapRange, align 8
  %93 = load i64, i64* @sbxHeap, align 8
  %94 = ptrtoint %Tstruct.Spl_json_object_t_t* %91 to i32
  %95 = zext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = icmp ult i32 %94, %92
  br i1 %97, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded18
  %98 = inttoptr i64 %96 to %Tstruct.Spl_json_object_t_t*
  %names23 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %98, i32 0, i32 1
  %names24 = bitcast i32* %names23 to i8***
  %99 = load i8**, i8*** %names24, align 4
  %100 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %101 = load i32, i32* @sbxHeapRange, align 8
  %102 = load i64, i64* @sbxHeap, align 8
  %103 = ptrtoint %Tstruct.Spl_json_object_t_t* %100 to i32
  %104 = zext i32 %103 to i64
  %105 = add i64 %102, %104
  %106 = icmp ult i32 %103, %101
  br i1 %106, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded22
  %107 = inttoptr i64 %105 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %107, i32 0, i32 4
  %108 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %108 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %99, i64 %idx.ext
  store i8** %add.ptr, i8*** %tmp27, align 4
  %109 = load i8**, i8*** %tmp27, align 4
  %110 = bitcast i8** %109 to i8*
  %111 = ptrtoint i8* %110 to i32
  %112 = inttoptr i32 %111 to i8**
  store i8** %112, i8*** %tmp28, align 4
  %113 = load i8**, i8*** %tmp28, align 4
  %114 = bitcast i8** %90 to i8*
  %115 = ptrtoint i8* %114 to i32
  %116 = inttoptr i32 %115 to i8**
  store i8** %116, i8*** %tmp29, align 4
  %117 = load i8**, i8*** %tmp29, align 4
  %118 = ptrtoint i8** %117 to i32
  %119 = ptrtoint i8** %81 to i32
  %_Dynamic_check.lower = icmp ule i32 %118, %119
  %120 = ptrtoint i8** %81 to i32
  %121 = ptrtoint i8** %113 to i32
  %_Dynamic_check.upper = icmp ult i32 %120, %121
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %_Dynamic_check.succeeded26
  %122 = load i8*, i8** %77, align 4
  %123 = load i8*, i8** %name.addr, align 4
  %124 = load i32, i32* @sbxHeapRange, align 8
  %125 = load i64, i64* @sbxHeap, align 8
  %126 = ptrtoint i8* %122 to i32
  %127 = zext i32 %126 to i64
  %128 = add i64 %125, %127
  %129 = icmp ult i32 %126, %124
  br i1 %129, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %_Dynamic_check.succeeded31
  %130 = inttoptr i64 %128 to i8*
  %131 = load i32, i32* @sbxHeapRange, align 8
  %132 = load i64, i64* @sbxHeap, align 8
  %133 = ptrtoint i8* %123 to i32
  %134 = zext i32 %133 to i64
  %135 = add i64 %132, %134
  %136 = icmp ult i32 %133, %131
  br i1 %136, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %_Dynamic_check.succeeded33
  %137 = inttoptr i64 %135 to i8*
  %call36 = call i32 @t_strcmp(i8* %130, i8* %137)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end73

if.then38:                                        ; preds = %_Dynamic_check.succeeded35
  %138 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %call39 = call %Tstruct.Spl_json_value_t_t* @json_object_get_wrapping_value(%Tstruct.Spl_json_object_t_t* %138)
  %139 = bitcast %Tstruct.Spl_json_value_t_t* %call39 to %Tstruct.json_value_t_t*
  %140 = bitcast %Tstruct.json_value_t_t* %139 to i8*
  %141 = ptrtoint i8* %140 to i32
  %142 = inttoptr i32 %141 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %142, %Tstruct.Spl_json_value_t_t** %tmp40, align 4
  %143 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp40, align 4
  %144 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %145 = load i32, i32* @sbxHeapRange, align 8
  %146 = load i64, i64* @sbxHeap, align 8
  %147 = ptrtoint %Tstruct.Spl_json_value_t_t* %144 to i32
  %148 = zext i32 %147 to i64
  %149 = add i64 %146, %148
  %150 = icmp ult i32 %147, %145
  br i1 %150, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %if.then38
  %151 = inttoptr i64 %149 to %Tstruct.Spl_json_value_t_t*
  %parent43 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %151, i32 0, i32 0
  %parent44 = bitcast i32* %parent43 to %Tstruct.Spl_json_value_t_t**
  %152 = ptrtoint %Tstruct.Spl_json_value_t_t* %143 to i32
  %153 = bitcast %Tstruct.Spl_json_value_t_t** %parent44 to i32*
  store i32 %152, i32* %153, align 4
  %154 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %155 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %156 = load i32, i32* @sbxHeapRange, align 8
  %157 = load i64, i64* @sbxHeap, align 8
  %158 = ptrtoint %Tstruct.Spl_json_object_t_t* %155 to i32
  %159 = zext i32 %158 to i64
  %160 = add i64 %157, %159
  %161 = icmp ult i32 %158, %156
  br i1 %161, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %_Dynamic_check.succeeded42
  %162 = inttoptr i64 %160 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %162, i32 0, i32 2
  %values47 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %163 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values47, align 4
  %164 = load i64, i64* %i, align 8
  %165 = load i32, i32* @sbxHeapRange, align 8
  %166 = load i64, i64* @sbxHeap, align 8
  %167 = ptrtoint %Tstruct.Spl_json_value_t_t** %163 to i32
  %168 = zext i32 %167 to i64
  %169 = add i64 %166, %168
  %170 = icmp ult i32 %167, %165
  br i1 %170, label %_Dynamic_check.succeeded49, label %_Dynamic_check.failed48

_Dynamic_check.succeeded49:                       ; preds = %_Dynamic_check.succeeded46
  %171 = inttoptr i64 %169 to %Tstruct.Spl_json_value_t_t**
  %172 = bitcast %Tstruct.Spl_json_value_t_t** %171 to i32*
  %arrayidx50 = getelementptr inbounds i32, i32* %172, i64 %164
  %173 = bitcast i32* %arrayidx50 to %Tstruct.Spl_json_value_t_t**
  %174 = bitcast %Tstruct.Spl_json_value_t_t** %173 to i8*
  %175 = ptrtoint i8* %174 to i32
  %176 = inttoptr i32 %175 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %176, %Tstruct.Spl_json_value_t_t*** %tmp51, align 4
  %177 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp51, align 4
  %178 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %179 = load i32, i32* @sbxHeapRange, align 8
  %180 = load i64, i64* @sbxHeap, align 8
  %181 = ptrtoint %Tstruct.Spl_json_object_t_t* %178 to i32
  %182 = zext i32 %181 to i64
  %183 = add i64 %180, %182
  %184 = icmp ult i32 %181, %179
  br i1 %184, label %_Dynamic_check.succeeded53, label %_Dynamic_check.failed52

_Dynamic_check.succeeded53:                       ; preds = %_Dynamic_check.succeeded49
  %185 = inttoptr i64 %183 to %Tstruct.Spl_json_object_t_t*
  %values54 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %185, i32 0, i32 2
  %values55 = bitcast i32* %values54 to %Tstruct.Spl_json_value_t_t***
  %186 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values55, align 4
  %187 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %188 = load i32, i32* @sbxHeapRange, align 8
  %189 = load i64, i64* @sbxHeap, align 8
  %190 = ptrtoint %Tstruct.Spl_json_object_t_t* %187 to i32
  %191 = zext i32 %190 to i64
  %192 = add i64 %189, %191
  %193 = icmp ult i32 %190, %188
  br i1 %193, label %_Dynamic_check.succeeded57, label %_Dynamic_check.failed56

_Dynamic_check.succeeded57:                       ; preds = %_Dynamic_check.succeeded53
  %194 = inttoptr i64 %192 to %Tstruct.Spl_json_object_t_t*
  %values58 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %194, i32 0, i32 2
  %values59 = bitcast i32* %values58 to %Tstruct.Spl_json_value_t_t***
  %195 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values59, align 4
  %196 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %197 = load i32, i32* @sbxHeapRange, align 8
  %198 = load i64, i64* @sbxHeap, align 8
  %199 = ptrtoint %Tstruct.Spl_json_object_t_t* %196 to i32
  %200 = zext i32 %199 to i64
  %201 = add i64 %198, %200
  %202 = icmp ult i32 %199, %197
  br i1 %202, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded57
  %203 = inttoptr i64 %201 to %Tstruct.Spl_json_object_t_t*
  %capacity62 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %203, i32 0, i32 4
  %204 = load i32, i32* %capacity62, align 8
  %idx.ext63 = zext i32 %204 to i64
  %add.ptr64 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %195, i64 %idx.ext63
  store %Tstruct.Spl_json_value_t_t** %add.ptr64, %Tstruct.Spl_json_value_t_t*** %tmp65, align 4
  %205 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp65, align 4
  %206 = bitcast %Tstruct.Spl_json_value_t_t** %205 to i8*
  %207 = ptrtoint i8* %206 to i32
  %208 = inttoptr i32 %207 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %208, %Tstruct.Spl_json_value_t_t*** %tmp66, align 4
  %209 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp66, align 4
  %210 = bitcast %Tstruct.Spl_json_value_t_t** %186 to i8*
  %211 = ptrtoint i8* %210 to i32
  %212 = inttoptr i32 %211 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %212, %Tstruct.Spl_json_value_t_t*** %tmp67, align 4
  %213 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp67, align 4
  %_Dynamic_check.lower68 = icmp ule %Tstruct.Spl_json_value_t_t** %213, %177
  %_Dynamic_check.upper69 = icmp ult %Tstruct.Spl_json_value_t_t** %177, %209
  %_Dynamic_check.range70 = and i1 %_Dynamic_check.lower68, %_Dynamic_check.upper69
  br i1 %_Dynamic_check.range70, label %_Dynamic_check.succeeded72, label %_Dynamic_check.failed71

_Dynamic_check.succeeded72:                       ; preds = %_Dynamic_check.succeeded61
  %214 = ptrtoint %Tstruct.Spl_json_value_t_t* %154 to i32
  %215 = bitcast %Tstruct.Spl_json_value_t_t** %173 to i32*
  store i32 %214, i32* %215, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed11:                          ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed14:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed32:                          ; preds = %_Dynamic_check.succeeded31
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed34:                          ; preds = %_Dynamic_check.succeeded33
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed41:                          ; preds = %if.then38
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed45:                          ; preds = %_Dynamic_check.succeeded42
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed48:                          ; preds = %_Dynamic_check.succeeded46
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed52:                          ; preds = %_Dynamic_check.succeeded49
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed56:                          ; preds = %_Dynamic_check.succeeded53
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded57
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed71:                          ; preds = %_Dynamic_check.succeeded61
  call void @llvm.trap() #8
  unreachable

if.end73:                                         ; preds = %_Dynamic_check.succeeded35
  br label %for.inc

for.inc:                                          ; preds = %if.end73
  %216 = load i64, i64* %i, align 8
  %inc = add i64 %216, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  br label %if.end74

if.end74:                                         ; preds = %for.end, %if.end
  %217 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %218 = load i8*, i8** %name.addr, align 4
  %219 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call75 = call i32 bitcast (i32 (%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*)* @json_object_add to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %217, i8* %218, %Tstruct.Spl_json_value_t_t* %219)
  %220 = call i64 @c_fetch_sandbox_heap_bound()
  %221 = call i64 @c_fetch_sandbox_heap_address()
  %222 = sub i64 %220, %221
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* @sbxHeapRange, align 8
  store i32 %call75, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end74, %_Dynamic_check.succeeded72, %if.then
  %224 = load i32, i32* %retval, align 4
  ret i32 %224
}

declare dso_local i32 @t_strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_string(%Tstruct.json_object_t_t* %object, i8* %name, i8* %string) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %string.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = ptrtoint i8* %string to i32
  %7 = zext i32 %6 to i64
  %8 = bitcast i8** %string.addr to i64*
  store i64 %7, i64* %8, align 4
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %10 = load i8*, i8** %name.addr, align 4
  %11 = load i8*, i8** %string.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %11)
  %12 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %13 = bitcast %Tstruct.json_value_t_t* %12 to i8*
  %14 = ptrtoint i8* %13 to i32
  %15 = inttoptr i32 %14 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %15, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %16 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %9, i8* %10, %Tstruct.Spl_json_value_t_t* %16)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_number(%Tstruct.json_object_t_t* %object, i8* %name, double %number) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %number.addr = alloca double, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  store double %number, double* %number.addr, align 8
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %8 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %8)
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to i8*
  %11 = ptrtoint i8* %10 to i32
  %12 = inttoptr i32 %11 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %12, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7, %Tstruct.Spl_json_value_t_t* %13)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_boolean(%Tstruct.json_object_t_t* %object, i8* %name, i32 %boolean) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %boolean.addr = alloca i32, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  store i32 %boolean, i32* %boolean.addr, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %8 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %8)
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to i8*
  %11 = ptrtoint i8* %10 to i32
  %12 = inttoptr i32 %11 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %12, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7, %Tstruct.Spl_json_value_t_t* %13)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_null(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %11, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %7, %Tstruct.Spl_json_value_t_t* %12)
  ret i32 %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_value(%Tstruct.json_object_t_t* %object, i8* %name, %Tstruct.json_value_t_t* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %dot_pos = alloca i8*, align 4
  %temp_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %new_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %new_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %status = alloca i32, align 4
  %name_len = alloca i64, align 8
  %tmp = alloca i8*, align 4
  %after_dot = alloca i8*, align 4
  %tmp8 = alloca i8*, align 4
  %name_with_len = alloca i8*, align 4
  %tmp10 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp17 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %tmp21 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp26 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %7, i32* %8, align 4
  %9 = bitcast i8** %dot_pos to i64*
  store i64 0, i64* %9, align 4
  %10 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 0, i32* %10, align 4
  %11 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 0, i32* %11, align 4
  %12 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object to i32*
  store i32 0, i32* %12, align 4
  %13 = bitcast %Tstruct.Spl_json_object_t_t** %new_object to i32*
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %status, align 4
  store i64 0, i64* %name_len, align 8
  %14 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %15 = ptrtoint %Tstruct.Spl_json_object_t_t* %14 to i32
  %16 = zext i32 %15 to i64
  %17 = inttoptr i64 %16 to %Tstruct.Spl_json_object_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_object_t_t* %17 to i32
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %19 = load i8*, i8** %name.addr, align 4
  %20 = ptrtoint i8* %19 to i32
  %21 = zext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = ptrtoint i8* %22 to i32
  %cmp1 = icmp eq i32 %23, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %24 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %25 = ptrtoint %Tstruct.Spl_json_value_t_t* %24 to i32
  %26 = zext i32 %25 to i64
  %27 = inttoptr i64 %26 to %Tstruct.Spl_json_value_t_t*
  %28 = ptrtoint %Tstruct.Spl_json_value_t_t* %27 to i32
  %cmp3 = icmp eq i32 %28, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %29 = load i8*, i8** %name.addr, align 4
  %30 = load i32, i32* @sbxHeapRange, align 8
  %31 = load i64, i64* @sbxHeap, align 8
  %32 = ptrtoint i8* %29 to i32
  %33 = zext i32 %32 to i64
  %34 = add i64 %31, %33
  %35 = icmp ult i32 %32, %30
  br i1 %35, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %36 = inttoptr i64 %34 to i8*
  %call = call i8* @t_strchr(i8* %36, i32 46)
  %37 = ptrtoint i8* %call to i32
  %38 = inttoptr i32 %37 to i8*
  store i8* %38, i8** %tmp, align 4
  %39 = load i8*, i8** %tmp, align 4
  %40 = ptrtoint i8* %39 to i32
  %41 = zext i32 %40 to i64
  %42 = bitcast i8** %dot_pos to i64*
  store i64 %41, i64* %42, align 4
  %43 = load i8*, i8** %dot_pos, align 4
  %44 = ptrtoint i8* %43 to i32
  %45 = zext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = ptrtoint i8* %46 to i32
  %cmp4 = icmp eq i32 %47, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %_Dynamic_check.succeeded
  %48 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %49 = load i8*, i8** %name.addr, align 4
  %50 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call6 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %48, i8* %49, %Tstruct.Spl_json_value_t_t* %50)
  store i32 %call6, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

if.end7:                                          ; preds = %_Dynamic_check.succeeded
  %51 = bitcast i8** %after_dot to i64*
  store i64 0, i64* %51, align 4
  %52 = load i8*, i8** %dot_pos, align 4
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %add.ptr, i8** %tmp8, align 4
  %53 = load i8*, i8** %tmp8, align 4
  %54 = ptrtoint i8* %53 to i32
  %55 = zext i32 %54 to i64
  %56 = bitcast i8** %after_dot to i64*
  store i64 %55, i64* %56, align 4
  %57 = load i8*, i8** %dot_pos, align 4
  %58 = load i8*, i8** %name.addr, align 4
  %59 = ptrtoint i8* %57 to i32
  %sub.ptr.lhs.cast = zext i32 %59 to i64
  %60 = ptrtoint i8* %58 to i32
  %sub.ptr.rhs.cast = zext i32 %60 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %name_len, align 8
  %61 = bitcast i8** %name_with_len to i64*
  store i64 0, i64* %61, align 4
  %62 = load i8*, i8** %name.addr, align 4
  %63 = ptrtoint i8* %62 to i32
  %64 = zext i32 %63 to i64
  %65 = bitcast i8** %name_with_len to i64*
  store i64 %64, i64* %65, align 4
  %66 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %67 = load i8*, i8** %name_with_len, align 4
  %68 = load i64, i64* %name_len, align 8
  %call9 = call %Tstruct.Spl_json_value_t_t* @json_object_getn_value(%Tstruct.Spl_json_object_t_t* %66, i8* %67, i64 %68)
  %69 = bitcast %Tstruct.Spl_json_value_t_t* %call9 to %Tstruct.json_value_t_t*
  %70 = bitcast %Tstruct.json_value_t_t* %69 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = inttoptr i32 %71 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %72, %Tstruct.Spl_json_value_t_t** %tmp10, align 4
  %73 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp10, align 4
  %74 = call i64 @c_fetch_sandbox_heap_bound()
  %75 = call i64 @c_fetch_sandbox_heap_address()
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* @sbxHeapRange, align 8
  %78 = ptrtoint %Tstruct.Spl_json_value_t_t* %73 to i32
  %79 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %78, i32* %79, align 4
  %80 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %81 = ptrtoint %Tstruct.Spl_json_value_t_t* %80 to i32
  %tobool = icmp ne i32 %81, 0
  br i1 %tobool, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end7
  %82 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %call12 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %82)
  %cmp13 = icmp ne i32 %call12, 4
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  store i32 -1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then11
  %83 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %call16 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %83)
  %84 = bitcast %Tstruct.Spl_json_object_t_t* %call16 to %Tstruct.json_object_t_t*
  %85 = bitcast %Tstruct.json_object_t_t* %84 to i8*
  %86 = ptrtoint i8* %85 to i32
  %87 = inttoptr i32 %86 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %87, %Tstruct.Spl_json_object_t_t** %tmp17, align 4
  %88 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp17, align 4
  %89 = ptrtoint %Tstruct.Spl_json_object_t_t* %88 to i32
  %90 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object to i32*
  store i32 %89, i32* %90, align 4
  %91 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %92 = load i8*, i8** %after_dot, align 4
  %93 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call18 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %91, i8* %92, %Tstruct.Spl_json_value_t_t* %93)
  store i32 %call18, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end7
  %call20 = call %Tstruct.Spl_json_value_t_t* @json_value_init_object()
  %94 = bitcast %Tstruct.Spl_json_value_t_t* %call20 to %Tstruct.json_value_t_t*
  %95 = bitcast %Tstruct.json_value_t_t* %94 to i8*
  %96 = ptrtoint i8* %95 to i32
  %97 = inttoptr i32 %96 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %97, %Tstruct.Spl_json_value_t_t** %tmp21, align 4
  %98 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp21, align 4
  %99 = call i64 @c_fetch_sandbox_heap_bound()
  %100 = call i64 @c_fetch_sandbox_heap_address()
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* @sbxHeapRange, align 8
  %103 = ptrtoint %Tstruct.Spl_json_value_t_t* %98 to i32
  %104 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %103, i32* %104, align 4
  %105 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %106 = ptrtoint %Tstruct.Spl_json_value_t_t* %105 to i32
  %107 = zext i32 %106 to i64
  %108 = inttoptr i64 %107 to %Tstruct.Spl_json_value_t_t*
  %109 = ptrtoint %Tstruct.Spl_json_value_t_t* %108 to i32
  %cmp22 = icmp eq i32 %109, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  store i32 -1, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end19
  %110 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %call25 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %110)
  %111 = bitcast %Tstruct.Spl_json_object_t_t* %call25 to %Tstruct.json_object_t_t*
  %112 = bitcast %Tstruct.json_object_t_t* %111 to i8*
  %113 = ptrtoint i8* %112 to i32
  %114 = inttoptr i32 %113 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %114, %Tstruct.Spl_json_object_t_t** %tmp26, align 4
  %115 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp26, align 4
  %116 = ptrtoint %Tstruct.Spl_json_object_t_t* %115 to i32
  %117 = bitcast %Tstruct.Spl_json_object_t_t** %new_object to i32*
  store i32 %116, i32* %117, align 4
  %118 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %new_object, align 4
  %119 = load i8*, i8** %after_dot, align 4
  %120 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call27 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %118, i8* %119, %Tstruct.Spl_json_value_t_t* %120)
  store i32 %call27, i32* %status, align 4
  %121 = load i32, i32* %status, align 4
  %cmp28 = icmp ne i32 %121, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  %122 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %122)
  %123 = call i64 @c_fetch_sandbox_heap_bound()
  %124 = call i64 @c_fetch_sandbox_heap_address()
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end24
  %127 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %128 = load i8*, i8** %name_with_len, align 4
  %129 = load i64, i64* %name_len, align 8
  %130 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %call31 = call i32 @json_object_addn(%Tstruct.Spl_json_object_t_t* %127, i8* %128, i64 %129, %Tstruct.Spl_json_value_t_t* %130)
  %131 = call i64 @c_fetch_sandbox_heap_bound()
  %132 = call i64 @c_fetch_sandbox_heap_address()
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* @sbxHeapRange, align 8
  store i32 %call31, i32* %status, align 4
  %135 = load i32, i32* %status, align 4
  %cmp32 = icmp ne i32 %135, 0
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  %136 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %new_object, align 4
  %137 = load i8*, i8** %after_dot, align 4
  %call34 = call i32 @json_object_dotremove_internal(%Tstruct.Spl_json_object_t_t* %136, i8* %137, i32 0)
  %138 = call i64 @c_fetch_sandbox_heap_bound()
  %139 = call i64 @c_fetch_sandbox_heap_address()
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* @sbxHeapRange, align 8
  %142 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %142)
  %143 = call i64 @c_fetch_sandbox_heap_bound()
  %144 = call i64 @c_fetch_sandbox_heap_address()
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end30
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then33, %if.then29, %if.then23, %if.end15, %if.then14, %if.then5, %if.then
  %147 = load i32, i32* %retval, align 4
  ret i32 %147
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %object, i8* %name, i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %string.addr = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = ptrtoint i8* %string to i32
  %7 = zext i32 %6 to i64
  %8 = bitcast i8** %string.addr to i64*
  store i64 %7, i64* %8, align 4
  %9 = load i8*, i8** %string.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %9)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = ptrtoint i8* %11 to i32
  %13 = inttoptr i32 %12 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %13, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %16 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %15, i32* %16, align 4
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = zext i32 %18 to i64
  %20 = inttoptr i64 %19 to %Tstruct.Spl_json_value_t_t*
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t* %20 to i32
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %22 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %23 = load i8*, i8** %name.addr, align 4
  %24 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %22, i8* %23, %Tstruct.Spl_json_value_t_t* %24)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %25 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %25)
  %26 = call i64 @c_fetch_sandbox_heap_bound()
  %27 = call i64 @c_fetch_sandbox_heap_address()
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_number(%Tstruct.json_object_t_t* %object, i8* %name, double %number) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %number.addr = alloca double, align 8
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  store double %number, double* %number.addr, align 8
  %6 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %6)
  %7 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %10 = inttoptr i32 %9 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %10, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %12, i32* %13, align 4
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %16 = zext i32 %15 to i64
  %17 = inttoptr i64 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %19 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %20 = load i8*, i8** %name.addr, align 4
  %21 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %19, i8* %20, %Tstruct.Spl_json_value_t_t* %21)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %22)
  %23 = call i64 @c_fetch_sandbox_heap_bound()
  %24 = call i64 @c_fetch_sandbox_heap_address()
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_boolean(%Tstruct.json_object_t_t* %object, i8* %name, i32 %boolean) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %boolean.addr = alloca i32, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  store i32 %boolean, i32* %boolean.addr, align 4
  %6 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %6)
  %7 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %10 = inttoptr i32 %9 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %10, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %12, i32* %13, align 4
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %16 = zext i32 %15 to i64
  %17 = inttoptr i64 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %19 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %20 = load i8*, i8** %name.addr, align 4
  %21 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %19, i8* %20, %Tstruct.Spl_json_value_t_t* %21)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %22)
  %23 = call i64 @c_fetch_sandbox_heap_bound()
  %24 = call i64 @c_fetch_sandbox_heap_address()
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_null(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %6 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %7 = bitcast %Tstruct.json_value_t_t* %6 to i8*
  %8 = ptrtoint i8* %7 to i32
  %9 = inttoptr i32 %8 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %9, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %11, i32* %12, align 4
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = zext i32 %14 to i64
  %16 = inttoptr i64 %15 to %Tstruct.Spl_json_value_t_t*
  %17 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %18 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %19 = load i8*, i8** %name.addr, align 4
  %20 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %18, i8* %19, %Tstruct.Spl_json_value_t_t* %20)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %21 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %21)
  %22 = call i64 @c_fetch_sandbox_heap_bound()
  %23 = call i64 @c_fetch_sandbox_heap_address()
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_remove(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call i32 @json_object_remove_internal(%Tstruct.Spl_json_object_t_t* %6, i8* %7, i32 1)
  %8 = call i64 @c_fetch_sandbox_heap_bound()
  %9 = call i64 @c_fetch_sandbox_heap_address()
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* @sbxHeapRange, align 8
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotremove(%Tstruct.json_object_t_t* %object, i8* %name) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %call = call i32 @json_object_dotremove_internal(%Tstruct.Spl_json_object_t_t* %6, i8* %7, i32 1)
  %8 = call i64 @c_fetch_sandbox_heap_bound()
  %9 = call i64 @c_fetch_sandbox_heap_address()
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* @sbxHeapRange, align 8
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_clear(%Tstruct.json_object_t_t* %object) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %i = alloca i64, align 8
  %tmp = alloca i8**, align 4
  %tmp15 = alloca i8**, align 4
  %tmp16 = alloca i8**, align 4
  %tmp17 = alloca i8**, align 4
  %tmp27 = alloca i8**, align 4
  %tmp41 = alloca i8**, align 4
  %tmp42 = alloca i8**, align 4
  %tmp43 = alloca i8**, align 4
  %tmp56 = alloca i8**, align 4
  %tmp70 = alloca i8**, align 4
  %tmp71 = alloca i8**, align 4
  %tmp72 = alloca i8**, align 4
  %tmp79 = alloca i8*, align 4
  %tmp83 = alloca i8*, align 4
  %tmp84 = alloca i8*, align 4
  %tmp86 = alloca i8*, align 4
  %tmp87 = alloca i8*, align 4
  %tmp98 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp112 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp113 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp114 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 0, i64* %i, align 8
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %5 = zext i32 %4 to i64
  %6 = inttoptr i64 %5 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %6 to i32
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, i64* %i, align 8
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %9)
  %cmp1 = icmp ult i64 %8, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %11 = load i32, i32* @sbxHeapRange, align 8
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = ptrtoint %Tstruct.Spl_json_object_t_t* %10 to i32
  %14 = zext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = icmp ult i32 %13, %11
  br i1 %16, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %for.body
  %17 = inttoptr i64 %15 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %17, i32 0, i32 1
  %names2 = bitcast i32* %names to i8***
  %18 = load i8**, i8*** %names2, align 4
  %19 = load i64, i64* %i, align 8
  %20 = load i32, i32* @sbxHeapRange, align 8
  %21 = load i64, i64* @sbxHeap, align 8
  %22 = ptrtoint i8** %18 to i32
  %23 = zext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = icmp ult i32 %22, %20
  br i1 %25, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %26 = inttoptr i64 %24 to i8**
  %27 = bitcast i8** %26 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %19
  %28 = bitcast i32* %arrayidx to i8**
  %29 = bitcast i8** %28 to i8*
  %30 = ptrtoint i8* %29 to i32
  %31 = inttoptr i32 %30 to i8**
  store i8** %31, i8*** %tmp, align 4
  %32 = load i8**, i8*** %tmp, align 4
  %33 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %34 = load i32, i32* @sbxHeapRange, align 8
  %35 = load i64, i64* @sbxHeap, align 8
  %36 = ptrtoint %Tstruct.Spl_json_object_t_t* %33 to i32
  %37 = zext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = icmp ult i32 %36, %34
  br i1 %39, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %40 = inttoptr i64 %38 to %Tstruct.Spl_json_object_t_t*
  %names7 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %40, i32 0, i32 1
  %names8 = bitcast i32* %names7 to i8***
  %41 = load i8**, i8*** %names8, align 4
  %42 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %43 = load i32, i32* @sbxHeapRange, align 8
  %44 = load i64, i64* @sbxHeap, align 8
  %45 = ptrtoint %Tstruct.Spl_json_object_t_t* %42 to i32
  %46 = zext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = icmp ult i32 %45, %43
  br i1 %48, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.succeeded6
  %49 = inttoptr i64 %47 to %Tstruct.Spl_json_object_t_t*
  %names11 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %49, i32 0, i32 1
  %names12 = bitcast i32* %names11 to i8***
  %50 = load i8**, i8*** %names12, align 4
  %51 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %52 = load i32, i32* @sbxHeapRange, align 8
  %53 = load i64, i64* @sbxHeap, align 8
  %54 = ptrtoint %Tstruct.Spl_json_object_t_t* %51 to i32
  %55 = zext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = icmp ult i32 %54, %52
  br i1 %57, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.succeeded10
  %58 = inttoptr i64 %56 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %58, i32 0, i32 4
  %59 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %59 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %50, i64 %idx.ext
  store i8** %add.ptr, i8*** %tmp15, align 4
  %60 = load i8**, i8*** %tmp15, align 4
  %61 = bitcast i8** %60 to i8*
  %62 = ptrtoint i8* %61 to i32
  %63 = inttoptr i32 %62 to i8**
  store i8** %63, i8*** %tmp16, align 4
  %64 = load i8**, i8*** %tmp16, align 4
  %65 = bitcast i8** %41 to i8*
  %66 = ptrtoint i8* %65 to i32
  %67 = inttoptr i32 %66 to i8**
  store i8** %67, i8*** %tmp17, align 4
  %68 = load i8**, i8*** %tmp17, align 4
  %69 = ptrtoint i8** %68 to i32
  %70 = ptrtoint i8** %32 to i32
  %_Dynamic_check.lower = icmp ule i32 %69, %70
  %71 = ptrtoint i8** %32 to i32
  %72 = ptrtoint i8** %64 to i32
  %_Dynamic_check.upper = icmp ult i32 %71, %72
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.succeeded14
  %73 = load i8*, i8** %28, align 4
  %74 = ptrtoint i8* %73 to i32
  %_Dynamic_check.is_null = icmp eq i32 %74, 0
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded19
  %75 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %76 = load i32, i32* @sbxHeapRange, align 8
  %77 = load i64, i64* @sbxHeap, align 8
  %78 = ptrtoint %Tstruct.Spl_json_object_t_t* %75 to i32
  %79 = zext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = icmp ult i32 %78, %76
  br i1 %81, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %_Dynamic_check.subsumption
  %82 = inttoptr i64 %80 to %Tstruct.Spl_json_object_t_t*
  %names22 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %82, i32 0, i32 1
  %names23 = bitcast i32* %names22 to i8***
  %83 = load i8**, i8*** %names23, align 4
  %84 = load i64, i64* %i, align 8
  %85 = load i32, i32* @sbxHeapRange, align 8
  %86 = load i64, i64* @sbxHeap, align 8
  %87 = ptrtoint i8** %83 to i32
  %88 = zext i32 %87 to i64
  %89 = add i64 %86, %88
  %90 = icmp ult i32 %87, %85
  br i1 %90, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded21
  %91 = inttoptr i64 %89 to i8**
  %92 = bitcast i8** %91 to i32*
  %arrayidx26 = getelementptr inbounds i32, i32* %92, i64 %84
  %93 = bitcast i32* %arrayidx26 to i8**
  %94 = bitcast i8** %93 to i8*
  %95 = ptrtoint i8* %94 to i32
  %96 = inttoptr i32 %95 to i8**
  store i8** %96, i8*** %tmp27, align 4
  %97 = load i8**, i8*** %tmp27, align 4
  %98 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %99 = load i32, i32* @sbxHeapRange, align 8
  %100 = load i64, i64* @sbxHeap, align 8
  %101 = ptrtoint %Tstruct.Spl_json_object_t_t* %98 to i32
  %102 = zext i32 %101 to i64
  %103 = add i64 %100, %102
  %104 = icmp ult i32 %101, %99
  br i1 %104, label %_Dynamic_check.succeeded29, label %_Dynamic_check.failed28

_Dynamic_check.succeeded29:                       ; preds = %_Dynamic_check.succeeded25
  %105 = inttoptr i64 %103 to %Tstruct.Spl_json_object_t_t*
  %names30 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %105, i32 0, i32 1
  %names31 = bitcast i32* %names30 to i8***
  %106 = load i8**, i8*** %names31, align 4
  %107 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %108 = load i32, i32* @sbxHeapRange, align 8
  %109 = load i64, i64* @sbxHeap, align 8
  %110 = ptrtoint %Tstruct.Spl_json_object_t_t* %107 to i32
  %111 = zext i32 %110 to i64
  %112 = add i64 %109, %111
  %113 = icmp ult i32 %110, %108
  br i1 %113, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %_Dynamic_check.succeeded29
  %114 = inttoptr i64 %112 to %Tstruct.Spl_json_object_t_t*
  %names34 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %114, i32 0, i32 1
  %names35 = bitcast i32* %names34 to i8***
  %115 = load i8**, i8*** %names35, align 4
  %116 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %117 = load i32, i32* @sbxHeapRange, align 8
  %118 = load i64, i64* @sbxHeap, align 8
  %119 = ptrtoint %Tstruct.Spl_json_object_t_t* %116 to i32
  %120 = zext i32 %119 to i64
  %121 = add i64 %118, %120
  %122 = icmp ult i32 %119, %117
  br i1 %122, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %_Dynamic_check.succeeded33
  %123 = inttoptr i64 %121 to %Tstruct.Spl_json_object_t_t*
  %capacity38 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %123, i32 0, i32 4
  %124 = load i32, i32* %capacity38, align 8
  %idx.ext39 = zext i32 %124 to i64
  %add.ptr40 = getelementptr inbounds i8*, i8** %115, i64 %idx.ext39
  store i8** %add.ptr40, i8*** %tmp41, align 4
  %125 = load i8**, i8*** %tmp41, align 4
  %126 = bitcast i8** %125 to i8*
  %127 = ptrtoint i8* %126 to i32
  %128 = inttoptr i32 %127 to i8**
  store i8** %128, i8*** %tmp42, align 4
  %129 = load i8**, i8*** %tmp42, align 4
  %130 = bitcast i8** %106 to i8*
  %131 = ptrtoint i8* %130 to i32
  %132 = inttoptr i32 %131 to i8**
  store i8** %132, i8*** %tmp43, align 4
  %133 = load i8**, i8*** %tmp43, align 4
  %134 = ptrtoint i8** %133 to i32
  %135 = ptrtoint i8** %97 to i32
  %_Dynamic_check.lower44 = icmp ule i32 %134, %135
  %136 = ptrtoint i8** %97 to i32
  %137 = ptrtoint i8** %129 to i32
  %_Dynamic_check.upper45 = icmp ult i32 %136, %137
  %_Dynamic_check.range46 = and i1 %_Dynamic_check.lower44, %_Dynamic_check.upper45
  br i1 %_Dynamic_check.range46, label %_Dynamic_check.succeeded48, label %_Dynamic_check.failed47

_Dynamic_check.succeeded48:                       ; preds = %_Dynamic_check.succeeded37
  %138 = load i8*, i8** %93, align 4
  %139 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %140 = load i32, i32* @sbxHeapRange, align 8
  %141 = load i64, i64* @sbxHeap, align 8
  %142 = ptrtoint %Tstruct.Spl_json_object_t_t* %139 to i32
  %143 = zext i32 %142 to i64
  %144 = add i64 %141, %143
  %145 = icmp ult i32 %142, %140
  br i1 %145, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %_Dynamic_check.succeeded48
  %146 = inttoptr i64 %144 to %Tstruct.Spl_json_object_t_t*
  %names51 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %146, i32 0, i32 1
  %names52 = bitcast i32* %names51 to i8***
  %147 = load i8**, i8*** %names52, align 4
  %148 = load i64, i64* %i, align 8
  %149 = load i32, i32* @sbxHeapRange, align 8
  %150 = load i64, i64* @sbxHeap, align 8
  %151 = ptrtoint i8** %147 to i32
  %152 = zext i32 %151 to i64
  %153 = add i64 %150, %152
  %154 = icmp ult i32 %151, %149
  br i1 %154, label %_Dynamic_check.succeeded54, label %_Dynamic_check.failed53

_Dynamic_check.succeeded54:                       ; preds = %_Dynamic_check.succeeded50
  %155 = inttoptr i64 %153 to i8**
  %156 = bitcast i8** %155 to i32*
  %arrayidx55 = getelementptr inbounds i32, i32* %156, i64 %148
  %157 = bitcast i32* %arrayidx55 to i8**
  %158 = bitcast i8** %157 to i8*
  %159 = ptrtoint i8* %158 to i32
  %160 = inttoptr i32 %159 to i8**
  store i8** %160, i8*** %tmp56, align 4
  %161 = load i8**, i8*** %tmp56, align 4
  %162 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %163 = load i32, i32* @sbxHeapRange, align 8
  %164 = load i64, i64* @sbxHeap, align 8
  %165 = ptrtoint %Tstruct.Spl_json_object_t_t* %162 to i32
  %166 = zext i32 %165 to i64
  %167 = add i64 %164, %166
  %168 = icmp ult i32 %165, %163
  br i1 %168, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %_Dynamic_check.succeeded54
  %169 = inttoptr i64 %167 to %Tstruct.Spl_json_object_t_t*
  %names59 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %169, i32 0, i32 1
  %names60 = bitcast i32* %names59 to i8***
  %170 = load i8**, i8*** %names60, align 4
  %171 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %172 = load i32, i32* @sbxHeapRange, align 8
  %173 = load i64, i64* @sbxHeap, align 8
  %174 = ptrtoint %Tstruct.Spl_json_object_t_t* %171 to i32
  %175 = zext i32 %174 to i64
  %176 = add i64 %173, %175
  %177 = icmp ult i32 %174, %172
  br i1 %177, label %_Dynamic_check.succeeded62, label %_Dynamic_check.failed61

_Dynamic_check.succeeded62:                       ; preds = %_Dynamic_check.succeeded58
  %178 = inttoptr i64 %176 to %Tstruct.Spl_json_object_t_t*
  %names63 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %178, i32 0, i32 1
  %names64 = bitcast i32* %names63 to i8***
  %179 = load i8**, i8*** %names64, align 4
  %180 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %181 = load i32, i32* @sbxHeapRange, align 8
  %182 = load i64, i64* @sbxHeap, align 8
  %183 = ptrtoint %Tstruct.Spl_json_object_t_t* %180 to i32
  %184 = zext i32 %183 to i64
  %185 = add i64 %182, %184
  %186 = icmp ult i32 %183, %181
  br i1 %186, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %_Dynamic_check.succeeded62
  %187 = inttoptr i64 %185 to %Tstruct.Spl_json_object_t_t*
  %capacity67 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %187, i32 0, i32 4
  %188 = load i32, i32* %capacity67, align 8
  %idx.ext68 = zext i32 %188 to i64
  %add.ptr69 = getelementptr inbounds i8*, i8** %179, i64 %idx.ext68
  store i8** %add.ptr69, i8*** %tmp70, align 4
  %189 = load i8**, i8*** %tmp70, align 4
  %190 = bitcast i8** %189 to i8*
  %191 = ptrtoint i8* %190 to i32
  %192 = inttoptr i32 %191 to i8**
  store i8** %192, i8*** %tmp71, align 4
  %193 = load i8**, i8*** %tmp71, align 4
  %194 = bitcast i8** %170 to i8*
  %195 = ptrtoint i8* %194 to i32
  %196 = inttoptr i32 %195 to i8**
  store i8** %196, i8*** %tmp72, align 4
  %197 = load i8**, i8*** %tmp72, align 4
  %198 = ptrtoint i8** %197 to i32
  %199 = ptrtoint i8** %161 to i32
  %_Dynamic_check.lower73 = icmp ule i32 %198, %199
  %200 = ptrtoint i8** %161 to i32
  %201 = ptrtoint i8** %193 to i32
  %_Dynamic_check.upper74 = icmp ult i32 %200, %201
  %_Dynamic_check.range75 = and i1 %_Dynamic_check.lower73, %_Dynamic_check.upper74
  br i1 %_Dynamic_check.range75, label %_Dynamic_check.succeeded77, label %_Dynamic_check.failed76

_Dynamic_check.succeeded77:                       ; preds = %_Dynamic_check.succeeded66
  %202 = load i8*, i8** %157, align 4
  %add.ptr78 = getelementptr inbounds i8, i8* %202, i64 1
  store i8* %add.ptr78, i8** %tmp79, align 4
  %203 = load i8*, i8** %tmp79, align 4
  %204 = ptrtoint i8* %73 to i32
  %_Dynamic_check.non_null = icmp ne i32 %204, 0
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded81, label %_Dynamic_check.failed80

_Dynamic_check.succeeded81:                       ; preds = %_Dynamic_check.succeeded77
  %add.ptr82 = getelementptr inbounds i8, i8* %73, i64 0
  %205 = ptrtoint i8* %138 to i32
  %206 = inttoptr i32 %205 to i8*
  store i8* %206, i8** %tmp83, align 4
  %207 = load i8*, i8** %tmp83, align 4
  %208 = ptrtoint i8* %73 to i32
  %209 = inttoptr i32 %208 to i8*
  store i8* %209, i8** %tmp84, align 4
  %210 = load i8*, i8** %tmp84, align 4
  %211 = ptrtoint i8* %207 to i32
  %212 = ptrtoint i8* %210 to i32
  %_Dynamic_check.lower85 = icmp ule i32 %211, %212
  %213 = ptrtoint i8* %add.ptr82 to i32
  %214 = inttoptr i32 %213 to i8*
  store i8* %214, i8** %tmp86, align 4
  %215 = load i8*, i8** %tmp86, align 4
  %216 = ptrtoint i8* %203 to i32
  %217 = inttoptr i32 %216 to i8*
  store i8* %217, i8** %tmp87, align 4
  %218 = load i8*, i8** %tmp87, align 4
  %219 = ptrtoint i8* %215 to i32
  %220 = ptrtoint i8* %218 to i32
  %_Dynamic_check.upper88 = icmp ule i32 %219, %220
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower85, %_Dynamic_check.upper88
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed89

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded81, %_Dynamic_check.succeeded19
  %221 = load i32, i32* @sbxHeapRange, align 8
  %222 = load i64, i64* @sbxHeap, align 8
  %223 = ptrtoint i8* %73 to i32
  %224 = zext i32 %223 to i64
  %225 = add i64 %222, %224
  %226 = icmp ult i32 %223, %221
  br i1 %226, label %_Dynamic_check.succeeded91, label %_Dynamic_check.failed90

_Dynamic_check.succeeded91:                       ; preds = %_Dynamic_check.success
  %227 = inttoptr i64 %225 to i8*
  call void @t_free(i8* %227)
  %228 = call i64 @c_fetch_sandbox_heap_bound()
  %229 = call i64 @c_fetch_sandbox_heap_address()
  %230 = sub i64 %228, %229
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* @sbxHeapRange, align 8
  %232 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %233 = load i32, i32* @sbxHeapRange, align 8
  %234 = load i64, i64* @sbxHeap, align 8
  %235 = ptrtoint %Tstruct.Spl_json_object_t_t* %232 to i32
  %236 = zext i32 %235 to i64
  %237 = add i64 %234, %236
  %238 = icmp ult i32 %235, %233
  br i1 %238, label %_Dynamic_check.succeeded93, label %_Dynamic_check.failed92

_Dynamic_check.succeeded93:                       ; preds = %_Dynamic_check.succeeded91
  %239 = inttoptr i64 %237 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %239, i32 0, i32 2
  %values94 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %240 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values94, align 4
  %241 = load i64, i64* %i, align 8
  %242 = load i32, i32* @sbxHeapRange, align 8
  %243 = load i64, i64* @sbxHeap, align 8
  %244 = ptrtoint %Tstruct.Spl_json_value_t_t** %240 to i32
  %245 = zext i32 %244 to i64
  %246 = add i64 %243, %245
  %247 = icmp ult i32 %244, %242
  br i1 %247, label %_Dynamic_check.succeeded96, label %_Dynamic_check.failed95

_Dynamic_check.succeeded96:                       ; preds = %_Dynamic_check.succeeded93
  %248 = inttoptr i64 %246 to %Tstruct.Spl_json_value_t_t**
  %249 = bitcast %Tstruct.Spl_json_value_t_t** %248 to i32*
  %arrayidx97 = getelementptr inbounds i32, i32* %249, i64 %241
  %250 = bitcast i32* %arrayidx97 to %Tstruct.Spl_json_value_t_t**
  %251 = bitcast %Tstruct.Spl_json_value_t_t** %250 to i8*
  %252 = ptrtoint i8* %251 to i32
  %253 = inttoptr i32 %252 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %253, %Tstruct.Spl_json_value_t_t*** %tmp98, align 4
  %254 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp98, align 4
  %255 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %256 = load i32, i32* @sbxHeapRange, align 8
  %257 = load i64, i64* @sbxHeap, align 8
  %258 = ptrtoint %Tstruct.Spl_json_object_t_t* %255 to i32
  %259 = zext i32 %258 to i64
  %260 = add i64 %257, %259
  %261 = icmp ult i32 %258, %256
  br i1 %261, label %_Dynamic_check.succeeded100, label %_Dynamic_check.failed99

_Dynamic_check.succeeded100:                      ; preds = %_Dynamic_check.succeeded96
  %262 = inttoptr i64 %260 to %Tstruct.Spl_json_object_t_t*
  %values101 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %262, i32 0, i32 2
  %values102 = bitcast i32* %values101 to %Tstruct.Spl_json_value_t_t***
  %263 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values102, align 4
  %264 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %265 = load i32, i32* @sbxHeapRange, align 8
  %266 = load i64, i64* @sbxHeap, align 8
  %267 = ptrtoint %Tstruct.Spl_json_object_t_t* %264 to i32
  %268 = zext i32 %267 to i64
  %269 = add i64 %266, %268
  %270 = icmp ult i32 %267, %265
  br i1 %270, label %_Dynamic_check.succeeded104, label %_Dynamic_check.failed103

_Dynamic_check.succeeded104:                      ; preds = %_Dynamic_check.succeeded100
  %271 = inttoptr i64 %269 to %Tstruct.Spl_json_object_t_t*
  %values105 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %271, i32 0, i32 2
  %values106 = bitcast i32* %values105 to %Tstruct.Spl_json_value_t_t***
  %272 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values106, align 4
  %273 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %274 = load i32, i32* @sbxHeapRange, align 8
  %275 = load i64, i64* @sbxHeap, align 8
  %276 = ptrtoint %Tstruct.Spl_json_object_t_t* %273 to i32
  %277 = zext i32 %276 to i64
  %278 = add i64 %275, %277
  %279 = icmp ult i32 %276, %274
  br i1 %279, label %_Dynamic_check.succeeded108, label %_Dynamic_check.failed107

_Dynamic_check.succeeded108:                      ; preds = %_Dynamic_check.succeeded104
  %280 = inttoptr i64 %278 to %Tstruct.Spl_json_object_t_t*
  %capacity109 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %280, i32 0, i32 4
  %281 = load i32, i32* %capacity109, align 8
  %idx.ext110 = zext i32 %281 to i64
  %add.ptr111 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %272, i64 %idx.ext110
  store %Tstruct.Spl_json_value_t_t** %add.ptr111, %Tstruct.Spl_json_value_t_t*** %tmp112, align 4
  %282 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp112, align 4
  %283 = bitcast %Tstruct.Spl_json_value_t_t** %282 to i8*
  %284 = ptrtoint i8* %283 to i32
  %285 = inttoptr i32 %284 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %285, %Tstruct.Spl_json_value_t_t*** %tmp113, align 4
  %286 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp113, align 4
  %287 = bitcast %Tstruct.Spl_json_value_t_t** %263 to i8*
  %288 = ptrtoint i8* %287 to i32
  %289 = inttoptr i32 %288 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %289, %Tstruct.Spl_json_value_t_t*** %tmp114, align 4
  %290 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp114, align 4
  %_Dynamic_check.lower115 = icmp ule %Tstruct.Spl_json_value_t_t** %290, %254
  %_Dynamic_check.upper116 = icmp ult %Tstruct.Spl_json_value_t_t** %254, %286
  %_Dynamic_check.range117 = and i1 %_Dynamic_check.lower115, %_Dynamic_check.upper116
  br i1 %_Dynamic_check.range117, label %_Dynamic_check.succeeded119, label %_Dynamic_check.failed118

_Dynamic_check.succeeded119:                      ; preds = %_Dynamic_check.succeeded108
  %291 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %250, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %291)
  %292 = call i64 @c_fetch_sandbox_heap_bound()
  %293 = call i64 @c_fetch_sandbox_heap_address()
  %294 = sub i64 %292, %293
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* @sbxHeapRange, align 8
  br label %for.inc

for.inc:                                          ; preds = %_Dynamic_check.succeeded119
  %296 = load i64, i64* %i, align 8
  %inc = add i64 %296, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !17

_Dynamic_check.failed:                            ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed24:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed28:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed32:                          ; preds = %_Dynamic_check.succeeded29
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed36:                          ; preds = %_Dynamic_check.succeeded33
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed47:                          ; preds = %_Dynamic_check.succeeded37
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed49:                          ; preds = %_Dynamic_check.succeeded48
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed53:                          ; preds = %_Dynamic_check.succeeded50
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed57:                          ; preds = %_Dynamic_check.succeeded54
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed61:                          ; preds = %_Dynamic_check.succeeded58
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed65:                          ; preds = %_Dynamic_check.succeeded62
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed76:                          ; preds = %_Dynamic_check.succeeded66
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed80:                          ; preds = %_Dynamic_check.succeeded77
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed89:                          ; preds = %_Dynamic_check.succeeded81
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed90:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed92:                          ; preds = %_Dynamic_check.succeeded91
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed95:                          ; preds = %_Dynamic_check.succeeded93
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed99:                          ; preds = %_Dynamic_check.succeeded96
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed103:                         ; preds = %_Dynamic_check.succeeded100
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed107:                         ; preds = %_Dynamic_check.succeeded104
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed118:                         ; preds = %_Dynamic_check.succeeded108
  call void @llvm.trap() #8
  unreachable

for.end:                                          ; preds = %for.cond
  %297 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %298 = load i32, i32* @sbxHeapRange, align 8
  %299 = load i64, i64* @sbxHeap, align 8
  %300 = ptrtoint %Tstruct.Spl_json_object_t_t* %297 to i32
  %301 = zext i32 %300 to i64
  %302 = add i64 %299, %301
  %303 = icmp ult i32 %300, %298
  br i1 %303, label %_Dynamic_check.succeeded121, label %_Dynamic_check.failed120

_Dynamic_check.succeeded121:                      ; preds = %for.end
  %304 = inttoptr i64 %302 to %Tstruct.Spl_json_object_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %304, i32 0, i32 3
  store i32 0, i32* %count, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed120:                         ; preds = %for.end
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded121, %if.then
  %305 = load i32, i32* %retval, align 4
  ret i32 %305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_validate(%Tstruct.json_value_t_t* %schema, %Tstruct.json_value_t_t* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %schema.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_schema_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %schema_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %value_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %schema_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %value_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %schema_type = alloca i32, align 4
  %value_type = alloca i32, align 4
  %key = alloca i8*, align 4
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %tmp9 = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %tmp15 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp19 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp26 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %tmp28 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %tmp41 = alloca i8*, align 4
  %tmp43 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp45 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %schema to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %schema.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %4, i32* %5, align 4
  %6 = bitcast %Tstruct.Spl_json_value_t_t** %temp_schema_value to i32*
  store i32 0, i32* %6, align 4
  %7 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 0, i32* %7, align 4
  %8 = bitcast %Tstruct.Spl_json_array_t_t** %schema_array to i32*
  store i32 0, i32* %8, align 4
  %9 = bitcast %Tstruct.Spl_json_array_t_t** %value_array to i32*
  store i32 0, i32* %9, align 4
  %10 = bitcast %Tstruct.Spl_json_object_t_t** %schema_object to i32*
  store i32 0, i32* %10, align 4
  %11 = bitcast %Tstruct.Spl_json_object_t_t** %value_object to i32*
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %schema_type, align 4
  store i32 -1, i32* %value_type, align 4
  %12 = bitcast i8** %key to i64*
  store i64 0, i64* %12, align 4
  store i64 0, i64* %i, align 8
  store i64 0, i64* %count, align 8
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = zext i32 %14 to i64
  %16 = inttoptr i64 %15 to %Tstruct.Spl_json_value_t_t*
  %17 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %20 = zext i32 %19 to i64
  %21 = inttoptr i64 %20 to %Tstruct.Spl_json_value_t_t*
  %22 = ptrtoint %Tstruct.Spl_json_value_t_t* %21 to i32
  %cmp1 = icmp eq i32 %22, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %23 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %23)
  store i32 %call, i32* %schema_type, align 4
  %24 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call2 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %24)
  store i32 %call2, i32* %value_type, align 4
  %25 = load i32, i32* %schema_type, align 4
  %26 = load i32, i32* %value_type, align 4
  %cmp3 = icmp ne i32 %25, %26
  br i1 %cmp3, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %27 = load i32, i32* %schema_type, align 4
  %cmp4 = icmp ne i32 %27, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  store i32 -1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %28 = load i32, i32* %schema_type, align 4
  switch i32 %28, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb24
    i32 2, label %sw.bb56
    i32 3, label %sw.bb56
    i32 6, label %sw.bb56
    i32 1, label %sw.bb56
    i32 -1, label %sw.bb57
  ]

sw.bb:                                            ; preds = %if.end6
  %29 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %call7 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %29)
  %30 = bitcast %Tstruct.Spl_json_array_t_t* %call7 to %Tstruct.json_array_t_t*
  %31 = bitcast %Tstruct.json_array_t_t* %30 to i8*
  %32 = ptrtoint i8* %31 to i32
  %33 = inttoptr i32 %32 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %33, %Tstruct.Spl_json_array_t_t** %tmp, align 4
  %34 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp, align 4
  %35 = ptrtoint %Tstruct.Spl_json_array_t_t* %34 to i32
  %36 = bitcast %Tstruct.Spl_json_array_t_t** %schema_array to i32*
  store i32 %35, i32* %36, align 4
  %37 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call8 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %37)
  %38 = bitcast %Tstruct.Spl_json_array_t_t* %call8 to %Tstruct.json_array_t_t*
  %39 = bitcast %Tstruct.json_array_t_t* %38 to i8*
  %40 = ptrtoint i8* %39 to i32
  %41 = inttoptr i32 %40 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %41, %Tstruct.Spl_json_array_t_t** %tmp9, align 4
  %42 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp9, align 4
  %43 = ptrtoint %Tstruct.Spl_json_array_t_t* %42 to i32
  %44 = bitcast %Tstruct.Spl_json_array_t_t** %value_array to i32*
  store i32 %43, i32* %44, align 4
  %45 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %schema_array, align 4
  %call10 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %45)
  store i64 %call10, i64* %count, align 8
  %46 = load i64, i64* %count, align 8
  %cmp11 = icmp eq i64 %46, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %sw.bb
  %47 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %schema_array, align 4
  %call14 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %47, i64 0)
  %48 = bitcast %Tstruct.Spl_json_value_t_t* %call14 to %Tstruct.json_value_t_t*
  %49 = bitcast %Tstruct.json_value_t_t* %48 to i8*
  %50 = ptrtoint i8* %49 to i32
  %51 = inttoptr i32 %50 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %51, %Tstruct.Spl_json_value_t_t** %tmp15, align 4
  %52 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp15, align 4
  %53 = ptrtoint %Tstruct.Spl_json_value_t_t* %52 to i32
  %54 = bitcast %Tstruct.Spl_json_value_t_t** %temp_schema_value to i32*
  store i32 %53, i32* %54, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %55 = load i64, i64* %i, align 8
  %56 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %value_array, align 4
  %call16 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %56)
  %cmp17 = icmp ult i64 %55, %call16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %value_array, align 4
  %58 = load i64, i64* %i, align 8
  %call18 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %57, i64 %58)
  %59 = bitcast %Tstruct.Spl_json_value_t_t* %call18 to %Tstruct.json_value_t_t*
  %60 = bitcast %Tstruct.json_value_t_t* %59 to i8*
  %61 = ptrtoint i8* %60 to i32
  %62 = inttoptr i32 %61 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %62, %Tstruct.Spl_json_value_t_t** %tmp19, align 4
  %63 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp19, align 4
  %64 = ptrtoint %Tstruct.Spl_json_value_t_t* %63 to i32
  %65 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %64, i32* %65, align 4
  %66 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_schema_value, align 4
  %67 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %call20 = call i32 @json_validate(%Tstruct.Spl_json_value_t_t* %66, %Tstruct.Spl_json_value_t_t* %67)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %68 = load i64, i64* %i, align 8
  %inc = add i64 %68, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb24:                                          ; preds = %if.end6
  %69 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %call25 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %69)
  %70 = bitcast %Tstruct.Spl_json_object_t_t* %call25 to %Tstruct.json_object_t_t*
  %71 = bitcast %Tstruct.json_object_t_t* %70 to i8*
  %72 = ptrtoint i8* %71 to i32
  %73 = inttoptr i32 %72 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %73, %Tstruct.Spl_json_object_t_t** %tmp26, align 4
  %74 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp26, align 4
  %75 = ptrtoint %Tstruct.Spl_json_object_t_t* %74 to i32
  %76 = bitcast %Tstruct.Spl_json_object_t_t** %schema_object to i32*
  store i32 %75, i32* %76, align 4
  %77 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call27 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %77)
  %78 = bitcast %Tstruct.Spl_json_object_t_t* %call27 to %Tstruct.json_object_t_t*
  %79 = bitcast %Tstruct.json_object_t_t* %78 to i8*
  %80 = ptrtoint i8* %79 to i32
  %81 = inttoptr i32 %80 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %81, %Tstruct.Spl_json_object_t_t** %tmp28, align 4
  %82 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp28, align 4
  %83 = ptrtoint %Tstruct.Spl_json_object_t_t* %82 to i32
  %84 = bitcast %Tstruct.Spl_json_object_t_t** %value_object to i32*
  store i32 %83, i32* %84, align 4
  %85 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %schema_object, align 4
  %call29 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %85)
  store i64 %call29, i64* %count, align 8
  %86 = load i64, i64* %count, align 8
  %cmp30 = icmp eq i64 %86, 0
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %sw.bb24
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %sw.bb24
  %87 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %value_object, align 4
  %call32 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %87)
  %88 = load i64, i64* %count, align 8
  %cmp33 = icmp ult i64 %call32, %88
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.else
  store i32 -1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35
  store i64 0, i64* %i, align 8
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc53, %if.end36
  %89 = load i64, i64* %i, align 8
  %90 = load i64, i64* %count, align 8
  %cmp38 = icmp ult i64 %89, %90
  br i1 %cmp38, label %for.body39, label %for.end55

for.body39:                                       ; preds = %for.cond37
  %91 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %schema_object, align 4
  %92 = load i64, i64* %i, align 8
  %call40 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %91, i64 %92)
  %93 = ptrtoint i8* %call40 to i32
  %94 = inttoptr i32 %93 to i8*
  store i8* %94, i8** %tmp41, align 4
  %95 = load i8*, i8** %tmp41, align 4
  %96 = ptrtoint i8* %95 to i32
  %97 = zext i32 %96 to i64
  %98 = bitcast i8** %key to i64*
  store i64 %97, i64* %98, align 4
  %99 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %schema_object, align 4
  %100 = load i8*, i8** %key, align 4
  %call42 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %99, i8* %100)
  %101 = bitcast %Tstruct.Spl_json_value_t_t* %call42 to %Tstruct.json_value_t_t*
  %102 = bitcast %Tstruct.json_value_t_t* %101 to i8*
  %103 = ptrtoint i8* %102 to i32
  %104 = inttoptr i32 %103 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %104, %Tstruct.Spl_json_value_t_t** %tmp43, align 4
  %105 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp43, align 4
  %106 = ptrtoint %Tstruct.Spl_json_value_t_t* %105 to i32
  %107 = bitcast %Tstruct.Spl_json_value_t_t** %temp_schema_value to i32*
  store i32 %106, i32* %107, align 4
  %108 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %value_object, align 4
  %109 = load i8*, i8** %key, align 4
  %call44 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %108, i8* %109)
  %110 = bitcast %Tstruct.Spl_json_value_t_t* %call44 to %Tstruct.json_value_t_t*
  %111 = bitcast %Tstruct.json_value_t_t* %110 to i8*
  %112 = ptrtoint i8* %111 to i32
  %113 = inttoptr i32 %112 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %113, %Tstruct.Spl_json_value_t_t** %tmp45, align 4
  %114 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp45, align 4
  %115 = ptrtoint %Tstruct.Spl_json_value_t_t* %114 to i32
  %116 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %115, i32* %116, align 4
  %117 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %118 = ptrtoint %Tstruct.Spl_json_value_t_t* %117 to i32
  %119 = zext i32 %118 to i64
  %120 = inttoptr i64 %119 to %Tstruct.Spl_json_value_t_t*
  %121 = ptrtoint %Tstruct.Spl_json_value_t_t* %120 to i32
  %cmp46 = icmp eq i32 %121, 0
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.body39
  store i32 -1, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %for.body39
  %122 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_schema_value, align 4
  %123 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %call49 = call i32 @json_validate(%Tstruct.Spl_json_value_t_t* %122, %Tstruct.Spl_json_value_t_t* %123)
  %cmp50 = icmp eq i32 %call49, -1
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  store i32 -1, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end48
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %124 = load i64, i64* %i, align 8
  %inc54 = add i64 %124, 1
  store i64 %inc54, i64* %i, align 8
  br label %for.cond37, !llvm.loop !19

for.end55:                                        ; preds = %for.cond37
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb56:                                          ; preds = %if.end6, %if.end6, %if.end6, %if.end6
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb57:                                          ; preds = %if.end6
  br label %sw.default

sw.default:                                       ; preds = %if.end6, %sw.bb57
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb56, %for.end55, %if.then51, %if.then47, %if.then34, %if.then31, %for.end, %if.then22, %if.then12, %if.then5, %if.then
  %125 = load i32, i32* %retval, align 4
  ret i32 %125
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_equals(%Tstruct.json_value_t_t* %a, %Tstruct.json_value_t_t* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %b.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %a_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %b_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %a_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %b_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %a_string = alloca i8*, align 4
  %b_string = alloca i8*, align 4
  %key = alloca i8*, align 4
  %a_count = alloca i64, align 8
  %b_count = alloca i64, align 8
  %i = alloca i64, align 8
  %a_type = alloca i32, align 4
  %b_type = alloca i32, align 4
  %tmp = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %tmp4 = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %tmp12 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp14 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp20 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %tmp22 = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %tmp32 = alloca i8*, align 4
  %tmp34 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp36 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp46 = alloca i8*, align 4
  %tmp48 = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %a to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %a.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = bitcast %Tstruct.json_value_t_t* %b to %Tstruct.Spl_json_value_t_t*
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %b.addr to i32*
  store i32 %4, i32* %5, align 4
  %6 = bitcast %Tstruct.Spl_json_object_t_t** %a_object to i32*
  store i32 0, i32* %6, align 4
  %7 = bitcast %Tstruct.Spl_json_object_t_t** %b_object to i32*
  store i32 0, i32* %7, align 4
  %8 = bitcast %Tstruct.Spl_json_array_t_t** %a_array to i32*
  store i32 0, i32* %8, align 4
  %9 = bitcast %Tstruct.Spl_json_array_t_t** %b_array to i32*
  store i32 0, i32* %9, align 4
  %10 = bitcast i8** %a_string to i64*
  store i64 0, i64* %10, align 4
  %11 = bitcast i8** %b_string to i64*
  store i64 0, i64* %11, align 4
  %12 = bitcast i8** %key to i64*
  store i64 0, i64* %12, align 4
  store i64 0, i64* %a_count, align 8
  store i64 0, i64* %b_count, align 8
  store i64 0, i64* %i, align 8
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %13)
  store i32 %call, i32* %a_type, align 4
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %call1 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %14)
  store i32 %call1, i32* %b_type, align 4
  %15 = load i32, i32* %a_type, align 4
  %16 = load i32, i32* %b_type, align 4
  %cmp = icmp ne i32 %15, %16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %17 = load i32, i32* %a_type, align 4
  switch i32 %17, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb18
    i32 2, label %sw.bb44
    i32 6, label %sw.bb57
    i32 3, label %sw.bb62
    i32 -1, label %sw.bb67
    i32 1, label %sw.bb68
  ]

sw.bb:                                            ; preds = %if.end
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %call2 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %18)
  %19 = bitcast %Tstruct.Spl_json_array_t_t* %call2 to %Tstruct.json_array_t_t*
  %20 = bitcast %Tstruct.json_array_t_t* %19 to i8*
  %21 = ptrtoint i8* %20 to i32
  %22 = inttoptr i32 %21 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %22, %Tstruct.Spl_json_array_t_t** %tmp, align 4
  %23 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp, align 4
  %24 = ptrtoint %Tstruct.Spl_json_array_t_t* %23 to i32
  %25 = bitcast %Tstruct.Spl_json_array_t_t** %a_array to i32*
  store i32 %24, i32* %25, align 4
  %26 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %call3 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %26)
  %27 = bitcast %Tstruct.Spl_json_array_t_t* %call3 to %Tstruct.json_array_t_t*
  %28 = bitcast %Tstruct.json_array_t_t* %27 to i8*
  %29 = ptrtoint i8* %28 to i32
  %30 = inttoptr i32 %29 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %30, %Tstruct.Spl_json_array_t_t** %tmp4, align 4
  %31 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp4, align 4
  %32 = ptrtoint %Tstruct.Spl_json_array_t_t* %31 to i32
  %33 = bitcast %Tstruct.Spl_json_array_t_t** %b_array to i32*
  store i32 %32, i32* %33, align 4
  %34 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %a_array, align 4
  %call5 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %34)
  store i64 %call5, i64* %a_count, align 8
  %35 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %b_array, align 4
  %call6 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %35)
  store i64 %call6, i64* %b_count, align 8
  %36 = load i64, i64* %a_count, align 8
  %37 = load i64, i64* %b_count, align 8
  %cmp7 = icmp ne i64 %36, %37
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %sw.bb
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %38 = load i64, i64* %i, align 8
  %39 = load i64, i64* %a_count, align 8
  %cmp10 = icmp ult i64 %38, %39
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %a_array, align 4
  %41 = load i64, i64* %i, align 8
  %call11 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %40, i64 %41)
  %42 = bitcast %Tstruct.Spl_json_value_t_t* %call11 to %Tstruct.json_value_t_t*
  %43 = bitcast %Tstruct.json_value_t_t* %42 to i8*
  %44 = ptrtoint i8* %43 to i32
  %45 = inttoptr i32 %44 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %45, %Tstruct.Spl_json_value_t_t** %tmp12, align 4
  %46 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp12, align 4
  %47 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %b_array, align 4
  %48 = load i64, i64* %i, align 8
  %call13 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %47, i64 %48)
  %49 = bitcast %Tstruct.Spl_json_value_t_t* %call13 to %Tstruct.json_value_t_t*
  %50 = bitcast %Tstruct.json_value_t_t* %49 to i8*
  %51 = ptrtoint i8* %50 to i32
  %52 = inttoptr i32 %51 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %52, %Tstruct.Spl_json_value_t_t** %tmp14, align 4
  %53 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp14, align 4
  %call15 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_value_equals to i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %46, %Tstruct.Spl_json_value_t_t* %53)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end17, label %if.then16

if.then16:                                        ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %54 = load i64, i64* %i, align 8
  %inc = add i64 %54, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %if.end
  %55 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %call19 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %55)
  %56 = bitcast %Tstruct.Spl_json_object_t_t* %call19 to %Tstruct.json_object_t_t*
  %57 = bitcast %Tstruct.json_object_t_t* %56 to i8*
  %58 = ptrtoint i8* %57 to i32
  %59 = inttoptr i32 %58 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %59, %Tstruct.Spl_json_object_t_t** %tmp20, align 4
  %60 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp20, align 4
  %61 = ptrtoint %Tstruct.Spl_json_object_t_t* %60 to i32
  %62 = bitcast %Tstruct.Spl_json_object_t_t** %a_object to i32*
  store i32 %61, i32* %62, align 4
  %63 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %call21 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %63)
  %64 = bitcast %Tstruct.Spl_json_object_t_t* %call21 to %Tstruct.json_object_t_t*
  %65 = bitcast %Tstruct.json_object_t_t* %64 to i8*
  %66 = ptrtoint i8* %65 to i32
  %67 = inttoptr i32 %66 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %67, %Tstruct.Spl_json_object_t_t** %tmp22, align 4
  %68 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp22, align 4
  %69 = ptrtoint %Tstruct.Spl_json_object_t_t* %68 to i32
  %70 = bitcast %Tstruct.Spl_json_object_t_t** %b_object to i32*
  store i32 %69, i32* %70, align 4
  %71 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %a_object, align 4
  %call23 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %71)
  store i64 %call23, i64* %a_count, align 8
  %72 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %b_object, align 4
  %call24 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %72)
  store i64 %call24, i64* %b_count, align 8
  %73 = load i64, i64* %a_count, align 8
  %74 = load i64, i64* %b_count, align 8
  %cmp25 = icmp ne i64 %73, %74
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %sw.bb18
  store i32 0, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %sw.bb18
  store i64 0, i64* %i, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc41, %if.end27
  %75 = load i64, i64* %i, align 8
  %76 = load i64, i64* %a_count, align 8
  %cmp29 = icmp ult i64 %75, %76
  br i1 %cmp29, label %for.body30, label %for.end43

for.body30:                                       ; preds = %for.cond28
  %77 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %a_object, align 4
  %78 = load i64, i64* %i, align 8
  %call31 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %77, i64 %78)
  %79 = ptrtoint i8* %call31 to i32
  %80 = inttoptr i32 %79 to i8*
  store i8* %80, i8** %tmp32, align 4
  %81 = load i8*, i8** %tmp32, align 4
  %82 = ptrtoint i8* %81 to i32
  %83 = zext i32 %82 to i64
  %84 = bitcast i8** %key to i64*
  store i64 %83, i64* %84, align 4
  %85 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %a_object, align 4
  %86 = load i8*, i8** %key, align 4
  %call33 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %85, i8* %86)
  %87 = bitcast %Tstruct.Spl_json_value_t_t* %call33 to %Tstruct.json_value_t_t*
  %88 = bitcast %Tstruct.json_value_t_t* %87 to i8*
  %89 = ptrtoint i8* %88 to i32
  %90 = inttoptr i32 %89 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %90, %Tstruct.Spl_json_value_t_t** %tmp34, align 4
  %91 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp34, align 4
  %92 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %b_object, align 4
  %93 = load i8*, i8** %key, align 4
  %call35 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %92, i8* %93)
  %94 = bitcast %Tstruct.Spl_json_value_t_t* %call35 to %Tstruct.json_value_t_t*
  %95 = bitcast %Tstruct.json_value_t_t* %94 to i8*
  %96 = ptrtoint i8* %95 to i32
  %97 = inttoptr i32 %96 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %97, %Tstruct.Spl_json_value_t_t** %tmp36, align 4
  %98 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp36, align 4
  %call37 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_value_equals to i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %91, %Tstruct.Spl_json_value_t_t* %98)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %for.body30
  store i32 0, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %for.body30
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %99 = load i64, i64* %i, align 8
  %inc42 = add i64 %99, 1
  store i64 %inc42, i64* %i, align 8
  br label %for.cond28, !llvm.loop !21

for.end43:                                        ; preds = %for.cond28
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb44:                                          ; preds = %if.end
  %100 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %call45 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %100)
  %101 = ptrtoint i8* %call45 to i32
  %102 = inttoptr i32 %101 to i8*
  store i8* %102, i8** %tmp46, align 4
  %103 = load i8*, i8** %tmp46, align 4
  %104 = ptrtoint i8* %103 to i32
  %105 = zext i32 %104 to i64
  %106 = bitcast i8** %a_string to i64*
  store i64 %105, i64* %106, align 4
  %107 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %call47 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %107)
  %108 = ptrtoint i8* %call47 to i32
  %109 = inttoptr i32 %108 to i8*
  store i8* %109, i8** %tmp48, align 4
  %110 = load i8*, i8** %tmp48, align 4
  %111 = ptrtoint i8* %110 to i32
  %112 = zext i32 %111 to i64
  %113 = bitcast i8** %b_string to i64*
  store i64 %112, i64* %113, align 4
  %114 = load i8*, i8** %a_string, align 4
  %115 = ptrtoint i8* %114 to i32
  %116 = zext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = ptrtoint i8* %117 to i32
  %cmp49 = icmp eq i32 %118, 0
  br i1 %cmp49, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb44
  %119 = load i8*, i8** %b_string, align 4
  %120 = ptrtoint i8* %119 to i32
  %121 = zext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = ptrtoint i8* %122 to i32
  %cmp50 = icmp eq i32 %123, 0
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %lor.lhs.false, %sw.bb44
  store i32 0, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %lor.lhs.false
  %124 = load i8*, i8** %a_string, align 4
  %125 = load i8*, i8** %b_string, align 4
  %126 = load i32, i32* @sbxHeapRange, align 8
  %127 = load i64, i64* @sbxHeap, align 8
  %128 = ptrtoint i8* %124 to i32
  %129 = zext i32 %128 to i64
  %130 = add i64 %127, %129
  %131 = icmp ult i32 %128, %126
  br i1 %131, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end52
  %132 = inttoptr i64 %130 to i8*
  %133 = load i32, i32* @sbxHeapRange, align 8
  %134 = load i64, i64* @sbxHeap, align 8
  %135 = ptrtoint i8* %125 to i32
  %136 = zext i32 %135 to i64
  %137 = add i64 %134, %136
  %138 = icmp ult i32 %135, %133
  br i1 %138, label %_Dynamic_check.succeeded54, label %_Dynamic_check.failed53

_Dynamic_check.succeeded54:                       ; preds = %_Dynamic_check.succeeded
  %139 = inttoptr i64 %137 to i8*
  %call55 = call i32 @t_strcmp(i8* %132, i8* %139)
  %cmp56 = icmp eq i32 %call55, 0
  %conv = zext i1 %cmp56 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end52
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed53:                          ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

sw.bb57:                                          ; preds = %if.end
  %140 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %call58 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %140)
  %141 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %call59 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %141)
  %cmp60 = icmp eq i32 %call58, %call59
  %conv61 = zext i1 %cmp60 to i32
  store i32 %conv61, i32* %retval, align 4
  br label %return

sw.bb62:                                          ; preds = %if.end
  %142 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %call63 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %142)
  %143 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %call64 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %143)
  %sub = fsub double %call63, %call64
  %144 = call double @llvm.fabs.f64(double %sub)
  %cmp65 = fcmp olt double %144, 0x3EB0C6F7A0B5ED8D
  %conv66 = zext i1 %cmp65 to i32
  store i32 %conv66, i32* %retval, align 4
  br label %return

sw.bb67:                                          ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb68:                                          ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb68, %sw.bb67, %sw.bb62, %sw.bb57, %_Dynamic_check.succeeded54, %if.then51, %for.end43, %if.then39, %if.then26, %for.end, %if.then16, %if.then8, %if.then
  %145 = load i32, i32* %retval, align 4
  ret i32 %145
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_type(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_object_t_t* @json_object(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  %4 = bitcast %Tstruct.Spl_json_object_t_t* %call to %Tstruct.json_object_t_t*
  %5 = bitcast %Tstruct.json_object_t_t* %4 to i8*
  %6 = ptrtoint i8* %5 to i32
  %7 = inttoptr i32 %6 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %7, %Tstruct.Spl_json_object_t_t** %tmp, align 4
  %8 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp, align 4
  ret %Tstruct.Spl_json_object_t_t* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_array_t_t* @json_array(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  %4 = bitcast %Tstruct.Spl_json_array_t_t* %call to %Tstruct.json_array_t_t*
  %5 = bitcast %Tstruct.json_array_t_t* %4 to i8*
  %6 = ptrtoint i8* %5 to i32
  %7 = inttoptr i32 %6 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %7, %Tstruct.Spl_json_array_t_t** %tmp, align 4
  %8 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp, align 4
  ret %Tstruct.Spl_json_array_t_t* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_string(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  %4 = ptrtoint i8* %call to i32
  %5 = inttoptr i32 %4 to i8*
  store i8* %5, i8** %tmp, align 4
  %6 = load i8*, i8** %tmp, align 4
  ret i8* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_number(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  ret double %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_boolean(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %3)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_set_escape_slashes(i32 %escape_slashes) #0 {
entry:
  %escape_slashes.addr = alloca i32, align 4
  store i32 %escape_slashes, i32* %escape_slashes.addr, align 4
  %0 = load i32, i32* %escape_slashes.addr, align 4
  store i32 %0, i32* @parson_escape_slashes, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_to_file(%Tstruct.json_value_t_t* %value, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %filename.addr = alloca i8*, align 8
  %return_code = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %serialized_string = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %len = alloca i32, align 4
  %serialized_string_checked = alloca i8*, align 8
  %tmp13 = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 0, i32* %return_code, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i8* @json_serialize_to_string(%Tstruct.Spl_json_value_t_t* %3)
  %4 = ptrtoint i8* %call to i32
  %5 = inttoptr i32 %4 to i8*
  store i8* %5, i8** %tmp, align 4
  %6 = load i8*, i8** %tmp, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = zext i32 %7 to i64
  %9 = bitcast i8** %serialized_string to i64*
  store i64 %8, i64* %9, align 4
  %10 = load i8*, i8** %serialized_string, align 4
  %11 = ptrtoint i8* %10 to i32
  %12 = zext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = ptrtoint i8* %13 to i32
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** %filename.addr, align 8
  %call1 = call noalias %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %17 = bitcast %struct._IO_FILE* %16 to i8*
  %18 = ptrtoint i8* %17 to i32
  %cmp2 = icmp eq i32 %18, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %19 = load i8*, i8** %serialized_string, align 4
  call void @json_free_serialized_string(i8* %19)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %20 = load i8*, i8** %serialized_string, align 4
  %21 = load i32, i32* @sbxHeapRange, align 8
  %22 = load i64, i64* @sbxHeap, align 8
  %23 = ptrtoint i8* %20 to i32
  %24 = zext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = icmp ult i32 %23, %21
  br i1 %26, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end4
  %27 = inttoptr i64 %25 to i8*
  %call5 = call i64 @t_strlen(i8* %27)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %len, align 4
  %28 = load i8*, i8** %serialized_string, align 4
  %29 = load i32, i32* @sbxHeapRange, align 8
  %30 = load i64, i64* @sbxHeap, align 8
  %31 = ptrtoint i8* %28 to i32
  %32 = zext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = icmp ult i32 %31, %29
  br i1 %34, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.succeeded
  %35 = inttoptr i64 %33 to i8*
  %call8 = call i64 @t_strlen(i8* %35)
  %mul = mul i64 %call8, 1
  %call9 = call noalias i8* @malloc(i64 %mul) #10
  store i8* %call9, i8** %serialized_string_checked, align 8
  %36 = load i8*, i8** %serialized_string_checked, align 8
  %37 = load i8*, i8** %serialized_string, align 4
  %38 = load i32, i32* @sbxHeapRange, align 8
  %39 = load i64, i64* @sbxHeap, align 8
  %40 = ptrtoint i8* %37 to i32
  %41 = zext i32 %40 to i64
  %42 = add i64 %39, %41
  %43 = icmp ult i32 %40, %38
  br i1 %43, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded7
  %44 = inttoptr i64 %42 to i8*
  %call12 = call i8* @t_strcpy(i8* %36, i8* %44)
  %45 = ptrtoint i8* %call12 to i32
  %46 = inttoptr i32 %45 to i8*
  store i8* %46, i8** %tmp13, align 4
  %47 = load i8*, i8** %tmp13, align 4
  %48 = load i8*, i8** %serialized_string_checked, align 8
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call14 = call i32 @fputs(i8* %48, %struct._IO_FILE* %49)
  %cmp15 = icmp eq i32 %call14, -1
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %_Dynamic_check.succeeded11
  store i32 -1, i32* %return_code, align 4
  br label %if.end18

_Dynamic_check.failed:                            ; preds = %if.end4
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded7
  call void @llvm.trap() #8
  unreachable

if.end18:                                         ; preds = %if.then17, %_Dynamic_check.succeeded11
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %50)
  %cmp20 = icmp eq i32 %call19, -1
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 -1, i32* %return_code, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18
  %51 = load i8*, i8** %serialized_string, align 4
  call void @json_free_serialized_string(i8* %51)
  %52 = load i8*, i8** %serialized_string_checked, align 8
  call void @free(i8* %52) #10
  %53 = load i32, i32* %return_code, align 4
  store i32 %53, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then3, %if.then
  %54 = load i32, i32* %retval, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

declare dso_local i8* @t_memcpy(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %Tstruct.json_value_t_t* @parse_boolean_value(i8** %str_cpy) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %str_cpy.addr = alloca i8**, align 4
  %true_token_size = alloca i64, align 8
  %false_token_size = alloca i64, align 8
  %tmp = alloca i8*, align 4
  %tmp6 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp17 = alloca i8*, align 4
  %tmp19 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = ptrtoint i8** %str_cpy to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8*** %str_cpy.addr to i64*
  store i64 %1, i64* %2, align 4
  store i64 4, i64* %true_token_size, align 8
  store i64 5, i64* %false_token_size, align 8
  %3 = load i8**, i8*** %str_cpy.addr, align 4
  %4 = load i32, i32* @sbxHeapRange, align 8
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = ptrtoint i8** %3 to i32
  %7 = zext i32 %6 to i64
  %8 = add i64 %5, %7
  %9 = icmp ult i32 %6, %4
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = inttoptr i64 %8 to i8**
  %11 = load i8*, i8** %10, align 4
  %12 = load i64, i64* %true_token_size, align 8
  %13 = load i32, i32* @sbxHeapRange, align 8
  %14 = load i64, i64* @sbxHeap, align 8
  %15 = ptrtoint i8* %11 to i32
  %16 = zext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = icmp ult i32 %15, %13
  br i1 %18, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %19 = inttoptr i64 %17 to i8*
  %call = call i32 @t_strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %19, i64 %12)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded2
  %20 = load i64, i64* %true_token_size, align 8
  %21 = load i8**, i8*** %str_cpy.addr, align 4
  %22 = load i32, i32* @sbxHeapRange, align 8
  %23 = load i64, i64* @sbxHeap, align 8
  %24 = ptrtoint i8** %21 to i32
  %25 = zext i32 %24 to i64
  %26 = add i64 %23, %25
  %27 = icmp ult i32 %24, %22
  br i1 %27, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %if.then
  %28 = inttoptr i64 %26 to i8**
  %29 = load i8*, i8** %28, align 4
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %20
  store i8* %add.ptr, i8** %tmp, align 4
  %30 = load i8*, i8** %tmp, align 4
  %31 = ptrtoint i8* %30 to i32
  %32 = zext i32 %31 to i64
  %33 = bitcast i8** %28 to i64*
  store i64 %32, i64* %33, align 4
  %call5 = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 1)
  %34 = bitcast %Tstruct.Spl_json_value_t_t* %call5 to %Tstruct.json_value_t_t*
  %35 = bitcast %Tstruct.json_value_t_t* %34 to i8*
  %36 = ptrtoint i8* %35 to i32
  %37 = inttoptr i32 %36 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %37, %Tstruct.Spl_json_value_t_t** %tmp6, align 4
  %38 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp6, align 4
  store %Tstruct.Spl_json_value_t_t* %38, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %if.then
  call void @llvm.trap() #8
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded2
  %39 = load i8**, i8*** %str_cpy.addr, align 4
  %40 = load i32, i32* @sbxHeapRange, align 8
  %41 = load i64, i64* @sbxHeap, align 8
  %42 = ptrtoint i8** %39 to i32
  %43 = zext i32 %42 to i64
  %44 = add i64 %41, %43
  %45 = icmp ult i32 %42, %40
  br i1 %45, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %if.else
  %46 = inttoptr i64 %44 to i8**
  %47 = load i8*, i8** %46, align 4
  %48 = load i64, i64* %false_token_size, align 8
  %49 = load i32, i32* @sbxHeapRange, align 8
  %50 = load i64, i64* @sbxHeap, align 8
  %51 = ptrtoint i8* %47 to i32
  %52 = zext i32 %51 to i64
  %53 = add i64 %50, %52
  %54 = icmp ult i32 %51, %49
  br i1 %54, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.succeeded8
  %55 = inttoptr i64 %53 to i8*
  %call11 = call i32 @t_strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %55, i64 %48)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %_Dynamic_check.succeeded10
  %56 = load i64, i64* %false_token_size, align 8
  %57 = load i8**, i8*** %str_cpy.addr, align 4
  %58 = load i32, i32* @sbxHeapRange, align 8
  %59 = load i64, i64* @sbxHeap, align 8
  %60 = ptrtoint i8** %57 to i32
  %61 = zext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = icmp ult i32 %60, %58
  br i1 %63, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %if.then13
  %64 = inttoptr i64 %62 to i8**
  %65 = load i8*, i8** %64, align 4
  %add.ptr16 = getelementptr inbounds i8, i8* %65, i64 %56
  store i8* %add.ptr16, i8** %tmp17, align 4
  %66 = load i8*, i8** %tmp17, align 4
  %67 = ptrtoint i8* %66 to i32
  %68 = zext i32 %67 to i64
  %69 = bitcast i8** %64 to i64*
  store i64 %68, i64* %69, align 4
  %call18 = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 0)
  %70 = bitcast %Tstruct.Spl_json_value_t_t* %call18 to %Tstruct.json_value_t_t*
  %71 = bitcast %Tstruct.json_value_t_t* %70 to i8*
  %72 = ptrtoint i8* %71 to i32
  %73 = inttoptr i32 %72 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %73, %Tstruct.Spl_json_value_t_t** %tmp19, align 4
  %74 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp19, align 4
  store %Tstruct.Spl_json_value_t_t* %74, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed7:                           ; preds = %if.else
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed14:                          ; preds = %if.then13
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded10
  br label %if.end20

if.end20:                                         ; preds = %if.end
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end20, %_Dynamic_check.succeeded15, %_Dynamic_check.succeeded4
  %75 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %75
}

declare dso_local i32 @t_strncmp(i8*, i8*, i64) #3

declare dso_local i8* @t_strncpy(i8*, i8*, i64) #3

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare dso_local i64 @ftell(%struct._IO_FILE*) #3

declare dso_local void @rewind(%struct._IO_FILE*) #3

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE*) #6

declare dso_local i8* @t_strstr(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone tainted uwtable
define internal i32 @json_object_add(%Tstruct.json_object_t_t* %object, i8* %name, %Tstruct.json_value_t_t* %value) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %name.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %7, i32* %8, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %10 = ptrtoint %Tstruct.Spl_json_object_t_t* %9 to i32
  %11 = load i8*, i8** %name.addr, align 4
  %12 = ptrtoint i8* %11 to i32
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %call1 = call i32 @w2c_json_object_add(i8* %call, i32 %10, i32 %12, i32 %14)
  ret i32 %call1
}

declare dso_local i32 @w2c_json_object_add(i8*, i32, i32, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind optnone tainted uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (git@github.com:TypeFlexer/TypeFlexer-Clang.git 1f164950f3cdd384a006410c36b3263be35814e3)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3}
!15 = distinct !{!15, !3}
!16 = distinct !{!16, !3}
!17 = distinct !{!17, !3}
!18 = distinct !{!18, !3}
!19 = distinct !{!19, !3}
!20 = distinct !{!20, !3}
!21 = distinct !{!21, !3}
