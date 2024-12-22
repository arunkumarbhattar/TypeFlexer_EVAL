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
@sbxHeapRange = common global i64 0
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
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = ptrtoint i8* %4 to i32
  %7 = zext i32 %6 to i64
  %8 = add i64 %5, %7
  %9 = ptrtoint i8* %4 to i64
  %10 = load i64, i64* @sbxHeapRange, align 8
  %11 = and i64 %9, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %11, %10
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %entry
  %12 = inttoptr i64 %8 to i8*
  %call2 = call i32 @c_fetch_pointer_offset(i8* %12)
  ret i32 %call2

TaintCheck.failed:                                ; preds = %entry
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
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = ptrtoint i8* %8 to i32
  %11 = zext i32 %10 to i64
  %12 = add i64 %9, %11
  %13 = ptrtoint i8* %8 to i64
  %14 = load i64, i64* @sbxHeapRange, align 8
  %15 = and i64 %13, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %15, %14
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %entry
  %16 = inttoptr i64 %12 to i8*
  %call1 = call i32 @c_fetch_pointer_offset(i8* %16)
  ret i32 %call1

TaintCheck.failed:                                ; preds = %entry
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
  %tmp50 = alloca i8*, align 4
  %output_tmp = alloca i8**, align 4
  %tmp52 = alloca i8*, align 4
  %resized_output = alloca i8*, align 4
  %tmp87 = alloca i8*, align 4
  %tmp99 = alloca i8*, align 4
  %tmp100 = alloca i8*, align 4
  %tmp104 = alloca i8*, align 4
  %tmp105 = alloca i8*, align 4
  %tmp106 = alloca i8*, align 4
  %tmp107 = alloca i8*, align 4
  %tmp115 = alloca i8*, align 4
  %tmp120 = alloca i8*, align 4
  %tmp121 = alloca i8*, align 4
  %tmp123 = alloca i8*, align 4
  %tmp124 = alloca i8*, align 4
  %0 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %0, i64* @sbxHeapRange, align 8
  %1 = ptrtoint i8* %input to i32
  %2 = zext i32 %1 to i64
  %3 = bitcast i8** %input.addr to i64*
  store i64 %2, i64* %3, align 4
  store i64 %len, i64* %len.addr, align 8
  %4 = load i8*, i8** %input.addr, align 4
  %5 = ptrtoint i8* %4 to i32
  %6 = zext i32 %5 to i64
  %7 = bitcast i8** %input_ptr to i64*
  store i64 %6, i64* %7, align 4
  %8 = load i64, i64* %len.addr, align 8
  %add = add i64 %8, 1
  %mul = mul i64 %add, 1
  store i64 %mul, i64* %initial_size, align 8
  store i64 0, i64* %final_size, align 8
  %9 = bitcast i8** %output to i64*
  store i64 0, i64* %9, align 4
  %10 = load i64, i64* %initial_size, align 8
  %call = call i8* @string_tainted_malloc(i64 %10)
  %11 = ptrtoint i8* %call to i32
  %12 = inttoptr i32 %11 to i8*
  store i8* %12, i8** %tmp, align 4
  %13 = load i8*, i8** %tmp, align 4
  %14 = ptrtoint i8* %13 to i32
  %15 = zext i32 %14 to i64
  %16 = bitcast i8** %output to i64*
  store i64 %15, i64* %16, align 4
  %17 = bitcast i8** %output_ptr to i64*
  store i64 0, i64* %17, align 4
  %18 = load i8*, i8** %output, align 4
  %19 = ptrtoint i8* %18 to i32
  %20 = zext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = ptrtoint i8* %21 to i32
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %23 = load i8*, i8** %output, align 4
  %24 = ptrtoint i8* %23 to i32
  %25 = zext i32 %24 to i64
  %26 = bitcast i8** %output_ptr to i64*
  store i64 %25, i64* %26, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end76, %if.end
  %27 = load i8*, i8** %input_ptr, align 4
  %28 = load i64, i64* @sbxHeap, align 8
  %29 = ptrtoint i8* %27 to i32
  %30 = zext i32 %29 to i64
  %31 = add i64 %28, %30
  %32 = ptrtoint i8* %27 to i64
  %33 = load i64, i64* @sbxHeapRange, align 8
  %34 = and i64 %32, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %34, %33
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %while.cond
  %35 = inttoptr i64 %31 to i8*
  %36 = load i8, i8* %35, align 1
  %conv = sext i8 %36 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %TaintCheck.succeeded
  %37 = load i8*, i8** %input_ptr, align 4
  %38 = load i8*, i8** %input.addr, align 4
  %39 = ptrtoint i8* %37 to i32
  %sub.ptr.lhs.cast = zext i32 %39 to i64
  %40 = ptrtoint i8* %38 to i32
  %sub.ptr.rhs.cast = zext i32 %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %41 = load i64, i64* %len.addr, align 8
  %cmp3 = icmp ult i64 %sub.ptr.sub, %41
  %conv4 = zext i1 %cmp3 to i32
  %conv5 = sext i32 %conv4 to i64
  %tobool = icmp ne i64 %conv5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %TaintCheck.succeeded
  %42 = phi i1 [ false, %TaintCheck.succeeded ], [ %tobool, %land.rhs ]
  br i1 %42, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %43 = load i8*, i8** %input_ptr, align 4
  %44 = load i64, i64* @sbxHeap, align 8
  %45 = ptrtoint i8* %43 to i32
  %46 = zext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = ptrtoint i8* %43 to i64
  %49 = load i64, i64* @sbxHeapRange, align 8
  %50 = and i64 %48, 4294967295
  %SandMem.TaintCheck6 = icmp ult i64 %50, %49
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded8, label %TaintCheck.failed7

TaintCheck.succeeded8:                            ; preds = %while.body
  %51 = inttoptr i64 %47 to i8*
  %52 = load i8, i8* %51, align 1
  %conv9 = sext i8 %52 to i32
  %cmp10 = icmp eq i32 %conv9, 92
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %TaintCheck.succeeded8
  %53 = load i8*, i8** %input_ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %53, i32 1
  %54 = ptrtoint i8* %incdec.ptr to i32
  %55 = zext i32 %54 to i64
  %56 = bitcast i8** %input_ptr to i64*
  store i64 %55, i64* %56, align 4
  %57 = load i8*, i8** %input_ptr, align 4
  %58 = load i64, i64* @sbxHeap, align 8
  %59 = ptrtoint i8* %57 to i32
  %60 = zext i32 %59 to i64
  %61 = add i64 %58, %60
  %62 = ptrtoint i8* %57 to i64
  %63 = load i64, i64* @sbxHeapRange, align 8
  %64 = and i64 %62, 4294967295
  %SandMem.TaintCheck13 = icmp ult i64 %64, %63
  br i1 %SandMem.TaintCheck13, label %TaintCheck.succeeded15, label %TaintCheck.failed14

TaintCheck.succeeded15:                           ; preds = %if.then12
  %65 = inttoptr i64 %61 to i8*
  %66 = load i8, i8* %65, align 1
  %conv16 = sext i8 %66 to i32
  switch i32 %conv16, label %sw.default [
    i32 34, label %sw.bb
    i32 92, label %sw.bb20
    i32 47, label %sw.bb24
    i32 98, label %sw.bb28
    i32 102, label %sw.bb32
    i32 110, label %sw.bb36
    i32 114, label %sw.bb40
    i32 116, label %sw.bb44
    i32 117, label %sw.bb48
  ]

TaintCheck.failed:                                ; preds = %while.cond
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed7:                               ; preds = %while.body
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed14:                              ; preds = %if.then12
  call void @llvm.trap() #8
  unreachable

sw.bb:                                            ; preds = %TaintCheck.succeeded15
  %67 = load i8*, i8** %output_ptr, align 4
  %68 = load i64, i64* @sbxHeap, align 8
  %69 = ptrtoint i8* %67 to i32
  %70 = zext i32 %69 to i64
  %71 = add i64 %68, %70
  %72 = ptrtoint i8* %67 to i64
  %73 = load i64, i64* @sbxHeapRange, align 8
  %74 = and i64 %72, 4294967295
  %SandMem.TaintCheck17 = icmp ult i64 %74, %73
  br i1 %SandMem.TaintCheck17, label %TaintCheck.succeeded19, label %TaintCheck.failed18

TaintCheck.succeeded19:                           ; preds = %sw.bb
  %75 = inttoptr i64 %71 to i8*
  store i8 34, i8* %75, align 1
  br label %sw.epilog

TaintCheck.failed18:                              ; preds = %sw.bb
  call void @llvm.trap() #8
  unreachable

sw.bb20:                                          ; preds = %TaintCheck.succeeded15
  %76 = load i8*, i8** %output_ptr, align 4
  %77 = load i64, i64* @sbxHeap, align 8
  %78 = ptrtoint i8* %76 to i32
  %79 = zext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = ptrtoint i8* %76 to i64
  %82 = load i64, i64* @sbxHeapRange, align 8
  %83 = and i64 %81, 4294967295
  %SandMem.TaintCheck21 = icmp ult i64 %83, %82
  br i1 %SandMem.TaintCheck21, label %TaintCheck.succeeded23, label %TaintCheck.failed22

TaintCheck.succeeded23:                           ; preds = %sw.bb20
  %84 = inttoptr i64 %80 to i8*
  store i8 92, i8* %84, align 1
  br label %sw.epilog

TaintCheck.failed22:                              ; preds = %sw.bb20
  call void @llvm.trap() #8
  unreachable

sw.bb24:                                          ; preds = %TaintCheck.succeeded15
  %85 = load i8*, i8** %output_ptr, align 4
  %86 = load i64, i64* @sbxHeap, align 8
  %87 = ptrtoint i8* %85 to i32
  %88 = zext i32 %87 to i64
  %89 = add i64 %86, %88
  %90 = ptrtoint i8* %85 to i64
  %91 = load i64, i64* @sbxHeapRange, align 8
  %92 = and i64 %90, 4294967295
  %SandMem.TaintCheck25 = icmp ult i64 %92, %91
  br i1 %SandMem.TaintCheck25, label %TaintCheck.succeeded27, label %TaintCheck.failed26

TaintCheck.succeeded27:                           ; preds = %sw.bb24
  %93 = inttoptr i64 %89 to i8*
  store i8 47, i8* %93, align 1
  br label %sw.epilog

TaintCheck.failed26:                              ; preds = %sw.bb24
  call void @llvm.trap() #8
  unreachable

sw.bb28:                                          ; preds = %TaintCheck.succeeded15
  %94 = load i8*, i8** %output_ptr, align 4
  %95 = load i64, i64* @sbxHeap, align 8
  %96 = ptrtoint i8* %94 to i32
  %97 = zext i32 %96 to i64
  %98 = add i64 %95, %97
  %99 = ptrtoint i8* %94 to i64
  %100 = load i64, i64* @sbxHeapRange, align 8
  %101 = and i64 %99, 4294967295
  %SandMem.TaintCheck29 = icmp ult i64 %101, %100
  br i1 %SandMem.TaintCheck29, label %TaintCheck.succeeded31, label %TaintCheck.failed30

TaintCheck.succeeded31:                           ; preds = %sw.bb28
  %102 = inttoptr i64 %98 to i8*
  store i8 8, i8* %102, align 1
  br label %sw.epilog

TaintCheck.failed30:                              ; preds = %sw.bb28
  call void @llvm.trap() #8
  unreachable

sw.bb32:                                          ; preds = %TaintCheck.succeeded15
  %103 = load i8*, i8** %output_ptr, align 4
  %104 = load i64, i64* @sbxHeap, align 8
  %105 = ptrtoint i8* %103 to i32
  %106 = zext i32 %105 to i64
  %107 = add i64 %104, %106
  %108 = ptrtoint i8* %103 to i64
  %109 = load i64, i64* @sbxHeapRange, align 8
  %110 = and i64 %108, 4294967295
  %SandMem.TaintCheck33 = icmp ult i64 %110, %109
  br i1 %SandMem.TaintCheck33, label %TaintCheck.succeeded35, label %TaintCheck.failed34

TaintCheck.succeeded35:                           ; preds = %sw.bb32
  %111 = inttoptr i64 %107 to i8*
  store i8 12, i8* %111, align 1
  br label %sw.epilog

TaintCheck.failed34:                              ; preds = %sw.bb32
  call void @llvm.trap() #8
  unreachable

sw.bb36:                                          ; preds = %TaintCheck.succeeded15
  %112 = load i8*, i8** %output_ptr, align 4
  %113 = load i64, i64* @sbxHeap, align 8
  %114 = ptrtoint i8* %112 to i32
  %115 = zext i32 %114 to i64
  %116 = add i64 %113, %115
  %117 = ptrtoint i8* %112 to i64
  %118 = load i64, i64* @sbxHeapRange, align 8
  %119 = and i64 %117, 4294967295
  %SandMem.TaintCheck37 = icmp ult i64 %119, %118
  br i1 %SandMem.TaintCheck37, label %TaintCheck.succeeded39, label %TaintCheck.failed38

TaintCheck.succeeded39:                           ; preds = %sw.bb36
  %120 = inttoptr i64 %116 to i8*
  store i8 10, i8* %120, align 1
  br label %sw.epilog

TaintCheck.failed38:                              ; preds = %sw.bb36
  call void @llvm.trap() #8
  unreachable

sw.bb40:                                          ; preds = %TaintCheck.succeeded15
  %121 = load i8*, i8** %output_ptr, align 4
  %122 = load i64, i64* @sbxHeap, align 8
  %123 = ptrtoint i8* %121 to i32
  %124 = zext i32 %123 to i64
  %125 = add i64 %122, %124
  %126 = ptrtoint i8* %121 to i64
  %127 = load i64, i64* @sbxHeapRange, align 8
  %128 = and i64 %126, 4294967295
  %SandMem.TaintCheck41 = icmp ult i64 %128, %127
  br i1 %SandMem.TaintCheck41, label %TaintCheck.succeeded43, label %TaintCheck.failed42

TaintCheck.succeeded43:                           ; preds = %sw.bb40
  %129 = inttoptr i64 %125 to i8*
  store i8 13, i8* %129, align 1
  br label %sw.epilog

TaintCheck.failed42:                              ; preds = %sw.bb40
  call void @llvm.trap() #8
  unreachable

sw.bb44:                                          ; preds = %TaintCheck.succeeded15
  %130 = load i8*, i8** %output_ptr, align 4
  %131 = load i64, i64* @sbxHeap, align 8
  %132 = ptrtoint i8* %130 to i32
  %133 = zext i32 %132 to i64
  %134 = add i64 %131, %133
  %135 = ptrtoint i8* %130 to i64
  %136 = load i64, i64* @sbxHeapRange, align 8
  %137 = and i64 %135, 4294967295
  %SandMem.TaintCheck45 = icmp ult i64 %137, %136
  br i1 %SandMem.TaintCheck45, label %TaintCheck.succeeded47, label %TaintCheck.failed46

TaintCheck.succeeded47:                           ; preds = %sw.bb44
  %138 = inttoptr i64 %134 to i8*
  store i8 9, i8* %138, align 1
  br label %sw.epilog

TaintCheck.failed46:                              ; preds = %sw.bb44
  call void @llvm.trap() #8
  unreachable

sw.bb48:                                          ; preds = %TaintCheck.succeeded15
  %call49 = call i8* @t_malloc(i64 8)
  %139 = ptrtoint i8* %call49 to i32
  %140 = inttoptr i32 %139 to i8*
  store i8* %140, i8** %tmp50, align 4
  %141 = load i8*, i8** %tmp50, align 4
  %142 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %142, i64* @sbxHeapRange, align 8
  %143 = bitcast i8* %141 to i8**
  %144 = ptrtoint i8** %143 to i32
  %145 = zext i32 %144 to i64
  %146 = bitcast i8*** %input_tmp to i64*
  store i64 %145, i64* %146, align 4
  %147 = load i8*, i8** %input_ptr, align 4
  %148 = load i8**, i8*** %input_tmp, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %148, i64 0
  %149 = load i64, i64* @sbxHeap, align 8
  %150 = ptrtoint i8** %arrayidx to i32
  %151 = zext i32 %150 to i64
  %152 = add i64 %149, %151
  %153 = inttoptr i64 %152 to i8**
  %154 = ptrtoint i8* %147 to i32
  %155 = zext i32 %154 to i64
  %156 = bitcast i8** %153 to i64*
  store i64 %155, i64* %156, align 4
  %call51 = call i8* @t_malloc(i64 8)
  %157 = ptrtoint i8* %call51 to i32
  %158 = inttoptr i32 %157 to i8*
  store i8* %158, i8** %tmp52, align 4
  %159 = load i8*, i8** %tmp52, align 4
  %160 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %160, i64* @sbxHeapRange, align 8
  %161 = bitcast i8* %159 to i8**
  %162 = ptrtoint i8** %161 to i32
  %163 = zext i32 %162 to i64
  %164 = bitcast i8*** %output_tmp to i64*
  store i64 %163, i64* %164, align 4
  %165 = load i8*, i8** %output_ptr, align 4
  %166 = load i8**, i8*** %output_tmp, align 4
  %arrayidx53 = getelementptr inbounds i8*, i8** %166, i64 0
  %167 = load i64, i64* @sbxHeap, align 8
  %168 = ptrtoint i8** %arrayidx53 to i32
  %169 = zext i32 %168 to i64
  %170 = add i64 %167, %169
  %171 = inttoptr i64 %170 to i8**
  %172 = ptrtoint i8* %165 to i32
  %173 = zext i32 %172 to i64
  %174 = bitcast i8** %171 to i64*
  store i64 %173, i64* %174, align 4
  %175 = load i8**, i8*** %input_tmp, align 4
  %176 = load i8**, i8*** %output_tmp, align 4
  %call54 = call i32 @parse_utf16(i8** %175, i8** %176)
  %cmp55 = icmp eq i32 %call54, -1
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %sw.bb48
  br label %error

if.end58:                                         ; preds = %sw.bb48
  %177 = load i8**, i8*** %input_tmp, align 4
  %arrayidx59 = getelementptr inbounds i8*, i8** %177, i64 0
  %178 = load i64, i64* @sbxHeap, align 8
  %179 = ptrtoint i8** %arrayidx59 to i32
  %180 = zext i32 %179 to i64
  %181 = add i64 %178, %180
  %182 = inttoptr i64 %181 to i8**
  %183 = load i8*, i8** %182, align 4
  %184 = ptrtoint i8* %183 to i32
  %185 = zext i32 %184 to i64
  %186 = bitcast i8** %input_ptr to i64*
  store i64 %185, i64* %186, align 4
  %187 = load i8**, i8*** %output_tmp, align 4
  %arrayidx60 = getelementptr inbounds i8*, i8** %187, i64 0
  %188 = load i64, i64* @sbxHeap, align 8
  %189 = ptrtoint i8** %arrayidx60 to i32
  %190 = zext i32 %189 to i64
  %191 = add i64 %188, %190
  %192 = inttoptr i64 %191 to i8**
  %193 = load i8*, i8** %192, align 4
  %194 = ptrtoint i8* %193 to i32
  %195 = zext i32 %194 to i64
  %196 = bitcast i8** %output_ptr to i64*
  store i64 %195, i64* %196, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %TaintCheck.succeeded15
  br label %error

sw.epilog:                                        ; preds = %if.end58, %TaintCheck.succeeded47, %TaintCheck.succeeded43, %TaintCheck.succeeded39, %TaintCheck.succeeded35, %TaintCheck.succeeded31, %TaintCheck.succeeded27, %TaintCheck.succeeded23, %TaintCheck.succeeded19
  br label %if.end76

if.else:                                          ; preds = %TaintCheck.succeeded8
  %197 = load i8*, i8** %input_ptr, align 4
  %198 = load i64, i64* @sbxHeap, align 8
  %199 = ptrtoint i8* %197 to i32
  %200 = zext i32 %199 to i64
  %201 = add i64 %198, %200
  %202 = ptrtoint i8* %197 to i64
  %203 = load i64, i64* @sbxHeapRange, align 8
  %204 = and i64 %202, 4294967295
  %SandMem.TaintCheck61 = icmp ult i64 %204, %203
  br i1 %SandMem.TaintCheck61, label %TaintCheck.succeeded63, label %TaintCheck.failed62

TaintCheck.succeeded63:                           ; preds = %if.else
  %205 = inttoptr i64 %201 to i8*
  %206 = load i8, i8* %205, align 1
  %conv64 = zext i8 %206 to i32
  %cmp65 = icmp slt i32 %conv64, 32
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %TaintCheck.succeeded63
  br label %error

TaintCheck.failed62:                              ; preds = %if.else
  call void @llvm.trap() #8
  unreachable

if.else68:                                        ; preds = %TaintCheck.succeeded63
  %207 = load i8*, i8** %input_ptr, align 4
  %208 = load i64, i64* @sbxHeap, align 8
  %209 = ptrtoint i8* %207 to i32
  %210 = zext i32 %209 to i64
  %211 = add i64 %208, %210
  %212 = ptrtoint i8* %207 to i64
  %213 = load i64, i64* @sbxHeapRange, align 8
  %214 = and i64 %212, 4294967295
  %SandMem.TaintCheck69 = icmp ult i64 %214, %213
  br i1 %SandMem.TaintCheck69, label %TaintCheck.succeeded71, label %TaintCheck.failed70

TaintCheck.succeeded71:                           ; preds = %if.else68
  %215 = inttoptr i64 %211 to i8*
  %216 = load i8, i8* %215, align 1
  %217 = load i8*, i8** %output_ptr, align 4
  %218 = load i64, i64* @sbxHeap, align 8
  %219 = ptrtoint i8* %217 to i32
  %220 = zext i32 %219 to i64
  %221 = add i64 %218, %220
  %222 = ptrtoint i8* %217 to i64
  %223 = load i64, i64* @sbxHeapRange, align 8
  %224 = and i64 %222, 4294967295
  %SandMem.TaintCheck72 = icmp ult i64 %224, %223
  br i1 %SandMem.TaintCheck72, label %TaintCheck.succeeded74, label %TaintCheck.failed73

TaintCheck.succeeded74:                           ; preds = %TaintCheck.succeeded71
  %225 = inttoptr i64 %221 to i8*
  store i8 %216, i8* %225, align 1
  br label %if.end75

TaintCheck.failed70:                              ; preds = %if.else68
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed73:                              ; preds = %TaintCheck.succeeded71
  call void @llvm.trap() #8
  unreachable

if.end75:                                         ; preds = %TaintCheck.succeeded74
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %sw.epilog
  %226 = load i8*, i8** %output_ptr, align 4
  %incdec.ptr77 = getelementptr inbounds i8, i8* %226, i32 1
  %227 = ptrtoint i8* %incdec.ptr77 to i32
  %228 = zext i32 %227 to i64
  %229 = bitcast i8** %output_ptr to i64*
  store i64 %228, i64* %229, align 4
  %230 = load i8*, i8** %input_ptr, align 4
  %incdec.ptr78 = getelementptr inbounds i8, i8* %230, i32 1
  %231 = ptrtoint i8* %incdec.ptr78 to i32
  %232 = zext i32 %231 to i64
  %233 = bitcast i8** %input_ptr to i64*
  store i64 %232, i64* %233, align 4
  br label %while.cond, !llvm.loop !2

while.end:                                        ; preds = %land.end
  %234 = load i8*, i8** %output_ptr, align 4
  %235 = load i64, i64* @sbxHeap, align 8
  %236 = ptrtoint i8* %234 to i32
  %237 = zext i32 %236 to i64
  %238 = add i64 %235, %237
  %239 = ptrtoint i8* %234 to i64
  %240 = load i64, i64* @sbxHeapRange, align 8
  %241 = and i64 %239, 4294967295
  %SandMem.TaintCheck79 = icmp ult i64 %241, %240
  br i1 %SandMem.TaintCheck79, label %TaintCheck.succeeded81, label %TaintCheck.failed80

TaintCheck.succeeded81:                           ; preds = %while.end
  %242 = inttoptr i64 %238 to i8*
  store i8 0, i8* %242, align 1
  %243 = load i8*, i8** %output_ptr, align 4
  %244 = load i8*, i8** %output, align 4
  %245 = ptrtoint i8* %243 to i32
  %sub.ptr.lhs.cast82 = zext i32 %245 to i64
  %246 = ptrtoint i8* %244 to i32
  %sub.ptr.rhs.cast83 = zext i32 %246 to i64
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  %add85 = add i64 %sub.ptr.sub84, 1
  store i64 %add85, i64* %final_size, align 8
  %247 = load i64, i64* %final_size, align 8
  %call86 = call i8* @string_tainted_malloc(i64 %247)
  %248 = ptrtoint i8* %call86 to i32
  %249 = inttoptr i32 %248 to i8*
  store i8* %249, i8** %tmp87, align 4
  %250 = load i8*, i8** %tmp87, align 4
  %251 = ptrtoint i8* %250 to i32
  %252 = zext i32 %251 to i64
  %253 = bitcast i8** %resized_output to i64*
  store i64 %252, i64* %253, align 4
  %254 = load i8*, i8** %resized_output, align 4
  %255 = ptrtoint i8* %254 to i32
  %256 = zext i32 %255 to i64
  %257 = inttoptr i64 %256 to i8*
  %258 = ptrtoint i8* %257 to i32
  %cmp88 = icmp eq i32 %258, 0
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %TaintCheck.succeeded81
  br label %error

TaintCheck.failed80:                              ; preds = %while.end
  call void @llvm.trap() #8
  unreachable

if.end91:                                         ; preds = %TaintCheck.succeeded81
  %259 = load i8*, i8** %resized_output, align 4
  %260 = load i8*, i8** %output, align 4
  %261 = load i64, i64* %final_size, align 8
  %262 = load i64, i64* @sbxHeap, align 8
  %263 = ptrtoint i8* %259 to i32
  %264 = zext i32 %263 to i64
  %265 = add i64 %262, %264
  %266 = ptrtoint i8* %259 to i64
  %267 = load i64, i64* @sbxHeapRange, align 8
  %268 = and i64 %266, 4294967295
  %SandMem.TaintCheck92 = icmp ult i64 %268, %267
  br i1 %SandMem.TaintCheck92, label %TaintCheck.succeeded94, label %TaintCheck.failed93

TaintCheck.succeeded94:                           ; preds = %if.end91
  %269 = inttoptr i64 %265 to i8*
  %270 = load i64, i64* @sbxHeap, align 8
  %271 = ptrtoint i8* %260 to i32
  %272 = zext i32 %271 to i64
  %273 = add i64 %270, %272
  %274 = ptrtoint i8* %260 to i64
  %275 = load i64, i64* @sbxHeapRange, align 8
  %276 = and i64 %274, 4294967295
  %SandMem.TaintCheck95 = icmp ult i64 %276, %275
  br i1 %SandMem.TaintCheck95, label %TaintCheck.succeeded97, label %TaintCheck.failed96

TaintCheck.succeeded97:                           ; preds = %TaintCheck.succeeded94
  %277 = inttoptr i64 %273 to i8*
  %call98 = call i8* @t_memcpy(i8* %269, i8* %277, i64 %261)
  %278 = ptrtoint i8* %call98 to i32
  %279 = inttoptr i32 %278 to i8*
  store i8* %279, i8** %tmp99, align 4
  %280 = load i8*, i8** %tmp99, align 4
  %281 = load i8*, i8** %output, align 4
  %282 = ptrtoint i8* %281 to i32
  %IsoHeap.is_null = icmp eq i32 %282, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %TaintCheck.succeeded97
  %283 = load i8*, i8** %output, align 4
  %284 = load i8*, i8** %output, align 4
  %add.ptr = getelementptr inbounds i8, i8* %284, i64 1
  store i8* %add.ptr, i8** %tmp100, align 4
  %285 = load i8*, i8** %tmp100, align 4
  %286 = ptrtoint i8* %281 to i32
  %IsoHeap.non_null = icmp ne i32 %286, 0
  br i1 %IsoHeap.non_null, label %TaintCheck.succeeded102, label %TaintCheck.failed101

TaintCheck.succeeded102:                          ; preds = %IsoHeap.subsumption
  %add.ptr103 = getelementptr inbounds i8, i8* %281, i64 0
  %287 = ptrtoint i8* %283 to i32
  %288 = inttoptr i32 %287 to i8*
  store i8* %288, i8** %tmp104, align 4
  %289 = load i8*, i8** %tmp104, align 4
  %290 = ptrtoint i8* %281 to i32
  %291 = inttoptr i32 %290 to i8*
  store i8* %291, i8** %tmp105, align 4
  %292 = load i8*, i8** %tmp105, align 4
  %293 = ptrtoint i8* %289 to i32
  %294 = ptrtoint i8* %292 to i32
  %IsoHeap.lower = icmp ule i32 %293, %294
  %295 = ptrtoint i8* %add.ptr103 to i32
  %296 = inttoptr i32 %295 to i8*
  store i8* %296, i8** %tmp106, align 4
  %297 = load i8*, i8** %tmp106, align 4
  %298 = ptrtoint i8* %285 to i32
  %299 = inttoptr i32 %298 to i8*
  store i8* %299, i8** %tmp107, align 4
  %300 = load i8*, i8** %tmp107, align 4
  %301 = ptrtoint i8* %297 to i32
  %302 = ptrtoint i8* %300 to i32
  %IsoHeap.upper = icmp ule i32 %301, %302
  %IsoHeap.cast = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed108

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded102, %TaintCheck.succeeded97
  %303 = load i64, i64* @sbxHeap, align 8
  %304 = ptrtoint i8* %281 to i32
  %305 = zext i32 %304 to i64
  %306 = add i64 %303, %305
  %307 = ptrtoint i8* %281 to i64
  %308 = load i64, i64* @sbxHeapRange, align 8
  %309 = and i64 %307, 4294967295
  %SandMem.TaintCheck109 = icmp ult i64 %309, %308
  br i1 %SandMem.TaintCheck109, label %TaintCheck.succeeded111, label %TaintCheck.failed110

TaintCheck.succeeded111:                          ; preds = %IsoHeap.success
  %310 = inttoptr i64 %306 to i8*
  call void @t_free(i8* %310)
  %311 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %311, i64* @sbxHeapRange, align 8
  %312 = load i8*, i8** %resized_output, align 4
  store i8* %312, i8** %retval, align 8
  br label %return

TaintCheck.failed93:                              ; preds = %if.end91
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed96:                              ; preds = %TaintCheck.succeeded94
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed101:                             ; preds = %IsoHeap.subsumption
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed108:                             ; preds = %TaintCheck.succeeded102
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed110:                             ; preds = %IsoHeap.success
  call void @llvm.trap() #8
  unreachable

error:                                            ; preds = %if.then90, %if.then67, %sw.default, %if.then57, %if.then
  %313 = load i8*, i8** %output, align 4
  %314 = ptrtoint i8* %313 to i32
  %IsoHeap.is_null112 = icmp eq i32 %314, 0
  br i1 %IsoHeap.is_null112, label %IsoHeap.success128, label %IsoHeap.subsumption113

IsoHeap.subsumption113:                           ; preds = %error
  %315 = load i8*, i8** %output, align 4
  %316 = load i8*, i8** %output, align 4
  %add.ptr114 = getelementptr inbounds i8, i8* %316, i64 1
  store i8* %add.ptr114, i8** %tmp115, align 4
  %317 = load i8*, i8** %tmp115, align 4
  %318 = ptrtoint i8* %313 to i32
  %IsoHeap.non_null116 = icmp ne i32 %318, 0
  br i1 %IsoHeap.non_null116, label %TaintCheck.succeeded118, label %TaintCheck.failed117

TaintCheck.succeeded118:                          ; preds = %IsoHeap.subsumption113
  %add.ptr119 = getelementptr inbounds i8, i8* %313, i64 0
  %319 = ptrtoint i8* %315 to i32
  %320 = inttoptr i32 %319 to i8*
  store i8* %320, i8** %tmp120, align 4
  %321 = load i8*, i8** %tmp120, align 4
  %322 = ptrtoint i8* %313 to i32
  %323 = inttoptr i32 %322 to i8*
  store i8* %323, i8** %tmp121, align 4
  %324 = load i8*, i8** %tmp121, align 4
  %325 = ptrtoint i8* %321 to i32
  %326 = ptrtoint i8* %324 to i32
  %IsoHeap.lower122 = icmp ule i32 %325, %326
  %327 = ptrtoint i8* %add.ptr119 to i32
  %328 = inttoptr i32 %327 to i8*
  store i8* %328, i8** %tmp123, align 4
  %329 = load i8*, i8** %tmp123, align 4
  %330 = ptrtoint i8* %317 to i32
  %331 = inttoptr i32 %330 to i8*
  store i8* %331, i8** %tmp124, align 4
  %332 = load i8*, i8** %tmp124, align 4
  %333 = ptrtoint i8* %329 to i32
  %334 = ptrtoint i8* %332 to i32
  %IsoHeap.upper125 = icmp ule i32 %333, %334
  %IsoHeap.cast126 = and i1 %IsoHeap.lower122, %IsoHeap.upper125
  br i1 %IsoHeap.cast126, label %IsoHeap.success128, label %TaintCheck.failed127

IsoHeap.success128:                               ; preds = %TaintCheck.succeeded118, %error
  %335 = load i64, i64* @sbxHeap, align 8
  %336 = ptrtoint i8* %313 to i32
  %337 = zext i32 %336 to i64
  %338 = add i64 %335, %337
  %339 = ptrtoint i8* %313 to i64
  %340 = load i64, i64* @sbxHeapRange, align 8
  %341 = and i64 %339, 4294967295
  %SandMem.TaintCheck129 = icmp ult i64 %341, %340
  br i1 %SandMem.TaintCheck129, label %TaintCheck.succeeded131, label %TaintCheck.failed130

TaintCheck.succeeded131:                          ; preds = %IsoHeap.success128
  %342 = inttoptr i64 %338 to i8*
  call void @t_free(i8* %342)
  %343 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %343, i64* @sbxHeapRange, align 8
  store i8* null, i8** %retval, align 8
  br label %return

TaintCheck.failed117:                             ; preds = %IsoHeap.subsumption113
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed127:                             ; preds = %TaintCheck.succeeded118
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed130:                             ; preds = %IsoHeap.success128
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded131, %TaintCheck.succeeded111
  %344 = load i8*, i8** %retval, align 8
  ret i8* %344
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
  %tmp18 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp21 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp24 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp27 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp30 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %0, i64* @sbxHeapRange, align 8
  %1 = ptrtoint i8** %string to i32
  %2 = zext i32 %1 to i64
  %3 = bitcast i8*** %string.addr to i64*
  store i64 %2, i64* %3, align 4
  store i64 %nesting, i64* %nesting.addr, align 8
  %4 = load i64, i64* %nesting.addr, align 8
  %cmp = icmp ugt i64 %4, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %TaintCheck.succeeded6, %if.end
  %5 = load i8**, i8*** %string.addr, align 4
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = ptrtoint i8** %5 to i32
  %8 = zext i32 %7 to i64
  %9 = add i64 %6, %8
  %10 = ptrtoint i8** %5 to i64
  %11 = load i64, i64* @sbxHeapRange, align 8
  %12 = and i64 %10, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %12, %11
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %while.cond
  %13 = inttoptr i64 %9 to i8**
  %14 = load i8*, i8** %13, align 4
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = ptrtoint i8* %14 to i32
  %17 = zext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = ptrtoint i8* %14 to i64
  %20 = load i64, i64* @sbxHeapRange, align 8
  %21 = and i64 %19, 4294967295
  %SandMem.TaintCheck1 = icmp ult i64 %21, %20
  br i1 %SandMem.TaintCheck1, label %TaintCheck.succeeded3, label %TaintCheck.failed2

TaintCheck.succeeded3:                            ; preds = %TaintCheck.succeeded
  %22 = inttoptr i64 %18 to i8*
  %23 = load i8, i8* %22, align 1
  %conv = zext i8 %23 to i32
  %call = call i32 @isspace(i32 %conv) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %TaintCheck.succeeded3
  %24 = load i8**, i8*** %string.addr, align 4
  %25 = load i64, i64* @sbxHeap, align 8
  %26 = ptrtoint i8** %24 to i32
  %27 = zext i32 %26 to i64
  %28 = add i64 %25, %27
  %29 = ptrtoint i8** %24 to i64
  %30 = load i64, i64* @sbxHeapRange, align 8
  %31 = and i64 %29, 4294967295
  %SandMem.TaintCheck4 = icmp ult i64 %31, %30
  br i1 %SandMem.TaintCheck4, label %TaintCheck.succeeded6, label %TaintCheck.failed5

TaintCheck.succeeded6:                            ; preds = %while.body
  %32 = inttoptr i64 %28 to i8**
  %33 = load i8*, i8** %32, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  %34 = ptrtoint i8* %incdec.ptr to i32
  %35 = zext i32 %34 to i64
  %36 = bitcast i8** %32 to i64*
  store i64 %35, i64* %36, align 4
  br label %while.cond, !llvm.loop !4

TaintCheck.failed:                                ; preds = %while.cond
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed2:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed5:                               ; preds = %while.body
  call void @llvm.trap() #8
  unreachable

while.end:                                        ; preds = %TaintCheck.succeeded3
  %37 = load i8**, i8*** %string.addr, align 4
  %38 = load i64, i64* @sbxHeap, align 8
  %39 = ptrtoint i8** %37 to i32
  %40 = zext i32 %39 to i64
  %41 = add i64 %38, %40
  %42 = ptrtoint i8** %37 to i64
  %43 = load i64, i64* @sbxHeapRange, align 8
  %44 = and i64 %42, 4294967295
  %SandMem.TaintCheck7 = icmp ult i64 %44, %43
  br i1 %SandMem.TaintCheck7, label %TaintCheck.succeeded9, label %TaintCheck.failed8

TaintCheck.succeeded9:                            ; preds = %while.end
  %45 = inttoptr i64 %41 to i8**
  %46 = load i8*, i8** %45, align 4
  %47 = load i64, i64* @sbxHeap, align 8
  %48 = ptrtoint i8* %46 to i32
  %49 = zext i32 %48 to i64
  %50 = add i64 %47, %49
  %51 = ptrtoint i8* %46 to i64
  %52 = load i64, i64* @sbxHeapRange, align 8
  %53 = and i64 %51, 4294967295
  %SandMem.TaintCheck10 = icmp ult i64 %53, %52
  br i1 %SandMem.TaintCheck10, label %TaintCheck.succeeded12, label %TaintCheck.failed11

TaintCheck.succeeded12:                           ; preds = %TaintCheck.succeeded9
  %54 = inttoptr i64 %50 to i8*
  %55 = load i8, i8* %54, align 1
  %conv13 = sext i8 %55 to i32
  switch i32 %conv13, label %sw.default [
    i32 123, label %sw.bb
    i32 91, label %sw.bb15
    i32 34, label %sw.bb19
    i32 102, label %sw.bb22
    i32 116, label %sw.bb22
    i32 45, label %sw.bb25
    i32 48, label %sw.bb25
    i32 49, label %sw.bb25
    i32 50, label %sw.bb25
    i32 51, label %sw.bb25
    i32 52, label %sw.bb25
    i32 53, label %sw.bb25
    i32 54, label %sw.bb25
    i32 55, label %sw.bb25
    i32 56, label %sw.bb25
    i32 57, label %sw.bb25
    i32 110, label %sw.bb28
  ]

TaintCheck.failed8:                               ; preds = %while.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed11:                              ; preds = %TaintCheck.succeeded9
  call void @llvm.trap() #8
  unreachable

sw.bb:                                            ; preds = %TaintCheck.succeeded12
  %56 = load i8**, i8*** %string.addr, align 4
  %57 = load i64, i64* %nesting.addr, align 8
  %add = add i64 %57, 1
  %call14 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**, i64, i8* (i8*, i64)*, %Tstruct.Spl_json_value_t_t* (i8**, i64)*)* @parse_object_value to %Tstruct.Spl_json_value_t_t* (i8**, i64, i8* (i8*, i64)*, %Tstruct.Spl_json_value_t_t* (i8**, i64)*)*)(i8** %56, i64 %add, i8* (i8*, i64)* @process_string, %Tstruct.Spl_json_value_t_t* (i8**, i64)* @parse_value)
  %58 = bitcast %Tstruct.Spl_json_value_t_t* %call14 to %Tstruct.json_value_t_t*
  %59 = bitcast %Tstruct.json_value_t_t* %58 to i8*
  %60 = ptrtoint i8* %59 to i32
  %61 = inttoptr i32 %60 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %61, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %62 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  store %Tstruct.Spl_json_value_t_t* %62, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %TaintCheck.succeeded12
  %63 = load i8**, i8*** %string.addr, align 4
  %64 = load i64, i64* %nesting.addr, align 8
  %add16 = add i64 %64, 1
  %call17 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**, i64, %Tstruct.Spl_json_value_t_t* (i8**, i64)*)* @parse_array_value to %Tstruct.Spl_json_value_t_t* (i8**, i64, %Tstruct.Spl_json_value_t_t* (i8**, i64)*)*)(i8** %63, i64 %add16, %Tstruct.Spl_json_value_t_t* (i8**, i64)* @parse_value)
  %65 = bitcast %Tstruct.Spl_json_value_t_t* %call17 to %Tstruct.json_value_t_t*
  %66 = bitcast %Tstruct.json_value_t_t* %65 to i8*
  %67 = ptrtoint i8* %66 to i32
  %68 = inttoptr i32 %67 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %68, %Tstruct.Spl_json_value_t_t** %tmp18, align 4
  %69 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp18, align 4
  store %Tstruct.Spl_json_value_t_t* %69, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb19:                                          ; preds = %TaintCheck.succeeded12
  %70 = load i8**, i8*** %string.addr, align 4
  %call20 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**, i8* (i8*, i64)*)* @parse_string_value to %Tstruct.Spl_json_value_t_t* (i8**, i8* (i8*, i64)*)*)(i8** %70, i8* (i8*, i64)* @process_string)
  %71 = bitcast %Tstruct.Spl_json_value_t_t* %call20 to %Tstruct.json_value_t_t*
  %72 = bitcast %Tstruct.json_value_t_t* %71 to i8*
  %73 = ptrtoint i8* %72 to i32
  %74 = inttoptr i32 %73 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %74, %Tstruct.Spl_json_value_t_t** %tmp21, align 4
  %75 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp21, align 4
  store %Tstruct.Spl_json_value_t_t* %75, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb22:                                          ; preds = %TaintCheck.succeeded12, %TaintCheck.succeeded12
  %76 = load i8**, i8*** %string.addr, align 4
  %call23 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**)* @parse_boolean_value to %Tstruct.Spl_json_value_t_t* (i8**)*)(i8** %76)
  %77 = bitcast %Tstruct.Spl_json_value_t_t* %call23 to %Tstruct.json_value_t_t*
  %78 = bitcast %Tstruct.json_value_t_t* %77 to i8*
  %79 = ptrtoint i8* %78 to i32
  %80 = inttoptr i32 %79 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %80, %Tstruct.Spl_json_value_t_t** %tmp24, align 4
  %81 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp24, align 4
  store %Tstruct.Spl_json_value_t_t* %81, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb25:                                          ; preds = %TaintCheck.succeeded12, %TaintCheck.succeeded12, %TaintCheck.succeeded12, %TaintCheck.succeeded12, %TaintCheck.succeeded12, %TaintCheck.succeeded12, %TaintCheck.succeeded12, %TaintCheck.succeeded12, %TaintCheck.succeeded12, %TaintCheck.succeeded12, %TaintCheck.succeeded12
  %82 = load i8**, i8*** %string.addr, align 4
  %call26 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**)* @parse_number_value to %Tstruct.Spl_json_value_t_t* (i8**)*)(i8** %82)
  %83 = bitcast %Tstruct.Spl_json_value_t_t* %call26 to %Tstruct.json_value_t_t*
  %84 = bitcast %Tstruct.json_value_t_t* %83 to i8*
  %85 = ptrtoint i8* %84 to i32
  %86 = inttoptr i32 %85 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %86, %Tstruct.Spl_json_value_t_t** %tmp27, align 4
  %87 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp27, align 4
  store %Tstruct.Spl_json_value_t_t* %87, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb28:                                          ; preds = %TaintCheck.succeeded12
  %88 = load i8**, i8*** %string.addr, align 4
  %call29 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8**)* @parse_null_value to %Tstruct.Spl_json_value_t_t* (i8**)*)(i8** %88)
  %89 = bitcast %Tstruct.Spl_json_value_t_t* %call29 to %Tstruct.json_value_t_t*
  %90 = bitcast %Tstruct.json_value_t_t* %89 to i8*
  %91 = ptrtoint i8* %90 to i32
  %92 = inttoptr i32 %91 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %92, %Tstruct.Spl_json_value_t_t** %tmp30, align 4
  %93 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp30, align 4
  store %Tstruct.Spl_json_value_t_t* %93, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.default:                                       ; preds = %TaintCheck.succeeded12
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb15, %sw.bb, %if.then
  %94 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %94
}

declare i64 @c_fetch_sandbox_heap_bound()

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
  %486 = load i64, i64* @sbxHeap, align 8
  %487 = ptrtoint i8* %484 to i32
  %488 = zext i32 %487 to i64
  %489 = add i64 %486, %488
  %490 = ptrtoint i8* %484 to i64
  %491 = load i64, i64* @sbxHeapRange, align 8
  %492 = and i64 %490, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %492, %491
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end352
  %493 = inttoptr i64 %489 to i8*
  %call353 = call i32 (i8*, i8*, ...) @t_sprintf(i8* %493, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), double %485)
  store i32 %call353, i32* %written, align 4
  %494 = load i32, i32* %written, align 4
  %cmp354 = icmp slt i32 %494, 0
  br i1 %cmp354, label %if.then355, label %if.end356

if.then355:                                       ; preds = %TaintCheck.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %if.end352
  call void @llvm.trap() #8
  unreachable

if.end356:                                        ; preds = %TaintCheck.succeeded
  %495 = load i8*, i8** %buf.addr, align 4
  %496 = ptrtoint i8* %495 to i32
  %497 = zext i32 %496 to i64
  %498 = inttoptr i64 %497 to i8*
  %cmp357 = icmp ne i8* %498, null
  br i1 %cmp357, label %if.then358, label %if.end362

if.then358:                                       ; preds = %if.end356
  %499 = load i32, i32* %written, align 4
  %500 = load i8*, i8** %buf.addr, align 4
  %idx.ext359 = sext i32 %499 to i64
  %add.ptr360 = getelementptr inbounds i8, i8* %500, i64 %idx.ext359
  store i8* %add.ptr360, i8** %tmp361, align 4
  %501 = load i8*, i8** %tmp361, align 4
  %502 = ptrtoint i8* %501 to i32
  %503 = zext i32 %502 to i64
  %504 = bitcast i8** %buf.addr to i64*
  store i64 %503, i64* %504, align 4
  br label %if.end362

if.end362:                                        ; preds = %if.then358, %if.end356
  %505 = load i32, i32* %written, align 4
  %506 = load i32, i32* %written_total, align 4
  %add363 = add nsw i32 %506, %505
  store i32 %add363, i32* %written_total, align 4
  %507 = load i32, i32* %written_total, align 4
  store i32 %507, i32* %retval, align 4
  br label %return

sw.bb364:                                         ; preds = %entry
  br label %do.body365

do.body365:                                       ; preds = %sw.bb364
  %508 = load i8*, i8** %buf.addr, align 4
  %509 = load i8*, i8** %buf_start.addr, align 4
  %510 = load i64, i64* %buf_len.addr, align 8
  %call366 = call i32 @append_string(i8* %508, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %509, i64 %510)
  store i32 %call366, i32* %written, align 4
  %511 = load i32, i32* %written, align 4
  %cmp367 = icmp slt i32 %511, 0
  br i1 %cmp367, label %if.then368, label %if.end369

if.then368:                                       ; preds = %do.body365
  store i32 -1, i32* %retval, align 4
  br label %return

if.end369:                                        ; preds = %do.body365
  %512 = load i8*, i8** %buf.addr, align 4
  %513 = ptrtoint i8* %512 to i32
  %514 = zext i32 %513 to i64
  %515 = inttoptr i64 %514 to i8*
  %cmp370 = icmp ne i8* %515, null
  br i1 %cmp370, label %if.then371, label %if.end375

if.then371:                                       ; preds = %if.end369
  %516 = load i32, i32* %written, align 4
  %517 = load i8*, i8** %buf.addr, align 4
  %idx.ext372 = sext i32 %516 to i64
  %add.ptr373 = getelementptr inbounds i8, i8* %517, i64 %idx.ext372
  store i8* %add.ptr373, i8** %tmp374, align 4
  %518 = load i8*, i8** %tmp374, align 4
  %519 = ptrtoint i8* %518 to i32
  %520 = zext i32 %519 to i64
  %521 = bitcast i8** %buf.addr to i64*
  store i64 %520, i64* %521, align 4
  br label %if.end375

if.end375:                                        ; preds = %if.then371, %if.end369
  %522 = load i32, i32* %written, align 4
  %523 = load i32, i32* %written_total, align 4
  %add376 = add nsw i32 %523, %522
  store i32 %add376, i32* %written_total, align 4
  br label %do.end377

do.end377:                                        ; preds = %if.end375
  %524 = load i32, i32* %written_total, align 4
  store i32 %524, i32* %retval, align 4
  br label %return

sw.bb378:                                         ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb378, %do.end377, %if.then368, %if.end362, %if.then355, %if.end347, %if.then337, %if.then324, %if.end315, %if.then308, %if.then304, %do.end299, %if.then290, %if.then276, %if.then255, %if.then239, %if.then224, %if.then208, %if.then193, %if.then181, %if.then168, %if.then160, %if.then143, %if.then126, %do.end118, %if.then109, %if.then95, %if.then77, %if.then61, %if.then47, %if.then31, %if.then13, %if.then
  %525 = load i32, i32* %retval, align 4
  ret i32 %525
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
  %tmp20 = alloca i8*, align 4
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
  %24 = load i64, i64* @sbxHeap, align 8
  %25 = ptrtoint i8* %21 to i32
  %26 = zext i32 %25 to i64
  %27 = add i64 %24, %26
  %28 = ptrtoint i8* %21 to i64
  %29 = load i64, i64* @sbxHeapRange, align 8
  %30 = and i64 %28, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %30, %29
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %31 = inttoptr i64 %27 to i8*
  %call2 = call i8* @t_strncpy(i8* %31, i8* %22, i64 %23)
  %32 = ptrtoint i8* %call2 to i32
  %33 = inttoptr i32 %32 to i8*
  store i8* %33, i8** %tmp3, align 4
  %34 = load i8*, i8** %tmp3, align 4
  %35 = load i8*, i8** %buf.addr, align 4
  %36 = load i8*, i8** %buf_start.addr, align 4
  %37 = ptrtoint i8* %35 to i32
  %38 = zext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = ptrtoint i8* %36 to i32
  %41 = zext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = ptrtoint i8* %39 to i32
  %44 = ptrtoint i8* %42 to i32
  %cmp4 = icmp uge i32 %43, %44
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %TaintCheck.succeeded
  %45 = load i8*, i8** %buf.addr, align 4
  %46 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %add.ptr, i8** %tmp6, align 4
  %47 = load i8*, i8** %tmp6, align 4
  %48 = load i8*, i8** %buf_start.addr, align 4
  %49 = load i64, i64* %buf_len.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %add.ptr7, i8** %tmp8, align 4
  %50 = load i8*, i8** %tmp8, align 4
  %51 = ptrtoint i8* %47 to i32
  %52 = zext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = ptrtoint i8* %50 to i32
  %55 = zext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = ptrtoint i8* %53 to i32
  %58 = ptrtoint i8* %56 to i32
  %cmp9 = icmp ult i32 %57, %58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %TaintCheck.succeeded
  %59 = phi i1 [ false, %TaintCheck.succeeded ], [ %cmp9, %land.rhs ]
  br i1 %59, label %TaintCheck.succeeded12, label %TaintCheck.failed11

TaintCheck.succeeded12:                           ; preds = %land.end
  %60 = load i8*, i8** %buf.addr, align 4
  %61 = ptrtoint i8* %60 to i32
  %62 = zext i32 %61 to i64
  %63 = bitcast i8** %buf_tmp to i64*
  store i64 %62, i64* %63, align 4
  %64 = load i8*, i8** %buf_tmp, align 4
  %65 = load i8*, i8** %tainted_bounded_string, align 4
  %66 = load i64, i64* %len, align 8
  %67 = load i64, i64* @sbxHeap, align 8
  %68 = ptrtoint i8* %64 to i32
  %69 = zext i32 %68 to i64
  %70 = add i64 %67, %69
  %71 = ptrtoint i8* %64 to i64
  %72 = load i64, i64* @sbxHeapRange, align 8
  %73 = and i64 %71, 4294967295
  %SandMem.TaintCheck13 = icmp ult i64 %73, %72
  br i1 %SandMem.TaintCheck13, label %TaintCheck.succeeded15, label %TaintCheck.failed14

TaintCheck.succeeded15:                           ; preds = %TaintCheck.succeeded12
  %74 = inttoptr i64 %70 to i8*
  %75 = load i64, i64* @sbxHeap, align 8
  %76 = ptrtoint i8* %65 to i32
  %77 = zext i32 %76 to i64
  %78 = add i64 %75, %77
  %79 = ptrtoint i8* %65 to i64
  %80 = load i64, i64* @sbxHeapRange, align 8
  %81 = and i64 %79, 4294967295
  %SandMem.TaintCheck16 = icmp ult i64 %81, %80
  br i1 %SandMem.TaintCheck16, label %TaintCheck.succeeded18, label %TaintCheck.failed17

TaintCheck.succeeded18:                           ; preds = %TaintCheck.succeeded15
  %82 = inttoptr i64 %78 to i8*
  %call19 = call i8* @t_memcpy(i8* %74, i8* %82, i64 %66)
  %83 = ptrtoint i8* %call19 to i32
  %84 = inttoptr i32 %83 to i8*
  store i8* %84, i8** %tmp20, align 4
  %85 = load i8*, i8** %tmp20, align 4
  %86 = load i8*, i8** %buf.addr, align 4
  %87 = load i64, i64* %len, align 8
  %arrayidx = getelementptr inbounds i8, i8* %86, i64 %87
  %88 = load i64, i64* @sbxHeap, align 8
  %89 = ptrtoint i8* %arrayidx to i32
  %90 = zext i32 %89 to i64
  %91 = add i64 %88, %90
  %92 = ptrtoint i8* %arrayidx to i64
  %93 = load i64, i64* @sbxHeapRange, align 8
  %94 = and i64 %92, 4294967295
  %SandMem.TaintCheck21 = icmp ult i64 %94, %93
  br i1 %SandMem.TaintCheck21, label %TaintCheck.succeeded23, label %TaintCheck.failed22

TaintCheck.succeeded23:                           ; preds = %TaintCheck.succeeded18
  %95 = inttoptr i64 %91 to i8*
  store i8 0, i8* %95, align 4
  %96 = load i64, i64* %len, align 8
  %conv24 = trunc i64 %96 to i32
  store i32 %conv24, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed11:                              ; preds = %land.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed14:                              ; preds = %TaintCheck.succeeded12
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed17:                              ; preds = %TaintCheck.succeeded15
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed22:                              ; preds = %TaintCheck.succeeded18
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded23, %if.then
  %97 = load i32, i32* %retval, align 4
  ret i32 %97
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
  %tmp17 = alloca i8*, align 4
  %tmp33 = alloca i8*, align 4
  %tmp49 = alloca i8*, align 4
  %tmp65 = alloca i8*, align 4
  %tmp81 = alloca i8*, align 4
  %tmp97 = alloca i8*, align 4
  %tmp113 = alloca i8*, align 4
  %tmp129 = alloca i8*, align 4
  %tmp145 = alloca i8*, align 4
  %tmp161 = alloca i8*, align 4
  %tmp177 = alloca i8*, align 4
  %tmp193 = alloca i8*, align 4
  %tmp209 = alloca i8*, align 4
  %tmp225 = alloca i8*, align 4
  %tmp241 = alloca i8*, align 4
  %tmp257 = alloca i8*, align 4
  %tmp273 = alloca i8*, align 4
  %tmp289 = alloca i8*, align 4
  %tmp305 = alloca i8*, align 4
  %tmp321 = alloca i8*, align 4
  %tmp337 = alloca i8*, align 4
  %tmp353 = alloca i8*, align 4
  %tmp369 = alloca i8*, align 4
  %tmp385 = alloca i8*, align 4
  %tmp401 = alloca i8*, align 4
  %tmp417 = alloca i8*, align 4
  %tmp433 = alloca i8*, align 4
  %tmp449 = alloca i8*, align 4
  %tmp465 = alloca i8*, align 4
  %tmp481 = alloca i8*, align 4
  %tmp497 = alloca i8*, align 4
  %tmp513 = alloca i8*, align 4
  %tmp529 = alloca i8*, align 4
  %tmp545 = alloca i8*, align 4
  %tmp562 = alloca i8*, align 4
  %tmp577 = alloca i8*, align 4
  %tmp587 = alloca i8*, align 4
  %tmp601 = alloca i8*, align 4
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
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = ptrtoint i8* %9 to i32
  %12 = zext i32 %11 to i64
  %13 = add i64 %10, %12
  %14 = ptrtoint i8* %9 to i64
  %15 = load i64, i64* @sbxHeapRange, align 8
  %16 = and i64 %14, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %16, %15
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %entry
  %17 = inttoptr i64 %13 to i8*
  %call = call i64 @t_strlen(i8* %17)
  store i64 %call, i64* %len, align 8
  %18 = bitcast i8** %string to i64*
  store i64 0, i64* %18, align 4
  %19 = load i8*, i8** %str_unbounded.addr, align 4
  %20 = ptrtoint i8* %19 to i32
  %21 = zext i32 %20 to i64
  %22 = bitcast i8** %string to i64*
  store i64 %21, i64* %22, align 4
  store i8 0, i8* %c, align 1
  store i32 -1, i32* %written, align 4
  store i32 0, i32* %written_total, align 4
  br label %do.body

do.body:                                          ; preds = %TaintCheck.succeeded
  %23 = load i8*, i8** %buf.addr, align 4
  %24 = load i8*, i8** %buf_start.addr, align 4
  %25 = load i64, i64* %buf_len.addr, align 8
  %call1 = call i32 @append_string(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* %24, i64 %25)
  store i32 %call1, i32* %written, align 4
  %26 = load i32, i32* %written, align 4
  %cmp = icmp slt i32 %26, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -1, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %do.body
  %27 = load i8*, i8** %buf.addr, align 4
  %28 = ptrtoint i8* %27 to i32
  %29 = zext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %cmp2 = icmp ne i8* %30, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %31 = load i32, i32* %written, align 4
  %32 = load i8*, i8** %buf.addr, align 4
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %tmp, align 4
  %33 = load i8*, i8** %tmp, align 4
  %34 = ptrtoint i8* %33 to i32
  %35 = zext i32 %34 to i64
  %36 = bitcast i8** %buf.addr to i64*
  store i64 %35, i64* %36, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %37 = load i32, i32* %written, align 4
  %38 = load i32, i32* %written_total, align 4
  %add = add nsw i32 %38, %37
  store i32 %add, i32* %written_total, align 4
  br label %do.end

do.end:                                           ; preds = %if.end4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %39 = load i64, i64* %i, align 8
  %40 = load i64, i64* %len, align 8
  %cmp5 = icmp ult i64 %39, %40
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i8*, i8** %string, align 4
  %42 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 %42
  %43 = load i64, i64* @sbxHeap, align 8
  %44 = ptrtoint i8* %arrayidx to i32
  %45 = zext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8, i8* %47, align 4
  store i8 %48, i8* %c, align 1
  %49 = load i8, i8* %c, align 1
  %conv = sext i8 %49 to i32
  switch i32 %conv, label %sw.default [
    i32 34, label %sw.bb
    i32 92, label %sw.bb21
    i32 8, label %sw.bb37
    i32 12, label %sw.bb53
    i32 10, label %sw.bb69
    i32 13, label %sw.bb85
    i32 9, label %sw.bb101
    i32 0, label %sw.bb117
    i32 1, label %sw.bb133
    i32 2, label %sw.bb149
    i32 3, label %sw.bb165
    i32 4, label %sw.bb181
    i32 5, label %sw.bb197
    i32 6, label %sw.bb213
    i32 7, label %sw.bb229
    i32 11, label %sw.bb245
    i32 14, label %sw.bb261
    i32 15, label %sw.bb277
    i32 16, label %sw.bb293
    i32 17, label %sw.bb309
    i32 18, label %sw.bb325
    i32 19, label %sw.bb341
    i32 20, label %sw.bb357
    i32 21, label %sw.bb373
    i32 22, label %sw.bb389
    i32 23, label %sw.bb405
    i32 24, label %sw.bb421
    i32 25, label %sw.bb437
    i32 26, label %sw.bb453
    i32 27, label %sw.bb469
    i32 28, label %sw.bb485
    i32 29, label %sw.bb501
    i32 30, label %sw.bb517
    i32 31, label %sw.bb533
    i32 47, label %sw.bb549
  ]

sw.bb:                                            ; preds = %for.body
  br label %do.body6

do.body6:                                         ; preds = %sw.bb
  %50 = load i8*, i8** %buf.addr, align 4
  %51 = load i8*, i8** %buf_start.addr, align 4
  %52 = load i64, i64* %buf_len.addr, align 8
  %call7 = call i32 @append_string(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %51, i64 %52)
  store i32 %call7, i32* %written, align 4
  %53 = load i32, i32* %written, align 4
  %cmp8 = icmp slt i32 %53, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body6
  store i32 -1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %do.body6
  %54 = load i8*, i8** %buf.addr, align 4
  %55 = ptrtoint i8* %54 to i32
  %56 = zext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %cmp12 = icmp ne i8* %57, null
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end11
  %58 = load i32, i32* %written, align 4
  %59 = load i8*, i8** %buf.addr, align 4
  %idx.ext15 = sext i32 %58 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %59, i64 %idx.ext15
  store i8* %add.ptr16, i8** %tmp17, align 4
  %60 = load i8*, i8** %tmp17, align 4
  %61 = ptrtoint i8* %60 to i32
  %62 = zext i32 %61 to i64
  %63 = bitcast i8** %buf.addr to i64*
  store i64 %62, i64* %63, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11
  %64 = load i32, i32* %written, align 4
  %65 = load i32, i32* %written_total, align 4
  %add19 = add nsw i32 %65, %64
  store i32 %add19, i32* %written_total, align 4
  br label %do.end20

do.end20:                                         ; preds = %if.end18
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body
  br label %do.body22

do.body22:                                        ; preds = %sw.bb21
  %66 = load i8*, i8** %buf.addr, align 4
  %67 = load i8*, i8** %buf_start.addr, align 4
  %68 = load i64, i64* %buf_len.addr, align 8
  %call23 = call i32 @append_string(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %67, i64 %68)
  store i32 %call23, i32* %written, align 4
  %69 = load i32, i32* %written, align 4
  %cmp24 = icmp slt i32 %69, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %do.body22
  store i32 -1, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %do.body22
  %70 = load i8*, i8** %buf.addr, align 4
  %71 = ptrtoint i8* %70 to i32
  %72 = zext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %cmp28 = icmp ne i8* %73, null
  br i1 %cmp28, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.end27
  %74 = load i32, i32* %written, align 4
  %75 = load i8*, i8** %buf.addr, align 4
  %idx.ext31 = sext i32 %74 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %75, i64 %idx.ext31
  store i8* %add.ptr32, i8** %tmp33, align 4
  %76 = load i8*, i8** %tmp33, align 4
  %77 = ptrtoint i8* %76 to i32
  %78 = zext i32 %77 to i64
  %79 = bitcast i8** %buf.addr to i64*
  store i64 %78, i64* %79, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end27
  %80 = load i32, i32* %written, align 4
  %81 = load i32, i32* %written_total, align 4
  %add35 = add nsw i32 %81, %80
  store i32 %add35, i32* %written_total, align 4
  br label %do.end36

do.end36:                                         ; preds = %if.end34
  br label %sw.epilog

sw.bb37:                                          ; preds = %for.body
  br label %do.body38

do.body38:                                        ; preds = %sw.bb37
  %82 = load i8*, i8** %buf.addr, align 4
  %83 = load i8*, i8** %buf_start.addr, align 4
  %84 = load i64, i64* %buf_len.addr, align 8
  %call39 = call i32 @append_string(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %83, i64 %84)
  store i32 %call39, i32* %written, align 4
  %85 = load i32, i32* %written, align 4
  %cmp40 = icmp slt i32 %85, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body38
  store i32 -1, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %do.body38
  %86 = load i8*, i8** %buf.addr, align 4
  %87 = ptrtoint i8* %86 to i32
  %88 = zext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %cmp44 = icmp ne i8* %89, null
  br i1 %cmp44, label %if.then46, label %if.end50

if.then46:                                        ; preds = %if.end43
  %90 = load i32, i32* %written, align 4
  %91 = load i8*, i8** %buf.addr, align 4
  %idx.ext47 = sext i32 %90 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %91, i64 %idx.ext47
  store i8* %add.ptr48, i8** %tmp49, align 4
  %92 = load i8*, i8** %tmp49, align 4
  %93 = ptrtoint i8* %92 to i32
  %94 = zext i32 %93 to i64
  %95 = bitcast i8** %buf.addr to i64*
  store i64 %94, i64* %95, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end43
  %96 = load i32, i32* %written, align 4
  %97 = load i32, i32* %written_total, align 4
  %add51 = add nsw i32 %97, %96
  store i32 %add51, i32* %written_total, align 4
  br label %do.end52

do.end52:                                         ; preds = %if.end50
  br label %sw.epilog

sw.bb53:                                          ; preds = %for.body
  br label %do.body54

do.body54:                                        ; preds = %sw.bb53
  %98 = load i8*, i8** %buf.addr, align 4
  %99 = load i8*, i8** %buf_start.addr, align 4
  %100 = load i64, i64* %buf_len.addr, align 8
  %call55 = call i32 @append_string(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %99, i64 %100)
  store i32 %call55, i32* %written, align 4
  %101 = load i32, i32* %written, align 4
  %cmp56 = icmp slt i32 %101, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %do.body54
  store i32 -1, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %do.body54
  %102 = load i8*, i8** %buf.addr, align 4
  %103 = ptrtoint i8* %102 to i32
  %104 = zext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %cmp60 = icmp ne i8* %105, null
  br i1 %cmp60, label %if.then62, label %if.end66

if.then62:                                        ; preds = %if.end59
  %106 = load i32, i32* %written, align 4
  %107 = load i8*, i8** %buf.addr, align 4
  %idx.ext63 = sext i32 %106 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %107, i64 %idx.ext63
  store i8* %add.ptr64, i8** %tmp65, align 4
  %108 = load i8*, i8** %tmp65, align 4
  %109 = ptrtoint i8* %108 to i32
  %110 = zext i32 %109 to i64
  %111 = bitcast i8** %buf.addr to i64*
  store i64 %110, i64* %111, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end59
  %112 = load i32, i32* %written, align 4
  %113 = load i32, i32* %written_total, align 4
  %add67 = add nsw i32 %113, %112
  store i32 %add67, i32* %written_total, align 4
  br label %do.end68

do.end68:                                         ; preds = %if.end66
  br label %sw.epilog

sw.bb69:                                          ; preds = %for.body
  br label %do.body70

do.body70:                                        ; preds = %sw.bb69
  %114 = load i8*, i8** %buf.addr, align 4
  %115 = load i8*, i8** %buf_start.addr, align 4
  %116 = load i64, i64* %buf_len.addr, align 8
  %call71 = call i32 @append_string(i8* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %115, i64 %116)
  store i32 %call71, i32* %written, align 4
  %117 = load i32, i32* %written, align 4
  %cmp72 = icmp slt i32 %117, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body70
  store i32 -1, i32* %retval, align 4
  br label %return

if.end75:                                         ; preds = %do.body70
  %118 = load i8*, i8** %buf.addr, align 4
  %119 = ptrtoint i8* %118 to i32
  %120 = zext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %cmp76 = icmp ne i8* %121, null
  br i1 %cmp76, label %if.then78, label %if.end82

if.then78:                                        ; preds = %if.end75
  %122 = load i32, i32* %written, align 4
  %123 = load i8*, i8** %buf.addr, align 4
  %idx.ext79 = sext i32 %122 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %123, i64 %idx.ext79
  store i8* %add.ptr80, i8** %tmp81, align 4
  %124 = load i8*, i8** %tmp81, align 4
  %125 = ptrtoint i8* %124 to i32
  %126 = zext i32 %125 to i64
  %127 = bitcast i8** %buf.addr to i64*
  store i64 %126, i64* %127, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.end75
  %128 = load i32, i32* %written, align 4
  %129 = load i32, i32* %written_total, align 4
  %add83 = add nsw i32 %129, %128
  store i32 %add83, i32* %written_total, align 4
  br label %do.end84

do.end84:                                         ; preds = %if.end82
  br label %sw.epilog

sw.bb85:                                          ; preds = %for.body
  br label %do.body86

do.body86:                                        ; preds = %sw.bb85
  %130 = load i8*, i8** %buf.addr, align 4
  %131 = load i8*, i8** %buf_start.addr, align 4
  %132 = load i64, i64* %buf_len.addr, align 8
  %call87 = call i32 @append_string(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %131, i64 %132)
  store i32 %call87, i32* %written, align 4
  %133 = load i32, i32* %written, align 4
  %cmp88 = icmp slt i32 %133, 0
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %do.body86
  store i32 -1, i32* %retval, align 4
  br label %return

if.end91:                                         ; preds = %do.body86
  %134 = load i8*, i8** %buf.addr, align 4
  %135 = ptrtoint i8* %134 to i32
  %136 = zext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %cmp92 = icmp ne i8* %137, null
  br i1 %cmp92, label %if.then94, label %if.end98

if.then94:                                        ; preds = %if.end91
  %138 = load i32, i32* %written, align 4
  %139 = load i8*, i8** %buf.addr, align 4
  %idx.ext95 = sext i32 %138 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %139, i64 %idx.ext95
  store i8* %add.ptr96, i8** %tmp97, align 4
  %140 = load i8*, i8** %tmp97, align 4
  %141 = ptrtoint i8* %140 to i32
  %142 = zext i32 %141 to i64
  %143 = bitcast i8** %buf.addr to i64*
  store i64 %142, i64* %143, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.end91
  %144 = load i32, i32* %written, align 4
  %145 = load i32, i32* %written_total, align 4
  %add99 = add nsw i32 %145, %144
  store i32 %add99, i32* %written_total, align 4
  br label %do.end100

do.end100:                                        ; preds = %if.end98
  br label %sw.epilog

sw.bb101:                                         ; preds = %for.body
  br label %do.body102

do.body102:                                       ; preds = %sw.bb101
  %146 = load i8*, i8** %buf.addr, align 4
  %147 = load i8*, i8** %buf_start.addr, align 4
  %148 = load i64, i64* %buf_len.addr, align 8
  %call103 = call i32 @append_string(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %147, i64 %148)
  store i32 %call103, i32* %written, align 4
  %149 = load i32, i32* %written, align 4
  %cmp104 = icmp slt i32 %149, 0
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %do.body102
  store i32 -1, i32* %retval, align 4
  br label %return

if.end107:                                        ; preds = %do.body102
  %150 = load i8*, i8** %buf.addr, align 4
  %151 = ptrtoint i8* %150 to i32
  %152 = zext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  %cmp108 = icmp ne i8* %153, null
  br i1 %cmp108, label %if.then110, label %if.end114

if.then110:                                       ; preds = %if.end107
  %154 = load i32, i32* %written, align 4
  %155 = load i8*, i8** %buf.addr, align 4
  %idx.ext111 = sext i32 %154 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %155, i64 %idx.ext111
  store i8* %add.ptr112, i8** %tmp113, align 4
  %156 = load i8*, i8** %tmp113, align 4
  %157 = ptrtoint i8* %156 to i32
  %158 = zext i32 %157 to i64
  %159 = bitcast i8** %buf.addr to i64*
  store i64 %158, i64* %159, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %if.end107
  %160 = load i32, i32* %written, align 4
  %161 = load i32, i32* %written_total, align 4
  %add115 = add nsw i32 %161, %160
  store i32 %add115, i32* %written_total, align 4
  br label %do.end116

do.end116:                                        ; preds = %if.end114
  br label %sw.epilog

sw.bb117:                                         ; preds = %for.body
  br label %do.body118

do.body118:                                       ; preds = %sw.bb117
  %162 = load i8*, i8** %buf.addr, align 4
  %163 = load i8*, i8** %buf_start.addr, align 4
  %164 = load i64, i64* %buf_len.addr, align 8
  %call119 = call i32 @append_string(i8* %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %163, i64 %164)
  store i32 %call119, i32* %written, align 4
  %165 = load i32, i32* %written, align 4
  %cmp120 = icmp slt i32 %165, 0
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %do.body118
  store i32 -1, i32* %retval, align 4
  br label %return

if.end123:                                        ; preds = %do.body118
  %166 = load i8*, i8** %buf.addr, align 4
  %167 = ptrtoint i8* %166 to i32
  %168 = zext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %cmp124 = icmp ne i8* %169, null
  br i1 %cmp124, label %if.then126, label %if.end130

if.then126:                                       ; preds = %if.end123
  %170 = load i32, i32* %written, align 4
  %171 = load i8*, i8** %buf.addr, align 4
  %idx.ext127 = sext i32 %170 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %171, i64 %idx.ext127
  store i8* %add.ptr128, i8** %tmp129, align 4
  %172 = load i8*, i8** %tmp129, align 4
  %173 = ptrtoint i8* %172 to i32
  %174 = zext i32 %173 to i64
  %175 = bitcast i8** %buf.addr to i64*
  store i64 %174, i64* %175, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then126, %if.end123
  %176 = load i32, i32* %written, align 4
  %177 = load i32, i32* %written_total, align 4
  %add131 = add nsw i32 %177, %176
  store i32 %add131, i32* %written_total, align 4
  br label %do.end132

do.end132:                                        ; preds = %if.end130
  br label %sw.epilog

sw.bb133:                                         ; preds = %for.body
  br label %do.body134

do.body134:                                       ; preds = %sw.bb133
  %178 = load i8*, i8** %buf.addr, align 4
  %179 = load i8*, i8** %buf_start.addr, align 4
  %180 = load i64, i64* %buf_len.addr, align 8
  %call135 = call i32 @append_string(i8* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* %179, i64 %180)
  store i32 %call135, i32* %written, align 4
  %181 = load i32, i32* %written, align 4
  %cmp136 = icmp slt i32 %181, 0
  br i1 %cmp136, label %if.then138, label %if.end139

if.then138:                                       ; preds = %do.body134
  store i32 -1, i32* %retval, align 4
  br label %return

if.end139:                                        ; preds = %do.body134
  %182 = load i8*, i8** %buf.addr, align 4
  %183 = ptrtoint i8* %182 to i32
  %184 = zext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %cmp140 = icmp ne i8* %185, null
  br i1 %cmp140, label %if.then142, label %if.end146

if.then142:                                       ; preds = %if.end139
  %186 = load i32, i32* %written, align 4
  %187 = load i8*, i8** %buf.addr, align 4
  %idx.ext143 = sext i32 %186 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %187, i64 %idx.ext143
  store i8* %add.ptr144, i8** %tmp145, align 4
  %188 = load i8*, i8** %tmp145, align 4
  %189 = ptrtoint i8* %188 to i32
  %190 = zext i32 %189 to i64
  %191 = bitcast i8** %buf.addr to i64*
  store i64 %190, i64* %191, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then142, %if.end139
  %192 = load i32, i32* %written, align 4
  %193 = load i32, i32* %written_total, align 4
  %add147 = add nsw i32 %193, %192
  store i32 %add147, i32* %written_total, align 4
  br label %do.end148

do.end148:                                        ; preds = %if.end146
  br label %sw.epilog

sw.bb149:                                         ; preds = %for.body
  br label %do.body150

do.body150:                                       ; preds = %sw.bb149
  %194 = load i8*, i8** %buf.addr, align 4
  %195 = load i8*, i8** %buf_start.addr, align 4
  %196 = load i64, i64* %buf_len.addr, align 8
  %call151 = call i32 @append_string(i8* %194, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* %195, i64 %196)
  store i32 %call151, i32* %written, align 4
  %197 = load i32, i32* %written, align 4
  %cmp152 = icmp slt i32 %197, 0
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %do.body150
  store i32 -1, i32* %retval, align 4
  br label %return

if.end155:                                        ; preds = %do.body150
  %198 = load i8*, i8** %buf.addr, align 4
  %199 = ptrtoint i8* %198 to i32
  %200 = zext i32 %199 to i64
  %201 = inttoptr i64 %200 to i8*
  %cmp156 = icmp ne i8* %201, null
  br i1 %cmp156, label %if.then158, label %if.end162

if.then158:                                       ; preds = %if.end155
  %202 = load i32, i32* %written, align 4
  %203 = load i8*, i8** %buf.addr, align 4
  %idx.ext159 = sext i32 %202 to i64
  %add.ptr160 = getelementptr inbounds i8, i8* %203, i64 %idx.ext159
  store i8* %add.ptr160, i8** %tmp161, align 4
  %204 = load i8*, i8** %tmp161, align 4
  %205 = ptrtoint i8* %204 to i32
  %206 = zext i32 %205 to i64
  %207 = bitcast i8** %buf.addr to i64*
  store i64 %206, i64* %207, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then158, %if.end155
  %208 = load i32, i32* %written, align 4
  %209 = load i32, i32* %written_total, align 4
  %add163 = add nsw i32 %209, %208
  store i32 %add163, i32* %written_total, align 4
  br label %do.end164

do.end164:                                        ; preds = %if.end162
  br label %sw.epilog

sw.bb165:                                         ; preds = %for.body
  br label %do.body166

do.body166:                                       ; preds = %sw.bb165
  %210 = load i8*, i8** %buf.addr, align 4
  %211 = load i8*, i8** %buf_start.addr, align 4
  %212 = load i64, i64* %buf_len.addr, align 8
  %call167 = call i32 @append_string(i8* %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %211, i64 %212)
  store i32 %call167, i32* %written, align 4
  %213 = load i32, i32* %written, align 4
  %cmp168 = icmp slt i32 %213, 0
  br i1 %cmp168, label %if.then170, label %if.end171

if.then170:                                       ; preds = %do.body166
  store i32 -1, i32* %retval, align 4
  br label %return

if.end171:                                        ; preds = %do.body166
  %214 = load i8*, i8** %buf.addr, align 4
  %215 = ptrtoint i8* %214 to i32
  %216 = zext i32 %215 to i64
  %217 = inttoptr i64 %216 to i8*
  %cmp172 = icmp ne i8* %217, null
  br i1 %cmp172, label %if.then174, label %if.end178

if.then174:                                       ; preds = %if.end171
  %218 = load i32, i32* %written, align 4
  %219 = load i8*, i8** %buf.addr, align 4
  %idx.ext175 = sext i32 %218 to i64
  %add.ptr176 = getelementptr inbounds i8, i8* %219, i64 %idx.ext175
  store i8* %add.ptr176, i8** %tmp177, align 4
  %220 = load i8*, i8** %tmp177, align 4
  %221 = ptrtoint i8* %220 to i32
  %222 = zext i32 %221 to i64
  %223 = bitcast i8** %buf.addr to i64*
  store i64 %222, i64* %223, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then174, %if.end171
  %224 = load i32, i32* %written, align 4
  %225 = load i32, i32* %written_total, align 4
  %add179 = add nsw i32 %225, %224
  store i32 %add179, i32* %written_total, align 4
  br label %do.end180

do.end180:                                        ; preds = %if.end178
  br label %sw.epilog

sw.bb181:                                         ; preds = %for.body
  br label %do.body182

do.body182:                                       ; preds = %sw.bb181
  %226 = load i8*, i8** %buf.addr, align 4
  %227 = load i8*, i8** %buf_start.addr, align 4
  %228 = load i64, i64* %buf_len.addr, align 8
  %call183 = call i32 @append_string(i8* %226, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* %227, i64 %228)
  store i32 %call183, i32* %written, align 4
  %229 = load i32, i32* %written, align 4
  %cmp184 = icmp slt i32 %229, 0
  br i1 %cmp184, label %if.then186, label %if.end187

if.then186:                                       ; preds = %do.body182
  store i32 -1, i32* %retval, align 4
  br label %return

if.end187:                                        ; preds = %do.body182
  %230 = load i8*, i8** %buf.addr, align 4
  %231 = ptrtoint i8* %230 to i32
  %232 = zext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %cmp188 = icmp ne i8* %233, null
  br i1 %cmp188, label %if.then190, label %if.end194

if.then190:                                       ; preds = %if.end187
  %234 = load i32, i32* %written, align 4
  %235 = load i8*, i8** %buf.addr, align 4
  %idx.ext191 = sext i32 %234 to i64
  %add.ptr192 = getelementptr inbounds i8, i8* %235, i64 %idx.ext191
  store i8* %add.ptr192, i8** %tmp193, align 4
  %236 = load i8*, i8** %tmp193, align 4
  %237 = ptrtoint i8* %236 to i32
  %238 = zext i32 %237 to i64
  %239 = bitcast i8** %buf.addr to i64*
  store i64 %238, i64* %239, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then190, %if.end187
  %240 = load i32, i32* %written, align 4
  %241 = load i32, i32* %written_total, align 4
  %add195 = add nsw i32 %241, %240
  store i32 %add195, i32* %written_total, align 4
  br label %do.end196

do.end196:                                        ; preds = %if.end194
  br label %sw.epilog

sw.bb197:                                         ; preds = %for.body
  br label %do.body198

do.body198:                                       ; preds = %sw.bb197
  %242 = load i8*, i8** %buf.addr, align 4
  %243 = load i8*, i8** %buf_start.addr, align 4
  %244 = load i64, i64* %buf_len.addr, align 8
  %call199 = call i32 @append_string(i8* %242, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %243, i64 %244)
  store i32 %call199, i32* %written, align 4
  %245 = load i32, i32* %written, align 4
  %cmp200 = icmp slt i32 %245, 0
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %do.body198
  store i32 -1, i32* %retval, align 4
  br label %return

if.end203:                                        ; preds = %do.body198
  %246 = load i8*, i8** %buf.addr, align 4
  %247 = ptrtoint i8* %246 to i32
  %248 = zext i32 %247 to i64
  %249 = inttoptr i64 %248 to i8*
  %cmp204 = icmp ne i8* %249, null
  br i1 %cmp204, label %if.then206, label %if.end210

if.then206:                                       ; preds = %if.end203
  %250 = load i32, i32* %written, align 4
  %251 = load i8*, i8** %buf.addr, align 4
  %idx.ext207 = sext i32 %250 to i64
  %add.ptr208 = getelementptr inbounds i8, i8* %251, i64 %idx.ext207
  store i8* %add.ptr208, i8** %tmp209, align 4
  %252 = load i8*, i8** %tmp209, align 4
  %253 = ptrtoint i8* %252 to i32
  %254 = zext i32 %253 to i64
  %255 = bitcast i8** %buf.addr to i64*
  store i64 %254, i64* %255, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.then206, %if.end203
  %256 = load i32, i32* %written, align 4
  %257 = load i32, i32* %written_total, align 4
  %add211 = add nsw i32 %257, %256
  store i32 %add211, i32* %written_total, align 4
  br label %do.end212

do.end212:                                        ; preds = %if.end210
  br label %sw.epilog

sw.bb213:                                         ; preds = %for.body
  br label %do.body214

do.body214:                                       ; preds = %sw.bb213
  %258 = load i8*, i8** %buf.addr, align 4
  %259 = load i8*, i8** %buf_start.addr, align 4
  %260 = load i64, i64* %buf_len.addr, align 8
  %call215 = call i32 @append_string(i8* %258, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* %259, i64 %260)
  store i32 %call215, i32* %written, align 4
  %261 = load i32, i32* %written, align 4
  %cmp216 = icmp slt i32 %261, 0
  br i1 %cmp216, label %if.then218, label %if.end219

if.then218:                                       ; preds = %do.body214
  store i32 -1, i32* %retval, align 4
  br label %return

if.end219:                                        ; preds = %do.body214
  %262 = load i8*, i8** %buf.addr, align 4
  %263 = ptrtoint i8* %262 to i32
  %264 = zext i32 %263 to i64
  %265 = inttoptr i64 %264 to i8*
  %cmp220 = icmp ne i8* %265, null
  br i1 %cmp220, label %if.then222, label %if.end226

if.then222:                                       ; preds = %if.end219
  %266 = load i32, i32* %written, align 4
  %267 = load i8*, i8** %buf.addr, align 4
  %idx.ext223 = sext i32 %266 to i64
  %add.ptr224 = getelementptr inbounds i8, i8* %267, i64 %idx.ext223
  store i8* %add.ptr224, i8** %tmp225, align 4
  %268 = load i8*, i8** %tmp225, align 4
  %269 = ptrtoint i8* %268 to i32
  %270 = zext i32 %269 to i64
  %271 = bitcast i8** %buf.addr to i64*
  store i64 %270, i64* %271, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.then222, %if.end219
  %272 = load i32, i32* %written, align 4
  %273 = load i32, i32* %written_total, align 4
  %add227 = add nsw i32 %273, %272
  store i32 %add227, i32* %written_total, align 4
  br label %do.end228

do.end228:                                        ; preds = %if.end226
  br label %sw.epilog

sw.bb229:                                         ; preds = %for.body
  br label %do.body230

do.body230:                                       ; preds = %sw.bb229
  %274 = load i8*, i8** %buf.addr, align 4
  %275 = load i8*, i8** %buf_start.addr, align 4
  %276 = load i64, i64* %buf_len.addr, align 8
  %call231 = call i32 @append_string(i8* %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* %275, i64 %276)
  store i32 %call231, i32* %written, align 4
  %277 = load i32, i32* %written, align 4
  %cmp232 = icmp slt i32 %277, 0
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %do.body230
  store i32 -1, i32* %retval, align 4
  br label %return

if.end235:                                        ; preds = %do.body230
  %278 = load i8*, i8** %buf.addr, align 4
  %279 = ptrtoint i8* %278 to i32
  %280 = zext i32 %279 to i64
  %281 = inttoptr i64 %280 to i8*
  %cmp236 = icmp ne i8* %281, null
  br i1 %cmp236, label %if.then238, label %if.end242

if.then238:                                       ; preds = %if.end235
  %282 = load i32, i32* %written, align 4
  %283 = load i8*, i8** %buf.addr, align 4
  %idx.ext239 = sext i32 %282 to i64
  %add.ptr240 = getelementptr inbounds i8, i8* %283, i64 %idx.ext239
  store i8* %add.ptr240, i8** %tmp241, align 4
  %284 = load i8*, i8** %tmp241, align 4
  %285 = ptrtoint i8* %284 to i32
  %286 = zext i32 %285 to i64
  %287 = bitcast i8** %buf.addr to i64*
  store i64 %286, i64* %287, align 4
  br label %if.end242

if.end242:                                        ; preds = %if.then238, %if.end235
  %288 = load i32, i32* %written, align 4
  %289 = load i32, i32* %written_total, align 4
  %add243 = add nsw i32 %289, %288
  store i32 %add243, i32* %written_total, align 4
  br label %do.end244

do.end244:                                        ; preds = %if.end242
  br label %sw.epilog

sw.bb245:                                         ; preds = %for.body
  br label %do.body246

do.body246:                                       ; preds = %sw.bb245
  %290 = load i8*, i8** %buf.addr, align 4
  %291 = load i8*, i8** %buf_start.addr, align 4
  %292 = load i64, i64* %buf_len.addr, align 8
  %call247 = call i32 @append_string(i8* %290, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* %291, i64 %292)
  store i32 %call247, i32* %written, align 4
  %293 = load i32, i32* %written, align 4
  %cmp248 = icmp slt i32 %293, 0
  br i1 %cmp248, label %if.then250, label %if.end251

if.then250:                                       ; preds = %do.body246
  store i32 -1, i32* %retval, align 4
  br label %return

if.end251:                                        ; preds = %do.body246
  %294 = load i8*, i8** %buf.addr, align 4
  %295 = ptrtoint i8* %294 to i32
  %296 = zext i32 %295 to i64
  %297 = inttoptr i64 %296 to i8*
  %cmp252 = icmp ne i8* %297, null
  br i1 %cmp252, label %if.then254, label %if.end258

if.then254:                                       ; preds = %if.end251
  %298 = load i32, i32* %written, align 4
  %299 = load i8*, i8** %buf.addr, align 4
  %idx.ext255 = sext i32 %298 to i64
  %add.ptr256 = getelementptr inbounds i8, i8* %299, i64 %idx.ext255
  store i8* %add.ptr256, i8** %tmp257, align 4
  %300 = load i8*, i8** %tmp257, align 4
  %301 = ptrtoint i8* %300 to i32
  %302 = zext i32 %301 to i64
  %303 = bitcast i8** %buf.addr to i64*
  store i64 %302, i64* %303, align 4
  br label %if.end258

if.end258:                                        ; preds = %if.then254, %if.end251
  %304 = load i32, i32* %written, align 4
  %305 = load i32, i32* %written_total, align 4
  %add259 = add nsw i32 %305, %304
  store i32 %add259, i32* %written_total, align 4
  br label %do.end260

do.end260:                                        ; preds = %if.end258
  br label %sw.epilog

sw.bb261:                                         ; preds = %for.body
  br label %do.body262

do.body262:                                       ; preds = %sw.bb261
  %306 = load i8*, i8** %buf.addr, align 4
  %307 = load i8*, i8** %buf_start.addr, align 4
  %308 = load i64, i64* %buf_len.addr, align 8
  %call263 = call i32 @append_string(i8* %306, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* %307, i64 %308)
  store i32 %call263, i32* %written, align 4
  %309 = load i32, i32* %written, align 4
  %cmp264 = icmp slt i32 %309, 0
  br i1 %cmp264, label %if.then266, label %if.end267

if.then266:                                       ; preds = %do.body262
  store i32 -1, i32* %retval, align 4
  br label %return

if.end267:                                        ; preds = %do.body262
  %310 = load i8*, i8** %buf.addr, align 4
  %311 = ptrtoint i8* %310 to i32
  %312 = zext i32 %311 to i64
  %313 = inttoptr i64 %312 to i8*
  %cmp268 = icmp ne i8* %313, null
  br i1 %cmp268, label %if.then270, label %if.end274

if.then270:                                       ; preds = %if.end267
  %314 = load i32, i32* %written, align 4
  %315 = load i8*, i8** %buf.addr, align 4
  %idx.ext271 = sext i32 %314 to i64
  %add.ptr272 = getelementptr inbounds i8, i8* %315, i64 %idx.ext271
  store i8* %add.ptr272, i8** %tmp273, align 4
  %316 = load i8*, i8** %tmp273, align 4
  %317 = ptrtoint i8* %316 to i32
  %318 = zext i32 %317 to i64
  %319 = bitcast i8** %buf.addr to i64*
  store i64 %318, i64* %319, align 4
  br label %if.end274

if.end274:                                        ; preds = %if.then270, %if.end267
  %320 = load i32, i32* %written, align 4
  %321 = load i32, i32* %written_total, align 4
  %add275 = add nsw i32 %321, %320
  store i32 %add275, i32* %written_total, align 4
  br label %do.end276

do.end276:                                        ; preds = %if.end274
  br label %sw.epilog

sw.bb277:                                         ; preds = %for.body
  br label %do.body278

do.body278:                                       ; preds = %sw.bb277
  %322 = load i8*, i8** %buf.addr, align 4
  %323 = load i8*, i8** %buf_start.addr, align 4
  %324 = load i64, i64* %buf_len.addr, align 8
  %call279 = call i32 @append_string(i8* %322, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* %323, i64 %324)
  store i32 %call279, i32* %written, align 4
  %325 = load i32, i32* %written, align 4
  %cmp280 = icmp slt i32 %325, 0
  br i1 %cmp280, label %if.then282, label %if.end283

if.then282:                                       ; preds = %do.body278
  store i32 -1, i32* %retval, align 4
  br label %return

if.end283:                                        ; preds = %do.body278
  %326 = load i8*, i8** %buf.addr, align 4
  %327 = ptrtoint i8* %326 to i32
  %328 = zext i32 %327 to i64
  %329 = inttoptr i64 %328 to i8*
  %cmp284 = icmp ne i8* %329, null
  br i1 %cmp284, label %if.then286, label %if.end290

if.then286:                                       ; preds = %if.end283
  %330 = load i32, i32* %written, align 4
  %331 = load i8*, i8** %buf.addr, align 4
  %idx.ext287 = sext i32 %330 to i64
  %add.ptr288 = getelementptr inbounds i8, i8* %331, i64 %idx.ext287
  store i8* %add.ptr288, i8** %tmp289, align 4
  %332 = load i8*, i8** %tmp289, align 4
  %333 = ptrtoint i8* %332 to i32
  %334 = zext i32 %333 to i64
  %335 = bitcast i8** %buf.addr to i64*
  store i64 %334, i64* %335, align 4
  br label %if.end290

if.end290:                                        ; preds = %if.then286, %if.end283
  %336 = load i32, i32* %written, align 4
  %337 = load i32, i32* %written_total, align 4
  %add291 = add nsw i32 %337, %336
  store i32 %add291, i32* %written_total, align 4
  br label %do.end292

do.end292:                                        ; preds = %if.end290
  br label %sw.epilog

sw.bb293:                                         ; preds = %for.body
  br label %do.body294

do.body294:                                       ; preds = %sw.bb293
  %338 = load i8*, i8** %buf.addr, align 4
  %339 = load i8*, i8** %buf_start.addr, align 4
  %340 = load i64, i64* %buf_len.addr, align 8
  %call295 = call i32 @append_string(i8* %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %339, i64 %340)
  store i32 %call295, i32* %written, align 4
  %341 = load i32, i32* %written, align 4
  %cmp296 = icmp slt i32 %341, 0
  br i1 %cmp296, label %if.then298, label %if.end299

if.then298:                                       ; preds = %do.body294
  store i32 -1, i32* %retval, align 4
  br label %return

if.end299:                                        ; preds = %do.body294
  %342 = load i8*, i8** %buf.addr, align 4
  %343 = ptrtoint i8* %342 to i32
  %344 = zext i32 %343 to i64
  %345 = inttoptr i64 %344 to i8*
  %cmp300 = icmp ne i8* %345, null
  br i1 %cmp300, label %if.then302, label %if.end306

if.then302:                                       ; preds = %if.end299
  %346 = load i32, i32* %written, align 4
  %347 = load i8*, i8** %buf.addr, align 4
  %idx.ext303 = sext i32 %346 to i64
  %add.ptr304 = getelementptr inbounds i8, i8* %347, i64 %idx.ext303
  store i8* %add.ptr304, i8** %tmp305, align 4
  %348 = load i8*, i8** %tmp305, align 4
  %349 = ptrtoint i8* %348 to i32
  %350 = zext i32 %349 to i64
  %351 = bitcast i8** %buf.addr to i64*
  store i64 %350, i64* %351, align 4
  br label %if.end306

if.end306:                                        ; preds = %if.then302, %if.end299
  %352 = load i32, i32* %written, align 4
  %353 = load i32, i32* %written_total, align 4
  %add307 = add nsw i32 %353, %352
  store i32 %add307, i32* %written_total, align 4
  br label %do.end308

do.end308:                                        ; preds = %if.end306
  br label %sw.epilog

sw.bb309:                                         ; preds = %for.body
  br label %do.body310

do.body310:                                       ; preds = %sw.bb309
  %354 = load i8*, i8** %buf.addr, align 4
  %355 = load i8*, i8** %buf_start.addr, align 4
  %356 = load i64, i64* %buf_len.addr, align 8
  %call311 = call i32 @append_string(i8* %354, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* %355, i64 %356)
  store i32 %call311, i32* %written, align 4
  %357 = load i32, i32* %written, align 4
  %cmp312 = icmp slt i32 %357, 0
  br i1 %cmp312, label %if.then314, label %if.end315

if.then314:                                       ; preds = %do.body310
  store i32 -1, i32* %retval, align 4
  br label %return

if.end315:                                        ; preds = %do.body310
  %358 = load i8*, i8** %buf.addr, align 4
  %359 = ptrtoint i8* %358 to i32
  %360 = zext i32 %359 to i64
  %361 = inttoptr i64 %360 to i8*
  %cmp316 = icmp ne i8* %361, null
  br i1 %cmp316, label %if.then318, label %if.end322

if.then318:                                       ; preds = %if.end315
  %362 = load i32, i32* %written, align 4
  %363 = load i8*, i8** %buf.addr, align 4
  %idx.ext319 = sext i32 %362 to i64
  %add.ptr320 = getelementptr inbounds i8, i8* %363, i64 %idx.ext319
  store i8* %add.ptr320, i8** %tmp321, align 4
  %364 = load i8*, i8** %tmp321, align 4
  %365 = ptrtoint i8* %364 to i32
  %366 = zext i32 %365 to i64
  %367 = bitcast i8** %buf.addr to i64*
  store i64 %366, i64* %367, align 4
  br label %if.end322

if.end322:                                        ; preds = %if.then318, %if.end315
  %368 = load i32, i32* %written, align 4
  %369 = load i32, i32* %written_total, align 4
  %add323 = add nsw i32 %369, %368
  store i32 %add323, i32* %written_total, align 4
  br label %do.end324

do.end324:                                        ; preds = %if.end322
  br label %sw.epilog

sw.bb325:                                         ; preds = %for.body
  br label %do.body326

do.body326:                                       ; preds = %sw.bb325
  %370 = load i8*, i8** %buf.addr, align 4
  %371 = load i8*, i8** %buf_start.addr, align 4
  %372 = load i64, i64* %buf_len.addr, align 8
  %call327 = call i32 @append_string(i8* %370, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* %371, i64 %372)
  store i32 %call327, i32* %written, align 4
  %373 = load i32, i32* %written, align 4
  %cmp328 = icmp slt i32 %373, 0
  br i1 %cmp328, label %if.then330, label %if.end331

if.then330:                                       ; preds = %do.body326
  store i32 -1, i32* %retval, align 4
  br label %return

if.end331:                                        ; preds = %do.body326
  %374 = load i8*, i8** %buf.addr, align 4
  %375 = ptrtoint i8* %374 to i32
  %376 = zext i32 %375 to i64
  %377 = inttoptr i64 %376 to i8*
  %cmp332 = icmp ne i8* %377, null
  br i1 %cmp332, label %if.then334, label %if.end338

if.then334:                                       ; preds = %if.end331
  %378 = load i32, i32* %written, align 4
  %379 = load i8*, i8** %buf.addr, align 4
  %idx.ext335 = sext i32 %378 to i64
  %add.ptr336 = getelementptr inbounds i8, i8* %379, i64 %idx.ext335
  store i8* %add.ptr336, i8** %tmp337, align 4
  %380 = load i8*, i8** %tmp337, align 4
  %381 = ptrtoint i8* %380 to i32
  %382 = zext i32 %381 to i64
  %383 = bitcast i8** %buf.addr to i64*
  store i64 %382, i64* %383, align 4
  br label %if.end338

if.end338:                                        ; preds = %if.then334, %if.end331
  %384 = load i32, i32* %written, align 4
  %385 = load i32, i32* %written_total, align 4
  %add339 = add nsw i32 %385, %384
  store i32 %add339, i32* %written_total, align 4
  br label %do.end340

do.end340:                                        ; preds = %if.end338
  br label %sw.epilog

sw.bb341:                                         ; preds = %for.body
  br label %do.body342

do.body342:                                       ; preds = %sw.bb341
  %386 = load i8*, i8** %buf.addr, align 4
  %387 = load i8*, i8** %buf_start.addr, align 4
  %388 = load i64, i64* %buf_len.addr, align 8
  %call343 = call i32 @append_string(i8* %386, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i8* %387, i64 %388)
  store i32 %call343, i32* %written, align 4
  %389 = load i32, i32* %written, align 4
  %cmp344 = icmp slt i32 %389, 0
  br i1 %cmp344, label %if.then346, label %if.end347

if.then346:                                       ; preds = %do.body342
  store i32 -1, i32* %retval, align 4
  br label %return

if.end347:                                        ; preds = %do.body342
  %390 = load i8*, i8** %buf.addr, align 4
  %391 = ptrtoint i8* %390 to i32
  %392 = zext i32 %391 to i64
  %393 = inttoptr i64 %392 to i8*
  %cmp348 = icmp ne i8* %393, null
  br i1 %cmp348, label %if.then350, label %if.end354

if.then350:                                       ; preds = %if.end347
  %394 = load i32, i32* %written, align 4
  %395 = load i8*, i8** %buf.addr, align 4
  %idx.ext351 = sext i32 %394 to i64
  %add.ptr352 = getelementptr inbounds i8, i8* %395, i64 %idx.ext351
  store i8* %add.ptr352, i8** %tmp353, align 4
  %396 = load i8*, i8** %tmp353, align 4
  %397 = ptrtoint i8* %396 to i32
  %398 = zext i32 %397 to i64
  %399 = bitcast i8** %buf.addr to i64*
  store i64 %398, i64* %399, align 4
  br label %if.end354

if.end354:                                        ; preds = %if.then350, %if.end347
  %400 = load i32, i32* %written, align 4
  %401 = load i32, i32* %written_total, align 4
  %add355 = add nsw i32 %401, %400
  store i32 %add355, i32* %written_total, align 4
  br label %do.end356

do.end356:                                        ; preds = %if.end354
  br label %sw.epilog

sw.bb357:                                         ; preds = %for.body
  br label %do.body358

do.body358:                                       ; preds = %sw.bb357
  %402 = load i8*, i8** %buf.addr, align 4
  %403 = load i8*, i8** %buf_start.addr, align 4
  %404 = load i64, i64* %buf_len.addr, align 8
  %call359 = call i32 @append_string(i8* %402, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* %403, i64 %404)
  store i32 %call359, i32* %written, align 4
  %405 = load i32, i32* %written, align 4
  %cmp360 = icmp slt i32 %405, 0
  br i1 %cmp360, label %if.then362, label %if.end363

if.then362:                                       ; preds = %do.body358
  store i32 -1, i32* %retval, align 4
  br label %return

if.end363:                                        ; preds = %do.body358
  %406 = load i8*, i8** %buf.addr, align 4
  %407 = ptrtoint i8* %406 to i32
  %408 = zext i32 %407 to i64
  %409 = inttoptr i64 %408 to i8*
  %cmp364 = icmp ne i8* %409, null
  br i1 %cmp364, label %if.then366, label %if.end370

if.then366:                                       ; preds = %if.end363
  %410 = load i32, i32* %written, align 4
  %411 = load i8*, i8** %buf.addr, align 4
  %idx.ext367 = sext i32 %410 to i64
  %add.ptr368 = getelementptr inbounds i8, i8* %411, i64 %idx.ext367
  store i8* %add.ptr368, i8** %tmp369, align 4
  %412 = load i8*, i8** %tmp369, align 4
  %413 = ptrtoint i8* %412 to i32
  %414 = zext i32 %413 to i64
  %415 = bitcast i8** %buf.addr to i64*
  store i64 %414, i64* %415, align 4
  br label %if.end370

if.end370:                                        ; preds = %if.then366, %if.end363
  %416 = load i32, i32* %written, align 4
  %417 = load i32, i32* %written_total, align 4
  %add371 = add nsw i32 %417, %416
  store i32 %add371, i32* %written_total, align 4
  br label %do.end372

do.end372:                                        ; preds = %if.end370
  br label %sw.epilog

sw.bb373:                                         ; preds = %for.body
  br label %do.body374

do.body374:                                       ; preds = %sw.bb373
  %418 = load i8*, i8** %buf.addr, align 4
  %419 = load i8*, i8** %buf_start.addr, align 4
  %420 = load i64, i64* %buf_len.addr, align 8
  %call375 = call i32 @append_string(i8* %418, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* %419, i64 %420)
  store i32 %call375, i32* %written, align 4
  %421 = load i32, i32* %written, align 4
  %cmp376 = icmp slt i32 %421, 0
  br i1 %cmp376, label %if.then378, label %if.end379

if.then378:                                       ; preds = %do.body374
  store i32 -1, i32* %retval, align 4
  br label %return

if.end379:                                        ; preds = %do.body374
  %422 = load i8*, i8** %buf.addr, align 4
  %423 = ptrtoint i8* %422 to i32
  %424 = zext i32 %423 to i64
  %425 = inttoptr i64 %424 to i8*
  %cmp380 = icmp ne i8* %425, null
  br i1 %cmp380, label %if.then382, label %if.end386

if.then382:                                       ; preds = %if.end379
  %426 = load i32, i32* %written, align 4
  %427 = load i8*, i8** %buf.addr, align 4
  %idx.ext383 = sext i32 %426 to i64
  %add.ptr384 = getelementptr inbounds i8, i8* %427, i64 %idx.ext383
  store i8* %add.ptr384, i8** %tmp385, align 4
  %428 = load i8*, i8** %tmp385, align 4
  %429 = ptrtoint i8* %428 to i32
  %430 = zext i32 %429 to i64
  %431 = bitcast i8** %buf.addr to i64*
  store i64 %430, i64* %431, align 4
  br label %if.end386

if.end386:                                        ; preds = %if.then382, %if.end379
  %432 = load i32, i32* %written, align 4
  %433 = load i32, i32* %written_total, align 4
  %add387 = add nsw i32 %433, %432
  store i32 %add387, i32* %written_total, align 4
  br label %do.end388

do.end388:                                        ; preds = %if.end386
  br label %sw.epilog

sw.bb389:                                         ; preds = %for.body
  br label %do.body390

do.body390:                                       ; preds = %sw.bb389
  %434 = load i8*, i8** %buf.addr, align 4
  %435 = load i8*, i8** %buf_start.addr, align 4
  %436 = load i64, i64* %buf_len.addr, align 8
  %call391 = call i32 @append_string(i8* %434, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* %435, i64 %436)
  store i32 %call391, i32* %written, align 4
  %437 = load i32, i32* %written, align 4
  %cmp392 = icmp slt i32 %437, 0
  br i1 %cmp392, label %if.then394, label %if.end395

if.then394:                                       ; preds = %do.body390
  store i32 -1, i32* %retval, align 4
  br label %return

if.end395:                                        ; preds = %do.body390
  %438 = load i8*, i8** %buf.addr, align 4
  %439 = ptrtoint i8* %438 to i32
  %440 = zext i32 %439 to i64
  %441 = inttoptr i64 %440 to i8*
  %cmp396 = icmp ne i8* %441, null
  br i1 %cmp396, label %if.then398, label %if.end402

if.then398:                                       ; preds = %if.end395
  %442 = load i32, i32* %written, align 4
  %443 = load i8*, i8** %buf.addr, align 4
  %idx.ext399 = sext i32 %442 to i64
  %add.ptr400 = getelementptr inbounds i8, i8* %443, i64 %idx.ext399
  store i8* %add.ptr400, i8** %tmp401, align 4
  %444 = load i8*, i8** %tmp401, align 4
  %445 = ptrtoint i8* %444 to i32
  %446 = zext i32 %445 to i64
  %447 = bitcast i8** %buf.addr to i64*
  store i64 %446, i64* %447, align 4
  br label %if.end402

if.end402:                                        ; preds = %if.then398, %if.end395
  %448 = load i32, i32* %written, align 4
  %449 = load i32, i32* %written_total, align 4
  %add403 = add nsw i32 %449, %448
  store i32 %add403, i32* %written_total, align 4
  br label %do.end404

do.end404:                                        ; preds = %if.end402
  br label %sw.epilog

sw.bb405:                                         ; preds = %for.body
  br label %do.body406

do.body406:                                       ; preds = %sw.bb405
  %450 = load i8*, i8** %buf.addr, align 4
  %451 = load i8*, i8** %buf_start.addr, align 4
  %452 = load i64, i64* %buf_len.addr, align 8
  %call407 = call i32 @append_string(i8* %450, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* %451, i64 %452)
  store i32 %call407, i32* %written, align 4
  %453 = load i32, i32* %written, align 4
  %cmp408 = icmp slt i32 %453, 0
  br i1 %cmp408, label %if.then410, label %if.end411

if.then410:                                       ; preds = %do.body406
  store i32 -1, i32* %retval, align 4
  br label %return

if.end411:                                        ; preds = %do.body406
  %454 = load i8*, i8** %buf.addr, align 4
  %455 = ptrtoint i8* %454 to i32
  %456 = zext i32 %455 to i64
  %457 = inttoptr i64 %456 to i8*
  %cmp412 = icmp ne i8* %457, null
  br i1 %cmp412, label %if.then414, label %if.end418

if.then414:                                       ; preds = %if.end411
  %458 = load i32, i32* %written, align 4
  %459 = load i8*, i8** %buf.addr, align 4
  %idx.ext415 = sext i32 %458 to i64
  %add.ptr416 = getelementptr inbounds i8, i8* %459, i64 %idx.ext415
  store i8* %add.ptr416, i8** %tmp417, align 4
  %460 = load i8*, i8** %tmp417, align 4
  %461 = ptrtoint i8* %460 to i32
  %462 = zext i32 %461 to i64
  %463 = bitcast i8** %buf.addr to i64*
  store i64 %462, i64* %463, align 4
  br label %if.end418

if.end418:                                        ; preds = %if.then414, %if.end411
  %464 = load i32, i32* %written, align 4
  %465 = load i32, i32* %written_total, align 4
  %add419 = add nsw i32 %465, %464
  store i32 %add419, i32* %written_total, align 4
  br label %do.end420

do.end420:                                        ; preds = %if.end418
  br label %sw.epilog

sw.bb421:                                         ; preds = %for.body
  br label %do.body422

do.body422:                                       ; preds = %sw.bb421
  %466 = load i8*, i8** %buf.addr, align 4
  %467 = load i8*, i8** %buf_start.addr, align 4
  %468 = load i64, i64* %buf_len.addr, align 8
  %call423 = call i32 @append_string(i8* %466, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* %467, i64 %468)
  store i32 %call423, i32* %written, align 4
  %469 = load i32, i32* %written, align 4
  %cmp424 = icmp slt i32 %469, 0
  br i1 %cmp424, label %if.then426, label %if.end427

if.then426:                                       ; preds = %do.body422
  store i32 -1, i32* %retval, align 4
  br label %return

if.end427:                                        ; preds = %do.body422
  %470 = load i8*, i8** %buf.addr, align 4
  %471 = ptrtoint i8* %470 to i32
  %472 = zext i32 %471 to i64
  %473 = inttoptr i64 %472 to i8*
  %cmp428 = icmp ne i8* %473, null
  br i1 %cmp428, label %if.then430, label %if.end434

if.then430:                                       ; preds = %if.end427
  %474 = load i32, i32* %written, align 4
  %475 = load i8*, i8** %buf.addr, align 4
  %idx.ext431 = sext i32 %474 to i64
  %add.ptr432 = getelementptr inbounds i8, i8* %475, i64 %idx.ext431
  store i8* %add.ptr432, i8** %tmp433, align 4
  %476 = load i8*, i8** %tmp433, align 4
  %477 = ptrtoint i8* %476 to i32
  %478 = zext i32 %477 to i64
  %479 = bitcast i8** %buf.addr to i64*
  store i64 %478, i64* %479, align 4
  br label %if.end434

if.end434:                                        ; preds = %if.then430, %if.end427
  %480 = load i32, i32* %written, align 4
  %481 = load i32, i32* %written_total, align 4
  %add435 = add nsw i32 %481, %480
  store i32 %add435, i32* %written_total, align 4
  br label %do.end436

do.end436:                                        ; preds = %if.end434
  br label %sw.epilog

sw.bb437:                                         ; preds = %for.body
  br label %do.body438

do.body438:                                       ; preds = %sw.bb437
  %482 = load i8*, i8** %buf.addr, align 4
  %483 = load i8*, i8** %buf_start.addr, align 4
  %484 = load i64, i64* %buf_len.addr, align 8
  %call439 = call i32 @append_string(i8* %482, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* %483, i64 %484)
  store i32 %call439, i32* %written, align 4
  %485 = load i32, i32* %written, align 4
  %cmp440 = icmp slt i32 %485, 0
  br i1 %cmp440, label %if.then442, label %if.end443

if.then442:                                       ; preds = %do.body438
  store i32 -1, i32* %retval, align 4
  br label %return

if.end443:                                        ; preds = %do.body438
  %486 = load i8*, i8** %buf.addr, align 4
  %487 = ptrtoint i8* %486 to i32
  %488 = zext i32 %487 to i64
  %489 = inttoptr i64 %488 to i8*
  %cmp444 = icmp ne i8* %489, null
  br i1 %cmp444, label %if.then446, label %if.end450

if.then446:                                       ; preds = %if.end443
  %490 = load i32, i32* %written, align 4
  %491 = load i8*, i8** %buf.addr, align 4
  %idx.ext447 = sext i32 %490 to i64
  %add.ptr448 = getelementptr inbounds i8, i8* %491, i64 %idx.ext447
  store i8* %add.ptr448, i8** %tmp449, align 4
  %492 = load i8*, i8** %tmp449, align 4
  %493 = ptrtoint i8* %492 to i32
  %494 = zext i32 %493 to i64
  %495 = bitcast i8** %buf.addr to i64*
  store i64 %494, i64* %495, align 4
  br label %if.end450

if.end450:                                        ; preds = %if.then446, %if.end443
  %496 = load i32, i32* %written, align 4
  %497 = load i32, i32* %written_total, align 4
  %add451 = add nsw i32 %497, %496
  store i32 %add451, i32* %written_total, align 4
  br label %do.end452

do.end452:                                        ; preds = %if.end450
  br label %sw.epilog

sw.bb453:                                         ; preds = %for.body
  br label %do.body454

do.body454:                                       ; preds = %sw.bb453
  %498 = load i8*, i8** %buf.addr, align 4
  %499 = load i8*, i8** %buf_start.addr, align 4
  %500 = load i64, i64* %buf_len.addr, align 8
  %call455 = call i32 @append_string(i8* %498, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* %499, i64 %500)
  store i32 %call455, i32* %written, align 4
  %501 = load i32, i32* %written, align 4
  %cmp456 = icmp slt i32 %501, 0
  br i1 %cmp456, label %if.then458, label %if.end459

if.then458:                                       ; preds = %do.body454
  store i32 -1, i32* %retval, align 4
  br label %return

if.end459:                                        ; preds = %do.body454
  %502 = load i8*, i8** %buf.addr, align 4
  %503 = ptrtoint i8* %502 to i32
  %504 = zext i32 %503 to i64
  %505 = inttoptr i64 %504 to i8*
  %cmp460 = icmp ne i8* %505, null
  br i1 %cmp460, label %if.then462, label %if.end466

if.then462:                                       ; preds = %if.end459
  %506 = load i32, i32* %written, align 4
  %507 = load i8*, i8** %buf.addr, align 4
  %idx.ext463 = sext i32 %506 to i64
  %add.ptr464 = getelementptr inbounds i8, i8* %507, i64 %idx.ext463
  store i8* %add.ptr464, i8** %tmp465, align 4
  %508 = load i8*, i8** %tmp465, align 4
  %509 = ptrtoint i8* %508 to i32
  %510 = zext i32 %509 to i64
  %511 = bitcast i8** %buf.addr to i64*
  store i64 %510, i64* %511, align 4
  br label %if.end466

if.end466:                                        ; preds = %if.then462, %if.end459
  %512 = load i32, i32* %written, align 4
  %513 = load i32, i32* %written_total, align 4
  %add467 = add nsw i32 %513, %512
  store i32 %add467, i32* %written_total, align 4
  br label %do.end468

do.end468:                                        ; preds = %if.end466
  br label %sw.epilog

sw.bb469:                                         ; preds = %for.body
  br label %do.body470

do.body470:                                       ; preds = %sw.bb469
  %514 = load i8*, i8** %buf.addr, align 4
  %515 = load i8*, i8** %buf_start.addr, align 4
  %516 = load i64, i64* %buf_len.addr, align 8
  %call471 = call i32 @append_string(i8* %514, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* %515, i64 %516)
  store i32 %call471, i32* %written, align 4
  %517 = load i32, i32* %written, align 4
  %cmp472 = icmp slt i32 %517, 0
  br i1 %cmp472, label %if.then474, label %if.end475

if.then474:                                       ; preds = %do.body470
  store i32 -1, i32* %retval, align 4
  br label %return

if.end475:                                        ; preds = %do.body470
  %518 = load i8*, i8** %buf.addr, align 4
  %519 = ptrtoint i8* %518 to i32
  %520 = zext i32 %519 to i64
  %521 = inttoptr i64 %520 to i8*
  %cmp476 = icmp ne i8* %521, null
  br i1 %cmp476, label %if.then478, label %if.end482

if.then478:                                       ; preds = %if.end475
  %522 = load i32, i32* %written, align 4
  %523 = load i8*, i8** %buf.addr, align 4
  %idx.ext479 = sext i32 %522 to i64
  %add.ptr480 = getelementptr inbounds i8, i8* %523, i64 %idx.ext479
  store i8* %add.ptr480, i8** %tmp481, align 4
  %524 = load i8*, i8** %tmp481, align 4
  %525 = ptrtoint i8* %524 to i32
  %526 = zext i32 %525 to i64
  %527 = bitcast i8** %buf.addr to i64*
  store i64 %526, i64* %527, align 4
  br label %if.end482

if.end482:                                        ; preds = %if.then478, %if.end475
  %528 = load i32, i32* %written, align 4
  %529 = load i32, i32* %written_total, align 4
  %add483 = add nsw i32 %529, %528
  store i32 %add483, i32* %written_total, align 4
  br label %do.end484

do.end484:                                        ; preds = %if.end482
  br label %sw.epilog

sw.bb485:                                         ; preds = %for.body
  br label %do.body486

do.body486:                                       ; preds = %sw.bb485
  %530 = load i8*, i8** %buf.addr, align 4
  %531 = load i8*, i8** %buf_start.addr, align 4
  %532 = load i64, i64* %buf_len.addr, align 8
  %call487 = call i32 @append_string(i8* %530, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* %531, i64 %532)
  store i32 %call487, i32* %written, align 4
  %533 = load i32, i32* %written, align 4
  %cmp488 = icmp slt i32 %533, 0
  br i1 %cmp488, label %if.then490, label %if.end491

if.then490:                                       ; preds = %do.body486
  store i32 -1, i32* %retval, align 4
  br label %return

if.end491:                                        ; preds = %do.body486
  %534 = load i8*, i8** %buf.addr, align 4
  %535 = ptrtoint i8* %534 to i32
  %536 = zext i32 %535 to i64
  %537 = inttoptr i64 %536 to i8*
  %cmp492 = icmp ne i8* %537, null
  br i1 %cmp492, label %if.then494, label %if.end498

if.then494:                                       ; preds = %if.end491
  %538 = load i32, i32* %written, align 4
  %539 = load i8*, i8** %buf.addr, align 4
  %idx.ext495 = sext i32 %538 to i64
  %add.ptr496 = getelementptr inbounds i8, i8* %539, i64 %idx.ext495
  store i8* %add.ptr496, i8** %tmp497, align 4
  %540 = load i8*, i8** %tmp497, align 4
  %541 = ptrtoint i8* %540 to i32
  %542 = zext i32 %541 to i64
  %543 = bitcast i8** %buf.addr to i64*
  store i64 %542, i64* %543, align 4
  br label %if.end498

if.end498:                                        ; preds = %if.then494, %if.end491
  %544 = load i32, i32* %written, align 4
  %545 = load i32, i32* %written_total, align 4
  %add499 = add nsw i32 %545, %544
  store i32 %add499, i32* %written_total, align 4
  br label %do.end500

do.end500:                                        ; preds = %if.end498
  br label %sw.epilog

sw.bb501:                                         ; preds = %for.body
  br label %do.body502

do.body502:                                       ; preds = %sw.bb501
  %546 = load i8*, i8** %buf.addr, align 4
  %547 = load i8*, i8** %buf_start.addr, align 4
  %548 = load i64, i64* %buf_len.addr, align 8
  %call503 = call i32 @append_string(i8* %546, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* %547, i64 %548)
  store i32 %call503, i32* %written, align 4
  %549 = load i32, i32* %written, align 4
  %cmp504 = icmp slt i32 %549, 0
  br i1 %cmp504, label %if.then506, label %if.end507

if.then506:                                       ; preds = %do.body502
  store i32 -1, i32* %retval, align 4
  br label %return

if.end507:                                        ; preds = %do.body502
  %550 = load i8*, i8** %buf.addr, align 4
  %551 = ptrtoint i8* %550 to i32
  %552 = zext i32 %551 to i64
  %553 = inttoptr i64 %552 to i8*
  %cmp508 = icmp ne i8* %553, null
  br i1 %cmp508, label %if.then510, label %if.end514

if.then510:                                       ; preds = %if.end507
  %554 = load i32, i32* %written, align 4
  %555 = load i8*, i8** %buf.addr, align 4
  %idx.ext511 = sext i32 %554 to i64
  %add.ptr512 = getelementptr inbounds i8, i8* %555, i64 %idx.ext511
  store i8* %add.ptr512, i8** %tmp513, align 4
  %556 = load i8*, i8** %tmp513, align 4
  %557 = ptrtoint i8* %556 to i32
  %558 = zext i32 %557 to i64
  %559 = bitcast i8** %buf.addr to i64*
  store i64 %558, i64* %559, align 4
  br label %if.end514

if.end514:                                        ; preds = %if.then510, %if.end507
  %560 = load i32, i32* %written, align 4
  %561 = load i32, i32* %written_total, align 4
  %add515 = add nsw i32 %561, %560
  store i32 %add515, i32* %written_total, align 4
  br label %do.end516

do.end516:                                        ; preds = %if.end514
  br label %sw.epilog

sw.bb517:                                         ; preds = %for.body
  br label %do.body518

do.body518:                                       ; preds = %sw.bb517
  %562 = load i8*, i8** %buf.addr, align 4
  %563 = load i8*, i8** %buf_start.addr, align 4
  %564 = load i64, i64* %buf_len.addr, align 8
  %call519 = call i32 @append_string(i8* %562, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* %563, i64 %564)
  store i32 %call519, i32* %written, align 4
  %565 = load i32, i32* %written, align 4
  %cmp520 = icmp slt i32 %565, 0
  br i1 %cmp520, label %if.then522, label %if.end523

if.then522:                                       ; preds = %do.body518
  store i32 -1, i32* %retval, align 4
  br label %return

if.end523:                                        ; preds = %do.body518
  %566 = load i8*, i8** %buf.addr, align 4
  %567 = ptrtoint i8* %566 to i32
  %568 = zext i32 %567 to i64
  %569 = inttoptr i64 %568 to i8*
  %cmp524 = icmp ne i8* %569, null
  br i1 %cmp524, label %if.then526, label %if.end530

if.then526:                                       ; preds = %if.end523
  %570 = load i32, i32* %written, align 4
  %571 = load i8*, i8** %buf.addr, align 4
  %idx.ext527 = sext i32 %570 to i64
  %add.ptr528 = getelementptr inbounds i8, i8* %571, i64 %idx.ext527
  store i8* %add.ptr528, i8** %tmp529, align 4
  %572 = load i8*, i8** %tmp529, align 4
  %573 = ptrtoint i8* %572 to i32
  %574 = zext i32 %573 to i64
  %575 = bitcast i8** %buf.addr to i64*
  store i64 %574, i64* %575, align 4
  br label %if.end530

if.end530:                                        ; preds = %if.then526, %if.end523
  %576 = load i32, i32* %written, align 4
  %577 = load i32, i32* %written_total, align 4
  %add531 = add nsw i32 %577, %576
  store i32 %add531, i32* %written_total, align 4
  br label %do.end532

do.end532:                                        ; preds = %if.end530
  br label %sw.epilog

sw.bb533:                                         ; preds = %for.body
  br label %do.body534

do.body534:                                       ; preds = %sw.bb533
  %578 = load i8*, i8** %buf.addr, align 4
  %579 = load i8*, i8** %buf_start.addr, align 4
  %580 = load i64, i64* %buf_len.addr, align 8
  %call535 = call i32 @append_string(i8* %578, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* %579, i64 %580)
  store i32 %call535, i32* %written, align 4
  %581 = load i32, i32* %written, align 4
  %cmp536 = icmp slt i32 %581, 0
  br i1 %cmp536, label %if.then538, label %if.end539

if.then538:                                       ; preds = %do.body534
  store i32 -1, i32* %retval, align 4
  br label %return

if.end539:                                        ; preds = %do.body534
  %582 = load i8*, i8** %buf.addr, align 4
  %583 = ptrtoint i8* %582 to i32
  %584 = zext i32 %583 to i64
  %585 = inttoptr i64 %584 to i8*
  %cmp540 = icmp ne i8* %585, null
  br i1 %cmp540, label %if.then542, label %if.end546

if.then542:                                       ; preds = %if.end539
  %586 = load i32, i32* %written, align 4
  %587 = load i8*, i8** %buf.addr, align 4
  %idx.ext543 = sext i32 %586 to i64
  %add.ptr544 = getelementptr inbounds i8, i8* %587, i64 %idx.ext543
  store i8* %add.ptr544, i8** %tmp545, align 4
  %588 = load i8*, i8** %tmp545, align 4
  %589 = ptrtoint i8* %588 to i32
  %590 = zext i32 %589 to i64
  %591 = bitcast i8** %buf.addr to i64*
  store i64 %590, i64* %591, align 4
  br label %if.end546

if.end546:                                        ; preds = %if.then542, %if.end539
  %592 = load i32, i32* %written, align 4
  %593 = load i32, i32* %written_total, align 4
  %add547 = add nsw i32 %593, %592
  store i32 %add547, i32* %written_total, align 4
  br label %do.end548

do.end548:                                        ; preds = %if.end546
  br label %sw.epilog

sw.bb549:                                         ; preds = %for.body
  %594 = load i32, i32* @parson_escape_slashes, align 4
  %tobool = icmp ne i32 %594, 0
  br i1 %tobool, label %if.then550, label %if.else

if.then550:                                       ; preds = %sw.bb549
  br label %do.body551

do.body551:                                       ; preds = %if.then550
  %595 = load i8*, i8** %buf.addr, align 4
  %596 = load i8*, i8** %buf_start.addr, align 4
  %597 = load i64, i64* %buf_len.addr, align 8
  %call552 = call i32 @append_string(i8* %595, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i8* %596, i64 %597)
  store i32 %call552, i32* %written, align 4
  %598 = load i32, i32* %written, align 4
  %cmp553 = icmp slt i32 %598, 0
  br i1 %cmp553, label %if.then555, label %if.end556

if.then555:                                       ; preds = %do.body551
  store i32 -1, i32* %retval, align 4
  br label %return

if.end556:                                        ; preds = %do.body551
  %599 = load i8*, i8** %buf.addr, align 4
  %600 = ptrtoint i8* %599 to i32
  %601 = zext i32 %600 to i64
  %602 = inttoptr i64 %601 to i8*
  %cmp557 = icmp ne i8* %602, null
  br i1 %cmp557, label %if.then559, label %if.end563

if.then559:                                       ; preds = %if.end556
  %603 = load i32, i32* %written, align 4
  %604 = load i8*, i8** %buf.addr, align 4
  %idx.ext560 = sext i32 %603 to i64
  %add.ptr561 = getelementptr inbounds i8, i8* %604, i64 %idx.ext560
  store i8* %add.ptr561, i8** %tmp562, align 4
  %605 = load i8*, i8** %tmp562, align 4
  %606 = ptrtoint i8* %605 to i32
  %607 = zext i32 %606 to i64
  %608 = bitcast i8** %buf.addr to i64*
  store i64 %607, i64* %608, align 4
  br label %if.end563

if.end563:                                        ; preds = %if.then559, %if.end556
  %609 = load i32, i32* %written, align 4
  %610 = load i32, i32* %written_total, align 4
  %add564 = add nsw i32 %610, %609
  store i32 %add564, i32* %written_total, align 4
  br label %do.end565

do.end565:                                        ; preds = %if.end563
  br label %if.end581

if.else:                                          ; preds = %sw.bb549
  br label %do.body566

do.body566:                                       ; preds = %if.else
  %611 = load i8*, i8** %buf.addr, align 4
  %612 = load i8*, i8** %buf_start.addr, align 4
  %613 = load i64, i64* %buf_len.addr, align 8
  %call567 = call i32 @append_string(i8* %611, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i8* %612, i64 %613)
  store i32 %call567, i32* %written, align 4
  %614 = load i32, i32* %written, align 4
  %cmp568 = icmp slt i32 %614, 0
  br i1 %cmp568, label %if.then570, label %if.end571

if.then570:                                       ; preds = %do.body566
  store i32 -1, i32* %retval, align 4
  br label %return

if.end571:                                        ; preds = %do.body566
  %615 = load i8*, i8** %buf.addr, align 4
  %616 = ptrtoint i8* %615 to i32
  %617 = zext i32 %616 to i64
  %618 = inttoptr i64 %617 to i8*
  %cmp572 = icmp ne i8* %618, null
  br i1 %cmp572, label %if.then574, label %if.end578

if.then574:                                       ; preds = %if.end571
  %619 = load i32, i32* %written, align 4
  %620 = load i8*, i8** %buf.addr, align 4
  %idx.ext575 = sext i32 %619 to i64
  %add.ptr576 = getelementptr inbounds i8, i8* %620, i64 %idx.ext575
  store i8* %add.ptr576, i8** %tmp577, align 4
  %621 = load i8*, i8** %tmp577, align 4
  %622 = ptrtoint i8* %621 to i32
  %623 = zext i32 %622 to i64
  %624 = bitcast i8** %buf.addr to i64*
  store i64 %623, i64* %624, align 4
  br label %if.end578

if.end578:                                        ; preds = %if.then574, %if.end571
  %625 = load i32, i32* %written, align 4
  %626 = load i32, i32* %written_total, align 4
  %add579 = add nsw i32 %626, %625
  store i32 %add579, i32* %written_total, align 4
  br label %do.end580

do.end580:                                        ; preds = %if.end578
  br label %if.end581

if.end581:                                        ; preds = %do.end580, %do.end565
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %627 = load i8*, i8** %buf.addr, align 4
  %628 = ptrtoint i8* %627 to i32
  %629 = zext i32 %628 to i64
  %630 = inttoptr i64 %629 to i8*
  %cmp582 = icmp ne i8* %630, null
  br i1 %cmp582, label %if.then584, label %if.end588

if.then584:                                       ; preds = %sw.default
  %631 = load i8, i8* %c, align 1
  %632 = load i8*, i8** %buf.addr, align 4
  %arrayidx585 = getelementptr inbounds i8, i8* %632, i64 0
  %633 = load i64, i64* @sbxHeap, align 8
  %634 = ptrtoint i8* %arrayidx585 to i32
  %635 = zext i32 %634 to i64
  %636 = add i64 %633, %635
  %637 = inttoptr i64 %636 to i8*
  store i8 %631, i8* %637, align 4
  %638 = load i8*, i8** %buf.addr, align 4
  %add.ptr586 = getelementptr inbounds i8, i8* %638, i64 1
  store i8* %add.ptr586, i8** %tmp587, align 4
  %639 = load i8*, i8** %tmp587, align 4
  %640 = ptrtoint i8* %639 to i32
  %641 = zext i32 %640 to i64
  %642 = bitcast i8** %buf.addr to i64*
  store i64 %641, i64* %642, align 4
  br label %if.end588

if.end588:                                        ; preds = %if.then584, %sw.default
  %643 = load i32, i32* %written_total, align 4
  %add589 = add nsw i32 %643, 1
  store i32 %add589, i32* %written_total, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end588, %if.end581, %do.end548, %do.end532, %do.end516, %do.end500, %do.end484, %do.end468, %do.end452, %do.end436, %do.end420, %do.end404, %do.end388, %do.end372, %do.end356, %do.end340, %do.end324, %do.end308, %do.end292, %do.end276, %do.end260, %do.end244, %do.end228, %do.end212, %do.end196, %do.end180, %do.end164, %do.end148, %do.end132, %do.end116, %do.end100, %do.end84, %do.end68, %do.end52, %do.end36, %do.end20
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %644 = load i64, i64* %i, align 8
  %inc = add i64 %644, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %do.body590

do.body590:                                       ; preds = %for.end
  %645 = load i8*, i8** %buf.addr, align 4
  %646 = load i8*, i8** %buf_start.addr, align 4
  %647 = load i64, i64* %buf_len.addr, align 8
  %call591 = call i32 @append_string(i8* %645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* %646, i64 %647)
  store i32 %call591, i32* %written, align 4
  %648 = load i32, i32* %written, align 4
  %cmp592 = icmp slt i32 %648, 0
  br i1 %cmp592, label %if.then594, label %if.end595

if.then594:                                       ; preds = %do.body590
  store i32 -1, i32* %retval, align 4
  br label %return

if.end595:                                        ; preds = %do.body590
  %649 = load i8*, i8** %buf.addr, align 4
  %650 = ptrtoint i8* %649 to i32
  %651 = zext i32 %650 to i64
  %652 = inttoptr i64 %651 to i8*
  %cmp596 = icmp ne i8* %652, null
  br i1 %cmp596, label %if.then598, label %if.end602

if.then598:                                       ; preds = %if.end595
  %653 = load i32, i32* %written, align 4
  %654 = load i8*, i8** %buf.addr, align 4
  %idx.ext599 = sext i32 %653 to i64
  %add.ptr600 = getelementptr inbounds i8, i8* %654, i64 %idx.ext599
  store i8* %add.ptr600, i8** %tmp601, align 4
  %655 = load i8*, i8** %tmp601, align 4
  %656 = ptrtoint i8* %655 to i32
  %657 = zext i32 %656 to i64
  %658 = bitcast i8** %buf.addr to i64*
  store i64 %657, i64* %658, align 4
  br label %if.end602

if.end602:                                        ; preds = %if.then598, %if.end595
  %659 = load i32, i32* %written, align 4
  %660 = load i32, i32* %written_total, align 4
  %add603 = add nsw i32 %660, %659
  store i32 %add603, i32* %written_total, align 4
  br label %do.end604

do.end604:                                        ; preds = %if.end602
  %661 = load i32, i32* %written_total, align 4
  store i32 %661, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end604, %if.then594, %if.then570, %if.then555, %if.then538, %if.then522, %if.then506, %if.then490, %if.then474, %if.then458, %if.then442, %if.then426, %if.then410, %if.then394, %if.then378, %if.then362, %if.then346, %if.then330, %if.then314, %if.then298, %if.then282, %if.then266, %if.then250, %if.then234, %if.then218, %if.then202, %if.then186, %if.then170, %if.then154, %if.then138, %if.then122, %if.then106, %if.then90, %if.then74, %if.then58, %if.then42, %if.then26, %if.then10, %if.then
  %662 = load i32, i32* %retval, align 4
  ret i32 %662
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
  %tmp30 = alloca i8*, align 4
  %tmp31 = alloca i8*, align 4
  %tmp33 = alloca i8*, align 4
  %tmp34 = alloca i8*, align 4
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
  %14 = load i64, i64* @sbxHeap, align 8
  %15 = ptrtoint i8* %12 to i32
  %16 = zext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = ptrtoint i8* %12 to i64
  %19 = load i64, i64* @sbxHeapRange, align 8
  %20 = and i64 %18, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %20, %19
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %21 = inttoptr i64 %17 to i8*
  %call4 = call i8* @t_strcpy(i8* %21, i8* %13)
  %22 = ptrtoint i8* %call4 to i32
  %23 = inttoptr i32 %22 to i8*
  store i8* %23, i8** %tmp5, align 4
  %24 = load i8*, i8** %tmp5, align 4
  %25 = load i8*, i8** %Tainted_file_contents, align 4
  %call6 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_parse_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %25)
  %26 = bitcast %Tstruct.Spl_json_value_t_t* %call6 to %Tstruct.json_value_t_t*
  %27 = bitcast %Tstruct.json_value_t_t* %26 to i8*
  %28 = ptrtoint i8* %27 to i32
  %29 = inttoptr i32 %28 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %29, %Tstruct.Spl_json_value_t_t** %tmp7, align 4
  %30 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp7, align 4
  %31 = ptrtoint %Tstruct.Spl_json_value_t_t* %30 to i32
  %32 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 %31, i32* %32, align 4
  %33 = load i8*, i8** %Tainted_file_contents, align 4
  %34 = ptrtoint i8* %33 to i32
  %IsoHeap.is_null = icmp eq i32 %34, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %TaintCheck.succeeded
  %35 = load i8*, i8** %Tainted_file_contents, align 4
  %36 = load i8*, i8** %Tainted_file_contents, align 4
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %add.ptr, i8** %tmp8, align 4
  %37 = load i8*, i8** %tmp8, align 4
  %IsoHeap.non_null = icmp ne i8* %33, null
  br i1 %IsoHeap.non_null, label %TaintCheck.succeeded10, label %TaintCheck.failed9

TaintCheck.succeeded10:                           ; preds = %IsoHeap.subsumption
  %add.ptr11 = getelementptr inbounds i8, i8* %33, i64 0
  %38 = ptrtoint i8* %35 to i32
  %39 = inttoptr i32 %38 to i8*
  store i8* %39, i8** %tmp12, align 4
  %40 = load i8*, i8** %tmp12, align 4
  %41 = ptrtoint i8* %33 to i32
  %42 = inttoptr i32 %41 to i8*
  store i8* %42, i8** %tmp13, align 4
  %43 = load i8*, i8** %tmp13, align 4
  %IsoHeap.lower = icmp ule i8* %40, %43
  %44 = ptrtoint i8* %add.ptr11 to i32
  %45 = inttoptr i32 %44 to i8*
  store i8* %45, i8** %tmp14, align 4
  %46 = load i8*, i8** %tmp14, align 4
  %47 = ptrtoint i8* %37 to i32
  %48 = inttoptr i32 %47 to i8*
  store i8* %48, i8** %tmp15, align 4
  %49 = load i8*, i8** %tmp15, align 4
  %IsoHeap.upper = icmp ule i8* %46, %49
  %IsoHeap.cast = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed16

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded10, %TaintCheck.succeeded
  %50 = load i64, i64* @sbxHeap, align 8
  %51 = ptrtoint i8* %33 to i32
  %52 = zext i32 %51 to i64
  %53 = add i64 %50, %52
  %54 = ptrtoint i8* %33 to i64
  %55 = load i64, i64* @sbxHeapRange, align 8
  %56 = and i64 %54, 4294967295
  %SandMem.TaintCheck17 = icmp ult i64 %56, %55
  br i1 %SandMem.TaintCheck17, label %TaintCheck.succeeded19, label %TaintCheck.failed18

TaintCheck.succeeded19:                           ; preds = %IsoHeap.success
  %57 = inttoptr i64 %53 to i8*
  call void @t_free(i8* %57)
  %58 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %58, i64* @sbxHeapRange, align 8
  %59 = load i8*, i8** %file_contents, align 8
  %IsoHeap.is_null20 = icmp eq i8* %59, null
  br i1 %IsoHeap.is_null20, label %IsoHeap.success38, label %IsoHeap.subsumption21

IsoHeap.subsumption21:                            ; preds = %TaintCheck.succeeded19
  %60 = load i8*, i8** %file_contents, align 8
  %61 = load i8*, i8** %file_contents, align 8
  %IsoHeap.non_null22 = icmp ne i8* %61, null
  br i1 %IsoHeap.non_null22, label %TaintCheck.succeeded24, label %TaintCheck.failed23

TaintCheck.succeeded24:                           ; preds = %IsoHeap.subsumption21
  %add.ptr25 = getelementptr inbounds i8, i8* %61, i64 0
  %IsoHeap.non_null26 = icmp ne i8* %59, null
  br i1 %IsoHeap.non_null26, label %TaintCheck.succeeded28, label %TaintCheck.failed27

TaintCheck.succeeded28:                           ; preds = %TaintCheck.succeeded24
  %add.ptr29 = getelementptr inbounds i8, i8* %59, i64 0
  %62 = ptrtoint i8* %60 to i32
  %63 = inttoptr i32 %62 to i8*
  store i8* %63, i8** %tmp30, align 4
  %64 = load i8*, i8** %tmp30, align 4
  %65 = ptrtoint i8* %59 to i32
  %66 = inttoptr i32 %65 to i8*
  store i8* %66, i8** %tmp31, align 4
  %67 = load i8*, i8** %tmp31, align 4
  %IsoHeap.lower32 = icmp ule i8* %64, %67
  %68 = ptrtoint i8* %add.ptr29 to i32
  %69 = inttoptr i32 %68 to i8*
  store i8* %69, i8** %tmp33, align 4
  %70 = load i8*, i8** %tmp33, align 4
  %71 = ptrtoint i8* %add.ptr25 to i32
  %72 = inttoptr i32 %71 to i8*
  store i8* %72, i8** %tmp34, align 4
  %73 = load i8*, i8** %tmp34, align 4
  %IsoHeap.upper35 = icmp ule i8* %70, %73
  %IsoHeap.cast36 = and i1 %IsoHeap.lower32, %IsoHeap.upper35
  br i1 %IsoHeap.cast36, label %IsoHeap.success38, label %TaintCheck.failed37

IsoHeap.success38:                                ; preds = %TaintCheck.succeeded28, %TaintCheck.succeeded19
  call void @free(i8* %59) #10
  %74 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %74, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed9:                               ; preds = %IsoHeap.subsumption
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed16:                              ; preds = %TaintCheck.succeeded10
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed18:                              ; preds = %IsoHeap.success
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed23:                              ; preds = %IsoHeap.subsumption21
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed27:                              ; preds = %TaintCheck.succeeded24
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed37:                              ; preds = %TaintCheck.succeeded28
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %IsoHeap.success38, %if.then
  %75 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %75
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
  %IsoHeap.non_null = icmp ne i32 %21, 0
  br i1 %IsoHeap.non_null, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end17
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
  %IsoHeap.non_null20 = icmp ne i32 %28, 0
  br i1 %IsoHeap.non_null20, label %TaintCheck.succeeded22, label %TaintCheck.failed21

TaintCheck.succeeded22:                           ; preds = %TaintCheck.succeeded
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
  %IsoHeap.lower = icmp ule i32 %35, %36
  %37 = ptrtoint i8* %24 to i32
  %38 = ptrtoint i8* %31 to i32
  %IsoHeap.upper = icmp ult i32 %37, %38
  %IsoHeap.range = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.range, label %TaintCheck.succeeded26, label %_Nullterm_range_check.failed

TaintCheck.succeeded26:                           ; preds = %TaintCheck.succeeded22, %_Nullterm_range_check.failed
  store i8 0, i8* %arrayidx, align 1
  %39 = load i8*, i8** %file_contents, align 8
  store i8* %39, i8** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end17
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed21:                              ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

_Nullterm_range_check.failed:                     ; preds = %TaintCheck.succeeded22
  %40 = ptrtoint i8* %24 to i32
  %41 = ptrtoint i8* %31 to i32
  %_Dynamic_check.at_upper = icmp eq i32 %40, %41
  %_Dynamic_check.nt_upper_bound = and i1 %IsoHeap.lower, %_Dynamic_check.at_upper
  br i1 %_Dynamic_check.nt_upper_bound, label %TaintCheck.succeeded26, label %TaintCheck.failed25

TaintCheck.failed25:                              ; preds = %_Nullterm_range_check.failed
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded26, %if.then15, %if.then8, %if.then3, %if.then
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
  store i64 %5, i64* @sbxHeapRange, align 8
  %6 = ptrtoint i8* %4 to i32
  %7 = zext i32 %6 to i64
  %8 = bitcast i8** %p to i64*
  store i64 %7, i64* %8, align 4
  %9 = load i8*, i8** %p, align 4
  %10 = ptrtoint i8* %9 to i32
  %11 = zext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = ptrtoint i8* %12 to i32
  %cmp1 = icmp ne i32 %13, 0
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %14 = load i8*, i8** %p, align 4
  %15 = load i64, i64* %sz.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %15
  %16 = load i64, i64* @sbxHeap, align 8
  %17 = ptrtoint i8* %arrayidx to i32
  %18 = zext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = ptrtoint i8* %arrayidx to i64
  %21 = load i64, i64* @sbxHeapRange, align 8
  %22 = and i64 %20, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %22, %21
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.then2
  %23 = inttoptr i64 %19 to i8*
  %24 = ptrtoint i8* %23 to i32
  %25 = inttoptr i32 %24 to i8*
  store i8* %25, i8** %tmp3, align 4
  %26 = load i8*, i8** %tmp3, align 4
  %27 = load i8*, i8** %p, align 4
  %28 = load i8*, i8** %p, align 4
  %29 = load i64, i64* %sz.addr, align 8
  %add4 = add i64 %29, 1
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %add4
  store i8* %add.ptr, i8** %tmp5, align 4
  %30 = load i8*, i8** %tmp5, align 4
  %31 = ptrtoint i8* %30 to i32
  %32 = inttoptr i32 %31 to i8*
  store i8* %32, i8** %tmp6, align 4
  %33 = load i8*, i8** %tmp6, align 4
  %34 = ptrtoint i8* %27 to i32
  %35 = inttoptr i32 %34 to i8*
  store i8* %35, i8** %tmp7, align 4
  %36 = load i8*, i8** %tmp7, align 4
  %37 = ptrtoint i8* %36 to i32
  %38 = ptrtoint i8* %26 to i32
  %IsoHeap.lower = icmp ule i32 %37, %38
  %39 = ptrtoint i8* %26 to i32
  %40 = ptrtoint i8* %33 to i32
  %IsoHeap.upper = icmp ult i32 %39, %40
  %IsoHeap.range = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.range, label %TaintCheck.succeeded9, label %TaintCheck.failed8

TaintCheck.succeeded9:                            ; preds = %TaintCheck.succeeded
  store i8 0, i8* %23, align 4
  br label %if.end10

TaintCheck.failed:                                ; preds = %if.then2
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed8:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

if.end10:                                         ; preds = %TaintCheck.succeeded9, %if.end
  %41 = load i8*, i8** %p, align 4
  store i8* %41, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %42 = load i8*, i8** %retval, align 8
  ret i8* %42
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
  %tmp30 = alloca i8*, align 4
  %tmp31 = alloca i8*, align 4
  %tmp33 = alloca i8*, align 4
  %tmp34 = alloca i8*, align 4
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
  %14 = load i64, i64* @sbxHeap, align 8
  %15 = ptrtoint i8* %12 to i32
  %16 = zext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = ptrtoint i8* %12 to i64
  %19 = load i64, i64* @sbxHeapRange, align 8
  %20 = and i64 %18, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %20, %19
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %21 = inttoptr i64 %17 to i8*
  %call4 = call i8* @t_strcpy(i8* %21, i8* %13)
  %22 = ptrtoint i8* %call4 to i32
  %23 = inttoptr i32 %22 to i8*
  store i8* %23, i8** %tmp5, align 4
  %24 = load i8*, i8** %tmp5, align 4
  %25 = load i8*, i8** %Tainted_file_contents, align 4
  %call6 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_parse_string_with_comments to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %25)
  %26 = bitcast %Tstruct.Spl_json_value_t_t* %call6 to %Tstruct.json_value_t_t*
  %27 = bitcast %Tstruct.json_value_t_t* %26 to i8*
  %28 = ptrtoint i8* %27 to i32
  %29 = inttoptr i32 %28 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %29, %Tstruct.Spl_json_value_t_t** %tmp7, align 4
  %30 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp7, align 4
  %31 = ptrtoint %Tstruct.Spl_json_value_t_t* %30 to i32
  %32 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 %31, i32* %32, align 4
  %33 = load i8*, i8** %Tainted_file_contents, align 4
  %IsoHeap.is_null = icmp eq i8* %33, null
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %TaintCheck.succeeded
  %34 = load i8*, i8** %Tainted_file_contents, align 4
  %35 = load i8*, i8** %Tainted_file_contents, align 4
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %add.ptr, i8** %tmp8, align 4
  %36 = load i8*, i8** %tmp8, align 4
  %IsoHeap.non_null = icmp ne i8* %33, null
  br i1 %IsoHeap.non_null, label %TaintCheck.succeeded10, label %TaintCheck.failed9

TaintCheck.succeeded10:                           ; preds = %IsoHeap.subsumption
  %add.ptr11 = getelementptr inbounds i8, i8* %33, i64 0
  %37 = ptrtoint i8* %34 to i32
  %38 = inttoptr i32 %37 to i8*
  store i8* %38, i8** %tmp12, align 4
  %39 = load i8*, i8** %tmp12, align 4
  %40 = ptrtoint i8* %33 to i32
  %41 = inttoptr i32 %40 to i8*
  store i8* %41, i8** %tmp13, align 4
  %42 = load i8*, i8** %tmp13, align 4
  %IsoHeap.lower = icmp ule i8* %39, %42
  %43 = ptrtoint i8* %add.ptr11 to i32
  %44 = inttoptr i32 %43 to i8*
  store i8* %44, i8** %tmp14, align 4
  %45 = load i8*, i8** %tmp14, align 4
  %46 = ptrtoint i8* %36 to i32
  %47 = inttoptr i32 %46 to i8*
  store i8* %47, i8** %tmp15, align 4
  %48 = load i8*, i8** %tmp15, align 4
  %IsoHeap.upper = icmp ule i8* %45, %48
  %IsoHeap.cast = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed16

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded10, %TaintCheck.succeeded
  %49 = load i64, i64* @sbxHeap, align 8
  %50 = ptrtoint i8* %33 to i32
  %51 = zext i32 %50 to i64
  %52 = add i64 %49, %51
  %53 = ptrtoint i8* %33 to i64
  %54 = load i64, i64* @sbxHeapRange, align 8
  %55 = and i64 %53, 4294967295
  %SandMem.TaintCheck17 = icmp ult i64 %55, %54
  br i1 %SandMem.TaintCheck17, label %TaintCheck.succeeded19, label %TaintCheck.failed18

TaintCheck.succeeded19:                           ; preds = %IsoHeap.success
  %56 = inttoptr i64 %52 to i8*
  call void @t_free(i8* %56)
  %57 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %57, i64* @sbxHeapRange, align 8
  %58 = load i8*, i8** %file_contents, align 8
  %IsoHeap.is_null20 = icmp eq i8* %58, null
  br i1 %IsoHeap.is_null20, label %IsoHeap.success38, label %IsoHeap.subsumption21

IsoHeap.subsumption21:                            ; preds = %TaintCheck.succeeded19
  %59 = load i8*, i8** %file_contents, align 8
  %60 = load i8*, i8** %file_contents, align 8
  %IsoHeap.non_null22 = icmp ne i8* %60, null
  br i1 %IsoHeap.non_null22, label %TaintCheck.succeeded24, label %TaintCheck.failed23

TaintCheck.succeeded24:                           ; preds = %IsoHeap.subsumption21
  %add.ptr25 = getelementptr inbounds i8, i8* %60, i64 0
  %IsoHeap.non_null26 = icmp ne i8* %58, null
  br i1 %IsoHeap.non_null26, label %TaintCheck.succeeded28, label %TaintCheck.failed27

TaintCheck.succeeded28:                           ; preds = %TaintCheck.succeeded24
  %add.ptr29 = getelementptr inbounds i8, i8* %58, i64 0
  %61 = ptrtoint i8* %59 to i32
  %62 = inttoptr i32 %61 to i8*
  store i8* %62, i8** %tmp30, align 4
  %63 = load i8*, i8** %tmp30, align 4
  %64 = ptrtoint i8* %58 to i32
  %65 = inttoptr i32 %64 to i8*
  store i8* %65, i8** %tmp31, align 4
  %66 = load i8*, i8** %tmp31, align 4
  %IsoHeap.lower32 = icmp ule i8* %63, %66
  %67 = ptrtoint i8* %add.ptr29 to i32
  %68 = inttoptr i32 %67 to i8*
  store i8* %68, i8** %tmp33, align 4
  %69 = load i8*, i8** %tmp33, align 4
  %70 = ptrtoint i8* %add.ptr25 to i32
  %71 = inttoptr i32 %70 to i8*
  store i8* %71, i8** %tmp34, align 4
  %72 = load i8*, i8** %tmp34, align 4
  %IsoHeap.upper35 = icmp ule i8* %69, %72
  %IsoHeap.cast36 = and i1 %IsoHeap.lower32, %IsoHeap.upper35
  br i1 %IsoHeap.cast36, label %IsoHeap.success38, label %TaintCheck.failed37

IsoHeap.success38:                                ; preds = %TaintCheck.succeeded28, %TaintCheck.succeeded19
  call void @free(i8* %58) #10
  %73 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %73, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed9:                               ; preds = %IsoHeap.subsumption
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed16:                              ; preds = %TaintCheck.succeeded10
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed18:                              ; preds = %IsoHeap.success
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed23:                              ; preds = %IsoHeap.subsumption21
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed27:                              ; preds = %TaintCheck.succeeded24
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed37:                              ; preds = %TaintCheck.succeeded28
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %IsoHeap.success38, %if.then
  %74 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %74
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_parse_string(i8* %string) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %string_ptr = alloca i8**, align 4
  %tmp20 = alloca i8*, align 4
  %tmp25 = alloca %Tstruct.Spl_json_value_t_t*, align 4
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
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = ptrtoint i8* %arrayidx to i32
  %10 = zext i32 %9 to i64
  %11 = add i64 %8, %10
  %12 = ptrtoint i8* %arrayidx to i64
  %13 = load i64, i64* @sbxHeapRange, align 8
  %14 = and i64 %12, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %14, %13
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %15 = inttoptr i64 %11 to i8*
  %16 = load i8, i8* %15, align 4
  %conv = sext i8 %16 to i32
  %cmp1 = icmp eq i32 %conv, -17
  br i1 %cmp1, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %TaintCheck.succeeded
  %17 = load i8*, i8** %string.addr, align 4
  %arrayidx3 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i64, i64* @sbxHeap, align 8
  %19 = ptrtoint i8* %arrayidx3 to i32
  %20 = zext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = ptrtoint i8* %arrayidx3 to i64
  %23 = load i64, i64* @sbxHeapRange, align 8
  %24 = and i64 %22, 4294967295
  %SandMem.TaintCheck4 = icmp ult i64 %24, %23
  br i1 %SandMem.TaintCheck4, label %TaintCheck.succeeded6, label %TaintCheck.failed5

TaintCheck.succeeded6:                            ; preds = %land.lhs.true
  %25 = inttoptr i64 %21 to i8*
  %26 = load i8, i8* %25, align 4
  %conv7 = sext i8 %26 to i32
  %cmp8 = icmp eq i32 %conv7, -69
  br i1 %cmp8, label %land.lhs.true10, label %if.end19

land.lhs.true10:                                  ; preds = %TaintCheck.succeeded6
  %27 = load i8*, i8** %string.addr, align 4
  %arrayidx11 = getelementptr inbounds i8, i8* %27, i64 2
  %28 = load i64, i64* @sbxHeap, align 8
  %29 = ptrtoint i8* %arrayidx11 to i32
  %30 = zext i32 %29 to i64
  %31 = add i64 %28, %30
  %32 = ptrtoint i8* %arrayidx11 to i64
  %33 = load i64, i64* @sbxHeapRange, align 8
  %34 = and i64 %32, 4294967295
  %SandMem.TaintCheck12 = icmp ult i64 %34, %33
  br i1 %SandMem.TaintCheck12, label %TaintCheck.succeeded14, label %TaintCheck.failed13

TaintCheck.succeeded14:                           ; preds = %land.lhs.true10
  %35 = inttoptr i64 %31 to i8*
  %36 = load i8, i8* %35, align 4
  %conv15 = sext i8 %36 to i32
  %cmp16 = icmp eq i32 %conv15, -65
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %TaintCheck.succeeded14
  %37 = load i8*, i8** %string.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 3
  store i8* %add.ptr, i8** %tmp, align 4
  %38 = load i8*, i8** %tmp, align 4
  %39 = ptrtoint i8* %38 to i32
  %40 = zext i32 %39 to i64
  %41 = bitcast i8** %string.addr to i64*
  store i64 %40, i64* %41, align 4
  br label %if.end19

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed5:                               ; preds = %land.lhs.true
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed13:                              ; preds = %land.lhs.true10
  call void @llvm.trap() #8
  unreachable

if.end19:                                         ; preds = %if.then18, %TaintCheck.succeeded14, %TaintCheck.succeeded6, %TaintCheck.succeeded
  %call = call i8* @t_malloc(i64 8)
  %42 = ptrtoint i8* %call to i32
  %43 = inttoptr i32 %42 to i8*
  store i8* %43, i8** %tmp20, align 4
  %44 = load i8*, i8** %tmp20, align 4
  %45 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %45, i64* @sbxHeapRange, align 8
  %46 = bitcast i8* %44 to i8**
  %47 = ptrtoint i8** %46 to i32
  %48 = zext i32 %47 to i64
  %49 = bitcast i8*** %string_ptr to i64*
  store i64 %48, i64* %49, align 4
  %50 = load i8*, i8** %string.addr, align 4
  %51 = load i8**, i8*** %string_ptr, align 4
  %52 = load i64, i64* @sbxHeap, align 8
  %53 = ptrtoint i8** %51 to i32
  %54 = zext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = ptrtoint i8** %51 to i64
  %57 = load i64, i64* @sbxHeapRange, align 8
  %58 = and i64 %56, 4294967295
  %SandMem.TaintCheck21 = icmp ult i64 %58, %57
  br i1 %SandMem.TaintCheck21, label %TaintCheck.succeeded23, label %TaintCheck.failed22

TaintCheck.succeeded23:                           ; preds = %if.end19
  %59 = inttoptr i64 %55 to i8**
  %60 = ptrtoint i8* %50 to i32
  %61 = zext i32 %60 to i64
  %62 = bitcast i8** %59 to i64*
  store i64 %61, i64* %62, align 4
  %63 = load i8**, i8*** %string_ptr, align 4
  %call24 = call %Tstruct.Spl_json_value_t_t* @parse_value(i8** %63, i64 0)
  %64 = bitcast %Tstruct.Spl_json_value_t_t* %call24 to %Tstruct.json_value_t_t*
  %65 = bitcast %Tstruct.json_value_t_t* %64 to i8*
  %66 = ptrtoint i8* %65 to i32
  %67 = inttoptr i32 %66 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %67, %Tstruct.Spl_json_value_t_t** %tmp25, align 4
  %68 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp25, align 4
  store %Tstruct.Spl_json_value_t_t* %68, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed22:                              ; preds = %if.end19
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded23, %if.then
  %69 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %69
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
  store i64 %8, i64* @sbxHeapRange, align 8
  %9 = ptrtoint i8* %7 to i32
  %10 = zext i32 %9 to i64
  %11 = bitcast i8** %string_mutable_copy to i64*
  store i64 %10, i64* %11, align 4
  %12 = load i8*, i8** %string_mutable_copy, align 4
  %13 = ptrtoint i8* %12 to i32
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = ptrtoint i8* %15 to i32
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %17 = load i8*, i8** %string_mutable_copy, align 4
  call void @remove_comments(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0))
  %18 = load i8*, i8** %string_mutable_copy, align 4
  call void @remove_comments(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %call1 = call i8* @t_malloc(i64 8)
  %19 = ptrtoint i8* %call1 to i32
  %20 = inttoptr i32 %19 to i8*
  store i8* %20, i8** %tmp2, align 4
  %21 = load i8*, i8** %tmp2, align 4
  %22 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %22, i64* @sbxHeapRange, align 8
  %23 = bitcast i8* %21 to i8**
  %24 = ptrtoint i8** %23 to i32
  %25 = zext i32 %24 to i64
  %26 = bitcast i8*** %string_mutable_copy_ptr to i64*
  store i64 %25, i64* %26, align 4
  %27 = load i8*, i8** %string_mutable_copy, align 4
  %28 = load i8**, i8*** %string_mutable_copy_ptr, align 4
  %arrayidx = getelementptr inbounds i8*, i8** %28, i64 0
  %29 = load i64, i64* @sbxHeap, align 8
  %30 = ptrtoint i8** %arrayidx to i32
  %31 = zext i32 %30 to i64
  %32 = add i64 %29, %31
  %33 = ptrtoint i8** %arrayidx to i64
  %34 = load i64, i64* @sbxHeapRange, align 8
  %35 = and i64 %33, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %35, %34
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %36 = inttoptr i64 %32 to i8**
  %37 = ptrtoint i8* %27 to i32
  %38 = zext i32 %37 to i64
  %39 = bitcast i8** %36 to i64*
  store i64 %38, i64* %39, align 4
  %40 = load i8**, i8*** %string_mutable_copy_ptr, align 4
  %call3 = call %Tstruct.Spl_json_value_t_t* @parse_value(i8** %40, i64 0)
  %41 = bitcast %Tstruct.Spl_json_value_t_t* %call3 to %Tstruct.json_value_t_t*
  %42 = bitcast %Tstruct.json_value_t_t* %41 to i8*
  %43 = ptrtoint i8* %42 to i32
  %44 = inttoptr i32 %43 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %44, %Tstruct.Spl_json_value_t_t** %tmp4, align 4
  %45 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp4, align 4
  %46 = ptrtoint %Tstruct.Spl_json_value_t_t* %45 to i32
  %47 = bitcast %Tstruct.Spl_json_value_t_t** %result to i32*
  store i32 %46, i32* %47, align 4
  %48 = load i8*, i8** %string_mutable_copy, align 4
  %49 = ptrtoint i8* %48 to i32
  %IsoHeap.is_null = icmp eq i32 %49, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %TaintCheck.succeeded
  %50 = load i8*, i8** %string_mutable_copy, align 4
  %51 = load i8*, i8** %string_mutable_copy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %add.ptr, i8** %tmp5, align 4
  %52 = load i8*, i8** %tmp5, align 4
  %53 = ptrtoint i8* %48 to i32
  %IsoHeap.non_null = icmp ne i32 %53, 0
  br i1 %IsoHeap.non_null, label %TaintCheck.succeeded7, label %TaintCheck.failed6

TaintCheck.succeeded7:                            ; preds = %IsoHeap.subsumption
  %add.ptr8 = getelementptr inbounds i8, i8* %48, i64 0
  %54 = ptrtoint i8* %50 to i32
  %55 = inttoptr i32 %54 to i8*
  store i8* %55, i8** %tmp9, align 4
  %56 = load i8*, i8** %tmp9, align 4
  %57 = ptrtoint i8* %48 to i32
  %58 = inttoptr i32 %57 to i8*
  store i8* %58, i8** %tmp10, align 4
  %59 = load i8*, i8** %tmp10, align 4
  %60 = ptrtoint i8* %56 to i32
  %61 = ptrtoint i8* %59 to i32
  %IsoHeap.lower = icmp ule i32 %60, %61
  %62 = ptrtoint i8* %add.ptr8 to i32
  %63 = inttoptr i32 %62 to i8*
  store i8* %63, i8** %tmp11, align 4
  %64 = load i8*, i8** %tmp11, align 4
  %65 = ptrtoint i8* %52 to i32
  %66 = inttoptr i32 %65 to i8*
  store i8* %66, i8** %tmp12, align 4
  %67 = load i8*, i8** %tmp12, align 4
  %68 = ptrtoint i8* %64 to i32
  %69 = ptrtoint i8* %67 to i32
  %IsoHeap.upper = icmp ule i32 %68, %69
  %IsoHeap.cast = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed13

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded7, %TaintCheck.succeeded
  %70 = load i64, i64* @sbxHeap, align 8
  %71 = ptrtoint i8* %48 to i32
  %72 = zext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = ptrtoint i8* %48 to i64
  %75 = load i64, i64* @sbxHeapRange, align 8
  %76 = and i64 %74, 4294967295
  %SandMem.TaintCheck14 = icmp ult i64 %76, %75
  br i1 %SandMem.TaintCheck14, label %TaintCheck.succeeded16, label %TaintCheck.failed15

TaintCheck.succeeded16:                           ; preds = %IsoHeap.success
  %77 = inttoptr i64 %73 to i8*
  call void @t_free(i8* %77)
  %78 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %78, i64* @sbxHeapRange, align 8
  %79 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %result, align 4
  store %Tstruct.Spl_json_value_t_t* %79, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed6:                               ; preds = %IsoHeap.subsumption
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed13:                              ; preds = %TaintCheck.succeeded7
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed15:                              ; preds = %IsoHeap.success
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded16, %if.then
  %80 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %80
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
  %tmp45 = alloca i8*, align 4
  %tmp47 = alloca i8*, align 4
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

while.cond:                                       ; preds = %if.end50, %if.then8, %if.end
  %7 = load i8*, i8** %string.addr, align 4
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = ptrtoint i8* %7 to i32
  %10 = zext i32 %9 to i64
  %11 = add i64 %8, %10
  %12 = ptrtoint i8* %7 to i64
  %13 = load i64, i64* @sbxHeapRange, align 8
  %14 = and i64 %12, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %14, %13
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %while.cond
  %15 = inttoptr i64 %11 to i8*
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %current_char, align 1
  %conv = sext i8 %16 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %TaintCheck.succeeded
  %17 = load i8, i8* %current_char, align 1
  %conv5 = sext i8 %17 to i32
  %cmp6 = icmp eq i32 %conv5, 92
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %18 = load i32, i32* %escaped, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.else, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  store i32 1, i32* %escaped, align 4
  %19 = load i8*, i8** %string.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  %20 = ptrtoint i8* %incdec.ptr to i32
  %21 = zext i32 %20 to i64
  %22 = bitcast i8** %string.addr to i64*
  store i64 %21, i64* %22, align 4
  br label %while.cond, !llvm.loop !9

TaintCheck.failed:                                ; preds = %while.cond
  call void @llvm.trap() #8
  unreachable

if.else:                                          ; preds = %land.lhs.true, %while.body
  %23 = load i8, i8* %current_char, align 1
  %conv9 = sext i8 %23 to i32
  %cmp10 = icmp eq i32 %conv9, 34
  br i1 %cmp10, label %land.lhs.true12, label %if.else16

land.lhs.true12:                                  ; preds = %if.else
  %24 = load i32, i32* %escaped, align 4
  %tobool13 = icmp ne i32 %24, 0
  br i1 %tobool13, label %if.else16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true12
  %25 = load i32, i32* %in_string, align 4
  %tobool15 = icmp ne i32 %25, 0
  %lnot = xor i1 %tobool15, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %in_string, align 4
  br label %if.end49

if.else16:                                        ; preds = %land.lhs.true12, %if.else
  %26 = load i8*, i8** %string.addr, align 4
  %27 = ptrtoint i8* %26 to i32
  %28 = zext i32 %27 to i64
  %29 = bitcast i8** %unchecked_string to i64*
  store i64 %28, i64* %29, align 4
  %30 = load i32, i32* %in_string, align 4
  %tobool17 = icmp ne i32 %30, 0
  br i1 %tobool17, label %if.end48, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %if.else16
  %31 = load i8*, i8** %unchecked_string, align 4
  %32 = load i8*, i8** %start_token.addr, align 8
  %33 = load i64, i64* %start_token_len, align 8
  %34 = load i64, i64* @sbxHeap, align 8
  %35 = ptrtoint i8* %31 to i32
  %36 = zext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = ptrtoint i8* %31 to i64
  %39 = load i64, i64* @sbxHeapRange, align 8
  %40 = and i64 %38, 4294967295
  %SandMem.TaintCheck19 = icmp ult i64 %40, %39
  br i1 %SandMem.TaintCheck19, label %TaintCheck.succeeded21, label %TaintCheck.failed20

TaintCheck.succeeded21:                           ; preds = %land.lhs.true18
  %41 = inttoptr i64 %37 to i8*
  %call22 = call i32 @t_strncmp(i8* %41, i8* %32, i64 %33)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end48

if.then25:                                        ; preds = %TaintCheck.succeeded21
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then25
  %42 = load i64, i64* %i, align 8
  %43 = load i64, i64* %start_token_len, align 8
  %cmp26 = icmp ult i64 %42, %43
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i8*, i8** %unchecked_string, align 4
  %45 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %44, i64 %45
  %46 = load i64, i64* @sbxHeap, align 8
  %47 = ptrtoint i8* %arrayidx to i32
  %48 = zext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = inttoptr i64 %49 to i8*
  store i8 32, i8* %50, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i64, i64* %i, align 8
  %inc = add i64 %51, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

TaintCheck.failed20:                              ; preds = %land.lhs.true18
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
  %60 = load i64, i64* @sbxHeap, align 8
  %61 = ptrtoint i8* %58 to i32
  %62 = zext i32 %61 to i64
  %63 = add i64 %60, %62
  %64 = ptrtoint i8* %58 to i64
  %65 = load i64, i64* @sbxHeapRange, align 8
  %66 = and i64 %64, 4294967295
  %SandMem.TaintCheck28 = icmp ult i64 %66, %65
  br i1 %SandMem.TaintCheck28, label %TaintCheck.succeeded30, label %TaintCheck.failed29

TaintCheck.succeeded30:                           ; preds = %for.end
  %67 = inttoptr i64 %63 to i8*
  %call31 = call i8* @t_strstr(i8* %67, i8* %59)
  %68 = ptrtoint i8* %call31 to i32
  %69 = inttoptr i32 %68 to i8*
  store i8* %69, i8** %tmp32, align 4
  %70 = load i8*, i8** %tmp32, align 4
  %71 = ptrtoint i8* %70 to i32
  %72 = zext i32 %71 to i64
  %73 = bitcast i8** %ptr_ to i64*
  store i64 %72, i64* %73, align 4
  %74 = load i8*, i8** %ptr_, align 4
  %75 = ptrtoint i8* %74 to i32
  %tobool33 = icmp ne i32 %75, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %TaintCheck.succeeded30
  br label %while.end

TaintCheck.failed29:                              ; preds = %for.end
  call void @llvm.trap() #8
  unreachable

if.end35:                                         ; preds = %TaintCheck.succeeded30
  store i64 0, i64* %i, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc41, %if.end35
  %76 = load i64, i64* %i, align 8
  %77 = load i8*, i8** %ptr_, align 4
  %78 = load i8*, i8** %unchecked_string, align 4
  %79 = ptrtoint i8* %77 to i32
  %sub.ptr.lhs.cast = zext i32 %79 to i64
  %80 = ptrtoint i8* %78 to i32
  %sub.ptr.rhs.cast = zext i32 %80 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %81 = load i64, i64* %end_token_len, align 8
  %add = add i64 %sub.ptr.sub, %81
  %cmp37 = icmp ult i64 %76, %add
  br i1 %cmp37, label %for.body39, label %for.end43

for.body39:                                       ; preds = %for.cond36
  %82 = load i8*, i8** %unchecked_string, align 4
  %83 = load i64, i64* %i, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %82, i64 %83
  %84 = load i64, i64* @sbxHeap, align 8
  %85 = ptrtoint i8* %arrayidx40 to i32
  %86 = zext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = inttoptr i64 %87 to i8*
  store i8 32, i8* %88, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %for.body39
  %89 = load i64, i64* %i, align 8
  %inc42 = add i64 %89, 1
  store i64 %inc42, i64* %i, align 8
  br label %for.cond36, !llvm.loop !11

for.end43:                                        ; preds = %for.cond36
  %90 = load i8*, i8** %ptr_, align 4
  %91 = load i64, i64* %end_token_len, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %add.ptr44, i8** %tmp45, align 4
  %92 = load i8*, i8** %tmp45, align 4
  %add.ptr46 = getelementptr inbounds i8, i8* %92, i64 -1
  store i8* %add.ptr46, i8** %tmp47, align 4
  %93 = load i8*, i8** %tmp47, align 4
  %94 = ptrtoint i8* %93 to i32
  %95 = zext i32 %94 to i64
  %96 = bitcast i8** %string.addr to i64*
  store i64 %95, i64* %96, align 4
  br label %if.end48

if.end48:                                         ; preds = %for.end43, %TaintCheck.succeeded21, %if.else16
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then14
  br label %if.end50

if.end50:                                         ; preds = %if.end49
  store i32 0, i32* %escaped, align 4
  %97 = load i8*, i8** %string.addr, align 4
  %incdec.ptr51 = getelementptr inbounds i8, i8* %97, i32 1
  %98 = ptrtoint i8* %incdec.ptr51 to i32
  %99 = zext i32 %98 to i64
  %100 = bitcast i8** %string.addr to i64*
  store i64 %99, i64* %100, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %if.then, %if.then34, %TaintCheck.succeeded
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
  %16 = load i64, i64* @sbxHeap, align 8
  %17 = ptrtoint i8* %15 to i32
  %18 = zext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = ptrtoint i8* %15 to i64
  %21 = load i64, i64* @sbxHeapRange, align 8
  %22 = and i64 %20, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %22, %21
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %23 = inttoptr i64 %19 to i8*
  %call = call i64 @t_strlen(i8* %23)
  store i64 %call, i64* %nameLen, align 8
  %24 = bitcast i8** %name_with_len to i64*
  store i64 0, i64* %24, align 4
  %25 = load i8*, i8** %name.addr, align 4
  %26 = ptrtoint i8* %25 to i32
  %27 = zext i32 %26 to i64
  %28 = bitcast i8** %name_with_len to i64*
  store i64 %27, i64* %28, align 4
  %29 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %30 = load i8*, i8** %name_with_len, align 4
  %31 = load i64, i64* %nameLen, align 8
  %call2 = call %Tstruct.Spl_json_value_t_t* @json_object_getn_value(%Tstruct.Spl_json_object_t_t* %29, i8* %30, i64 %31)
  %32 = bitcast %Tstruct.Spl_json_value_t_t* %call2 to %Tstruct.json_value_t_t*
  %33 = bitcast %Tstruct.json_value_t_t* %32 to i8*
  %34 = ptrtoint i8* %33 to i32
  %35 = inttoptr i32 %34 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %35, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %36 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %37 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %37, i64* @sbxHeapRange, align 8
  store %Tstruct.Spl_json_value_t_t* %36, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded, %if.then
  %38 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %38
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
  %7 = load i64, i64* @sbxHeap, align 8
  %8 = ptrtoint i8* %6 to i32
  %9 = zext i32 %8 to i64
  %10 = add i64 %7, %9
  %11 = ptrtoint i8* %6 to i64
  %12 = load i64, i64* @sbxHeapRange, align 8
  %13 = and i64 %11, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %13, %12
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %entry
  %14 = inttoptr i64 %10 to i8*
  %call = call i8* @t_strchr(i8* %14, i32 46)
  %15 = ptrtoint i8* %call to i32
  %16 = inttoptr i32 %15 to i8*
  store i8* %16, i8** %tmp, align 4
  %17 = load i8*, i8** %tmp, align 4
  %18 = ptrtoint i8* %17 to i32
  %19 = zext i32 %18 to i64
  %20 = bitcast i8** %dot_position to i64*
  store i64 %19, i64* %20, align 4
  %21 = load i8*, i8** %dot_position, align 4
  %22 = ptrtoint i8* %21 to i32
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %TaintCheck.succeeded
  %23 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %24 = load i8*, i8** %name.addr, align 4
  %call1 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %23, i8* %24)
  %25 = bitcast %Tstruct.Spl_json_value_t_t* %call1 to %Tstruct.json_value_t_t*
  %26 = bitcast %Tstruct.json_value_t_t* %25 to i8*
  %27 = ptrtoint i8* %26 to i32
  %28 = inttoptr i32 %27 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %28, %Tstruct.Spl_json_value_t_t** %tmp2, align 4
  %29 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp2, align 4
  store %Tstruct.Spl_json_value_t_t* %29, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %TaintCheck.succeeded
  %30 = bitcast i8** %after_dot to i64*
  store i64 0, i64* %30, align 4
  %31 = load i8*, i8** %name.addr, align 4
  %32 = ptrtoint i8* %31 to i32
  %33 = zext i32 %32 to i64
  %34 = bitcast i8** %after_dot to i64*
  store i64 %33, i64* %34, align 4
  %35 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %36 = load i8*, i8** %after_dot, align 4
  %37 = load i8*, i8** %dot_position, align 4
  %38 = load i8*, i8** %name.addr, align 4
  %39 = ptrtoint i8* %37 to i32
  %sub.ptr.lhs.cast = zext i32 %39 to i64
  %40 = ptrtoint i8* %38 to i32
  %sub.ptr.rhs.cast = zext i32 %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call3 = call %Tstruct.Spl_json_value_t_t* @json_object_getn_value(%Tstruct.Spl_json_object_t_t* %35, i8* %36, i64 %sub.ptr.sub)
  %41 = bitcast %Tstruct.Spl_json_value_t_t* %call3 to %Tstruct.json_value_t_t*
  %42 = bitcast %Tstruct.json_value_t_t* %41 to i8*
  %43 = ptrtoint i8* %42 to i32
  %44 = inttoptr i32 %43 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %44, %Tstruct.Spl_json_value_t_t** %tmp4, align 4
  %45 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp4, align 4
  %46 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %46, i64* @sbxHeapRange, align 8
  %call5 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %45)
  %47 = bitcast %Tstruct.Spl_json_object_t_t* %call5 to %Tstruct.json_object_t_t*
  %48 = bitcast %Tstruct.json_object_t_t* %47 to i8*
  %49 = ptrtoint i8* %48 to i32
  %50 = inttoptr i32 %49 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %50, %Tstruct.Spl_json_object_t_t** %tmp6, align 4
  %51 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp6, align 4
  %52 = ptrtoint %Tstruct.Spl_json_object_t_t* %51 to i32
  %53 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %52, i32* %53, align 4
  %54 = bitcast i8** %one_past_dot to i64*
  store i64 0, i64* %54, align 4
  %55 = load i8*, i8** %dot_position, align 4
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %add.ptr, i8** %tmp7, align 4
  %56 = load i8*, i8** %tmp7, align 4
  %57 = ptrtoint i8* %56 to i32
  %58 = zext i32 %57 to i64
  %59 = bitcast i8** %one_past_dot to i64*
  store i64 %58, i64* %59, align 4
  %60 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %61 = load i8*, i8** %one_past_dot, align 4
  %call8 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %60, i8* %61)
  %62 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %63 = bitcast %Tstruct.json_value_t_t* %62 to i8*
  %64 = ptrtoint i8* %63 to i32
  %65 = inttoptr i32 %64 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %65, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %66 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  store %Tstruct.Spl_json_value_t_t* %66, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %67 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %67
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
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = zext i32 %7 to i64
  %9 = add i64 %6, %8
  %10 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i64
  %11 = load i64, i64* @sbxHeapRange, align 8
  %12 = and i64 %10, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %12, %11
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %cond.true
  %13 = inttoptr i64 %9 to %Tstruct.Spl_json_object_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %13, i32 0, i32 3
  %14 = load i32, i32* %count, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %TaintCheck.succeeded
  %cond = phi i32 [ %14, %TaintCheck.succeeded ], [ 0, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv

TaintCheck.failed:                                ; preds = %cond.true
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
  %tmp19 = alloca i8**, align 4
  %tmp20 = alloca i8**, align 4
  %tmp21 = alloca i8**, align 4
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
  %11 = load i64, i64* @sbxHeap, align 8
  %12 = ptrtoint %Tstruct.Spl_json_object_t_t* %10 to i32
  %13 = zext i32 %12 to i64
  %14 = add i64 %11, %13
  %15 = ptrtoint %Tstruct.Spl_json_object_t_t* %10 to i64
  %16 = load i64, i64* @sbxHeapRange, align 8
  %17 = and i64 %15, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %17, %16
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %18 = inttoptr i64 %14 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %18, i32 0, i32 1
  %names2 = bitcast i32* %names to i8***
  %19 = load i8**, i8*** %names2, align 4
  %20 = load i64, i64* %index.addr, align 8
  %21 = bitcast i8** %19 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %20
  %22 = bitcast i32* %arrayidx to i8**
  %23 = load i64, i64* @sbxHeap, align 8
  %24 = ptrtoint i8** %22 to i32
  %25 = zext i32 %24 to i64
  %26 = add i64 %23, %25
  %27 = ptrtoint i8** %22 to i64
  %28 = load i64, i64* @sbxHeapRange, align 8
  %29 = and i64 %27, 4294967295
  %SandMem.TaintCheck3 = icmp ult i64 %29, %28
  br i1 %SandMem.TaintCheck3, label %TaintCheck.succeeded5, label %TaintCheck.failed4

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded
  %30 = inttoptr i64 %26 to i8**
  %31 = bitcast i8** %30 to i8*
  %32 = ptrtoint i8* %31 to i32
  %33 = inttoptr i32 %32 to i8**
  store i8** %33, i8*** %tmp, align 4
  %34 = load i8**, i8*** %tmp, align 4
  %35 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %36 = load i64, i64* @sbxHeap, align 8
  %37 = ptrtoint %Tstruct.Spl_json_object_t_t* %35 to i32
  %38 = zext i32 %37 to i64
  %39 = add i64 %36, %38
  %40 = ptrtoint %Tstruct.Spl_json_object_t_t* %35 to i64
  %41 = load i64, i64* @sbxHeapRange, align 8
  %42 = and i64 %40, 4294967295
  %SandMem.TaintCheck6 = icmp ult i64 %42, %41
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded8, label %TaintCheck.failed7

TaintCheck.succeeded8:                            ; preds = %TaintCheck.succeeded5
  %43 = inttoptr i64 %39 to %Tstruct.Spl_json_object_t_t*
  %names9 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %43, i32 0, i32 1
  %names10 = bitcast i32* %names9 to i8***
  %44 = load i8**, i8*** %names10, align 4
  %45 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %46 = load i64, i64* @sbxHeap, align 8
  %47 = ptrtoint %Tstruct.Spl_json_object_t_t* %45 to i32
  %48 = zext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = ptrtoint %Tstruct.Spl_json_object_t_t* %45 to i64
  %51 = load i64, i64* @sbxHeapRange, align 8
  %52 = and i64 %50, 4294967295
  %SandMem.TaintCheck11 = icmp ult i64 %52, %51
  br i1 %SandMem.TaintCheck11, label %TaintCheck.succeeded13, label %TaintCheck.failed12

TaintCheck.succeeded13:                           ; preds = %TaintCheck.succeeded8
  %53 = inttoptr i64 %49 to %Tstruct.Spl_json_object_t_t*
  %names14 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %53, i32 0, i32 1
  %names15 = bitcast i32* %names14 to i8***
  %54 = load i8**, i8*** %names15, align 4
  %55 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %56 = load i64, i64* @sbxHeap, align 8
  %57 = ptrtoint %Tstruct.Spl_json_object_t_t* %55 to i32
  %58 = zext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = ptrtoint %Tstruct.Spl_json_object_t_t* %55 to i64
  %61 = load i64, i64* @sbxHeapRange, align 8
  %62 = and i64 %60, 4294967295
  %SandMem.TaintCheck16 = icmp ult i64 %62, %61
  br i1 %SandMem.TaintCheck16, label %TaintCheck.succeeded18, label %TaintCheck.failed17

TaintCheck.succeeded18:                           ; preds = %TaintCheck.succeeded13
  %63 = inttoptr i64 %59 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %63, i32 0, i32 4
  %64 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %64 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %54, i64 %idx.ext
  store i8** %add.ptr, i8*** %tmp19, align 4
  %65 = load i8**, i8*** %tmp19, align 4
  %66 = bitcast i8** %65 to i8*
  %67 = ptrtoint i8* %66 to i32
  %68 = inttoptr i32 %67 to i8**
  store i8** %68, i8*** %tmp20, align 4
  %69 = load i8**, i8*** %tmp20, align 4
  %70 = bitcast i8** %44 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = inttoptr i32 %71 to i8**
  store i8** %72, i8*** %tmp21, align 4
  %73 = load i8**, i8*** %tmp21, align 4
  %74 = ptrtoint i8** %73 to i32
  %75 = ptrtoint i8** %34 to i32
  %IsoHeap.lower = icmp ule i32 %74, %75
  %76 = ptrtoint i8** %34 to i32
  %77 = ptrtoint i8** %69 to i32
  %IsoHeap.upper = icmp ult i32 %76, %77
  %IsoHeap.range = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.range, label %TaintCheck.succeeded23, label %TaintCheck.failed22

TaintCheck.succeeded23:                           ; preds = %TaintCheck.succeeded18
  %78 = load i8*, i8** %30, align 4
  store i8* %78, i8** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed4:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed7:                               ; preds = %TaintCheck.succeeded5
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed12:                              ; preds = %TaintCheck.succeeded8
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed17:                              ; preds = %TaintCheck.succeeded13
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed22:                              ; preds = %TaintCheck.succeeded18
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded23, %if.then
  %79 = load i8*, i8** %retval, align 8
  ret i8* %79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_value_t_t* @json_object_get_value_at(%Tstruct.json_object_t_t* %object, i64 %index) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %index.addr = alloca i64, align 8
  %tmp = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp19 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp20 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp21 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp33 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp50 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp51 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp52 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp67 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp84 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp85 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp86 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp93 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp100 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp101 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp102 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp104 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp105 = alloca %Tstruct.Spl_json_value_t_t*, align 4
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
  %11 = load i64, i64* @sbxHeap, align 8
  %12 = ptrtoint %Tstruct.Spl_json_object_t_t* %10 to i32
  %13 = zext i32 %12 to i64
  %14 = add i64 %11, %13
  %15 = ptrtoint %Tstruct.Spl_json_object_t_t* %10 to i64
  %16 = load i64, i64* @sbxHeapRange, align 8
  %17 = and i64 %15, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %17, %16
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %18 = inttoptr i64 %14 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %18, i32 0, i32 2
  %values2 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %19 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values2, align 4
  %20 = load i64, i64* %index.addr, align 8
  %21 = bitcast %Tstruct.Spl_json_value_t_t** %19 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %20
  %22 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %23 = load i64, i64* @sbxHeap, align 8
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t** %22 to i32
  %25 = zext i32 %24 to i64
  %26 = add i64 %23, %25
  %27 = ptrtoint %Tstruct.Spl_json_value_t_t** %22 to i64
  %28 = load i64, i64* @sbxHeapRange, align 8
  %29 = and i64 %27, 4294967295
  %SandMem.TaintCheck3 = icmp ult i64 %29, %28
  br i1 %SandMem.TaintCheck3, label %TaintCheck.succeeded5, label %TaintCheck.failed4

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded
  %30 = inttoptr i64 %26 to %Tstruct.Spl_json_value_t_t**
  %31 = bitcast %Tstruct.Spl_json_value_t_t** %30 to i8*
  %32 = ptrtoint i8* %31 to i32
  %33 = inttoptr i32 %32 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %33, %Tstruct.Spl_json_value_t_t*** %tmp, align 4
  %34 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp, align 4
  %35 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %36 = load i64, i64* @sbxHeap, align 8
  %37 = ptrtoint %Tstruct.Spl_json_object_t_t* %35 to i32
  %38 = zext i32 %37 to i64
  %39 = add i64 %36, %38
  %40 = ptrtoint %Tstruct.Spl_json_object_t_t* %35 to i64
  %41 = load i64, i64* @sbxHeapRange, align 8
  %42 = and i64 %40, 4294967295
  %SandMem.TaintCheck6 = icmp ult i64 %42, %41
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded8, label %TaintCheck.failed7

TaintCheck.succeeded8:                            ; preds = %TaintCheck.succeeded5
  %43 = inttoptr i64 %39 to %Tstruct.Spl_json_object_t_t*
  %values9 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %43, i32 0, i32 2
  %values10 = bitcast i32* %values9 to %Tstruct.Spl_json_value_t_t***
  %44 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values10, align 4
  %45 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %46 = load i64, i64* @sbxHeap, align 8
  %47 = ptrtoint %Tstruct.Spl_json_object_t_t* %45 to i32
  %48 = zext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = ptrtoint %Tstruct.Spl_json_object_t_t* %45 to i64
  %51 = load i64, i64* @sbxHeapRange, align 8
  %52 = and i64 %50, 4294967295
  %SandMem.TaintCheck11 = icmp ult i64 %52, %51
  br i1 %SandMem.TaintCheck11, label %TaintCheck.succeeded13, label %TaintCheck.failed12

TaintCheck.succeeded13:                           ; preds = %TaintCheck.succeeded8
  %53 = inttoptr i64 %49 to %Tstruct.Spl_json_object_t_t*
  %values14 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %53, i32 0, i32 2
  %values15 = bitcast i32* %values14 to %Tstruct.Spl_json_value_t_t***
  %54 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values15, align 4
  %55 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %56 = load i64, i64* @sbxHeap, align 8
  %57 = ptrtoint %Tstruct.Spl_json_object_t_t* %55 to i32
  %58 = zext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = ptrtoint %Tstruct.Spl_json_object_t_t* %55 to i64
  %61 = load i64, i64* @sbxHeapRange, align 8
  %62 = and i64 %60, 4294967295
  %SandMem.TaintCheck16 = icmp ult i64 %62, %61
  br i1 %SandMem.TaintCheck16, label %TaintCheck.succeeded18, label %TaintCheck.failed17

TaintCheck.succeeded18:                           ; preds = %TaintCheck.succeeded13
  %63 = inttoptr i64 %59 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %63, i32 0, i32 4
  %64 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %64 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %54, i64 %idx.ext
  store %Tstruct.Spl_json_value_t_t** %add.ptr, %Tstruct.Spl_json_value_t_t*** %tmp19, align 4
  %65 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp19, align 4
  %66 = bitcast %Tstruct.Spl_json_value_t_t** %65 to i8*
  %67 = ptrtoint i8* %66 to i32
  %68 = inttoptr i32 %67 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %68, %Tstruct.Spl_json_value_t_t*** %tmp20, align 4
  %69 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp20, align 4
  %70 = bitcast %Tstruct.Spl_json_value_t_t** %44 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = inttoptr i32 %71 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %72, %Tstruct.Spl_json_value_t_t*** %tmp21, align 4
  %73 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp21, align 4
  %IsoHeap.lower = icmp ule %Tstruct.Spl_json_value_t_t** %73, %34
  %IsoHeap.upper = icmp ult %Tstruct.Spl_json_value_t_t** %34, %69
  %IsoHeap.range = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.range, label %TaintCheck.succeeded23, label %TaintCheck.failed22

TaintCheck.succeeded23:                           ; preds = %TaintCheck.succeeded18
  %74 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %30, align 4
  %IsoHeap.is_null = icmp eq %Tstruct.Spl_json_value_t_t* %74, null
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %TaintCheck.succeeded23
  %75 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %76 = load i64, i64* @sbxHeap, align 8
  %77 = ptrtoint %Tstruct.Spl_json_object_t_t* %75 to i32
  %78 = zext i32 %77 to i64
  %79 = add i64 %76, %78
  %80 = ptrtoint %Tstruct.Spl_json_object_t_t* %75 to i64
  %81 = load i64, i64* @sbxHeapRange, align 8
  %82 = and i64 %80, 4294967295
  %SandMem.TaintCheck24 = icmp ult i64 %82, %81
  br i1 %SandMem.TaintCheck24, label %TaintCheck.succeeded26, label %TaintCheck.failed25

TaintCheck.succeeded26:                           ; preds = %IsoHeap.subsumption
  %83 = inttoptr i64 %79 to %Tstruct.Spl_json_object_t_t*
  %values27 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %83, i32 0, i32 2
  %values28 = bitcast i32* %values27 to %Tstruct.Spl_json_value_t_t***
  %84 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values28, align 4
  %85 = load i64, i64* %index.addr, align 8
  %86 = bitcast %Tstruct.Spl_json_value_t_t** %84 to i32*
  %arrayidx29 = getelementptr inbounds i32, i32* %86, i64 %85
  %87 = bitcast i32* %arrayidx29 to %Tstruct.Spl_json_value_t_t**
  %88 = load i64, i64* @sbxHeap, align 8
  %89 = ptrtoint %Tstruct.Spl_json_value_t_t** %87 to i32
  %90 = zext i32 %89 to i64
  %91 = add i64 %88, %90
  %92 = ptrtoint %Tstruct.Spl_json_value_t_t** %87 to i64
  %93 = load i64, i64* @sbxHeapRange, align 8
  %94 = and i64 %92, 4294967295
  %SandMem.TaintCheck30 = icmp ult i64 %94, %93
  br i1 %SandMem.TaintCheck30, label %TaintCheck.succeeded32, label %TaintCheck.failed31

TaintCheck.succeeded32:                           ; preds = %TaintCheck.succeeded26
  %95 = inttoptr i64 %91 to %Tstruct.Spl_json_value_t_t**
  %96 = bitcast %Tstruct.Spl_json_value_t_t** %95 to i8*
  %97 = ptrtoint i8* %96 to i32
  %98 = inttoptr i32 %97 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %98, %Tstruct.Spl_json_value_t_t*** %tmp33, align 4
  %99 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp33, align 4
  %100 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %101 = load i64, i64* @sbxHeap, align 8
  %102 = ptrtoint %Tstruct.Spl_json_object_t_t* %100 to i32
  %103 = zext i32 %102 to i64
  %104 = add i64 %101, %103
  %105 = ptrtoint %Tstruct.Spl_json_object_t_t* %100 to i64
  %106 = load i64, i64* @sbxHeapRange, align 8
  %107 = and i64 %105, 4294967295
  %SandMem.TaintCheck34 = icmp ult i64 %107, %106
  br i1 %SandMem.TaintCheck34, label %TaintCheck.succeeded36, label %TaintCheck.failed35

TaintCheck.succeeded36:                           ; preds = %TaintCheck.succeeded32
  %108 = inttoptr i64 %104 to %Tstruct.Spl_json_object_t_t*
  %values37 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %108, i32 0, i32 2
  %values38 = bitcast i32* %values37 to %Tstruct.Spl_json_value_t_t***
  %109 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values38, align 4
  %110 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %111 = load i64, i64* @sbxHeap, align 8
  %112 = ptrtoint %Tstruct.Spl_json_object_t_t* %110 to i32
  %113 = zext i32 %112 to i64
  %114 = add i64 %111, %113
  %115 = ptrtoint %Tstruct.Spl_json_object_t_t* %110 to i64
  %116 = load i64, i64* @sbxHeapRange, align 8
  %117 = and i64 %115, 4294967295
  %SandMem.TaintCheck39 = icmp ult i64 %117, %116
  br i1 %SandMem.TaintCheck39, label %TaintCheck.succeeded41, label %TaintCheck.failed40

TaintCheck.succeeded41:                           ; preds = %TaintCheck.succeeded36
  %118 = inttoptr i64 %114 to %Tstruct.Spl_json_object_t_t*
  %values42 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %118, i32 0, i32 2
  %values43 = bitcast i32* %values42 to %Tstruct.Spl_json_value_t_t***
  %119 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values43, align 4
  %120 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %121 = load i64, i64* @sbxHeap, align 8
  %122 = ptrtoint %Tstruct.Spl_json_object_t_t* %120 to i32
  %123 = zext i32 %122 to i64
  %124 = add i64 %121, %123
  %125 = ptrtoint %Tstruct.Spl_json_object_t_t* %120 to i64
  %126 = load i64, i64* @sbxHeapRange, align 8
  %127 = and i64 %125, 4294967295
  %SandMem.TaintCheck44 = icmp ult i64 %127, %126
  br i1 %SandMem.TaintCheck44, label %TaintCheck.succeeded46, label %TaintCheck.failed45

TaintCheck.succeeded46:                           ; preds = %TaintCheck.succeeded41
  %128 = inttoptr i64 %124 to %Tstruct.Spl_json_object_t_t*
  %capacity47 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %128, i32 0, i32 4
  %129 = load i32, i32* %capacity47, align 8
  %idx.ext48 = zext i32 %129 to i64
  %add.ptr49 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %119, i64 %idx.ext48
  store %Tstruct.Spl_json_value_t_t** %add.ptr49, %Tstruct.Spl_json_value_t_t*** %tmp50, align 4
  %130 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp50, align 4
  %131 = bitcast %Tstruct.Spl_json_value_t_t** %130 to i8*
  %132 = ptrtoint i8* %131 to i32
  %133 = inttoptr i32 %132 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %133, %Tstruct.Spl_json_value_t_t*** %tmp51, align 4
  %134 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp51, align 4
  %135 = bitcast %Tstruct.Spl_json_value_t_t** %109 to i8*
  %136 = ptrtoint i8* %135 to i32
  %137 = inttoptr i32 %136 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %137, %Tstruct.Spl_json_value_t_t*** %tmp52, align 4
  %138 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp52, align 4
  %IsoHeap.lower53 = icmp ule %Tstruct.Spl_json_value_t_t** %138, %99
  %IsoHeap.upper54 = icmp ult %Tstruct.Spl_json_value_t_t** %99, %134
  %IsoHeap.range55 = and i1 %IsoHeap.lower53, %IsoHeap.upper54
  br i1 %IsoHeap.range55, label %TaintCheck.succeeded57, label %TaintCheck.failed56

TaintCheck.succeeded57:                           ; preds = %TaintCheck.succeeded46
  %139 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %95, align 4
  %140 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %141 = load i64, i64* @sbxHeap, align 8
  %142 = ptrtoint %Tstruct.Spl_json_object_t_t* %140 to i32
  %143 = zext i32 %142 to i64
  %144 = add i64 %141, %143
  %145 = ptrtoint %Tstruct.Spl_json_object_t_t* %140 to i64
  %146 = load i64, i64* @sbxHeapRange, align 8
  %147 = and i64 %145, 4294967295
  %SandMem.TaintCheck58 = icmp ult i64 %147, %146
  br i1 %SandMem.TaintCheck58, label %TaintCheck.succeeded60, label %TaintCheck.failed59

TaintCheck.succeeded60:                           ; preds = %TaintCheck.succeeded57
  %148 = inttoptr i64 %144 to %Tstruct.Spl_json_object_t_t*
  %values61 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %148, i32 0, i32 2
  %values62 = bitcast i32* %values61 to %Tstruct.Spl_json_value_t_t***
  %149 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values62, align 4
  %150 = load i64, i64* %index.addr, align 8
  %151 = bitcast %Tstruct.Spl_json_value_t_t** %149 to i32*
  %arrayidx63 = getelementptr inbounds i32, i32* %151, i64 %150
  %152 = bitcast i32* %arrayidx63 to %Tstruct.Spl_json_value_t_t**
  %153 = load i64, i64* @sbxHeap, align 8
  %154 = ptrtoint %Tstruct.Spl_json_value_t_t** %152 to i32
  %155 = zext i32 %154 to i64
  %156 = add i64 %153, %155
  %157 = ptrtoint %Tstruct.Spl_json_value_t_t** %152 to i64
  %158 = load i64, i64* @sbxHeapRange, align 8
  %159 = and i64 %157, 4294967295
  %SandMem.TaintCheck64 = icmp ult i64 %159, %158
  br i1 %SandMem.TaintCheck64, label %TaintCheck.succeeded66, label %TaintCheck.failed65

TaintCheck.succeeded66:                           ; preds = %TaintCheck.succeeded60
  %160 = inttoptr i64 %156 to %Tstruct.Spl_json_value_t_t**
  %161 = bitcast %Tstruct.Spl_json_value_t_t** %160 to i8*
  %162 = ptrtoint i8* %161 to i32
  %163 = inttoptr i32 %162 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %163, %Tstruct.Spl_json_value_t_t*** %tmp67, align 4
  %164 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp67, align 4
  %165 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %166 = load i64, i64* @sbxHeap, align 8
  %167 = ptrtoint %Tstruct.Spl_json_object_t_t* %165 to i32
  %168 = zext i32 %167 to i64
  %169 = add i64 %166, %168
  %170 = ptrtoint %Tstruct.Spl_json_object_t_t* %165 to i64
  %171 = load i64, i64* @sbxHeapRange, align 8
  %172 = and i64 %170, 4294967295
  %SandMem.TaintCheck68 = icmp ult i64 %172, %171
  br i1 %SandMem.TaintCheck68, label %TaintCheck.succeeded70, label %TaintCheck.failed69

TaintCheck.succeeded70:                           ; preds = %TaintCheck.succeeded66
  %173 = inttoptr i64 %169 to %Tstruct.Spl_json_object_t_t*
  %values71 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %173, i32 0, i32 2
  %values72 = bitcast i32* %values71 to %Tstruct.Spl_json_value_t_t***
  %174 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values72, align 4
  %175 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %176 = load i64, i64* @sbxHeap, align 8
  %177 = ptrtoint %Tstruct.Spl_json_object_t_t* %175 to i32
  %178 = zext i32 %177 to i64
  %179 = add i64 %176, %178
  %180 = ptrtoint %Tstruct.Spl_json_object_t_t* %175 to i64
  %181 = load i64, i64* @sbxHeapRange, align 8
  %182 = and i64 %180, 4294967295
  %SandMem.TaintCheck73 = icmp ult i64 %182, %181
  br i1 %SandMem.TaintCheck73, label %TaintCheck.succeeded75, label %TaintCheck.failed74

TaintCheck.succeeded75:                           ; preds = %TaintCheck.succeeded70
  %183 = inttoptr i64 %179 to %Tstruct.Spl_json_object_t_t*
  %values76 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %183, i32 0, i32 2
  %values77 = bitcast i32* %values76 to %Tstruct.Spl_json_value_t_t***
  %184 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values77, align 4
  %185 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %186 = load i64, i64* @sbxHeap, align 8
  %187 = ptrtoint %Tstruct.Spl_json_object_t_t* %185 to i32
  %188 = zext i32 %187 to i64
  %189 = add i64 %186, %188
  %190 = ptrtoint %Tstruct.Spl_json_object_t_t* %185 to i64
  %191 = load i64, i64* @sbxHeapRange, align 8
  %192 = and i64 %190, 4294967295
  %SandMem.TaintCheck78 = icmp ult i64 %192, %191
  br i1 %SandMem.TaintCheck78, label %TaintCheck.succeeded80, label %TaintCheck.failed79

TaintCheck.succeeded80:                           ; preds = %TaintCheck.succeeded75
  %193 = inttoptr i64 %189 to %Tstruct.Spl_json_object_t_t*
  %capacity81 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %193, i32 0, i32 4
  %194 = load i32, i32* %capacity81, align 8
  %idx.ext82 = zext i32 %194 to i64
  %add.ptr83 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %184, i64 %idx.ext82
  store %Tstruct.Spl_json_value_t_t** %add.ptr83, %Tstruct.Spl_json_value_t_t*** %tmp84, align 4
  %195 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp84, align 4
  %196 = bitcast %Tstruct.Spl_json_value_t_t** %195 to i8*
  %197 = ptrtoint i8* %196 to i32
  %198 = inttoptr i32 %197 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %198, %Tstruct.Spl_json_value_t_t*** %tmp85, align 4
  %199 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp85, align 4
  %200 = bitcast %Tstruct.Spl_json_value_t_t** %174 to i8*
  %201 = ptrtoint i8* %200 to i32
  %202 = inttoptr i32 %201 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %202, %Tstruct.Spl_json_value_t_t*** %tmp86, align 4
  %203 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp86, align 4
  %IsoHeap.lower87 = icmp ule %Tstruct.Spl_json_value_t_t** %203, %164
  %IsoHeap.upper88 = icmp ult %Tstruct.Spl_json_value_t_t** %164, %199
  %IsoHeap.range89 = and i1 %IsoHeap.lower87, %IsoHeap.upper88
  br i1 %IsoHeap.range89, label %TaintCheck.succeeded91, label %TaintCheck.failed90

TaintCheck.succeeded91:                           ; preds = %TaintCheck.succeeded80
  %204 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %160, align 4
  %add.ptr92 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %204, i64 1
  store %Tstruct.Spl_json_value_t_t* %add.ptr92, %Tstruct.Spl_json_value_t_t** %tmp93, align 4
  %205 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp93, align 4
  %206 = bitcast %Tstruct.Spl_json_value_t_t* %74 to %Tstruct.json_value_t_t*
  %207 = bitcast %Tstruct.json_value_t_t* %206 to %Tstruct.Spl_json_value_t_t*
  %208 = bitcast %Tstruct.Spl_json_value_t_t* %74 to %Tstruct.json_value_t_t*
  %209 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %210 = load i64, i64* @sbxHeap, align 8
  %211 = ptrtoint %Tstruct.Spl_json_object_t_t* %209 to i32
  %212 = zext i32 %211 to i64
  %213 = add i64 %210, %212
  %214 = ptrtoint %Tstruct.Spl_json_object_t_t* %209 to i64
  %215 = load i64, i64* @sbxHeapRange, align 8
  %216 = and i64 %214, 4294967295
  %SandMem.TaintCheck94 = icmp ult i64 %216, %215
  br i1 %SandMem.TaintCheck94, label %TaintCheck.succeeded96, label %TaintCheck.failed95

TaintCheck.succeeded96:                           ; preds = %TaintCheck.succeeded91
  %217 = inttoptr i64 %213 to %Tstruct.Spl_json_object_t_t*
  %capacity97 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %217, i32 0, i32 4
  %218 = load i32, i32* %capacity97, align 8
  %idx.ext98 = zext i32 %218 to i64
  %add.ptr99 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %208, i64 %idx.ext98
  store %Tstruct.Spl_json_value_t_t* %add.ptr99, %Tstruct.Spl_json_value_t_t** %tmp100, align 4
  %219 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp100, align 4
  %220 = bitcast %Tstruct.Spl_json_value_t_t* %219 to %Tstruct.json_value_t_t*
  %221 = bitcast %Tstruct.json_value_t_t* %220 to %Tstruct.Spl_json_value_t_t*
  %222 = bitcast %Tstruct.Spl_json_value_t_t* %139 to i8*
  %223 = ptrtoint i8* %222 to i32
  %224 = inttoptr i32 %223 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %224, %Tstruct.Spl_json_value_t_t** %tmp101, align 4
  %225 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp101, align 4
  %226 = bitcast %Tstruct.Spl_json_value_t_t* %207 to i8*
  %227 = ptrtoint i8* %226 to i32
  %228 = inttoptr i32 %227 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %228, %Tstruct.Spl_json_value_t_t** %tmp102, align 4
  %229 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp102, align 4
  %IsoHeap.lower103 = icmp ule %Tstruct.Spl_json_value_t_t* %225, %229
  %230 = bitcast %Tstruct.Spl_json_value_t_t* %221 to i8*
  %231 = ptrtoint i8* %230 to i32
  %232 = inttoptr i32 %231 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %232, %Tstruct.Spl_json_value_t_t** %tmp104, align 4
  %233 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp104, align 4
  %234 = bitcast %Tstruct.Spl_json_value_t_t* %205 to i8*
  %235 = ptrtoint i8* %234 to i32
  %236 = inttoptr i32 %235 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %236, %Tstruct.Spl_json_value_t_t** %tmp105, align 4
  %237 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp105, align 4
  %IsoHeap.upper106 = icmp ule %Tstruct.Spl_json_value_t_t* %233, %237
  %IsoHeap.cast = and i1 %IsoHeap.lower103, %IsoHeap.upper106
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed107

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded96, %TaintCheck.succeeded23
  store %Tstruct.Spl_json_value_t_t* %74, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed4:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed7:                               ; preds = %TaintCheck.succeeded5
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed12:                              ; preds = %TaintCheck.succeeded8
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed17:                              ; preds = %TaintCheck.succeeded13
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed22:                              ; preds = %TaintCheck.succeeded18
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed25:                              ; preds = %IsoHeap.subsumption
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed31:                              ; preds = %TaintCheck.succeeded26
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed35:                              ; preds = %TaintCheck.succeeded32
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed40:                              ; preds = %TaintCheck.succeeded36
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed45:                              ; preds = %TaintCheck.succeeded41
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed56:                              ; preds = %TaintCheck.succeeded46
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed59:                              ; preds = %TaintCheck.succeeded57
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed65:                              ; preds = %TaintCheck.succeeded60
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed69:                              ; preds = %TaintCheck.succeeded66
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed74:                              ; preds = %TaintCheck.succeeded70
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed79:                              ; preds = %TaintCheck.succeeded75
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed90:                              ; preds = %TaintCheck.succeeded80
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed95:                              ; preds = %TaintCheck.succeeded91
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed107:                             ; preds = %TaintCheck.succeeded96
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %IsoHeap.success, %if.then
  %238 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %238
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
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %6 = zext i32 %5 to i64
  %7 = add i64 %4, %6
  %8 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i64
  %9 = load i64, i64* @sbxHeapRange, align 8
  %10 = and i64 %8, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %10, %9
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %entry
  %11 = inttoptr i64 %7 to %Tstruct.Spl_json_object_t_t*
  %wrapping_value = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %11, i32 0, i32 0
  %wrapping_value1 = bitcast i32* %wrapping_value to %Tstruct.Spl_json_value_t_t**
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value1, align 4
  ret %Tstruct.Spl_json_value_t_t* %12

TaintCheck.failed:                                ; preds = %entry
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
  %tmp19 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp20 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp21 = alloca %Tstruct.Spl_json_value_t_t**, align 4
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
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = ptrtoint %Tstruct.Spl_json_array_t_t* %9 to i32
  %12 = zext i32 %11 to i64
  %13 = add i64 %10, %12
  %14 = ptrtoint %Tstruct.Spl_json_array_t_t* %9 to i64
  %15 = load i64, i64* @sbxHeapRange, align 8
  %16 = and i64 %14, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %16, %15
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %17 = inttoptr i64 %13 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %17, i32 0, i32 1
  %items2 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %18 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items2, align 4
  %19 = load i64, i64* %index.addr, align 8
  %20 = bitcast %Tstruct.Spl_json_value_t_t** %18 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %19
  %21 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %22 = load i64, i64* @sbxHeap, align 8
  %23 = ptrtoint %Tstruct.Spl_json_value_t_t** %21 to i32
  %24 = zext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = ptrtoint %Tstruct.Spl_json_value_t_t** %21 to i64
  %27 = load i64, i64* @sbxHeapRange, align 8
  %28 = and i64 %26, 4294967295
  %SandMem.TaintCheck3 = icmp ult i64 %28, %27
  br i1 %SandMem.TaintCheck3, label %TaintCheck.succeeded5, label %TaintCheck.failed4

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded
  %29 = inttoptr i64 %25 to %Tstruct.Spl_json_value_t_t**
  %30 = bitcast %Tstruct.Spl_json_value_t_t** %29 to i8*
  %31 = ptrtoint i8* %30 to i32
  %32 = inttoptr i32 %31 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %32, %Tstruct.Spl_json_value_t_t*** %tmp, align 4
  %33 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp, align 4
  %34 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %35 = load i64, i64* @sbxHeap, align 8
  %36 = ptrtoint %Tstruct.Spl_json_array_t_t* %34 to i32
  %37 = zext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = ptrtoint %Tstruct.Spl_json_array_t_t* %34 to i64
  %40 = load i64, i64* @sbxHeapRange, align 8
  %41 = and i64 %39, 4294967295
  %SandMem.TaintCheck6 = icmp ult i64 %41, %40
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded8, label %TaintCheck.failed7

TaintCheck.succeeded8:                            ; preds = %TaintCheck.succeeded5
  %42 = inttoptr i64 %38 to %Tstruct.Spl_json_array_t_t*
  %items9 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %42, i32 0, i32 1
  %items10 = bitcast i32* %items9 to %Tstruct.Spl_json_value_t_t***
  %43 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items10, align 4
  %44 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %45 = load i64, i64* @sbxHeap, align 8
  %46 = ptrtoint %Tstruct.Spl_json_array_t_t* %44 to i32
  %47 = zext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = ptrtoint %Tstruct.Spl_json_array_t_t* %44 to i64
  %50 = load i64, i64* @sbxHeapRange, align 8
  %51 = and i64 %49, 4294967295
  %SandMem.TaintCheck11 = icmp ult i64 %51, %50
  br i1 %SandMem.TaintCheck11, label %TaintCheck.succeeded13, label %TaintCheck.failed12

TaintCheck.succeeded13:                           ; preds = %TaintCheck.succeeded8
  %52 = inttoptr i64 %48 to %Tstruct.Spl_json_array_t_t*
  %items14 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %52, i32 0, i32 1
  %items15 = bitcast i32* %items14 to %Tstruct.Spl_json_value_t_t***
  %53 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items15, align 4
  %54 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %55 = load i64, i64* @sbxHeap, align 8
  %56 = ptrtoint %Tstruct.Spl_json_array_t_t* %54 to i32
  %57 = zext i32 %56 to i64
  %58 = add i64 %55, %57
  %59 = ptrtoint %Tstruct.Spl_json_array_t_t* %54 to i64
  %60 = load i64, i64* @sbxHeapRange, align 8
  %61 = and i64 %59, 4294967295
  %SandMem.TaintCheck16 = icmp ult i64 %61, %60
  br i1 %SandMem.TaintCheck16, label %TaintCheck.succeeded18, label %TaintCheck.failed17

TaintCheck.succeeded18:                           ; preds = %TaintCheck.succeeded13
  %62 = inttoptr i64 %58 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %62, i32 0, i32 3
  %63 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %63 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %53, i64 %idx.ext
  store %Tstruct.Spl_json_value_t_t** %add.ptr, %Tstruct.Spl_json_value_t_t*** %tmp19, align 4
  %64 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp19, align 4
  %65 = bitcast %Tstruct.Spl_json_value_t_t** %64 to i8*
  %66 = ptrtoint i8* %65 to i32
  %67 = inttoptr i32 %66 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %67, %Tstruct.Spl_json_value_t_t*** %tmp20, align 4
  %68 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp20, align 4
  %69 = bitcast %Tstruct.Spl_json_value_t_t** %43 to i8*
  %70 = ptrtoint i8* %69 to i32
  %71 = inttoptr i32 %70 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %71, %Tstruct.Spl_json_value_t_t*** %tmp21, align 4
  %72 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp21, align 4
  %IsoHeap.lower = icmp ule %Tstruct.Spl_json_value_t_t** %72, %33
  %IsoHeap.upper = icmp ult %Tstruct.Spl_json_value_t_t** %33, %68
  %IsoHeap.range = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.range, label %TaintCheck.succeeded23, label %TaintCheck.failed22

TaintCheck.succeeded23:                           ; preds = %TaintCheck.succeeded18
  %73 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %29, align 4
  store %Tstruct.Spl_json_value_t_t* %73, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed4:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed7:                               ; preds = %TaintCheck.succeeded5
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed12:                              ; preds = %TaintCheck.succeeded8
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed17:                              ; preds = %TaintCheck.succeeded13
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed22:                              ; preds = %TaintCheck.succeeded18
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded23, %if.then
  %74 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %74
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
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = ptrtoint %Tstruct.Spl_json_array_t_t* %5 to i32
  %8 = zext i32 %7 to i64
  %9 = add i64 %6, %8
  %10 = ptrtoint %Tstruct.Spl_json_array_t_t* %5 to i64
  %11 = load i64, i64* @sbxHeapRange, align 8
  %12 = and i64 %10, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %12, %11
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %cond.true
  %13 = inttoptr i64 %9 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %13, i32 0, i32 2
  %14 = load i32, i32* %count, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %TaintCheck.succeeded
  %cond = phi i32 [ %14, %TaintCheck.succeeded ], [ 0, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv

TaintCheck.failed:                                ; preds = %cond.true
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
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %6 = zext i32 %5 to i64
  %7 = add i64 %4, %6
  %8 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i64
  %9 = load i64, i64* @sbxHeapRange, align 8
  %10 = and i64 %8, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %10, %9
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %entry
  %11 = inttoptr i64 %7 to %Tstruct.Spl_json_array_t_t*
  %wrapping_value = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %11, i32 0, i32 0
  %wrapping_value1 = bitcast i32* %wrapping_value to %Tstruct.Spl_json_value_t_t**
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value1, align 4
  ret %Tstruct.Spl_json_value_t_t* %12

TaintCheck.failed:                                ; preds = %entry
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
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i32
  %8 = zext i32 %7 to i64
  %9 = add i64 %6, %8
  %10 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i64
  %11 = load i64, i64* @sbxHeapRange, align 8
  %12 = and i64 %10, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %12, %11
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %cond.true
  %13 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %13, i32 0, i32 1
  %14 = load i32, i32* %type, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %TaintCheck.succeeded
  %cond = phi i32 [ %14, %TaintCheck.succeeded ], [ -1, %cond.false ]
  ret i32 %cond

TaintCheck.failed:                                ; preds = %cond.true
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
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %7 = zext i32 %6 to i64
  %8 = add i64 %5, %7
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i64
  %10 = load i64, i64* @sbxHeapRange, align 8
  %11 = and i64 %9, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %11, %10
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %cond.true
  %12 = inttoptr i64 %8 to %Tstruct.Spl_json_value_t_t*
  %value1 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 2
  %value2 = bitcast %Tstruct.Spl_json_value_value_t_t* %value1 to %Tstruct.json_value_value_t_t*
  %object = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %value2, i32 0, i32 2
  %object3 = bitcast %Tstruct.json_object_t_t** %object to %Tstruct.Spl_json_object_t_t**
  %13 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object3, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %TaintCheck.succeeded
  %cond = phi %Tstruct.Spl_json_object_t_t* [ %13, %TaintCheck.succeeded ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_object_t_t* %cond

TaintCheck.failed:                                ; preds = %cond.true
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
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %7 = zext i32 %6 to i64
  %8 = add i64 %5, %7
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i64
  %10 = load i64, i64* @sbxHeapRange, align 8
  %11 = and i64 %9, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %11, %10
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %cond.true
  %12 = inttoptr i64 %8 to %Tstruct.Spl_json_value_t_t*
  %value1 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 2
  %value2 = bitcast %Tstruct.Spl_json_value_value_t_t* %value1 to %Tstruct.json_value_value_t_t*
  %array = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %value2, i32 0, i32 3
  %array3 = bitcast %Tstruct.json_array_t_t** %array to %Tstruct.Spl_json_array_t_t**
  %13 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array3, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %TaintCheck.succeeded
  %cond = phi %Tstruct.Spl_json_array_t_t* [ %13, %TaintCheck.succeeded ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_array_t_t* %cond

TaintCheck.failed:                                ; preds = %cond.true
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
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %7 = zext i32 %6 to i64
  %8 = add i64 %5, %7
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i64
  %10 = load i64, i64* @sbxHeapRange, align 8
  %11 = and i64 %9, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %11, %10
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %cond.true
  %12 = inttoptr i64 %8 to %Tstruct.Spl_json_value_t_t*
  %value1 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 2
  %value2 = bitcast %Tstruct.Spl_json_value_value_t_t* %value1 to %Tstruct.json_value_value_t_t*
  %string = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %value2, i32 0, i32 0
  %13 = load i8*, i8** %string, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %TaintCheck.succeeded
  %cond = phi i8* [ %13, %TaintCheck.succeeded ], [ null, %cond.false ]
  ret i8* %cond

TaintCheck.failed:                                ; preds = %cond.true
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
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %7 = zext i32 %6 to i64
  %8 = add i64 %5, %7
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i64
  %10 = load i64, i64* @sbxHeapRange, align 8
  %11 = and i64 %9, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %11, %10
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %cond.true
  %12 = inttoptr i64 %8 to %Tstruct.Spl_json_value_t_t*
  %value1 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 2
  %value2 = bitcast %Tstruct.Spl_json_value_value_t_t* %value1 to %Tstruct.json_value_value_t_t*
  %number = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %value2, i32 0, i32 1
  %13 = load double, double* %number, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %TaintCheck.succeeded
  %cond = phi double [ %13, %TaintCheck.succeeded ], [ 0.000000e+00, %cond.false ]
  ret double %cond

TaintCheck.failed:                                ; preds = %cond.true
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
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %7 = zext i32 %6 to i64
  %8 = add i64 %5, %7
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i64
  %10 = load i64, i64* @sbxHeapRange, align 8
  %11 = and i64 %9, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %11, %10
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %cond.true
  %12 = inttoptr i64 %8 to %Tstruct.Spl_json_value_t_t*
  %value1 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 2
  %value2 = bitcast %Tstruct.Spl_json_value_value_t_t* %value1 to %Tstruct.json_value_value_t_t*
  %boolean = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %value2, i32 0, i32 4
  %13 = load i32, i32* %boolean, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %TaintCheck.succeeded
  %cond = phi i32 [ %13, %TaintCheck.succeeded ], [ -1, %cond.false ]
  ret i32 %cond

TaintCheck.failed:                                ; preds = %cond.true
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
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i32
  %8 = zext i32 %7 to i64
  %9 = add i64 %6, %8
  %10 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i64
  %11 = load i64, i64* @sbxHeapRange, align 8
  %12 = and i64 %10, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %12, %11
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %cond.true
  %13 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %13, i32 0, i32 0
  %parent1 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %TaintCheck.succeeded
  %cond = phi %Tstruct.Spl_json_value_t_t* [ %14, %TaintCheck.succeeded ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_value_t_t* %cond

TaintCheck.failed:                                ; preds = %cond.true
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
  %11 = load i64, i64* @sbxHeap, align 8
  %12 = ptrtoint i8* %10 to i32
  %13 = zext i32 %12 to i64
  %14 = add i64 %11, %13
  %15 = ptrtoint i8* %10 to i64
  %16 = load i64, i64* @sbxHeapRange, align 8
  %17 = and i64 %15, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %17, %16
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %18 = inttoptr i64 %14 to i8*
  %call = call i64 @t_strlen(i8* %18)
  store i64 %call, i64* %string_len, align 8
  %19 = bitcast i8** %str_with_len to i64*
  store i64 0, i64* %19, align 4
  %20 = load i8*, i8** %string.addr, align 4
  %21 = ptrtoint i8* %20 to i32
  %22 = zext i32 %21 to i64
  %23 = bitcast i8** %str_with_len to i64*
  store i64 %22, i64* %23, align 4
  %24 = load i8*, i8** %str_with_len, align 4
  %25 = load i64, i64* %string_len, align 8
  %call1 = call i32 @is_valid_utf8(i8* %24, i64 %25)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %TaintCheck.succeeded
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

if.end3:                                          ; preds = %TaintCheck.succeeded
  %26 = load i8*, i8** %str_with_len, align 4
  %27 = load i64, i64* %string_len, align 8
  %call4 = call i8* @tainted_parson_strndup(i8* %26, i64 %27)
  %28 = ptrtoint i8* %call4 to i32
  %29 = inttoptr i32 %28 to i8*
  store i8* %29, i8** %tmp, align 4
  %30 = load i8*, i8** %tmp, align 4
  %31 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %31, i64* @sbxHeapRange, align 8
  %32 = ptrtoint i8* %30 to i32
  %33 = zext i32 %32 to i64
  %34 = bitcast i8** %copy to i64*
  store i64 %33, i64* %34, align 4
  %35 = load i8*, i8** %copy, align 4
  %36 = ptrtoint i8* %35 to i32
  %37 = zext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = ptrtoint i8* %38 to i32
  %cmp5 = icmp eq i32 %39, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end3
  %40 = load i8*, i8** %copy, align 4
  %call8 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string_no_copy to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %40)
  %41 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %42 = bitcast %Tstruct.json_value_t_t* %41 to i8*
  %43 = ptrtoint i8* %42 to i32
  %44 = inttoptr i32 %43 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %44, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %45 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %46 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %46, i64* @sbxHeapRange, align 8
  %47 = ptrtoint %Tstruct.Spl_json_value_t_t* %45 to i32
  %48 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %47, i32* %48, align 4
  %49 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %50 = ptrtoint %Tstruct.Spl_json_value_t_t* %49 to i32
  %51 = zext i32 %50 to i64
  %52 = inttoptr i64 %51 to %Tstruct.Spl_json_value_t_t*
  %53 = ptrtoint %Tstruct.Spl_json_value_t_t* %52 to i32
  %cmp10 = icmp eq i32 %53, 0
  br i1 %cmp10, label %if.then11, label %if.end24

if.then11:                                        ; preds = %if.end7
  %54 = load i8*, i8** %copy, align 4
  %55 = ptrtoint i8* %54 to i32
  %IsoHeap.is_null = icmp eq i32 %55, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %if.then11
  %56 = load i8*, i8** %copy, align 4
  %57 = load i8*, i8** %copy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %add.ptr, i8** %tmp12, align 4
  %58 = load i8*, i8** %tmp12, align 4
  %59 = ptrtoint i8* %54 to i32
  %IsoHeap.non_null = icmp ne i32 %59, 0
  br i1 %IsoHeap.non_null, label %TaintCheck.succeeded14, label %TaintCheck.failed13

TaintCheck.succeeded14:                           ; preds = %IsoHeap.subsumption
  %add.ptr15 = getelementptr inbounds i8, i8* %54, i64 0
  %60 = ptrtoint i8* %56 to i32
  %61 = inttoptr i32 %60 to i8*
  store i8* %61, i8** %tmp16, align 4
  %62 = load i8*, i8** %tmp16, align 4
  %63 = ptrtoint i8* %54 to i32
  %64 = inttoptr i32 %63 to i8*
  store i8* %64, i8** %tmp17, align 4
  %65 = load i8*, i8** %tmp17, align 4
  %66 = ptrtoint i8* %62 to i32
  %67 = ptrtoint i8* %65 to i32
  %IsoHeap.lower = icmp ule i32 %66, %67
  %68 = ptrtoint i8* %add.ptr15 to i32
  %69 = inttoptr i32 %68 to i8*
  store i8* %69, i8** %tmp18, align 4
  %70 = load i8*, i8** %tmp18, align 4
  %71 = ptrtoint i8* %58 to i32
  %72 = inttoptr i32 %71 to i8*
  store i8* %72, i8** %tmp19, align 4
  %73 = load i8*, i8** %tmp19, align 4
  %74 = ptrtoint i8* %70 to i32
  %75 = ptrtoint i8* %73 to i32
  %IsoHeap.upper = icmp ule i32 %74, %75
  %IsoHeap.cast = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed20

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded14, %if.then11
  %76 = load i64, i64* @sbxHeap, align 8
  %77 = ptrtoint i8* %54 to i32
  %78 = zext i32 %77 to i64
  %79 = add i64 %76, %78
  %80 = ptrtoint i8* %54 to i64
  %81 = load i64, i64* @sbxHeapRange, align 8
  %82 = and i64 %80, 4294967295
  %SandMem.TaintCheck21 = icmp ult i64 %82, %81
  br i1 %SandMem.TaintCheck21, label %TaintCheck.succeeded23, label %TaintCheck.failed22

TaintCheck.succeeded23:                           ; preds = %IsoHeap.success
  %83 = inttoptr i64 %79 to i8*
  call void @t_free(i8* %83)
  %84 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %84, i64* @sbxHeapRange, align 8
  br label %if.end24

TaintCheck.failed13:                              ; preds = %IsoHeap.subsumption
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed20:                              ; preds = %TaintCheck.succeeded14
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed22:                              ; preds = %IsoHeap.success
  call void @llvm.trap() #8
  unreachable

if.end24:                                         ; preds = %TaintCheck.succeeded23, %if.end7
  %85 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  store %Tstruct.Spl_json_value_t_t* %85, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end24, %if.then6, %if.then2, %if.then
  %86 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %86
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
  %tmp9 = alloca i8*, align 4
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
  store i64 %8, i64* @sbxHeapRange, align 8
  %9 = ptrtoint i32* %7 to i32
  %10 = zext i32 %9 to i64
  %11 = bitcast i32** %len to i64*
  store i64 %10, i64* %11, align 4
  %12 = load i32*, i32** %len, align 4
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = ptrtoint i32* %12 to i32
  %15 = zext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = ptrtoint i32* %12 to i64
  %18 = load i64, i64* @sbxHeapRange, align 8
  %19 = and i64 %17, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %19, %18
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %entry
  %20 = inttoptr i64 %16 to i32*
  store i32 0, i32* %20, align 4
  %call1 = call i8* @t_malloc(i64 4)
  %21 = bitcast i8* %call1 to i32*
  %22 = bitcast i32* %21 to i8*
  %23 = ptrtoint i8* %22 to i32
  %24 = inttoptr i32 %23 to i32*
  store i32* %24, i32** %tmp2, align 4
  %25 = load i32*, i32** %tmp2, align 4
  %26 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %26, i64* @sbxHeapRange, align 8
  %27 = ptrtoint i32* %25 to i32
  %28 = zext i32 %27 to i64
  %29 = bitcast i32** %temp to i64*
  store i64 %28, i64* %29, align 4
  %30 = load i8*, i8** %string.addr, align 4
  %31 = load i64, i64* %string_len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %add.ptr, i8** %tmp3, align 4
  %32 = load i8*, i8** %tmp3, align 4
  %33 = ptrtoint i8* %32 to i32
  %34 = zext i32 %33 to i64
  %35 = bitcast i8** %string_end to i64*
  store i64 %34, i64* %35, align 4
  br label %while.cond

while.cond:                                       ; preds = %TaintCheck.succeeded7, %TaintCheck.succeeded
  %36 = load i8*, i8** %string.addr, align 4
  %37 = load i8*, i8** %string_end, align 4
  %38 = ptrtoint i8* %36 to i32
  %39 = zext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = ptrtoint i8* %37 to i32
  %42 = zext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = ptrtoint i8* %40 to i32
  %45 = ptrtoint i8* %43 to i32
  %cmp = icmp ult i32 %44, %45
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i8*, i8** %string.addr, align 4
  %47 = load i32*, i32** %len, align 4
  %call4 = call i32 @verify_utf8_sequence(i8* %46, i32* %47)
  %48 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %48, i64* @sbxHeapRange, align 8
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %while.body
  %49 = load i32*, i32** %len, align 4
  %50 = load i64, i64* @sbxHeap, align 8
  %51 = ptrtoint i32* %49 to i32
  %52 = zext i32 %51 to i64
  %53 = add i64 %50, %52
  %54 = ptrtoint i32* %49 to i64
  %55 = load i64, i64* @sbxHeapRange, align 8
  %56 = and i64 %54, 4294967295
  %SandMem.TaintCheck5 = icmp ult i64 %56, %55
  br i1 %SandMem.TaintCheck5, label %TaintCheck.succeeded7, label %TaintCheck.failed6

TaintCheck.succeeded7:                            ; preds = %if.end
  %57 = inttoptr i64 %53 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %string.addr, align 4
  %idx.ext = sext i32 %58 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %59, i64 %idx.ext
  store i8* %add.ptr8, i8** %tmp9, align 4
  %60 = load i8*, i8** %tmp9, align 4
  %61 = ptrtoint i8* %60 to i32
  %62 = zext i32 %61 to i64
  %63 = bitcast i8** %string.addr to i64*
  store i64 %62, i64* %63, align 4
  br label %while.cond, !llvm.loop !12

TaintCheck.failed6:                               ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %64 = load i32, i32* %retval, align 4
  ret i32 %64
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
  store i64 %5, i64* @sbxHeapRange, align 8
  %6 = bitcast %Tstruct.Spl_json_value_t_t* %4 to %Tstruct.json_value_t_t*
  %7 = bitcast %Tstruct.json_value_t_t* %6 to %Tstruct.Spl_json_value_t_t*
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %9 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %8, i32* %9, align 4
  %10 = load double, double* %number.addr, align 8
  %mul = fmul double %10, 0.000000e+00
  %cmp = fcmp une double %mul, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = zext i32 %12 to i64
  %14 = inttoptr i64 %13 to %Tstruct.Spl_json_value_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %cmp1 = icmp eq i32 %15, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %16 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i64
  %22 = load i64, i64* @sbxHeapRange, align 8
  %23 = and i64 %21, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %23, %22
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end3
  %24 = inttoptr i64 %20 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %24, i32 0, i32 0
  %parent4 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %25 = bitcast %Tstruct.Spl_json_value_t_t** %parent4 to i32*
  store i32 0, i32* %25, align 4
  %26 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %27 = load i64, i64* @sbxHeap, align 8
  %28 = ptrtoint %Tstruct.Spl_json_value_t_t* %26 to i32
  %29 = zext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = ptrtoint %Tstruct.Spl_json_value_t_t* %26 to i64
  %32 = load i64, i64* @sbxHeapRange, align 8
  %33 = and i64 %31, 4294967295
  %SandMem.TaintCheck5 = icmp ult i64 %33, %32
  br i1 %SandMem.TaintCheck5, label %TaintCheck.succeeded7, label %TaintCheck.failed6

TaintCheck.succeeded7:                            ; preds = %TaintCheck.succeeded
  %34 = inttoptr i64 %30 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %34, i32 0, i32 1
  store i32 3, i32* %type, align 4
  %35 = load double, double* %number.addr, align 8
  %36 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %37 = load i64, i64* @sbxHeap, align 8
  %38 = ptrtoint %Tstruct.Spl_json_value_t_t* %36 to i32
  %39 = zext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = ptrtoint %Tstruct.Spl_json_value_t_t* %36 to i64
  %42 = load i64, i64* @sbxHeapRange, align 8
  %43 = and i64 %41, 4294967295
  %SandMem.TaintCheck8 = icmp ult i64 %43, %42
  br i1 %SandMem.TaintCheck8, label %TaintCheck.succeeded10, label %TaintCheck.failed9

TaintCheck.succeeded10:                           ; preds = %TaintCheck.succeeded7
  %44 = inttoptr i64 %40 to %Tstruct.Spl_json_value_t_t*
  %value = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %44, i32 0, i32 2
  %value11 = bitcast %Tstruct.Spl_json_value_value_t_t* %value to %Tstruct.json_value_value_t_t*
  %number12 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %value11, i32 0, i32 1
  store double %35, double* %number12, align 8
  %45 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  store %Tstruct.Spl_json_value_t_t* %45, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end3
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed6:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed9:                               ; preds = %TaintCheck.succeeded7
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded10, %if.then2, %if.then
  %46 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %46
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
  store i64 %5, i64* @sbxHeapRange, align 8
  %6 = bitcast %Tstruct.Spl_json_value_t_t* %4 to %Tstruct.json_value_t_t*
  %7 = bitcast %Tstruct.json_value_t_t* %6 to %Tstruct.Spl_json_value_t_t*
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %9 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %8, i32* %9, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %15 = zext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i64
  %18 = load i64, i64* @sbxHeapRange, align 8
  %19 = and i64 %17, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %19, %18
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %20 = inttoptr i64 %16 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %20, i32 0, i32 0
  %parent1 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %21 = bitcast %Tstruct.Spl_json_value_t_t** %parent1 to i32*
  store i32 0, i32* %21, align 4
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %23 = load i64, i64* @sbxHeap, align 8
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %22 to i32
  %25 = zext i32 %24 to i64
  %26 = add i64 %23, %25
  %27 = ptrtoint %Tstruct.Spl_json_value_t_t* %22 to i64
  %28 = load i64, i64* @sbxHeapRange, align 8
  %29 = and i64 %27, 4294967295
  %SandMem.TaintCheck2 = icmp ult i64 %29, %28
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded4, label %TaintCheck.failed3

TaintCheck.succeeded4:                            ; preds = %TaintCheck.succeeded
  %30 = inttoptr i64 %26 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %30, i32 0, i32 1
  store i32 6, i32* %type, align 4
  %31 = load i32, i32* %boolean.addr, align 4
  %tobool5 = icmp ne i32 %31, 0
  %32 = zext i1 %tobool5 to i64
  %cond = select i1 %tobool5, i32 1, i32 0
  %33 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %34 = load i64, i64* @sbxHeap, align 8
  %35 = ptrtoint %Tstruct.Spl_json_value_t_t* %33 to i32
  %36 = zext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = ptrtoint %Tstruct.Spl_json_value_t_t* %33 to i64
  %39 = load i64, i64* @sbxHeapRange, align 8
  %40 = and i64 %38, 4294967295
  %SandMem.TaintCheck6 = icmp ult i64 %40, %39
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded8, label %TaintCheck.failed7

TaintCheck.succeeded8:                            ; preds = %TaintCheck.succeeded4
  %41 = inttoptr i64 %37 to %Tstruct.Spl_json_value_t_t*
  %value = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %41, i32 0, i32 2
  %value9 = bitcast %Tstruct.Spl_json_value_value_t_t* %value to %Tstruct.json_value_value_t_t*
  %boolean10 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %value9, i32 0, i32 4
  store i32 %cond, i32* %boolean10, align 8
  %42 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  store %Tstruct.Spl_json_value_t_t* %42, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed3:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed7:                               ; preds = %TaintCheck.succeeded4
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded8, %if.then
  %43 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %43
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
  store i64 %5, i64* @sbxHeapRange, align 8
  %6 = bitcast %Tstruct.Spl_json_value_t_t* %4 to %Tstruct.json_value_t_t*
  %7 = bitcast %Tstruct.json_value_t_t* %6 to %Tstruct.Spl_json_value_t_t*
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %9 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %8, i32* %9, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %15 = zext i32 %14 to i64
  %16 = add i64 %13, %15
  %17 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i64
  %18 = load i64, i64* @sbxHeapRange, align 8
  %19 = and i64 %17, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %19, %18
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %20 = inttoptr i64 %16 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %20, i32 0, i32 0
  %parent1 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %21 = bitcast %Tstruct.Spl_json_value_t_t** %parent1 to i32*
  store i32 0, i32* %21, align 4
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %23 = load i64, i64* @sbxHeap, align 8
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %22 to i32
  %25 = zext i32 %24 to i64
  %26 = add i64 %23, %25
  %27 = ptrtoint %Tstruct.Spl_json_value_t_t* %22 to i64
  %28 = load i64, i64* @sbxHeapRange, align 8
  %29 = and i64 %27, 4294967295
  %SandMem.TaintCheck2 = icmp ult i64 %29, %28
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded4, label %TaintCheck.failed3

TaintCheck.succeeded4:                            ; preds = %TaintCheck.succeeded
  %30 = inttoptr i64 %26 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %30, i32 0, i32 1
  store i32 1, i32* %type, align 4
  %31 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  store %Tstruct.Spl_json_value_t_t* %31, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed3:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded4, %if.then
  %32 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %32
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
  store i64 %27, i64* @sbxHeapRange, align 8
  %28 = ptrtoint %Tstruct.Spl_json_value_t_t* %26 to i32
  %29 = bitcast %Tstruct.Spl_json_value_t_t** %return_value to i32*
  store i32 %28, i32* %29, align 4
  %30 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %31 = ptrtoint %Tstruct.Spl_json_value_t_t* %30 to i32
  %32 = zext i32 %31 to i64
  %33 = inttoptr i64 %32 to %Tstruct.Spl_json_value_t_t*
  %34 = ptrtoint %Tstruct.Spl_json_value_t_t* %33 to i32
  %cmp = icmp eq i32 %34, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %sw.bb
  %35 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %call4 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %35)
  %36 = bitcast %Tstruct.Spl_json_array_t_t* %call4 to %Tstruct.json_array_t_t*
  %37 = bitcast %Tstruct.json_array_t_t* %36 to i8*
  %38 = ptrtoint i8* %37 to i32
  %39 = inttoptr i32 %38 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %39, %Tstruct.Spl_json_array_t_t** %tmp5, align 4
  %40 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %tmp5, align 4
  %41 = ptrtoint %Tstruct.Spl_json_array_t_t* %40 to i32
  %42 = bitcast %Tstruct.Spl_json_array_t_t** %temp_array_copy to i32*
  store i32 %41, i32* %42, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %43 = load i64, i64* %i, align 8
  %44 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array, align 4
  %call6 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %44)
  %cmp7 = icmp ult i64 %43, %call6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array, align 4
  %46 = load i64, i64* %i, align 8
  %call8 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %45, i64 %46)
  %47 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %48 = bitcast %Tstruct.json_value_t_t* %47 to i8*
  %49 = ptrtoint i8* %48 to i32
  %50 = inttoptr i32 %49 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %50, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %51 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %52 = ptrtoint %Tstruct.Spl_json_value_t_t* %51 to i32
  %53 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %52, i32* %53, align 4
  %54 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %call10 = call %Tstruct.Spl_json_value_t_t* @json_value_deep_copy(%Tstruct.Spl_json_value_t_t* %54)
  %55 = bitcast %Tstruct.Spl_json_value_t_t* %call10 to %Tstruct.json_value_t_t*
  %56 = bitcast %Tstruct.json_value_t_t* %55 to i8*
  %57 = ptrtoint i8* %56 to i32
  %58 = inttoptr i32 %57 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %58, %Tstruct.Spl_json_value_t_t** %tmp11, align 4
  %59 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp11, align 4
  %60 = ptrtoint %Tstruct.Spl_json_value_t_t* %59 to i32
  %61 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value_copy to i32*
  store i32 %60, i32* %61, align 4
  %62 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %63 = ptrtoint %Tstruct.Spl_json_value_t_t* %62 to i32
  %64 = zext i32 %63 to i64
  %65 = inttoptr i64 %64 to %Tstruct.Spl_json_value_t_t*
  %66 = ptrtoint %Tstruct.Spl_json_value_t_t* %65 to i32
  %cmp12 = icmp eq i32 %66, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  %67 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %67)
  %68 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %68, i64* @sbxHeapRange, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end14:                                         ; preds = %for.body
  %69 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array_copy, align 4
  %70 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %call15 = call i32 @json_array_add(%Tstruct.Spl_json_array_t_t* %69, %Tstruct.Spl_json_value_t_t* %70)
  %71 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %71, i64* @sbxHeapRange, align 8
  %cmp16 = icmp eq i32 %call15, -1
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  %72 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %72)
  %73 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %73, i64* @sbxHeapRange, align 8
  %74 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %74)
  %75 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %75, i64* @sbxHeapRange, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end14
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %76 = load i64, i64* %i, align 8
  %inc = add i64 %76, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %77 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %77, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb19:                                          ; preds = %entry
  %78 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call20 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %78)
  %79 = bitcast %Tstruct.Spl_json_object_t_t* %call20 to %Tstruct.json_object_t_t*
  %80 = bitcast %Tstruct.json_object_t_t* %79 to i8*
  %81 = ptrtoint i8* %80 to i32
  %82 = inttoptr i32 %81 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %82, %Tstruct.Spl_json_object_t_t** %tmp21, align 4
  %83 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp21, align 4
  %84 = ptrtoint %Tstruct.Spl_json_object_t_t* %83 to i32
  %85 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object to i32*
  store i32 %84, i32* %85, align 4
  %call22 = call %Tstruct.Spl_json_value_t_t* @json_value_init_object()
  %86 = bitcast %Tstruct.Spl_json_value_t_t* %call22 to %Tstruct.json_value_t_t*
  %87 = bitcast %Tstruct.json_value_t_t* %86 to i8*
  %88 = ptrtoint i8* %87 to i32
  %89 = inttoptr i32 %88 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %89, %Tstruct.Spl_json_value_t_t** %tmp23, align 4
  %90 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp23, align 4
  %91 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %91, i64* @sbxHeapRange, align 8
  %92 = ptrtoint %Tstruct.Spl_json_value_t_t* %90 to i32
  %93 = bitcast %Tstruct.Spl_json_value_t_t** %return_value to i32*
  store i32 %92, i32* %93, align 4
  %94 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %95 = ptrtoint %Tstruct.Spl_json_value_t_t* %94 to i32
  %96 = zext i32 %95 to i64
  %97 = inttoptr i64 %96 to %Tstruct.Spl_json_value_t_t*
  %98 = ptrtoint %Tstruct.Spl_json_value_t_t* %97 to i32
  %cmp24 = icmp eq i32 %98, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.bb19
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end26:                                         ; preds = %sw.bb19
  %99 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %call27 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %99)
  %100 = bitcast %Tstruct.Spl_json_object_t_t* %call27 to %Tstruct.json_object_t_t*
  %101 = bitcast %Tstruct.json_object_t_t* %100 to i8*
  %102 = ptrtoint i8* %101 to i32
  %103 = inttoptr i32 %102 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %103, %Tstruct.Spl_json_object_t_t** %tmp28, align 4
  %104 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp28, align 4
  %105 = ptrtoint %Tstruct.Spl_json_object_t_t* %104 to i32
  %106 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object_copy to i32*
  store i32 %105, i32* %106, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc46, %if.end26
  %107 = load i64, i64* %i, align 8
  %108 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %call30 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %108)
  %cmp31 = icmp ult i64 %107, %call30
  br i1 %cmp31, label %for.body32, label %for.end48

for.body32:                                       ; preds = %for.cond29
  %109 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %110 = load i64, i64* %i, align 8
  %call33 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %109, i64 %110)
  %111 = ptrtoint i8* %call33 to i32
  %112 = inttoptr i32 %111 to i8*
  store i8* %112, i8** %tmp34, align 4
  %113 = load i8*, i8** %tmp34, align 4
  %114 = ptrtoint i8* %113 to i32
  %115 = zext i32 %114 to i64
  %116 = bitcast i8** %temp_key to i64*
  store i64 %115, i64* %116, align 4
  %117 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %118 = load i8*, i8** %temp_key, align 4
  %call35 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %117, i8* %118)
  %119 = bitcast %Tstruct.Spl_json_value_t_t* %call35 to %Tstruct.json_value_t_t*
  %120 = bitcast %Tstruct.json_value_t_t* %119 to i8*
  %121 = ptrtoint i8* %120 to i32
  %122 = inttoptr i32 %121 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %122, %Tstruct.Spl_json_value_t_t** %tmp36, align 4
  %123 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp36, align 4
  %124 = ptrtoint %Tstruct.Spl_json_value_t_t* %123 to i32
  %125 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %124, i32* %125, align 4
  %126 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %call37 = call %Tstruct.Spl_json_value_t_t* @json_value_deep_copy(%Tstruct.Spl_json_value_t_t* %126)
  %127 = bitcast %Tstruct.Spl_json_value_t_t* %call37 to %Tstruct.json_value_t_t*
  %128 = bitcast %Tstruct.json_value_t_t* %127 to i8*
  %129 = ptrtoint i8* %128 to i32
  %130 = inttoptr i32 %129 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %130, %Tstruct.Spl_json_value_t_t** %tmp38, align 4
  %131 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp38, align 4
  %132 = ptrtoint %Tstruct.Spl_json_value_t_t* %131 to i32
  %133 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value_copy to i32*
  store i32 %132, i32* %133, align 4
  %134 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %135 = ptrtoint %Tstruct.Spl_json_value_t_t* %134 to i32
  %136 = zext i32 %135 to i64
  %137 = inttoptr i64 %136 to %Tstruct.Spl_json_value_t_t*
  %138 = ptrtoint %Tstruct.Spl_json_value_t_t* %137 to i32
  %cmp39 = icmp eq i32 %138, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.body32
  %139 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %139)
  %140 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %140, i64* @sbxHeapRange, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end41:                                         ; preds = %for.body32
  %141 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object_copy, align 4
  %142 = load i8*, i8** %temp_key, align 4
  %143 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %call42 = call i32 bitcast (i32 (%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*)* @json_object_add to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %141, i8* %142, %Tstruct.Spl_json_value_t_t* %143)
  %144 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %144, i64* @sbxHeapRange, align 8
  %cmp43 = icmp eq i32 %call42, -1
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  %145 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %145)
  %146 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %146, i64* @sbxHeapRange, align 8
  %147 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %147)
  %148 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %148, i64* @sbxHeapRange, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end45:                                         ; preds = %if.end41
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %149 = load i64, i64* %i, align 8
  %inc47 = add i64 %149, 1
  store i64 %inc47, i64* %i, align 8
  br label %for.cond29, !llvm.loop !14

for.end48:                                        ; preds = %for.cond29
  %150 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %150, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb49:                                          ; preds = %entry
  %151 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call50 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %151)
  %call51 = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %call50)
  %152 = bitcast %Tstruct.Spl_json_value_t_t* %call51 to %Tstruct.json_value_t_t*
  %153 = bitcast %Tstruct.json_value_t_t* %152 to i8*
  %154 = ptrtoint i8* %153 to i32
  %155 = inttoptr i32 %154 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %155, %Tstruct.Spl_json_value_t_t** %tmp52, align 4
  %156 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp52, align 4
  store %Tstruct.Spl_json_value_t_t* %156, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb53:                                          ; preds = %entry
  %157 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call54 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %157)
  %call55 = call %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %call54)
  %158 = bitcast %Tstruct.Spl_json_value_t_t* %call55 to %Tstruct.json_value_t_t*
  %159 = bitcast %Tstruct.json_value_t_t* %158 to i8*
  %160 = ptrtoint i8* %159 to i32
  %161 = inttoptr i32 %160 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %161, %Tstruct.Spl_json_value_t_t** %tmp56, align 4
  %162 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp56, align 4
  store %Tstruct.Spl_json_value_t_t* %162, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb57:                                          ; preds = %entry
  %163 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call58 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %163)
  %164 = ptrtoint i8* %call58 to i32
  %165 = inttoptr i32 %164 to i8*
  store i8* %165, i8** %tmp59, align 4
  %166 = load i8*, i8** %tmp59, align 4
  %167 = ptrtoint i8* %166 to i32
  %168 = zext i32 %167 to i64
  %169 = bitcast i8** %temp_string to i64*
  store i64 %168, i64* %169, align 4
  %170 = load i8*, i8** %temp_string, align 4
  %171 = ptrtoint i8* %170 to i32
  %172 = zext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = ptrtoint i8* %173 to i32
  %cmp60 = icmp eq i32 %174, 0
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %sw.bb57
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end62:                                         ; preds = %sw.bb57
  %175 = load i8*, i8** %temp_string, align 4
  %call63 = call i8* @tainted_parson_strdup(i8* %175)
  %176 = ptrtoint i8* %call63 to i32
  %177 = inttoptr i32 %176 to i8*
  store i8* %177, i8** %tmp64, align 4
  %178 = load i8*, i8** %tmp64, align 4
  %179 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %179, i64* @sbxHeapRange, align 8
  %180 = ptrtoint i8* %178 to i32
  %181 = zext i32 %180 to i64
  %182 = bitcast i8** %temp_string_copy to i64*
  store i64 %181, i64* %182, align 4
  %183 = load i8*, i8** %temp_string_copy, align 4
  %184 = ptrtoint i8* %183 to i32
  %185 = zext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = ptrtoint i8* %186 to i32
  %cmp65 = icmp eq i32 %187, 0
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end62
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end67:                                         ; preds = %if.end62
  %188 = load i8*, i8** %temp_string_copy, align 4
  %call68 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string_no_copy to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %188)
  %189 = bitcast %Tstruct.Spl_json_value_t_t* %call68 to %Tstruct.json_value_t_t*
  %190 = bitcast %Tstruct.json_value_t_t* %189 to i8*
  %191 = ptrtoint i8* %190 to i32
  %192 = inttoptr i32 %191 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %192, %Tstruct.Spl_json_value_t_t** %tmp69, align 4
  %193 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp69, align 4
  %194 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %194, i64* @sbxHeapRange, align 8
  %195 = ptrtoint %Tstruct.Spl_json_value_t_t* %193 to i32
  %196 = bitcast %Tstruct.Spl_json_value_t_t** %return_value to i32*
  store i32 %195, i32* %196, align 4
  %197 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %198 = ptrtoint %Tstruct.Spl_json_value_t_t* %197 to i32
  %199 = zext i32 %198 to i64
  %200 = inttoptr i64 %199 to %Tstruct.Spl_json_value_t_t*
  %201 = ptrtoint %Tstruct.Spl_json_value_t_t* %200 to i32
  %cmp70 = icmp eq i32 %201, 0
  br i1 %cmp70, label %if.then71, label %if.end81

if.then71:                                        ; preds = %if.end67
  %202 = load i8*, i8** %temp_string_copy, align 4
  %203 = ptrtoint i8* %202 to i32
  %IsoHeap.is_null = icmp eq i32 %203, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %if.then71
  %204 = load i8*, i8** %temp_string_copy, align 4
  %205 = load i8*, i8** %temp_string_copy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %205, i64 1
  store i8* %add.ptr, i8** %tmp72, align 4
  %206 = load i8*, i8** %tmp72, align 4
  %207 = ptrtoint i8* %202 to i32
  %IsoHeap.non_null = icmp ne i32 %207, 0
  br i1 %IsoHeap.non_null, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %IsoHeap.subsumption
  %add.ptr73 = getelementptr inbounds i8, i8* %202, i64 0
  %208 = ptrtoint i8* %204 to i32
  %209 = inttoptr i32 %208 to i8*
  store i8* %209, i8** %tmp74, align 4
  %210 = load i8*, i8** %tmp74, align 4
  %211 = ptrtoint i8* %202 to i32
  %212 = inttoptr i32 %211 to i8*
  store i8* %212, i8** %tmp75, align 4
  %213 = load i8*, i8** %tmp75, align 4
  %214 = ptrtoint i8* %210 to i32
  %215 = ptrtoint i8* %213 to i32
  %IsoHeap.lower = icmp ule i32 %214, %215
  %216 = ptrtoint i8* %add.ptr73 to i32
  %217 = inttoptr i32 %216 to i8*
  store i8* %217, i8** %tmp76, align 4
  %218 = load i8*, i8** %tmp76, align 4
  %219 = ptrtoint i8* %206 to i32
  %220 = inttoptr i32 %219 to i8*
  store i8* %220, i8** %tmp77, align 4
  %221 = load i8*, i8** %tmp77, align 4
  %222 = ptrtoint i8* %218 to i32
  %223 = ptrtoint i8* %221 to i32
  %IsoHeap.upper = icmp ule i32 %222, %223
  %IsoHeap.cast = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed78

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded, %if.then71
  %224 = load i64, i64* @sbxHeap, align 8
  %225 = ptrtoint i8* %202 to i32
  %226 = zext i32 %225 to i64
  %227 = add i64 %224, %226
  %228 = ptrtoint i8* %202 to i64
  %229 = load i64, i64* @sbxHeapRange, align 8
  %230 = and i64 %228, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %230, %229
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded80, label %TaintCheck.failed79

TaintCheck.succeeded80:                           ; preds = %IsoHeap.success
  %231 = inttoptr i64 %227 to i8*
  call void @t_free(i8* %231)
  %232 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %232, i64* @sbxHeapRange, align 8
  br label %if.end81

TaintCheck.failed:                                ; preds = %IsoHeap.subsumption
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed78:                              ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed79:                              ; preds = %IsoHeap.success
  call void @llvm.trap() #8
  unreachable

if.end81:                                         ; preds = %TaintCheck.succeeded80, %if.end67
  %233 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %233, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb82:                                          ; preds = %entry
  %call83 = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %234 = bitcast %Tstruct.Spl_json_value_t_t* %call83 to %Tstruct.json_value_t_t*
  %235 = bitcast %Tstruct.json_value_t_t* %234 to i8*
  %236 = ptrtoint i8* %235 to i32
  %237 = inttoptr i32 %236 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %237, %Tstruct.Spl_json_value_t_t** %tmp84, align 4
  %238 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp84, align 4
  store %Tstruct.Spl_json_value_t_t* %238, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb85:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb85, %sw.bb82, %if.end81, %if.then66, %if.then61, %sw.bb53, %sw.bb49, %for.end48, %if.then44, %if.then40, %if.then25, %for.end, %if.then17, %if.then13, %if.then
  %239 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %239
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
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i64, i64* @sbxHeap, align 8
  %17 = ptrtoint i8* %arrayidx to i32
  %18 = zext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = ptrtoint i8* %arrayidx to i64
  %21 = load i64, i64* @sbxHeapRange, align 8
  %22 = and i64 %20, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %22, %21
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.then4
  %23 = inttoptr i64 %19 to i8*
  store i8 0, i8* %23, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %if.then4
  call void @llvm.trap() #8
  unreachable

if.end5:                                          ; preds = %if.end
  %24 = load i8*, i8** %buf.addr, align 4
  %25 = load i32, i32* %written, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %26 = load i64, i64* @sbxHeap, align 8
  %27 = ptrtoint i8* %arrayidx6 to i32
  %28 = zext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = ptrtoint i8* %arrayidx6 to i64
  %31 = load i64, i64* @sbxHeapRange, align 8
  %32 = and i64 %30, 4294967295
  %SandMem.TaintCheck7 = icmp ult i64 %32, %31
  br i1 %SandMem.TaintCheck7, label %TaintCheck.succeeded9, label %TaintCheck.failed8

TaintCheck.succeeded9:                            ; preds = %if.end5
  %33 = inttoptr i64 %29 to i8*
  store i8 0, i8* %33, align 4
  store i32 0, i32* %retval, align 4
  br label %return

TaintCheck.failed8:                               ; preds = %if.end5
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded9, %TaintCheck.succeeded, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
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
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i64, i64* @sbxHeap, align 8
  %17 = ptrtoint i8* %arrayidx to i32
  %18 = zext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = ptrtoint i8* %arrayidx to i64
  %21 = load i64, i64* @sbxHeapRange, align 8
  %22 = and i64 %20, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %22, %21
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.then4
  %23 = inttoptr i64 %19 to i8*
  store i8 0, i8* %23, align 4
  store i32 -1, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %if.then4
  call void @llvm.trap() #8
  unreachable

if.end5:                                          ; preds = %if.end
  %24 = load i8*, i8** %buf.addr, align 4
  %25 = load i32, i32* %written, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %26 = load i64, i64* @sbxHeap, align 8
  %27 = ptrtoint i8* %arrayidx6 to i32
  %28 = zext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = ptrtoint i8* %arrayidx6 to i64
  %31 = load i64, i64* @sbxHeapRange, align 8
  %32 = and i64 %30, 4294967295
  %SandMem.TaintCheck7 = icmp ult i64 %32, %31
  br i1 %SandMem.TaintCheck7, label %TaintCheck.succeeded9, label %TaintCheck.failed8

TaintCheck.succeeded9:                            ; preds = %if.end5
  %33 = inttoptr i64 %29 to i8*
  store i8 0, i8* %33, align 4
  store i32 0, i32* %retval, align 4
  br label %return

TaintCheck.failed8:                               ; preds = %if.end5
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded9, %TaintCheck.succeeded, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
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
  %IsoHeap.is_null = icmp eq i32 %4, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %entry
  %5 = load i8*, i8** %string.addr, align 4
  %6 = load i8*, i8** %string.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %add.ptr, i8** %tmp, align 4
  %7 = load i8*, i8** %tmp, align 4
  %8 = ptrtoint i8* %3 to i32
  %IsoHeap.non_null = icmp ne i32 %8, 0
  br i1 %IsoHeap.non_null, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %IsoHeap.subsumption
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
  %IsoHeap.lower = icmp ule i32 %15, %16
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
  %IsoHeap.upper = icmp ule i32 %23, %24
  %IsoHeap.cast = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed6

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded, %entry
  %25 = load i64, i64* @sbxHeap, align 8
  %26 = ptrtoint i8* %3 to i32
  %27 = zext i32 %26 to i64
  %28 = add i64 %25, %27
  %29 = ptrtoint i8* %3 to i64
  %30 = load i64, i64* @sbxHeapRange, align 8
  %31 = and i64 %29, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %31, %30
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded8, label %TaintCheck.failed7

TaintCheck.succeeded8:                            ; preds = %IsoHeap.success
  %32 = inttoptr i64 %28 to i8*
  call void @t_free(i8* %32)
  %33 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %33, i64* @sbxHeapRange, align 8
  ret void

TaintCheck.failed:                                ; preds = %IsoHeap.subsumption
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed6:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed7:                               ; preds = %IsoHeap.success
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
  %tmp8 = alloca i8*, align 4
  %tmp20 = alloca i8*, align 4
  %tmp21 = alloca i8*, align 4
  %tmp22 = alloca i8*, align 4
  %tmp23 = alloca i8*, align 4
  %tmp46 = alloca i8*, align 4
  %tmp47 = alloca i8*, align 4
  %tmp49 = alloca i8*, align 4
  %tmp50 = alloca i8*, align 4
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
  %11 = load i64, i64* @sbxHeap, align 8
  %12 = ptrtoint i8* %10 to i32
  %13 = zext i32 %12 to i64
  %14 = add i64 %11, %13
  %15 = ptrtoint i8* %10 to i64
  %16 = load i64, i64* @sbxHeapRange, align 8
  %17 = and i64 %15, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %17, %16
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %entry
  %18 = inttoptr i64 %14 to i8*
  %call1 = call i64 @t_strlen(i8* %18)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %19 = load i32, i32* %len, align 4
  %conv2 = sext i32 %19 to i64
  %mul = mul i64 %conv2, 1
  %call3 = call i8* @parson_string_malloc(i64 %mul)
  store i8* %call3, i8** %checked_serialized_string, align 8
  %20 = load i8*, i8** %checked_serialized_string, align 8
  %21 = load i8*, i8** %serialized_string, align 4
  %22 = load i64, i64* @sbxHeap, align 8
  %23 = ptrtoint i8* %21 to i32
  %24 = zext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = ptrtoint i8* %21 to i64
  %27 = load i64, i64* @sbxHeapRange, align 8
  %28 = and i64 %26, 4294967295
  %SandMem.TaintCheck4 = icmp ult i64 %28, %27
  br i1 %SandMem.TaintCheck4, label %TaintCheck.succeeded6, label %TaintCheck.failed5

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %29 = inttoptr i64 %25 to i8*
  %call7 = call i8* @t_strcpy(i8* %20, i8* %29)
  %30 = ptrtoint i8* %call7 to i32
  %31 = inttoptr i32 %30 to i8*
  store i8* %31, i8** %tmp8, align 4
  %32 = load i8*, i8** %tmp8, align 4
  %33 = load i8*, i8** %serialized_string, align 4
  %34 = ptrtoint i8* %33 to i32
  %35 = zext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = ptrtoint i8* %36 to i32
  %cmp = icmp eq i32 %37, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %TaintCheck.succeeded6
  store i32 -1, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %entry
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed5:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %TaintCheck.succeeded6
  %38 = load i8*, i8** %filename.addr, align 8
  %call10 = call noalias %struct._IO_FILE* @fopen(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %fp, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %40 = bitcast %struct._IO_FILE* %39 to i8*
  %41 = ptrtoint i8* %40 to i32
  %cmp11 = icmp eq i32 %41, 0
  br i1 %cmp11, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end
  %42 = load i8*, i8** %serialized_string, align 4
  call void @json_free_serialized_string(i8* %42)
  %43 = load i8*, i8** %checked_serialized_string, align 8
  %44 = ptrtoint i8* %43 to i32
  %IsoHeap.is_null = icmp eq i32 %44, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %if.then13
  %45 = load i8*, i8** %checked_serialized_string, align 8
  %46 = load i8*, i8** %checked_serialized_string, align 8
  %47 = ptrtoint i8* %46 to i32
  %IsoHeap.non_null = icmp ne i32 %47, 0
  br i1 %IsoHeap.non_null, label %TaintCheck.succeeded15, label %TaintCheck.failed14

TaintCheck.succeeded15:                           ; preds = %IsoHeap.subsumption
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 0
  %48 = ptrtoint i8* %43 to i32
  %IsoHeap.non_null16 = icmp ne i32 %48, 0
  br i1 %IsoHeap.non_null16, label %TaintCheck.succeeded18, label %TaintCheck.failed17

TaintCheck.succeeded18:                           ; preds = %TaintCheck.succeeded15
  %add.ptr19 = getelementptr inbounds i8, i8* %43, i64 0
  %49 = ptrtoint i8* %45 to i32
  %50 = inttoptr i32 %49 to i8*
  store i8* %50, i8** %tmp20, align 4
  %51 = load i8*, i8** %tmp20, align 4
  %52 = ptrtoint i8* %43 to i32
  %53 = inttoptr i32 %52 to i8*
  store i8* %53, i8** %tmp21, align 4
  %54 = load i8*, i8** %tmp21, align 4
  %55 = ptrtoint i8* %51 to i32
  %56 = ptrtoint i8* %54 to i32
  %IsoHeap.lower = icmp ule i32 %55, %56
  %57 = ptrtoint i8* %add.ptr19 to i32
  %58 = inttoptr i32 %57 to i8*
  store i8* %58, i8** %tmp22, align 4
  %59 = load i8*, i8** %tmp22, align 4
  %60 = ptrtoint i8* %add.ptr to i32
  %61 = inttoptr i32 %60 to i8*
  store i8* %61, i8** %tmp23, align 4
  %62 = load i8*, i8** %tmp23, align 4
  %63 = ptrtoint i8* %59 to i32
  %64 = ptrtoint i8* %62 to i32
  %IsoHeap.upper = icmp ule i32 %63, %64
  %IsoHeap.cast = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed24

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded18, %if.then13
  call void @free(i8* %43) #10
  store i32 -1, i32* %retval, align 4
  br label %return

TaintCheck.failed14:                              ; preds = %IsoHeap.subsumption
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed17:                              ; preds = %TaintCheck.succeeded15
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed24:                              ; preds = %TaintCheck.succeeded18
  call void @llvm.trap() #8
  unreachable

if.end25:                                         ; preds = %if.end
  %65 = load i8*, i8** %checked_serialized_string, align 8
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i32 @fputs(i8* %65, %struct._IO_FILE* %66)
  %cmp27 = icmp eq i32 %call26, -1
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  store i32 -1, i32* %return_code, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call31 = call i32 @fclose(%struct._IO_FILE* %67)
  %cmp32 = icmp eq i32 %call31, -1
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  store i32 -1, i32* %return_code, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30
  %68 = load i8*, i8** %serialized_string, align 4
  call void @json_free_serialized_string(i8* %68)
  %69 = load i8*, i8** %checked_serialized_string, align 8
  %70 = ptrtoint i8* %69 to i32
  %IsoHeap.is_null36 = icmp eq i32 %70, 0
  br i1 %IsoHeap.is_null36, label %IsoHeap.success54, label %IsoHeap.subsumption37

IsoHeap.subsumption37:                            ; preds = %if.end35
  %71 = load i8*, i8** %checked_serialized_string, align 8
  %72 = load i8*, i8** %checked_serialized_string, align 8
  %73 = ptrtoint i8* %72 to i32
  %IsoHeap.non_null38 = icmp ne i32 %73, 0
  br i1 %IsoHeap.non_null38, label %TaintCheck.succeeded40, label %TaintCheck.failed39

TaintCheck.succeeded40:                           ; preds = %IsoHeap.subsumption37
  %add.ptr41 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = ptrtoint i8* %69 to i32
  %IsoHeap.non_null42 = icmp ne i32 %74, 0
  br i1 %IsoHeap.non_null42, label %TaintCheck.succeeded44, label %TaintCheck.failed43

TaintCheck.succeeded44:                           ; preds = %TaintCheck.succeeded40
  %add.ptr45 = getelementptr inbounds i8, i8* %69, i64 0
  %75 = ptrtoint i8* %71 to i32
  %76 = inttoptr i32 %75 to i8*
  store i8* %76, i8** %tmp46, align 4
  %77 = load i8*, i8** %tmp46, align 4
  %78 = ptrtoint i8* %69 to i32
  %79 = inttoptr i32 %78 to i8*
  store i8* %79, i8** %tmp47, align 4
  %80 = load i8*, i8** %tmp47, align 4
  %81 = ptrtoint i8* %77 to i32
  %82 = ptrtoint i8* %80 to i32
  %IsoHeap.lower48 = icmp ule i32 %81, %82
  %83 = ptrtoint i8* %add.ptr45 to i32
  %84 = inttoptr i32 %83 to i8*
  store i8* %84, i8** %tmp49, align 4
  %85 = load i8*, i8** %tmp49, align 4
  %86 = ptrtoint i8* %add.ptr41 to i32
  %87 = inttoptr i32 %86 to i8*
  store i8* %87, i8** %tmp50, align 4
  %88 = load i8*, i8** %tmp50, align 4
  %89 = ptrtoint i8* %85 to i32
  %90 = ptrtoint i8* %88 to i32
  %IsoHeap.upper51 = icmp ule i32 %89, %90
  %IsoHeap.cast52 = and i1 %IsoHeap.lower48, %IsoHeap.upper51
  br i1 %IsoHeap.cast52, label %IsoHeap.success54, label %TaintCheck.failed53

IsoHeap.success54:                                ; preds = %TaintCheck.succeeded44, %if.end35
  call void @free(i8* %69) #10
  %91 = load i32, i32* %return_code, align 4
  store i32 %91, i32* %retval, align 4
  br label %return

TaintCheck.failed39:                              ; preds = %IsoHeap.subsumption37
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed43:                              ; preds = %TaintCheck.succeeded40
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed53:                              ; preds = %TaintCheck.succeeded44
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %IsoHeap.success54, %IsoHeap.success, %if.then
  %92 = load i32, i32* %retval, align 4
  ret i32 %92
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
  %tmp22 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp36 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp37 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp38 = alloca %Tstruct.Spl_json_value_t_t**, align 4
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
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i64
  %22 = load i64, i64* @sbxHeapRange, align 8
  %23 = and i64 %21, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %23, %22
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %lor.lhs.false2
  %24 = inttoptr i64 %20 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %24, i32 0, i32 0
  %parent3 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %25 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent3, align 4
  %26 = ptrtoint %Tstruct.Spl_json_value_t_t* %25 to i32
  %27 = zext i32 %26 to i64
  %28 = inttoptr i64 %27 to %Tstruct.Spl_json_value_t_t*
  %29 = ptrtoint %Tstruct.Spl_json_value_t_t* %28 to i32
  %cmp4 = icmp ne i32 %29, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %TaintCheck.succeeded
  %30 = load i64, i64* %ix.addr, align 8
  %31 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %31)
  %cmp6 = icmp uge i64 %30, %call
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %TaintCheck.succeeded, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %lor.lhs.false2
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  %32 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %33 = load i64, i64* %ix.addr, align 8
  %call7 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %32, i64 %33)
  %34 = bitcast %Tstruct.Spl_json_value_t_t* %call7 to %Tstruct.json_value_t_t*
  %35 = bitcast %Tstruct.json_value_t_t* %34 to i8*
  %36 = ptrtoint i8* %35 to i32
  %37 = inttoptr i32 %36 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %37, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %38 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %38)
  %39 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %39, i64* @sbxHeapRange, align 8
  %40 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %call8 = call %Tstruct.Spl_json_value_t_t* @json_array_get_wrapping_value(%Tstruct.Spl_json_array_t_t* %40)
  %41 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %42 = bitcast %Tstruct.json_value_t_t* %41 to i8*
  %43 = ptrtoint i8* %42 to i32
  %44 = inttoptr i32 %43 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %44, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %45 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp9, align 4
  %46 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %47 = load i64, i64* @sbxHeap, align 8
  %48 = ptrtoint %Tstruct.Spl_json_value_t_t* %46 to i32
  %49 = zext i32 %48 to i64
  %50 = add i64 %47, %49
  %51 = ptrtoint %Tstruct.Spl_json_value_t_t* %46 to i64
  %52 = load i64, i64* @sbxHeapRange, align 8
  %53 = and i64 %51, 4294967295
  %SandMem.TaintCheck10 = icmp ult i64 %53, %52
  br i1 %SandMem.TaintCheck10, label %TaintCheck.succeeded12, label %TaintCheck.failed11

TaintCheck.succeeded12:                           ; preds = %if.end
  %54 = inttoptr i64 %50 to %Tstruct.Spl_json_value_t_t*
  %parent13 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %54, i32 0, i32 0
  %parent14 = bitcast i32* %parent13 to %Tstruct.Spl_json_value_t_t**
  %55 = ptrtoint %Tstruct.Spl_json_value_t_t* %45 to i32
  %56 = bitcast %Tstruct.Spl_json_value_t_t** %parent14 to i32*
  store i32 %55, i32* %56, align 4
  %57 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %58 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %59 = load i64, i64* @sbxHeap, align 8
  %60 = ptrtoint %Tstruct.Spl_json_array_t_t* %58 to i32
  %61 = zext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = ptrtoint %Tstruct.Spl_json_array_t_t* %58 to i64
  %64 = load i64, i64* @sbxHeapRange, align 8
  %65 = and i64 %63, 4294967295
  %SandMem.TaintCheck15 = icmp ult i64 %65, %64
  br i1 %SandMem.TaintCheck15, label %TaintCheck.succeeded17, label %TaintCheck.failed16

TaintCheck.succeeded17:                           ; preds = %TaintCheck.succeeded12
  %66 = inttoptr i64 %62 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %66, i32 0, i32 1
  %items18 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %67 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items18, align 4
  %68 = load i64, i64* %ix.addr, align 8
  %69 = bitcast %Tstruct.Spl_json_value_t_t** %67 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %69, i64 %68
  %70 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %71 = load i64, i64* @sbxHeap, align 8
  %72 = ptrtoint %Tstruct.Spl_json_value_t_t** %70 to i32
  %73 = zext i32 %72 to i64
  %74 = add i64 %71, %73
  %75 = ptrtoint %Tstruct.Spl_json_value_t_t** %70 to i64
  %76 = load i64, i64* @sbxHeapRange, align 8
  %77 = and i64 %75, 4294967295
  %SandMem.TaintCheck19 = icmp ult i64 %77, %76
  br i1 %SandMem.TaintCheck19, label %TaintCheck.succeeded21, label %TaintCheck.failed20

TaintCheck.succeeded21:                           ; preds = %TaintCheck.succeeded17
  %78 = inttoptr i64 %74 to %Tstruct.Spl_json_value_t_t**
  %79 = bitcast %Tstruct.Spl_json_value_t_t** %78 to i8*
  %80 = ptrtoint i8* %79 to i32
  %81 = inttoptr i32 %80 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %81, %Tstruct.Spl_json_value_t_t*** %tmp22, align 4
  %82 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp22, align 4
  %83 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %84 = load i64, i64* @sbxHeap, align 8
  %85 = ptrtoint %Tstruct.Spl_json_array_t_t* %83 to i32
  %86 = zext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = ptrtoint %Tstruct.Spl_json_array_t_t* %83 to i64
  %89 = load i64, i64* @sbxHeapRange, align 8
  %90 = and i64 %88, 4294967295
  %SandMem.TaintCheck23 = icmp ult i64 %90, %89
  br i1 %SandMem.TaintCheck23, label %TaintCheck.succeeded25, label %TaintCheck.failed24

TaintCheck.succeeded25:                           ; preds = %TaintCheck.succeeded21
  %91 = inttoptr i64 %87 to %Tstruct.Spl_json_array_t_t*
  %items26 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %91, i32 0, i32 1
  %items27 = bitcast i32* %items26 to %Tstruct.Spl_json_value_t_t***
  %92 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items27, align 4
  %93 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %94 = load i64, i64* @sbxHeap, align 8
  %95 = ptrtoint %Tstruct.Spl_json_array_t_t* %93 to i32
  %96 = zext i32 %95 to i64
  %97 = add i64 %94, %96
  %98 = ptrtoint %Tstruct.Spl_json_array_t_t* %93 to i64
  %99 = load i64, i64* @sbxHeapRange, align 8
  %100 = and i64 %98, 4294967295
  %SandMem.TaintCheck28 = icmp ult i64 %100, %99
  br i1 %SandMem.TaintCheck28, label %TaintCheck.succeeded30, label %TaintCheck.failed29

TaintCheck.succeeded30:                           ; preds = %TaintCheck.succeeded25
  %101 = inttoptr i64 %97 to %Tstruct.Spl_json_array_t_t*
  %items31 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %101, i32 0, i32 1
  %items32 = bitcast i32* %items31 to %Tstruct.Spl_json_value_t_t***
  %102 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items32, align 4
  %103 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %104 = load i64, i64* @sbxHeap, align 8
  %105 = ptrtoint %Tstruct.Spl_json_array_t_t* %103 to i32
  %106 = zext i32 %105 to i64
  %107 = add i64 %104, %106
  %108 = ptrtoint %Tstruct.Spl_json_array_t_t* %103 to i64
  %109 = load i64, i64* @sbxHeapRange, align 8
  %110 = and i64 %108, 4294967295
  %SandMem.TaintCheck33 = icmp ult i64 %110, %109
  br i1 %SandMem.TaintCheck33, label %TaintCheck.succeeded35, label %TaintCheck.failed34

TaintCheck.succeeded35:                           ; preds = %TaintCheck.succeeded30
  %111 = inttoptr i64 %107 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %111, i32 0, i32 3
  %112 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %112 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %102, i64 %idx.ext
  store %Tstruct.Spl_json_value_t_t** %add.ptr, %Tstruct.Spl_json_value_t_t*** %tmp36, align 4
  %113 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp36, align 4
  %114 = bitcast %Tstruct.Spl_json_value_t_t** %113 to i8*
  %115 = ptrtoint i8* %114 to i32
  %116 = inttoptr i32 %115 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %116, %Tstruct.Spl_json_value_t_t*** %tmp37, align 4
  %117 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp37, align 4
  %118 = bitcast %Tstruct.Spl_json_value_t_t** %92 to i8*
  %119 = ptrtoint i8* %118 to i32
  %120 = inttoptr i32 %119 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %120, %Tstruct.Spl_json_value_t_t*** %tmp38, align 4
  %121 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp38, align 4
  %IsoHeap.lower = icmp ule %Tstruct.Spl_json_value_t_t** %121, %82
  %IsoHeap.upper = icmp ult %Tstruct.Spl_json_value_t_t** %82, %117
  %IsoHeap.range = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.range, label %TaintCheck.succeeded40, label %TaintCheck.failed39

TaintCheck.succeeded40:                           ; preds = %TaintCheck.succeeded35
  %122 = ptrtoint %Tstruct.Spl_json_value_t_t* %57 to i32
  %123 = bitcast %Tstruct.Spl_json_value_t_t** %78 to i32*
  store i32 %122, i32* %123, align 4
  store i32 0, i32* %retval, align 4
  br label %return

TaintCheck.failed11:                              ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed16:                              ; preds = %TaintCheck.succeeded12
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed20:                              ; preds = %TaintCheck.succeeded17
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed24:                              ; preds = %TaintCheck.succeeded21
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed29:                              ; preds = %TaintCheck.succeeded25
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed34:                              ; preds = %TaintCheck.succeeded30
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed39:                              ; preds = %TaintCheck.succeeded35
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded40, %if.then
  %124 = load i32, i32* %retval, align 4
  ret i32 %124
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
  store i64 %23, i64* @sbxHeapRange, align 8
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
  store i64 %20, i64* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
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
  store i64 %20, i64* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
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
  store i64 %19, i64* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
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
  store i64 %17, i64* @sbxHeapRange, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %19 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %20 = load i64, i64* @sbxHeap, align 8
  %21 = ptrtoint %Tstruct.Spl_json_array_t_t* %19 to i32
  %22 = zext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = ptrtoint %Tstruct.Spl_json_array_t_t* %19 to i64
  %25 = load i64, i64* @sbxHeapRange, align 8
  %26 = and i64 %24, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %26, %25
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %for.end
  %27 = inttoptr i64 %23 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %27, i32 0, i32 2
  store i32 0, i32* %count, align 8
  store i32 0, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %for.end
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
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
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i64
  %22 = load i64, i64* @sbxHeapRange, align 8
  %23 = and i64 %21, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %23, %22
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %lor.lhs.false2
  %24 = inttoptr i64 %20 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %24, i32 0, i32 0
  %parent3 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %25 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent3, align 4
  %26 = ptrtoint %Tstruct.Spl_json_value_t_t* %25 to i32
  %27 = zext i32 %26 to i64
  %28 = inttoptr i64 %27 to %Tstruct.Spl_json_value_t_t*
  %29 = ptrtoint %Tstruct.Spl_json_value_t_t* %28 to i32
  %cmp4 = icmp ne i32 %29, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %TaintCheck.succeeded, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %lor.lhs.false2
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %TaintCheck.succeeded
  %30 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %31 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i32 @json_array_add(%Tstruct.Spl_json_array_t_t* %30, %Tstruct.Spl_json_value_t_t* %31)
  %32 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %32, i64* @sbxHeapRange, align 8
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
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
  store i64 %22, i64* @sbxHeapRange, align 8
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
  store i64 %19, i64* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
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
  store i64 %19, i64* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
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
  store i64 %18, i64* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
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
  %tmp15 = alloca i8**, align 4
  %tmp29 = alloca i8**, align 4
  %tmp30 = alloca i8**, align 4
  %tmp31 = alloca i8**, align 4
  %tmp44 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp55 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp72 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp73 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp74 = alloca %Tstruct.Spl_json_value_t_t**, align 4
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
  %26 = load i64, i64* @sbxHeap, align 8
  %27 = ptrtoint %Tstruct.Spl_json_value_t_t* %25 to i32
  %28 = zext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = ptrtoint %Tstruct.Spl_json_value_t_t* %25 to i64
  %31 = load i64, i64* @sbxHeapRange, align 8
  %32 = and i64 %30, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %32, %31
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %lor.lhs.false4
  %33 = inttoptr i64 %29 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %33, i32 0, i32 0
  %parent5 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %34 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent5, align 4
  %35 = ptrtoint %Tstruct.Spl_json_value_t_t* %34 to i32
  %36 = zext i32 %35 to i64
  %37 = inttoptr i64 %36 to %Tstruct.Spl_json_value_t_t*
  %38 = ptrtoint %Tstruct.Spl_json_value_t_t* %37 to i32
  %cmp6 = icmp ne i32 %38, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %TaintCheck.succeeded, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %lor.lhs.false4
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %TaintCheck.succeeded
  %39 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %40 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %39, i8* %40)
  %41 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %42 = bitcast %Tstruct.json_value_t_t* %41 to i8*
  %43 = ptrtoint i8* %42 to i32
  %44 = inttoptr i32 %43 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %44, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %45 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp, align 4
  %46 = ptrtoint %Tstruct.Spl_json_value_t_t* %45 to i32
  %47 = bitcast %Tstruct.Spl_json_value_t_t** %old_value to i32*
  store i32 %46, i32* %47, align 4
  %48 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %old_value, align 4
  %49 = ptrtoint %Tstruct.Spl_json_value_t_t* %48 to i32
  %50 = zext i32 %49 to i64
  %51 = inttoptr i64 %50 to %Tstruct.Spl_json_value_t_t*
  %52 = ptrtoint %Tstruct.Spl_json_value_t_t* %51 to i32
  %cmp7 = icmp ne i32 %52, 0
  br i1 %cmp7, label %if.then8, label %if.end81

if.then8:                                         ; preds = %if.end
  %53 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %old_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %53)
  %54 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %54, i64* @sbxHeapRange, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then8
  %55 = load i64, i64* %i, align 8
  %56 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %call9 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %56)
  %cmp10 = icmp ult i64 %55, %call9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %58 = load i64, i64* @sbxHeap, align 8
  %59 = ptrtoint %Tstruct.Spl_json_object_t_t* %57 to i32
  %60 = zext i32 %59 to i64
  %61 = add i64 %58, %60
  %62 = ptrtoint %Tstruct.Spl_json_object_t_t* %57 to i64
  %63 = load i64, i64* @sbxHeapRange, align 8
  %64 = and i64 %62, 4294967295
  %SandMem.TaintCheck11 = icmp ult i64 %64, %63
  br i1 %SandMem.TaintCheck11, label %TaintCheck.succeeded13, label %TaintCheck.failed12

TaintCheck.succeeded13:                           ; preds = %for.body
  %65 = inttoptr i64 %61 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %65, i32 0, i32 1
  %names14 = bitcast i32* %names to i8***
  %66 = load i8**, i8*** %names14, align 4
  %67 = load i64, i64* %i, align 8
  %68 = bitcast i8** %66 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %68, i64 %67
  %69 = bitcast i32* %arrayidx to i8**
  %70 = load i64, i64* @sbxHeap, align 8
  %71 = ptrtoint i8** %69 to i32
  %72 = zext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = inttoptr i64 %73 to i8**
  %75 = bitcast i8** %74 to i8*
  %76 = ptrtoint i8* %75 to i32
  %77 = inttoptr i32 %76 to i8**
  store i8** %77, i8*** %tmp15, align 4
  %78 = load i8**, i8*** %tmp15, align 4
  %79 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %80 = load i64, i64* @sbxHeap, align 8
  %81 = ptrtoint %Tstruct.Spl_json_object_t_t* %79 to i32
  %82 = zext i32 %81 to i64
  %83 = add i64 %80, %82
  %84 = ptrtoint %Tstruct.Spl_json_object_t_t* %79 to i64
  %85 = load i64, i64* @sbxHeapRange, align 8
  %86 = and i64 %84, 4294967295
  %SandMem.TaintCheck16 = icmp ult i64 %86, %85
  br i1 %SandMem.TaintCheck16, label %TaintCheck.succeeded18, label %TaintCheck.failed17

TaintCheck.succeeded18:                           ; preds = %TaintCheck.succeeded13
  %87 = inttoptr i64 %83 to %Tstruct.Spl_json_object_t_t*
  %names19 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %87, i32 0, i32 1
  %names20 = bitcast i32* %names19 to i8***
  %88 = load i8**, i8*** %names20, align 4
  %89 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %90 = load i64, i64* @sbxHeap, align 8
  %91 = ptrtoint %Tstruct.Spl_json_object_t_t* %89 to i32
  %92 = zext i32 %91 to i64
  %93 = add i64 %90, %92
  %94 = ptrtoint %Tstruct.Spl_json_object_t_t* %89 to i64
  %95 = load i64, i64* @sbxHeapRange, align 8
  %96 = and i64 %94, 4294967295
  %SandMem.TaintCheck21 = icmp ult i64 %96, %95
  br i1 %SandMem.TaintCheck21, label %TaintCheck.succeeded23, label %TaintCheck.failed22

TaintCheck.succeeded23:                           ; preds = %TaintCheck.succeeded18
  %97 = inttoptr i64 %93 to %Tstruct.Spl_json_object_t_t*
  %names24 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %97, i32 0, i32 1
  %names25 = bitcast i32* %names24 to i8***
  %98 = load i8**, i8*** %names25, align 4
  %99 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %100 = load i64, i64* @sbxHeap, align 8
  %101 = ptrtoint %Tstruct.Spl_json_object_t_t* %99 to i32
  %102 = zext i32 %101 to i64
  %103 = add i64 %100, %102
  %104 = ptrtoint %Tstruct.Spl_json_object_t_t* %99 to i64
  %105 = load i64, i64* @sbxHeapRange, align 8
  %106 = and i64 %104, 4294967295
  %SandMem.TaintCheck26 = icmp ult i64 %106, %105
  br i1 %SandMem.TaintCheck26, label %TaintCheck.succeeded28, label %TaintCheck.failed27

TaintCheck.succeeded28:                           ; preds = %TaintCheck.succeeded23
  %107 = inttoptr i64 %103 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %107, i32 0, i32 4
  %108 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %108 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %98, i64 %idx.ext
  store i8** %add.ptr, i8*** %tmp29, align 4
  %109 = load i8**, i8*** %tmp29, align 4
  %110 = bitcast i8** %109 to i8*
  %111 = ptrtoint i8* %110 to i32
  %112 = inttoptr i32 %111 to i8**
  store i8** %112, i8*** %tmp30, align 4
  %113 = load i8**, i8*** %tmp30, align 4
  %114 = bitcast i8** %88 to i8*
  %115 = ptrtoint i8* %114 to i32
  %116 = inttoptr i32 %115 to i8**
  store i8** %116, i8*** %tmp31, align 4
  %117 = load i8**, i8*** %tmp31, align 4
  %118 = ptrtoint i8** %117 to i32
  %119 = ptrtoint i8** %78 to i32
  %IsoHeap.lower = icmp ule i32 %118, %119
  %120 = ptrtoint i8** %78 to i32
  %121 = ptrtoint i8** %113 to i32
  %IsoHeap.upper = icmp ult i32 %120, %121
  %IsoHeap.range = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.range, label %TaintCheck.succeeded33, label %TaintCheck.failed32

TaintCheck.succeeded33:                           ; preds = %TaintCheck.succeeded28
  %122 = load i8*, i8** %74, align 4
  %123 = load i8*, i8** %name.addr, align 4
  %124 = load i64, i64* @sbxHeap, align 8
  %125 = ptrtoint i8* %122 to i32
  %126 = zext i32 %125 to i64
  %127 = add i64 %124, %126
  %128 = ptrtoint i8* %122 to i64
  %129 = load i64, i64* @sbxHeapRange, align 8
  %130 = and i64 %128, 4294967295
  %SandMem.TaintCheck34 = icmp ult i64 %130, %129
  br i1 %SandMem.TaintCheck34, label %TaintCheck.succeeded36, label %TaintCheck.failed35

TaintCheck.succeeded36:                           ; preds = %TaintCheck.succeeded33
  %131 = inttoptr i64 %127 to i8*
  %132 = load i64, i64* @sbxHeap, align 8
  %133 = ptrtoint i8* %123 to i32
  %134 = zext i32 %133 to i64
  %135 = add i64 %132, %134
  %136 = ptrtoint i8* %123 to i64
  %137 = load i64, i64* @sbxHeapRange, align 8
  %138 = and i64 %136, 4294967295
  %SandMem.TaintCheck37 = icmp ult i64 %138, %137
  br i1 %SandMem.TaintCheck37, label %TaintCheck.succeeded39, label %TaintCheck.failed38

TaintCheck.succeeded39:                           ; preds = %TaintCheck.succeeded36
  %139 = inttoptr i64 %135 to i8*
  %call40 = call i32 @t_strcmp(i8* %131, i8* %139)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end80

if.then42:                                        ; preds = %TaintCheck.succeeded39
  %140 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %call43 = call %Tstruct.Spl_json_value_t_t* @json_object_get_wrapping_value(%Tstruct.Spl_json_object_t_t* %140)
  %141 = bitcast %Tstruct.Spl_json_value_t_t* %call43 to %Tstruct.json_value_t_t*
  %142 = bitcast %Tstruct.json_value_t_t* %141 to i8*
  %143 = ptrtoint i8* %142 to i32
  %144 = inttoptr i32 %143 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %144, %Tstruct.Spl_json_value_t_t** %tmp44, align 4
  %145 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp44, align 4
  %146 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %147 = load i64, i64* @sbxHeap, align 8
  %148 = ptrtoint %Tstruct.Spl_json_value_t_t* %146 to i32
  %149 = zext i32 %148 to i64
  %150 = add i64 %147, %149
  %151 = ptrtoint %Tstruct.Spl_json_value_t_t* %146 to i64
  %152 = load i64, i64* @sbxHeapRange, align 8
  %153 = and i64 %151, 4294967295
  %SandMem.TaintCheck45 = icmp ult i64 %153, %152
  br i1 %SandMem.TaintCheck45, label %TaintCheck.succeeded47, label %TaintCheck.failed46

TaintCheck.succeeded47:                           ; preds = %if.then42
  %154 = inttoptr i64 %150 to %Tstruct.Spl_json_value_t_t*
  %parent48 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %154, i32 0, i32 0
  %parent49 = bitcast i32* %parent48 to %Tstruct.Spl_json_value_t_t**
  %155 = ptrtoint %Tstruct.Spl_json_value_t_t* %145 to i32
  %156 = bitcast %Tstruct.Spl_json_value_t_t** %parent49 to i32*
  store i32 %155, i32* %156, align 4
  %157 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %158 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %159 = load i64, i64* @sbxHeap, align 8
  %160 = ptrtoint %Tstruct.Spl_json_object_t_t* %158 to i32
  %161 = zext i32 %160 to i64
  %162 = add i64 %159, %161
  %163 = ptrtoint %Tstruct.Spl_json_object_t_t* %158 to i64
  %164 = load i64, i64* @sbxHeapRange, align 8
  %165 = and i64 %163, 4294967295
  %SandMem.TaintCheck50 = icmp ult i64 %165, %164
  br i1 %SandMem.TaintCheck50, label %TaintCheck.succeeded52, label %TaintCheck.failed51

TaintCheck.succeeded52:                           ; preds = %TaintCheck.succeeded47
  %166 = inttoptr i64 %162 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %166, i32 0, i32 2
  %values53 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %167 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values53, align 4
  %168 = load i64, i64* %i, align 8
  %169 = bitcast %Tstruct.Spl_json_value_t_t** %167 to i32*
  %arrayidx54 = getelementptr inbounds i32, i32* %169, i64 %168
  %170 = bitcast i32* %arrayidx54 to %Tstruct.Spl_json_value_t_t**
  %171 = load i64, i64* @sbxHeap, align 8
  %172 = ptrtoint %Tstruct.Spl_json_value_t_t** %170 to i32
  %173 = zext i32 %172 to i64
  %174 = add i64 %171, %173
  %175 = inttoptr i64 %174 to %Tstruct.Spl_json_value_t_t**
  %176 = bitcast %Tstruct.Spl_json_value_t_t** %175 to i8*
  %177 = ptrtoint i8* %176 to i32
  %178 = inttoptr i32 %177 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %178, %Tstruct.Spl_json_value_t_t*** %tmp55, align 4
  %179 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp55, align 4
  %180 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %181 = load i64, i64* @sbxHeap, align 8
  %182 = ptrtoint %Tstruct.Spl_json_object_t_t* %180 to i32
  %183 = zext i32 %182 to i64
  %184 = add i64 %181, %183
  %185 = ptrtoint %Tstruct.Spl_json_object_t_t* %180 to i64
  %186 = load i64, i64* @sbxHeapRange, align 8
  %187 = and i64 %185, 4294967295
  %SandMem.TaintCheck56 = icmp ult i64 %187, %186
  br i1 %SandMem.TaintCheck56, label %TaintCheck.succeeded58, label %TaintCheck.failed57

TaintCheck.succeeded58:                           ; preds = %TaintCheck.succeeded52
  %188 = inttoptr i64 %184 to %Tstruct.Spl_json_object_t_t*
  %values59 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %188, i32 0, i32 2
  %values60 = bitcast i32* %values59 to %Tstruct.Spl_json_value_t_t***
  %189 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values60, align 4
  %190 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %191 = load i64, i64* @sbxHeap, align 8
  %192 = ptrtoint %Tstruct.Spl_json_object_t_t* %190 to i32
  %193 = zext i32 %192 to i64
  %194 = add i64 %191, %193
  %195 = ptrtoint %Tstruct.Spl_json_object_t_t* %190 to i64
  %196 = load i64, i64* @sbxHeapRange, align 8
  %197 = and i64 %195, 4294967295
  %SandMem.TaintCheck61 = icmp ult i64 %197, %196
  br i1 %SandMem.TaintCheck61, label %TaintCheck.succeeded63, label %TaintCheck.failed62

TaintCheck.succeeded63:                           ; preds = %TaintCheck.succeeded58
  %198 = inttoptr i64 %194 to %Tstruct.Spl_json_object_t_t*
  %values64 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %198, i32 0, i32 2
  %values65 = bitcast i32* %values64 to %Tstruct.Spl_json_value_t_t***
  %199 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values65, align 4
  %200 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %201 = load i64, i64* @sbxHeap, align 8
  %202 = ptrtoint %Tstruct.Spl_json_object_t_t* %200 to i32
  %203 = zext i32 %202 to i64
  %204 = add i64 %201, %203
  %205 = ptrtoint %Tstruct.Spl_json_object_t_t* %200 to i64
  %206 = load i64, i64* @sbxHeapRange, align 8
  %207 = and i64 %205, 4294967295
  %SandMem.TaintCheck66 = icmp ult i64 %207, %206
  br i1 %SandMem.TaintCheck66, label %TaintCheck.succeeded68, label %TaintCheck.failed67

TaintCheck.succeeded68:                           ; preds = %TaintCheck.succeeded63
  %208 = inttoptr i64 %204 to %Tstruct.Spl_json_object_t_t*
  %capacity69 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %208, i32 0, i32 4
  %209 = load i32, i32* %capacity69, align 8
  %idx.ext70 = zext i32 %209 to i64
  %add.ptr71 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %199, i64 %idx.ext70
  store %Tstruct.Spl_json_value_t_t** %add.ptr71, %Tstruct.Spl_json_value_t_t*** %tmp72, align 4
  %210 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp72, align 4
  %211 = bitcast %Tstruct.Spl_json_value_t_t** %210 to i8*
  %212 = ptrtoint i8* %211 to i32
  %213 = inttoptr i32 %212 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %213, %Tstruct.Spl_json_value_t_t*** %tmp73, align 4
  %214 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp73, align 4
  %215 = bitcast %Tstruct.Spl_json_value_t_t** %189 to i8*
  %216 = ptrtoint i8* %215 to i32
  %217 = inttoptr i32 %216 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %217, %Tstruct.Spl_json_value_t_t*** %tmp74, align 4
  %218 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp74, align 4
  %IsoHeap.lower75 = icmp ule %Tstruct.Spl_json_value_t_t** %218, %179
  %IsoHeap.upper76 = icmp ult %Tstruct.Spl_json_value_t_t** %179, %214
  %IsoHeap.range77 = and i1 %IsoHeap.lower75, %IsoHeap.upper76
  br i1 %IsoHeap.range77, label %TaintCheck.succeeded79, label %TaintCheck.failed78

TaintCheck.succeeded79:                           ; preds = %TaintCheck.succeeded68
  %219 = ptrtoint %Tstruct.Spl_json_value_t_t* %157 to i32
  %220 = bitcast %Tstruct.Spl_json_value_t_t** %175 to i32*
  store i32 %219, i32* %220, align 4
  store i32 0, i32* %retval, align 4
  br label %return

TaintCheck.failed12:                              ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed17:                              ; preds = %TaintCheck.succeeded13
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed22:                              ; preds = %TaintCheck.succeeded18
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed27:                              ; preds = %TaintCheck.succeeded23
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed32:                              ; preds = %TaintCheck.succeeded28
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed35:                              ; preds = %TaintCheck.succeeded33
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed38:                              ; preds = %TaintCheck.succeeded36
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed46:                              ; preds = %if.then42
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed51:                              ; preds = %TaintCheck.succeeded47
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed57:                              ; preds = %TaintCheck.succeeded52
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed62:                              ; preds = %TaintCheck.succeeded58
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed67:                              ; preds = %TaintCheck.succeeded63
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed78:                              ; preds = %TaintCheck.succeeded68
  call void @llvm.trap() #8
  unreachable

if.end80:                                         ; preds = %TaintCheck.succeeded39
  br label %for.inc

for.inc:                                          ; preds = %if.end80
  %221 = load i64, i64* %i, align 8
  %inc = add i64 %221, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  br label %if.end81

if.end81:                                         ; preds = %for.end, %if.end
  %222 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %223 = load i8*, i8** %name.addr, align 4
  %224 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call82 = call i32 bitcast (i32 (%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*)* @json_object_add to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %222, i8* %223, %Tstruct.Spl_json_value_t_t* %224)
  %225 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %225, i64* @sbxHeapRange, align 8
  store i32 %call82, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end81, %TaintCheck.succeeded79, %if.then
  %226 = load i32, i32* %retval, align 4
  ret i32 %226
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
  %30 = load i64, i64* @sbxHeap, align 8
  %31 = ptrtoint i8* %29 to i32
  %32 = zext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = ptrtoint i8* %29 to i64
  %35 = load i64, i64* @sbxHeapRange, align 8
  %36 = and i64 %34, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %36, %35
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end
  %37 = inttoptr i64 %33 to i8*
  %call = call i8* @t_strchr(i8* %37, i32 46)
  %38 = ptrtoint i8* %call to i32
  %39 = inttoptr i32 %38 to i8*
  store i8* %39, i8** %tmp, align 4
  %40 = load i8*, i8** %tmp, align 4
  %41 = ptrtoint i8* %40 to i32
  %42 = zext i32 %41 to i64
  %43 = bitcast i8** %dot_pos to i64*
  store i64 %42, i64* %43, align 4
  %44 = load i8*, i8** %dot_pos, align 4
  %45 = ptrtoint i8* %44 to i32
  %46 = zext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = ptrtoint i8* %47 to i32
  %cmp4 = icmp eq i32 %48, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %TaintCheck.succeeded
  %49 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %50 = load i8*, i8** %name.addr, align 4
  %51 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call6 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %49, i8* %50, %Tstruct.Spl_json_value_t_t* %51)
  store i32 %call6, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

if.end7:                                          ; preds = %TaintCheck.succeeded
  %52 = bitcast i8** %after_dot to i64*
  store i64 0, i64* %52, align 4
  %53 = load i8*, i8** %dot_pos, align 4
  %add.ptr = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %add.ptr, i8** %tmp8, align 4
  %54 = load i8*, i8** %tmp8, align 4
  %55 = ptrtoint i8* %54 to i32
  %56 = zext i32 %55 to i64
  %57 = bitcast i8** %after_dot to i64*
  store i64 %56, i64* %57, align 4
  %58 = load i8*, i8** %dot_pos, align 4
  %59 = load i8*, i8** %name.addr, align 4
  %60 = ptrtoint i8* %58 to i32
  %sub.ptr.lhs.cast = zext i32 %60 to i64
  %61 = ptrtoint i8* %59 to i32
  %sub.ptr.rhs.cast = zext i32 %61 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %name_len, align 8
  %62 = bitcast i8** %name_with_len to i64*
  store i64 0, i64* %62, align 4
  %63 = load i8*, i8** %name.addr, align 4
  %64 = ptrtoint i8* %63 to i32
  %65 = zext i32 %64 to i64
  %66 = bitcast i8** %name_with_len to i64*
  store i64 %65, i64* %66, align 4
  %67 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %68 = load i8*, i8** %name_with_len, align 4
  %69 = load i64, i64* %name_len, align 8
  %call9 = call %Tstruct.Spl_json_value_t_t* @json_object_getn_value(%Tstruct.Spl_json_object_t_t* %67, i8* %68, i64 %69)
  %70 = bitcast %Tstruct.Spl_json_value_t_t* %call9 to %Tstruct.json_value_t_t*
  %71 = bitcast %Tstruct.json_value_t_t* %70 to i8*
  %72 = ptrtoint i8* %71 to i32
  %73 = inttoptr i32 %72 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %73, %Tstruct.Spl_json_value_t_t** %tmp10, align 4
  %74 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp10, align 4
  %75 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %75, i64* @sbxHeapRange, align 8
  %76 = ptrtoint %Tstruct.Spl_json_value_t_t* %74 to i32
  %77 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %76, i32* %77, align 4
  %78 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %79 = ptrtoint %Tstruct.Spl_json_value_t_t* %78 to i32
  %tobool = icmp ne i32 %79, 0
  br i1 %tobool, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end7
  %80 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %call12 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %80)
  %cmp13 = icmp ne i32 %call12, 4
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  store i32 -1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then11
  %81 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %call16 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %81)
  %82 = bitcast %Tstruct.Spl_json_object_t_t* %call16 to %Tstruct.json_object_t_t*
  %83 = bitcast %Tstruct.json_object_t_t* %82 to i8*
  %84 = ptrtoint i8* %83 to i32
  %85 = inttoptr i32 %84 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %85, %Tstruct.Spl_json_object_t_t** %tmp17, align 4
  %86 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp17, align 4
  %87 = ptrtoint %Tstruct.Spl_json_object_t_t* %86 to i32
  %88 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object to i32*
  store i32 %87, i32* %88, align 4
  %89 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %90 = load i8*, i8** %after_dot, align 4
  %91 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call18 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %89, i8* %90, %Tstruct.Spl_json_value_t_t* %91)
  store i32 %call18, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end7
  %call20 = call %Tstruct.Spl_json_value_t_t* @json_value_init_object()
  %92 = bitcast %Tstruct.Spl_json_value_t_t* %call20 to %Tstruct.json_value_t_t*
  %93 = bitcast %Tstruct.json_value_t_t* %92 to i8*
  %94 = ptrtoint i8* %93 to i32
  %95 = inttoptr i32 %94 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %95, %Tstruct.Spl_json_value_t_t** %tmp21, align 4
  %96 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp21, align 4
  %97 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %97, i64* @sbxHeapRange, align 8
  %98 = ptrtoint %Tstruct.Spl_json_value_t_t* %96 to i32
  %99 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %98, i32* %99, align 4
  %100 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %101 = ptrtoint %Tstruct.Spl_json_value_t_t* %100 to i32
  %102 = zext i32 %101 to i64
  %103 = inttoptr i64 %102 to %Tstruct.Spl_json_value_t_t*
  %104 = ptrtoint %Tstruct.Spl_json_value_t_t* %103 to i32
  %cmp22 = icmp eq i32 %104, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  store i32 -1, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end19
  %105 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %call25 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %105)
  %106 = bitcast %Tstruct.Spl_json_object_t_t* %call25 to %Tstruct.json_object_t_t*
  %107 = bitcast %Tstruct.json_object_t_t* %106 to i8*
  %108 = ptrtoint i8* %107 to i32
  %109 = inttoptr i32 %108 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %109, %Tstruct.Spl_json_object_t_t** %tmp26, align 4
  %110 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %tmp26, align 4
  %111 = ptrtoint %Tstruct.Spl_json_object_t_t* %110 to i32
  %112 = bitcast %Tstruct.Spl_json_object_t_t** %new_object to i32*
  store i32 %111, i32* %112, align 4
  %113 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %new_object, align 4
  %114 = load i8*, i8** %after_dot, align 4
  %115 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call27 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %113, i8* %114, %Tstruct.Spl_json_value_t_t* %115)
  store i32 %call27, i32* %status, align 4
  %116 = load i32, i32* %status, align 4
  %cmp28 = icmp ne i32 %116, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  %117 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %117)
  %118 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %118, i64* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end24
  %119 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %120 = load i8*, i8** %name_with_len, align 4
  %121 = load i64, i64* %name_len, align 8
  %122 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %call31 = call i32 @json_object_addn(%Tstruct.Spl_json_object_t_t* %119, i8* %120, i64 %121, %Tstruct.Spl_json_value_t_t* %122)
  %123 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %123, i64* @sbxHeapRange, align 8
  store i32 %call31, i32* %status, align 4
  %124 = load i32, i32* %status, align 4
  %cmp32 = icmp ne i32 %124, 0
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  %125 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %new_object, align 4
  %126 = load i8*, i8** %after_dot, align 4
  %call34 = call i32 @json_object_dotremove_internal(%Tstruct.Spl_json_object_t_t* %125, i8* %126, i32 0)
  %127 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %127, i64* @sbxHeapRange, align 8
  %128 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %128)
  %129 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %129, i64* @sbxHeapRange, align 8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end30
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then33, %if.then29, %if.then23, %if.end15, %if.then14, %if.then5, %if.then
  %130 = load i32, i32* %retval, align 4
  ret i32 %130
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
  store i64 %26, i64* @sbxHeapRange, align 8
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
  store i64 %23, i64* @sbxHeapRange, align 8
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
  store i64 %23, i64* @sbxHeapRange, align 8
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
  store i64 %22, i64* @sbxHeapRange, align 8
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
  store i64 %8, i64* @sbxHeapRange, align 8
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
  store i64 %8, i64* @sbxHeapRange, align 8
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_clear(%Tstruct.json_object_t_t* %object) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %i = alloca i64, align 8
  %tmp = alloca i8**, align 4
  %tmp16 = alloca i8**, align 4
  %tmp17 = alloca i8**, align 4
  %tmp18 = alloca i8**, align 4
  %tmp27 = alloca i8**, align 4
  %tmp44 = alloca i8**, align 4
  %tmp45 = alloca i8**, align 4
  %tmp46 = alloca i8**, align 4
  %tmp58 = alloca i8**, align 4
  %tmp75 = alloca i8**, align 4
  %tmp76 = alloca i8**, align 4
  %tmp77 = alloca i8**, align 4
  %tmp84 = alloca i8*, align 4
  %tmp88 = alloca i8*, align 4
  %tmp89 = alloca i8*, align 4
  %tmp91 = alloca i8*, align 4
  %tmp92 = alloca i8*, align 4
  %tmp103 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp120 = alloca %Tstruct.json_value_t_t**, align 4
  %tmp121 = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %tmp122 = alloca %Tstruct.Spl_json_value_t_t**, align 4
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
  %11 = load i64, i64* @sbxHeap, align 8
  %12 = ptrtoint %Tstruct.Spl_json_object_t_t* %10 to i32
  %13 = zext i32 %12 to i64
  %14 = add i64 %11, %13
  %15 = ptrtoint %Tstruct.Spl_json_object_t_t* %10 to i64
  %16 = load i64, i64* @sbxHeapRange, align 8
  %17 = and i64 %15, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %17, %16
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %for.body
  %18 = inttoptr i64 %14 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %18, i32 0, i32 1
  %names2 = bitcast i32* %names to i8***
  %19 = load i8**, i8*** %names2, align 4
  %20 = load i64, i64* %i, align 8
  %21 = bitcast i8** %19 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %20
  %22 = bitcast i32* %arrayidx to i8**
  %23 = load i64, i64* @sbxHeap, align 8
  %24 = ptrtoint i8** %22 to i32
  %25 = zext i32 %24 to i64
  %26 = add i64 %23, %25
  %27 = inttoptr i64 %26 to i8**
  %28 = bitcast i8** %27 to i8*
  %29 = ptrtoint i8* %28 to i32
  %30 = inttoptr i32 %29 to i8**
  store i8** %30, i8*** %tmp, align 4
  %31 = load i8**, i8*** %tmp, align 4
  %32 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %33 = load i64, i64* @sbxHeap, align 8
  %34 = ptrtoint %Tstruct.Spl_json_object_t_t* %32 to i32
  %35 = zext i32 %34 to i64
  %36 = add i64 %33, %35
  %37 = ptrtoint %Tstruct.Spl_json_object_t_t* %32 to i64
  %38 = load i64, i64* @sbxHeapRange, align 8
  %39 = and i64 %37, 4294967295
  %SandMem.TaintCheck3 = icmp ult i64 %39, %38
  br i1 %SandMem.TaintCheck3, label %TaintCheck.succeeded5, label %TaintCheck.failed4

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded
  %40 = inttoptr i64 %36 to %Tstruct.Spl_json_object_t_t*
  %names6 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %40, i32 0, i32 1
  %names7 = bitcast i32* %names6 to i8***
  %41 = load i8**, i8*** %names7, align 4
  %42 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %43 = load i64, i64* @sbxHeap, align 8
  %44 = ptrtoint %Tstruct.Spl_json_object_t_t* %42 to i32
  %45 = zext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = ptrtoint %Tstruct.Spl_json_object_t_t* %42 to i64
  %48 = load i64, i64* @sbxHeapRange, align 8
  %49 = and i64 %47, 4294967295
  %SandMem.TaintCheck8 = icmp ult i64 %49, %48
  br i1 %SandMem.TaintCheck8, label %TaintCheck.succeeded10, label %TaintCheck.failed9

TaintCheck.succeeded10:                           ; preds = %TaintCheck.succeeded5
  %50 = inttoptr i64 %46 to %Tstruct.Spl_json_object_t_t*
  %names11 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %50, i32 0, i32 1
  %names12 = bitcast i32* %names11 to i8***
  %51 = load i8**, i8*** %names12, align 4
  %52 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %53 = load i64, i64* @sbxHeap, align 8
  %54 = ptrtoint %Tstruct.Spl_json_object_t_t* %52 to i32
  %55 = zext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = ptrtoint %Tstruct.Spl_json_object_t_t* %52 to i64
  %58 = load i64, i64* @sbxHeapRange, align 8
  %59 = and i64 %57, 4294967295
  %SandMem.TaintCheck13 = icmp ult i64 %59, %58
  br i1 %SandMem.TaintCheck13, label %TaintCheck.succeeded15, label %TaintCheck.failed14

TaintCheck.succeeded15:                           ; preds = %TaintCheck.succeeded10
  %60 = inttoptr i64 %56 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %60, i32 0, i32 4
  %61 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %61 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %51, i64 %idx.ext
  store i8** %add.ptr, i8*** %tmp16, align 4
  %62 = load i8**, i8*** %tmp16, align 4
  %63 = bitcast i8** %62 to i8*
  %64 = ptrtoint i8* %63 to i32
  %65 = inttoptr i32 %64 to i8**
  store i8** %65, i8*** %tmp17, align 4
  %66 = load i8**, i8*** %tmp17, align 4
  %67 = bitcast i8** %41 to i8*
  %68 = ptrtoint i8* %67 to i32
  %69 = inttoptr i32 %68 to i8**
  store i8** %69, i8*** %tmp18, align 4
  %70 = load i8**, i8*** %tmp18, align 4
  %71 = ptrtoint i8** %70 to i32
  %72 = ptrtoint i8** %31 to i32
  %IsoHeap.lower = icmp ule i32 %71, %72
  %73 = ptrtoint i8** %31 to i32
  %74 = ptrtoint i8** %66 to i32
  %IsoHeap.upper = icmp ult i32 %73, %74
  %IsoHeap.range = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.range, label %TaintCheck.succeeded20, label %TaintCheck.failed19

TaintCheck.succeeded20:                           ; preds = %TaintCheck.succeeded15
  %75 = load i8*, i8** %27, align 4
  %76 = ptrtoint i8* %75 to i32
  %IsoHeap.is_null = icmp eq i32 %76, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %TaintCheck.succeeded20
  %77 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %78 = load i64, i64* @sbxHeap, align 8
  %79 = ptrtoint %Tstruct.Spl_json_object_t_t* %77 to i32
  %80 = zext i32 %79 to i64
  %81 = add i64 %78, %80
  %82 = ptrtoint %Tstruct.Spl_json_object_t_t* %77 to i64
  %83 = load i64, i64* @sbxHeapRange, align 8
  %84 = and i64 %82, 4294967295
  %SandMem.TaintCheck21 = icmp ult i64 %84, %83
  br i1 %SandMem.TaintCheck21, label %TaintCheck.succeeded23, label %TaintCheck.failed22

TaintCheck.succeeded23:                           ; preds = %IsoHeap.subsumption
  %85 = inttoptr i64 %81 to %Tstruct.Spl_json_object_t_t*
  %names24 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %85, i32 0, i32 1
  %names25 = bitcast i32* %names24 to i8***
  %86 = load i8**, i8*** %names25, align 4
  %87 = load i64, i64* %i, align 8
  %88 = bitcast i8** %86 to i32*
  %arrayidx26 = getelementptr inbounds i32, i32* %88, i64 %87
  %89 = bitcast i32* %arrayidx26 to i8**
  %90 = load i64, i64* @sbxHeap, align 8
  %91 = ptrtoint i8** %89 to i32
  %92 = zext i32 %91 to i64
  %93 = add i64 %90, %92
  %94 = inttoptr i64 %93 to i8**
  %95 = bitcast i8** %94 to i8*
  %96 = ptrtoint i8* %95 to i32
  %97 = inttoptr i32 %96 to i8**
  store i8** %97, i8*** %tmp27, align 4
  %98 = load i8**, i8*** %tmp27, align 4
  %99 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %100 = load i64, i64* @sbxHeap, align 8
  %101 = ptrtoint %Tstruct.Spl_json_object_t_t* %99 to i32
  %102 = zext i32 %101 to i64
  %103 = add i64 %100, %102
  %104 = ptrtoint %Tstruct.Spl_json_object_t_t* %99 to i64
  %105 = load i64, i64* @sbxHeapRange, align 8
  %106 = and i64 %104, 4294967295
  %SandMem.TaintCheck28 = icmp ult i64 %106, %105
  br i1 %SandMem.TaintCheck28, label %TaintCheck.succeeded30, label %TaintCheck.failed29

TaintCheck.succeeded30:                           ; preds = %TaintCheck.succeeded23
  %107 = inttoptr i64 %103 to %Tstruct.Spl_json_object_t_t*
  %names31 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %107, i32 0, i32 1
  %names32 = bitcast i32* %names31 to i8***
  %108 = load i8**, i8*** %names32, align 4
  %109 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %110 = load i64, i64* @sbxHeap, align 8
  %111 = ptrtoint %Tstruct.Spl_json_object_t_t* %109 to i32
  %112 = zext i32 %111 to i64
  %113 = add i64 %110, %112
  %114 = ptrtoint %Tstruct.Spl_json_object_t_t* %109 to i64
  %115 = load i64, i64* @sbxHeapRange, align 8
  %116 = and i64 %114, 4294967295
  %SandMem.TaintCheck33 = icmp ult i64 %116, %115
  br i1 %SandMem.TaintCheck33, label %TaintCheck.succeeded35, label %TaintCheck.failed34

TaintCheck.succeeded35:                           ; preds = %TaintCheck.succeeded30
  %117 = inttoptr i64 %113 to %Tstruct.Spl_json_object_t_t*
  %names36 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %117, i32 0, i32 1
  %names37 = bitcast i32* %names36 to i8***
  %118 = load i8**, i8*** %names37, align 4
  %119 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %120 = load i64, i64* @sbxHeap, align 8
  %121 = ptrtoint %Tstruct.Spl_json_object_t_t* %119 to i32
  %122 = zext i32 %121 to i64
  %123 = add i64 %120, %122
  %124 = ptrtoint %Tstruct.Spl_json_object_t_t* %119 to i64
  %125 = load i64, i64* @sbxHeapRange, align 8
  %126 = and i64 %124, 4294967295
  %SandMem.TaintCheck38 = icmp ult i64 %126, %125
  br i1 %SandMem.TaintCheck38, label %TaintCheck.succeeded40, label %TaintCheck.failed39

TaintCheck.succeeded40:                           ; preds = %TaintCheck.succeeded35
  %127 = inttoptr i64 %123 to %Tstruct.Spl_json_object_t_t*
  %capacity41 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %127, i32 0, i32 4
  %128 = load i32, i32* %capacity41, align 8
  %idx.ext42 = zext i32 %128 to i64
  %add.ptr43 = getelementptr inbounds i8*, i8** %118, i64 %idx.ext42
  store i8** %add.ptr43, i8*** %tmp44, align 4
  %129 = load i8**, i8*** %tmp44, align 4
  %130 = bitcast i8** %129 to i8*
  %131 = ptrtoint i8* %130 to i32
  %132 = inttoptr i32 %131 to i8**
  store i8** %132, i8*** %tmp45, align 4
  %133 = load i8**, i8*** %tmp45, align 4
  %134 = bitcast i8** %108 to i8*
  %135 = ptrtoint i8* %134 to i32
  %136 = inttoptr i32 %135 to i8**
  store i8** %136, i8*** %tmp46, align 4
  %137 = load i8**, i8*** %tmp46, align 4
  %138 = ptrtoint i8** %137 to i32
  %139 = ptrtoint i8** %98 to i32
  %IsoHeap.lower47 = icmp ule i32 %138, %139
  %140 = ptrtoint i8** %98 to i32
  %141 = ptrtoint i8** %133 to i32
  %IsoHeap.upper48 = icmp ult i32 %140, %141
  %IsoHeap.range49 = and i1 %IsoHeap.lower47, %IsoHeap.upper48
  br i1 %IsoHeap.range49, label %TaintCheck.succeeded51, label %TaintCheck.failed50

TaintCheck.succeeded51:                           ; preds = %TaintCheck.succeeded40
  %142 = load i8*, i8** %94, align 4
  %143 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %144 = load i64, i64* @sbxHeap, align 8
  %145 = ptrtoint %Tstruct.Spl_json_object_t_t* %143 to i32
  %146 = zext i32 %145 to i64
  %147 = add i64 %144, %146
  %148 = ptrtoint %Tstruct.Spl_json_object_t_t* %143 to i64
  %149 = load i64, i64* @sbxHeapRange, align 8
  %150 = and i64 %148, 4294967295
  %SandMem.TaintCheck52 = icmp ult i64 %150, %149
  br i1 %SandMem.TaintCheck52, label %TaintCheck.succeeded54, label %TaintCheck.failed53

TaintCheck.succeeded54:                           ; preds = %TaintCheck.succeeded51
  %151 = inttoptr i64 %147 to %Tstruct.Spl_json_object_t_t*
  %names55 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %151, i32 0, i32 1
  %names56 = bitcast i32* %names55 to i8***
  %152 = load i8**, i8*** %names56, align 4
  %153 = load i64, i64* %i, align 8
  %154 = bitcast i8** %152 to i32*
  %arrayidx57 = getelementptr inbounds i32, i32* %154, i64 %153
  %155 = bitcast i32* %arrayidx57 to i8**
  %156 = load i64, i64* @sbxHeap, align 8
  %157 = ptrtoint i8** %155 to i32
  %158 = zext i32 %157 to i64
  %159 = add i64 %156, %158
  %160 = inttoptr i64 %159 to i8**
  %161 = bitcast i8** %160 to i8*
  %162 = ptrtoint i8* %161 to i32
  %163 = inttoptr i32 %162 to i8**
  store i8** %163, i8*** %tmp58, align 4
  %164 = load i8**, i8*** %tmp58, align 4
  %165 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %166 = load i64, i64* @sbxHeap, align 8
  %167 = ptrtoint %Tstruct.Spl_json_object_t_t* %165 to i32
  %168 = zext i32 %167 to i64
  %169 = add i64 %166, %168
  %170 = ptrtoint %Tstruct.Spl_json_object_t_t* %165 to i64
  %171 = load i64, i64* @sbxHeapRange, align 8
  %172 = and i64 %170, 4294967295
  %SandMem.TaintCheck59 = icmp ult i64 %172, %171
  br i1 %SandMem.TaintCheck59, label %TaintCheck.succeeded61, label %TaintCheck.failed60

TaintCheck.succeeded61:                           ; preds = %TaintCheck.succeeded54
  %173 = inttoptr i64 %169 to %Tstruct.Spl_json_object_t_t*
  %names62 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %173, i32 0, i32 1
  %names63 = bitcast i32* %names62 to i8***
  %174 = load i8**, i8*** %names63, align 4
  %175 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %176 = load i64, i64* @sbxHeap, align 8
  %177 = ptrtoint %Tstruct.Spl_json_object_t_t* %175 to i32
  %178 = zext i32 %177 to i64
  %179 = add i64 %176, %178
  %180 = ptrtoint %Tstruct.Spl_json_object_t_t* %175 to i64
  %181 = load i64, i64* @sbxHeapRange, align 8
  %182 = and i64 %180, 4294967295
  %SandMem.TaintCheck64 = icmp ult i64 %182, %181
  br i1 %SandMem.TaintCheck64, label %TaintCheck.succeeded66, label %TaintCheck.failed65

TaintCheck.succeeded66:                           ; preds = %TaintCheck.succeeded61
  %183 = inttoptr i64 %179 to %Tstruct.Spl_json_object_t_t*
  %names67 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %183, i32 0, i32 1
  %names68 = bitcast i32* %names67 to i8***
  %184 = load i8**, i8*** %names68, align 4
  %185 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %186 = load i64, i64* @sbxHeap, align 8
  %187 = ptrtoint %Tstruct.Spl_json_object_t_t* %185 to i32
  %188 = zext i32 %187 to i64
  %189 = add i64 %186, %188
  %190 = ptrtoint %Tstruct.Spl_json_object_t_t* %185 to i64
  %191 = load i64, i64* @sbxHeapRange, align 8
  %192 = and i64 %190, 4294967295
  %SandMem.TaintCheck69 = icmp ult i64 %192, %191
  br i1 %SandMem.TaintCheck69, label %TaintCheck.succeeded71, label %TaintCheck.failed70

TaintCheck.succeeded71:                           ; preds = %TaintCheck.succeeded66
  %193 = inttoptr i64 %189 to %Tstruct.Spl_json_object_t_t*
  %capacity72 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %193, i32 0, i32 4
  %194 = load i32, i32* %capacity72, align 8
  %idx.ext73 = zext i32 %194 to i64
  %add.ptr74 = getelementptr inbounds i8*, i8** %184, i64 %idx.ext73
  store i8** %add.ptr74, i8*** %tmp75, align 4
  %195 = load i8**, i8*** %tmp75, align 4
  %196 = bitcast i8** %195 to i8*
  %197 = ptrtoint i8* %196 to i32
  %198 = inttoptr i32 %197 to i8**
  store i8** %198, i8*** %tmp76, align 4
  %199 = load i8**, i8*** %tmp76, align 4
  %200 = bitcast i8** %174 to i8*
  %201 = ptrtoint i8* %200 to i32
  %202 = inttoptr i32 %201 to i8**
  store i8** %202, i8*** %tmp77, align 4
  %203 = load i8**, i8*** %tmp77, align 4
  %204 = ptrtoint i8** %203 to i32
  %205 = ptrtoint i8** %164 to i32
  %IsoHeap.lower78 = icmp ule i32 %204, %205
  %206 = ptrtoint i8** %164 to i32
  %207 = ptrtoint i8** %199 to i32
  %IsoHeap.upper79 = icmp ult i32 %206, %207
  %IsoHeap.range80 = and i1 %IsoHeap.lower78, %IsoHeap.upper79
  br i1 %IsoHeap.range80, label %TaintCheck.succeeded82, label %TaintCheck.failed81

TaintCheck.succeeded82:                           ; preds = %TaintCheck.succeeded71
  %208 = load i8*, i8** %160, align 4
  %add.ptr83 = getelementptr inbounds i8, i8* %208, i64 1
  store i8* %add.ptr83, i8** %tmp84, align 4
  %209 = load i8*, i8** %tmp84, align 4
  %210 = ptrtoint i8* %75 to i32
  %IsoHeap.non_null = icmp ne i32 %210, 0
  br i1 %IsoHeap.non_null, label %TaintCheck.succeeded86, label %TaintCheck.failed85

TaintCheck.succeeded86:                           ; preds = %TaintCheck.succeeded82
  %add.ptr87 = getelementptr inbounds i8, i8* %75, i64 0
  %211 = ptrtoint i8* %142 to i32
  %212 = inttoptr i32 %211 to i8*
  store i8* %212, i8** %tmp88, align 4
  %213 = load i8*, i8** %tmp88, align 4
  %214 = ptrtoint i8* %75 to i32
  %215 = inttoptr i32 %214 to i8*
  store i8* %215, i8** %tmp89, align 4
  %216 = load i8*, i8** %tmp89, align 4
  %217 = ptrtoint i8* %213 to i32
  %218 = ptrtoint i8* %216 to i32
  %IsoHeap.lower90 = icmp ule i32 %217, %218
  %219 = ptrtoint i8* %add.ptr87 to i32
  %220 = inttoptr i32 %219 to i8*
  store i8* %220, i8** %tmp91, align 4
  %221 = load i8*, i8** %tmp91, align 4
  %222 = ptrtoint i8* %209 to i32
  %223 = inttoptr i32 %222 to i8*
  store i8* %223, i8** %tmp92, align 4
  %224 = load i8*, i8** %tmp92, align 4
  %225 = ptrtoint i8* %221 to i32
  %226 = ptrtoint i8* %224 to i32
  %IsoHeap.upper93 = icmp ule i32 %225, %226
  %IsoHeap.cast = and i1 %IsoHeap.lower90, %IsoHeap.upper93
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed94

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded86, %TaintCheck.succeeded20
  %227 = load i64, i64* @sbxHeap, align 8
  %228 = ptrtoint i8* %75 to i32
  %229 = zext i32 %228 to i64
  %230 = add i64 %227, %229
  %231 = ptrtoint i8* %75 to i64
  %232 = load i64, i64* @sbxHeapRange, align 8
  %233 = and i64 %231, 4294967295
  %SandMem.TaintCheck95 = icmp ult i64 %233, %232
  br i1 %SandMem.TaintCheck95, label %TaintCheck.succeeded97, label %TaintCheck.failed96

TaintCheck.succeeded97:                           ; preds = %IsoHeap.success
  %234 = inttoptr i64 %230 to i8*
  call void @t_free(i8* %234)
  %235 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %235, i64* @sbxHeapRange, align 8
  %236 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %237 = load i64, i64* @sbxHeap, align 8
  %238 = ptrtoint %Tstruct.Spl_json_object_t_t* %236 to i32
  %239 = zext i32 %238 to i64
  %240 = add i64 %237, %239
  %241 = ptrtoint %Tstruct.Spl_json_object_t_t* %236 to i64
  %242 = load i64, i64* @sbxHeapRange, align 8
  %243 = and i64 %241, 4294967295
  %SandMem.TaintCheck98 = icmp ult i64 %243, %242
  br i1 %SandMem.TaintCheck98, label %TaintCheck.succeeded100, label %TaintCheck.failed99

TaintCheck.succeeded100:                          ; preds = %TaintCheck.succeeded97
  %244 = inttoptr i64 %240 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %244, i32 0, i32 2
  %values101 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %245 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values101, align 4
  %246 = load i64, i64* %i, align 8
  %247 = bitcast %Tstruct.Spl_json_value_t_t** %245 to i32*
  %arrayidx102 = getelementptr inbounds i32, i32* %247, i64 %246
  %248 = bitcast i32* %arrayidx102 to %Tstruct.Spl_json_value_t_t**
  %249 = load i64, i64* @sbxHeap, align 8
  %250 = ptrtoint %Tstruct.Spl_json_value_t_t** %248 to i32
  %251 = zext i32 %250 to i64
  %252 = add i64 %249, %251
  %253 = inttoptr i64 %252 to %Tstruct.Spl_json_value_t_t**
  %254 = bitcast %Tstruct.Spl_json_value_t_t** %253 to i8*
  %255 = ptrtoint i8* %254 to i32
  %256 = inttoptr i32 %255 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %256, %Tstruct.Spl_json_value_t_t*** %tmp103, align 4
  %257 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp103, align 4
  %258 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %259 = load i64, i64* @sbxHeap, align 8
  %260 = ptrtoint %Tstruct.Spl_json_object_t_t* %258 to i32
  %261 = zext i32 %260 to i64
  %262 = add i64 %259, %261
  %263 = ptrtoint %Tstruct.Spl_json_object_t_t* %258 to i64
  %264 = load i64, i64* @sbxHeapRange, align 8
  %265 = and i64 %263, 4294967295
  %SandMem.TaintCheck104 = icmp ult i64 %265, %264
  br i1 %SandMem.TaintCheck104, label %TaintCheck.succeeded106, label %TaintCheck.failed105

TaintCheck.succeeded106:                          ; preds = %TaintCheck.succeeded100
  %266 = inttoptr i64 %262 to %Tstruct.Spl_json_object_t_t*
  %values107 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %266, i32 0, i32 2
  %values108 = bitcast i32* %values107 to %Tstruct.Spl_json_value_t_t***
  %267 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values108, align 4
  %268 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %269 = load i64, i64* @sbxHeap, align 8
  %270 = ptrtoint %Tstruct.Spl_json_object_t_t* %268 to i32
  %271 = zext i32 %270 to i64
  %272 = add i64 %269, %271
  %273 = ptrtoint %Tstruct.Spl_json_object_t_t* %268 to i64
  %274 = load i64, i64* @sbxHeapRange, align 8
  %275 = and i64 %273, 4294967295
  %SandMem.TaintCheck109 = icmp ult i64 %275, %274
  br i1 %SandMem.TaintCheck109, label %TaintCheck.succeeded111, label %TaintCheck.failed110

TaintCheck.succeeded111:                          ; preds = %TaintCheck.succeeded106
  %276 = inttoptr i64 %272 to %Tstruct.Spl_json_object_t_t*
  %values112 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %276, i32 0, i32 2
  %values113 = bitcast i32* %values112 to %Tstruct.Spl_json_value_t_t***
  %277 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values113, align 4
  %278 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %279 = load i64, i64* @sbxHeap, align 8
  %280 = ptrtoint %Tstruct.Spl_json_object_t_t* %278 to i32
  %281 = zext i32 %280 to i64
  %282 = add i64 %279, %281
  %283 = ptrtoint %Tstruct.Spl_json_object_t_t* %278 to i64
  %284 = load i64, i64* @sbxHeapRange, align 8
  %285 = and i64 %283, 4294967295
  %SandMem.TaintCheck114 = icmp ult i64 %285, %284
  br i1 %SandMem.TaintCheck114, label %TaintCheck.succeeded116, label %TaintCheck.failed115

TaintCheck.succeeded116:                          ; preds = %TaintCheck.succeeded111
  %286 = inttoptr i64 %282 to %Tstruct.Spl_json_object_t_t*
  %capacity117 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %286, i32 0, i32 4
  %287 = load i32, i32* %capacity117, align 8
  %idx.ext118 = zext i32 %287 to i64
  %add.ptr119 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %277, i64 %idx.ext118
  store %Tstruct.Spl_json_value_t_t** %add.ptr119, %Tstruct.Spl_json_value_t_t*** %tmp120, align 4
  %288 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp120, align 4
  %289 = bitcast %Tstruct.Spl_json_value_t_t** %288 to i8*
  %290 = ptrtoint i8* %289 to i32
  %291 = inttoptr i32 %290 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %291, %Tstruct.Spl_json_value_t_t*** %tmp121, align 4
  %292 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp121, align 4
  %293 = bitcast %Tstruct.Spl_json_value_t_t** %267 to i8*
  %294 = ptrtoint i8* %293 to i32
  %295 = inttoptr i32 %294 to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t** %295, %Tstruct.Spl_json_value_t_t*** %tmp122, align 4
  %296 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %tmp122, align 4
  %IsoHeap.lower123 = icmp ule %Tstruct.Spl_json_value_t_t** %296, %257
  %IsoHeap.upper124 = icmp ult %Tstruct.Spl_json_value_t_t** %257, %292
  %IsoHeap.range125 = and i1 %IsoHeap.lower123, %IsoHeap.upper124
  br i1 %IsoHeap.range125, label %TaintCheck.succeeded127, label %TaintCheck.failed126

TaintCheck.succeeded127:                          ; preds = %TaintCheck.succeeded116
  %297 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %253, align 4
  call void @json_value_free(%Tstruct.Spl_json_value_t_t* %297)
  %298 = call i64 @c_fetch_sandbox_heap_bound()
  store i64 %298, i64* @sbxHeapRange, align 8
  br label %for.inc

for.inc:                                          ; preds = %TaintCheck.succeeded127
  %299 = load i64, i64* %i, align 8
  %inc = add i64 %299, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !17

TaintCheck.failed:                                ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed4:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed9:                               ; preds = %TaintCheck.succeeded5
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed14:                              ; preds = %TaintCheck.succeeded10
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed19:                              ; preds = %TaintCheck.succeeded15
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed22:                              ; preds = %IsoHeap.subsumption
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed29:                              ; preds = %TaintCheck.succeeded23
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed34:                              ; preds = %TaintCheck.succeeded30
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed39:                              ; preds = %TaintCheck.succeeded35
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed50:                              ; preds = %TaintCheck.succeeded40
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed53:                              ; preds = %TaintCheck.succeeded51
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed60:                              ; preds = %TaintCheck.succeeded54
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed65:                              ; preds = %TaintCheck.succeeded61
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed70:                              ; preds = %TaintCheck.succeeded66
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed81:                              ; preds = %TaintCheck.succeeded71
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed85:                              ; preds = %TaintCheck.succeeded82
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed94:                              ; preds = %TaintCheck.succeeded86
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed96:                              ; preds = %IsoHeap.success
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed99:                              ; preds = %TaintCheck.succeeded97
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed105:                             ; preds = %TaintCheck.succeeded100
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed110:                             ; preds = %TaintCheck.succeeded106
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed115:                             ; preds = %TaintCheck.succeeded111
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed126:                             ; preds = %TaintCheck.succeeded116
  call void @llvm.trap() #8
  unreachable

for.end:                                          ; preds = %for.cond
  %300 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %301 = load i64, i64* @sbxHeap, align 8
  %302 = ptrtoint %Tstruct.Spl_json_object_t_t* %300 to i32
  %303 = zext i32 %302 to i64
  %304 = add i64 %301, %303
  %305 = ptrtoint %Tstruct.Spl_json_object_t_t* %300 to i64
  %306 = load i64, i64* @sbxHeapRange, align 8
  %307 = and i64 %305, 4294967295
  %SandMem.TaintCheck128 = icmp ult i64 %307, %306
  br i1 %SandMem.TaintCheck128, label %TaintCheck.succeeded130, label %TaintCheck.failed129

TaintCheck.succeeded130:                          ; preds = %for.end
  %308 = inttoptr i64 %304 to %Tstruct.Spl_json_object_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %308, i32 0, i32 3
  store i32 0, i32* %count, align 4
  store i32 0, i32* %retval, align 4
  br label %return

TaintCheck.failed129:                             ; preds = %for.end
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %TaintCheck.succeeded130, %if.then
  %309 = load i32, i32* %retval, align 4
  ret i32 %309
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
    i32 6, label %sw.bb58
    i32 3, label %sw.bb63
    i32 -1, label %sw.bb68
    i32 1, label %sw.bb69
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
  %126 = load i64, i64* @sbxHeap, align 8
  %127 = ptrtoint i8* %124 to i32
  %128 = zext i32 %127 to i64
  %129 = add i64 %126, %128
  %130 = ptrtoint i8* %124 to i64
  %131 = load i64, i64* @sbxHeapRange, align 8
  %132 = and i64 %130, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %132, %131
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end52
  %133 = inttoptr i64 %129 to i8*
  %134 = load i64, i64* @sbxHeap, align 8
  %135 = ptrtoint i8* %125 to i32
  %136 = zext i32 %135 to i64
  %137 = add i64 %134, %136
  %138 = ptrtoint i8* %125 to i64
  %139 = load i64, i64* @sbxHeapRange, align 8
  %140 = and i64 %138, 4294967295
  %SandMem.TaintCheck53 = icmp ult i64 %140, %139
  br i1 %SandMem.TaintCheck53, label %TaintCheck.succeeded55, label %TaintCheck.failed54

TaintCheck.succeeded55:                           ; preds = %TaintCheck.succeeded
  %141 = inttoptr i64 %137 to i8*
  %call56 = call i32 @t_strcmp(i8* %133, i8* %141)
  %cmp57 = icmp eq i32 %call56, 0
  %conv = zext i1 %cmp57 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

TaintCheck.failed:                                ; preds = %if.end52
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed54:                              ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

sw.bb58:                                          ; preds = %if.end
  %142 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %call59 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %142)
  %143 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %call60 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %143)
  %cmp61 = icmp eq i32 %call59, %call60
  %conv62 = zext i1 %cmp61 to i32
  store i32 %conv62, i32* %retval, align 4
  br label %return

sw.bb63:                                          ; preds = %if.end
  %144 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %call64 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %144)
  %145 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %call65 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %145)
  %sub = fsub double %call64, %call65
  %146 = call double @llvm.fabs.f64(double %sub)
  %cmp66 = fcmp olt double %146, 0x3EB0C6F7A0B5ED8D
  %conv67 = zext i1 %cmp66 to i32
  store i32 %conv67, i32* %retval, align 4
  br label %return

sw.bb68:                                          ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb69:                                          ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb69, %sw.bb68, %sw.bb63, %sw.bb58, %TaintCheck.succeeded55, %if.then51, %for.end43, %if.then39, %if.then26, %for.end, %if.then16, %if.then8, %if.then
  %147 = load i32, i32* %retval, align 4
  ret i32 %147
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
  %tmp15 = alloca i8*, align 4
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
  %21 = load i64, i64* @sbxHeap, align 8
  %22 = ptrtoint i8* %20 to i32
  %23 = zext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = ptrtoint i8* %20 to i64
  %26 = load i64, i64* @sbxHeapRange, align 8
  %27 = and i64 %25, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %27, %26
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %if.end4
  %28 = inttoptr i64 %24 to i8*
  %call5 = call i64 @t_strlen(i8* %28)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, i32* %len, align 4
  %29 = load i8*, i8** %serialized_string, align 4
  %30 = load i64, i64* @sbxHeap, align 8
  %31 = ptrtoint i8* %29 to i32
  %32 = zext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = ptrtoint i8* %29 to i64
  %35 = load i64, i64* @sbxHeapRange, align 8
  %36 = and i64 %34, 4294967295
  %SandMem.TaintCheck6 = icmp ult i64 %36, %35
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded8, label %TaintCheck.failed7

TaintCheck.succeeded8:                            ; preds = %TaintCheck.succeeded
  %37 = inttoptr i64 %33 to i8*
  %call9 = call i64 @t_strlen(i8* %37)
  %mul = mul i64 %call9, 1
  %call10 = call noalias i8* @malloc(i64 %mul) #10
  store i8* %call10, i8** %serialized_string_checked, align 8
  %38 = load i8*, i8** %serialized_string_checked, align 8
  %39 = load i8*, i8** %serialized_string, align 4
  %40 = load i64, i64* @sbxHeap, align 8
  %41 = ptrtoint i8* %39 to i32
  %42 = zext i32 %41 to i64
  %43 = add i64 %40, %42
  %44 = ptrtoint i8* %39 to i64
  %45 = load i64, i64* @sbxHeapRange, align 8
  %46 = and i64 %44, 4294967295
  %SandMem.TaintCheck11 = icmp ult i64 %46, %45
  br i1 %SandMem.TaintCheck11, label %TaintCheck.succeeded13, label %TaintCheck.failed12

TaintCheck.succeeded13:                           ; preds = %TaintCheck.succeeded8
  %47 = inttoptr i64 %43 to i8*
  %call14 = call i8* @t_strcpy(i8* %38, i8* %47)
  %48 = ptrtoint i8* %call14 to i32
  %49 = inttoptr i32 %48 to i8*
  store i8* %49, i8** %tmp15, align 4
  %50 = load i8*, i8** %tmp15, align 4
  %51 = load i8*, i8** %serialized_string_checked, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call16 = call i32 @fputs(i8* %51, %struct._IO_FILE* %52)
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %TaintCheck.succeeded13
  store i32 -1, i32* %return_code, align 4
  br label %if.end20

TaintCheck.failed:                                ; preds = %if.end4
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed7:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed12:                              ; preds = %TaintCheck.succeeded8
  call void @llvm.trap() #8
  unreachable

if.end20:                                         ; preds = %if.then19, %TaintCheck.succeeded13
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call21 = call i32 @fclose(%struct._IO_FILE* %53)
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  store i32 -1, i32* %return_code, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20
  %54 = load i8*, i8** %serialized_string, align 4
  call void @json_free_serialized_string(i8* %54)
  %55 = load i8*, i8** %serialized_string_checked, align 8
  call void @free(i8* %55) #10
  %56 = load i32, i32* %return_code, align 4
  store i32 %56, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then3, %if.then
  %57 = load i32, i32* %retval, align 4
  ret i32 %57
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
  %tmp8 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %tmp22 = alloca i8*, align 4
  %tmp24 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = ptrtoint i8** %str_cpy to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8*** %str_cpy.addr to i64*
  store i64 %1, i64* %2, align 4
  store i64 4, i64* %true_token_size, align 8
  store i64 5, i64* %false_token_size, align 8
  %3 = load i8**, i8*** %str_cpy.addr, align 4
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = ptrtoint i8** %3 to i32
  %6 = zext i32 %5 to i64
  %7 = add i64 %4, %6
  %8 = ptrtoint i8** %3 to i64
  %9 = load i64, i64* @sbxHeapRange, align 8
  %10 = and i64 %8, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %10, %9
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %TaintCheck.failed

TaintCheck.succeeded:                             ; preds = %entry
  %11 = inttoptr i64 %7 to i8**
  %12 = load i8*, i8** %11, align 4
  %13 = load i64, i64* %true_token_size, align 8
  %14 = load i64, i64* @sbxHeap, align 8
  %15 = ptrtoint i8* %12 to i32
  %16 = zext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = ptrtoint i8* %12 to i64
  %19 = load i64, i64* @sbxHeapRange, align 8
  %20 = and i64 %18, 4294967295
  %SandMem.TaintCheck1 = icmp ult i64 %20, %19
  br i1 %SandMem.TaintCheck1, label %TaintCheck.succeeded3, label %TaintCheck.failed2

TaintCheck.succeeded3:                            ; preds = %TaintCheck.succeeded
  %21 = inttoptr i64 %17 to i8*
  %call = call i32 @t_strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %21, i64 %13)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %TaintCheck.succeeded3
  %22 = load i64, i64* %true_token_size, align 8
  %23 = load i8**, i8*** %str_cpy.addr, align 4
  %24 = load i64, i64* @sbxHeap, align 8
  %25 = ptrtoint i8** %23 to i32
  %26 = zext i32 %25 to i64
  %27 = add i64 %24, %26
  %28 = ptrtoint i8** %23 to i64
  %29 = load i64, i64* @sbxHeapRange, align 8
  %30 = and i64 %28, 4294967295
  %SandMem.TaintCheck4 = icmp ult i64 %30, %29
  br i1 %SandMem.TaintCheck4, label %TaintCheck.succeeded6, label %TaintCheck.failed5

TaintCheck.succeeded6:                            ; preds = %if.then
  %31 = inttoptr i64 %27 to i8**
  %32 = load i8*, i8** %31, align 4
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %22
  store i8* %add.ptr, i8** %tmp, align 4
  %33 = load i8*, i8** %tmp, align 4
  %34 = ptrtoint i8* %33 to i32
  %35 = zext i32 %34 to i64
  %36 = bitcast i8** %31 to i64*
  store i64 %35, i64* %36, align 4
  %call7 = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 1)
  %37 = bitcast %Tstruct.Spl_json_value_t_t* %call7 to %Tstruct.json_value_t_t*
  %38 = bitcast %Tstruct.json_value_t_t* %37 to i8*
  %39 = ptrtoint i8* %38 to i32
  %40 = inttoptr i32 %39 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %40, %Tstruct.Spl_json_value_t_t** %tmp8, align 4
  %41 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp8, align 4
  store %Tstruct.Spl_json_value_t_t* %41, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed:                                ; preds = %entry
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed2:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed5:                               ; preds = %if.then
  call void @llvm.trap() #8
  unreachable

if.else:                                          ; preds = %TaintCheck.succeeded3
  %42 = load i8**, i8*** %str_cpy.addr, align 4
  %43 = load i64, i64* @sbxHeap, align 8
  %44 = ptrtoint i8** %42 to i32
  %45 = zext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = ptrtoint i8** %42 to i64
  %48 = load i64, i64* @sbxHeapRange, align 8
  %49 = and i64 %47, 4294967295
  %SandMem.TaintCheck9 = icmp ult i64 %49, %48
  br i1 %SandMem.TaintCheck9, label %TaintCheck.succeeded11, label %TaintCheck.failed10

TaintCheck.succeeded11:                           ; preds = %if.else
  %50 = inttoptr i64 %46 to i8**
  %51 = load i8*, i8** %50, align 4
  %52 = load i64, i64* %false_token_size, align 8
  %53 = load i64, i64* @sbxHeap, align 8
  %54 = ptrtoint i8* %51 to i32
  %55 = zext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = ptrtoint i8* %51 to i64
  %58 = load i64, i64* @sbxHeapRange, align 8
  %59 = and i64 %57, 4294967295
  %SandMem.TaintCheck12 = icmp ult i64 %59, %58
  br i1 %SandMem.TaintCheck12, label %TaintCheck.succeeded14, label %TaintCheck.failed13

TaintCheck.succeeded14:                           ; preds = %TaintCheck.succeeded11
  %60 = inttoptr i64 %56 to i8*
  %call15 = call i32 @t_strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %60, i64 %52)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %TaintCheck.succeeded14
  %61 = load i64, i64* %false_token_size, align 8
  %62 = load i8**, i8*** %str_cpy.addr, align 4
  %63 = load i64, i64* @sbxHeap, align 8
  %64 = ptrtoint i8** %62 to i32
  %65 = zext i32 %64 to i64
  %66 = add i64 %63, %65
  %67 = ptrtoint i8** %62 to i64
  %68 = load i64, i64* @sbxHeapRange, align 8
  %69 = and i64 %67, 4294967295
  %SandMem.TaintCheck18 = icmp ult i64 %69, %68
  br i1 %SandMem.TaintCheck18, label %TaintCheck.succeeded20, label %TaintCheck.failed19

TaintCheck.succeeded20:                           ; preds = %if.then17
  %70 = inttoptr i64 %66 to i8**
  %71 = load i8*, i8** %70, align 4
  %add.ptr21 = getelementptr inbounds i8, i8* %71, i64 %61
  store i8* %add.ptr21, i8** %tmp22, align 4
  %72 = load i8*, i8** %tmp22, align 4
  %73 = ptrtoint i8* %72 to i32
  %74 = zext i32 %73 to i64
  %75 = bitcast i8** %70 to i64*
  store i64 %74, i64* %75, align 4
  %call23 = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 0)
  %76 = bitcast %Tstruct.Spl_json_value_t_t* %call23 to %Tstruct.json_value_t_t*
  %77 = bitcast %Tstruct.json_value_t_t* %76 to i8*
  %78 = ptrtoint i8* %77 to i32
  %79 = inttoptr i32 %78 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %79, %Tstruct.Spl_json_value_t_t** %tmp24, align 4
  %80 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %tmp24, align 4
  store %Tstruct.Spl_json_value_t_t* %80, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

TaintCheck.failed10:                              ; preds = %if.else
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed13:                              ; preds = %TaintCheck.succeeded11
  call void @llvm.trap() #8
  unreachable

TaintCheck.failed19:                              ; preds = %if.then17
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %TaintCheck.succeeded14
  br label %if.end25

if.end25:                                         ; preds = %if.end
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end25, %TaintCheck.succeeded20, %TaintCheck.succeeded6
  %81 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %81
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
!1 = !{!"clang version 12.0.0 (git@github.com:TypeFlexer/TypeFlexer-Clang.git 557b81ec8f075b6f83e52607d35b09fb6eb443bc)"}
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
