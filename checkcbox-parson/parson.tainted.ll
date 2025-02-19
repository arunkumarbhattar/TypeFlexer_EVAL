; ModuleID = 'parson.tainted.c'
source_filename = "parson.tainted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%Tstruct.json_object_t_t = type { %Tstruct.json_value_t_t*, i8**, %Tstruct.json_value_t_t**, i64, i64 }
%Tstruct.json_value_t_t = type { %Tstruct.json_value_t_t*, i32, %Tstruct.json_value_value_t_t }
%Tstruct.json_value_value_t_t = type { i8*, double, %Tstruct.json_object_t_t*, %Tstruct.json_array_t_t*, i32, i32 }
%Tstruct.json_array_t_t = type { %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t**, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@sbxHeap = common local_unnamed_addr global i64 0
@sbxHeapRange = common local_unnamed_addr global i64 0
@parson_escape_slashes = dso_local local_unnamed_addr global i32 1, align 4
@.str = private unnamed_addr constant [3 x i8] c"-0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%1.17g\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"\\u0000\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\\u0001\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\\u0002\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\\u0003\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"\\u0004\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"\\u0005\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"\\u0006\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\\u0007\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"\\u000b\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\\u000e\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"\\u000f\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\\u0010\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"\\u0011\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"\\u0012\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"\\u0013\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\\u0014\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"\\u0015\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"\\u0016\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"\\u0017\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"\\u0018\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"\\u0019\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\\u001a\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"\\u001b\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"\\u001c\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\\u001d\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"\\u001e\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"\\u001f\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@parson_tainted_malloc = dso_local local_unnamed_addr global i8* (i64)* null, align 8
@parson_tainted_free = dso_local local_unnamed_addr global void (i8*)* null, align 8
@.str.55 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i8* @tainted_parson_strndup(i8* %string, i64 %n) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %string to i64
  %1 = and i64 %0, 4294967295
  %cmp.i = icmp eq i64 %n, -1
  br i1 %cmp.i, label %string_tainted_malloc.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %add.i = add nuw i64 %n, 1
  %call.i = tail call i8* @t_malloc(i64 %add.i) #16
  %2 = ptrtoint i8* %call.i to i64
  %3 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %3, i64* @sbxHeapRange, align 8
  %4 = and i64 %2, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %6 = trunc i64 %2 to i32
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %string_tainted_malloc.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %SandMem.TaintCheck.i = icmp ult i64 %4, %3
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.then2.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.then2.i
  %7 = load i64, i64* @sbxHeap, align 8
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to i8*
  %arrayidx.i = getelementptr inbounds i8, i8* %9, i64 %n
  %10 = ptrtoint i8* %arrayidx.i to i64
  %11 = trunc i64 %10 to i32
  %add.ptr.i = getelementptr inbounds i8, i8* %5, i64 %add.i
  %12 = ptrtoint i8* %add.ptr.i to i64
  %13 = trunc i64 %12 to i32
  %IsoHeap.lower.i = icmp ule i32 %6, %11
  %IsoHeap.upper.i = icmp ult i32 %11, %13
  %IsoHeap.range.i = and i1 %IsoHeap.lower.i, %IsoHeap.upper.i
  br i1 %IsoHeap.range.i, label %TaintCheck.succeeded9.i, label %TaintCheck.failed8.i

TaintCheck.succeeded9.i:                          ; preds = %TaintCheck.succeeded.i
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !2
  br label %string_tainted_malloc.exit

TaintCheck.failed8.i:                             ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #17
  unreachable

string_tainted_malloc.exit:                       ; preds = %entry, %if.end.i, %TaintCheck.succeeded9.i
  %retval.0.i = phi i8* [ null, %entry ], [ %5, %TaintCheck.succeeded9.i ], [ %5, %if.end.i ]
  %14 = ptrtoint i8* %retval.0.i to i64
  %15 = and i64 %14, 4294967295
  %16 = inttoptr i64 %15 to i8*
  %17 = trunc i64 %14 to i32
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %string_tainted_malloc.exit
  %18 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %15, %18
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end
  %19 = load i64, i64* @sbxHeap, align 8
  %20 = add i64 %19, %15
  %21 = inttoptr i64 %20 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %n
  store i8 0, i8* %arrayidx, align 1, !tbaa !2
  %22 = load i64, i64* @sbxHeap, align 8
  %23 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1 = icmp ult i64 %15, %23
  br i1 %SandMem.TaintCheck1, label %TaintCheck.succeeded5, label %wasm.trap.fail2

wasm.trap.fail2:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded
  %SandMem.TaintCheck6 = icmp ult i64 %1, %23
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded10, label %wasm.trap.fail7

wasm.trap.fail7:                                  ; preds = %TaintCheck.succeeded5
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded10:                           ; preds = %TaintCheck.succeeded5
  %24 = add i64 %22, %1
  %25 = add i64 %22, %15
  %26 = inttoptr i64 %25 to i8*
  %27 = inttoptr i64 %24 to i8*
  %call11 = tail call i8* @t_strncpy(i8* %26, i8* %27, i64 %n) #16
  br label %cleanup

cleanup:                                          ; preds = %string_tainted_malloc.exit, %TaintCheck.succeeded10
  %retval.0 = phi i8* [ %16, %TaintCheck.succeeded10 ], [ null, %string_tainted_malloc.exit ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #2

declare dso_local i8* @t_strncpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i8* @tainted_parson_strdup(i8* %string) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %string to i64
  %1 = and i64 %0, 4294967295
  %2 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %2
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %entry
  %3 = load i64, i64* @sbxHeap, align 8
  %4 = add i64 %3, %1
  %5 = inttoptr i64 %4 to i8*
  %call = tail call i64 @t_strlen(i8* %5) #16
  %6 = inttoptr i64 %1 to i8*
  %call1 = tail call i8* @tainted_parson_strndup(i8* %6, i64 %call)
  %7 = ptrtoint i8* %call1 to i64
  %8 = and i64 %7, 4294967295
  %9 = inttoptr i64 %8 to i8*
  ret i8* %9
}

declare dso_local i64 @t_strlen(i8*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @verify_utf8_sequence(i8* %string, i32* %len) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %string to i64
  %1 = and i64 %0, 4294967295
  %2 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %2
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %entry
  %3 = ptrtoint i32* %len to i64
  %4 = and i64 %3, 4294967295
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %1
  %7 = inttoptr i64 %6 to i8*
  %8 = load i8, i8* %7, align 4, !tbaa !2
  %conv.i = zext i8 %8 to i32
  %9 = and i8 %8, -2
  %switch.i = icmp eq i8 %9, -64
  br i1 %switch.i, label %num_bytes_in_utf8_sequence.exit, label %lor.lhs.false5.i

lor.lhs.false5.i:                                 ; preds = %TaintCheck.succeeded
  %cmp7.i = icmp ugt i8 %8, -12
  %and.i = and i32 %conv.i, 192
  %cmp11.i = icmp eq i32 %and.i, 128
  %or.cond.i = or i1 %cmp7.i, %cmp11.i
  br i1 %or.cond.i, label %num_bytes_in_utf8_sequence.exit, label %if.else.i

if.else.i:                                        ; preds = %lor.lhs.false5.i
  %cmp15.i = icmp sgt i8 %8, -1
  br i1 %cmp15.i, label %num_bytes_in_utf8_sequence.exit, label %if.else18.i

if.else18.i:                                      ; preds = %if.else.i
  %and20.i = and i32 %conv.i, 224
  %cmp21.i = icmp eq i32 %and20.i, 192
  br i1 %cmp21.i, label %num_bytes_in_utf8_sequence.exit, label %if.else24.i

if.else24.i:                                      ; preds = %if.else18.i
  %and26.i = and i32 %conv.i, 240
  %cmp27.i = icmp eq i32 %and26.i, 224
  br i1 %cmp27.i, label %num_bytes_in_utf8_sequence.exit, label %if.else30.i

if.else30.i:                                      ; preds = %if.else24.i
  %and32.i = and i32 %conv.i, 248
  %cmp33.i = icmp eq i32 %and32.i, 240
  %spec.select.i = select i1 %cmp33.i, i32 4, i32 0
  br label %num_bytes_in_utf8_sequence.exit

num_bytes_in_utf8_sequence.exit:                  ; preds = %TaintCheck.succeeded, %lor.lhs.false5.i, %if.else.i, %if.else18.i, %if.else24.i, %if.else30.i
  %call277 = phi i32 [ %spec.select.i, %if.else30.i ], [ 0, %TaintCheck.succeeded ], [ 0, %lor.lhs.false5.i ], [ 1, %if.else.i ], [ 2, %if.else18.i ], [ 3, %if.else24.i ]
  %SandMem.TaintCheck1 = icmp ult i64 %4, %2
  br i1 %SandMem.TaintCheck1, label %TaintCheck.succeeded5, label %wasm.trap.fail2

wasm.trap.fail2:                                  ; preds = %num_bytes_in_utf8_sequence.exit
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded5:                            ; preds = %num_bytes_in_utf8_sequence.exit
  %10 = add i64 %5, %4
  %11 = inttoptr i64 %10 to i32*
  store i32 %call277, i32* %11, align 4, !tbaa !5
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck6 = icmp ult i64 %4, %13
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded10, label %wasm.trap.fail7

wasm.trap.fail7:                                  ; preds = %TaintCheck.succeeded5
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded10:                           ; preds = %TaintCheck.succeeded5
  %14 = add i64 %12, %4
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4, !tbaa !5
  switch i32 %16, label %cleanup [
    i32 1, label %if.then
    i32 2, label %land.lhs.true
    i32 3, label %land.lhs.true58
    i32 4, label %land.lhs.true117
  ]

if.then:                                          ; preds = %TaintCheck.succeeded10
  %SandMem.TaintCheck11 = icmp ult i64 %1, %13
  br i1 %SandMem.TaintCheck11, label %if.end229, label %wasm.trap.fail12

wasm.trap.fail12:                                 ; preds = %if.then
  tail call void @llvm.trap()
  unreachable

land.lhs.true:                                    ; preds = %TaintCheck.succeeded10
  %SandMem.TaintCheck24 = icmp ult i64 %1, %13
  br i1 %SandMem.TaintCheck24, label %TaintCheck.succeeded28, label %wasm.trap.fail25

wasm.trap.fail25:                                 ; preds = %land.lhs.true
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded28:                           ; preds = %land.lhs.true
  %17 = add i64 %12, %1
  %18 = inttoptr i64 %17 to i8*
  %arrayidx29 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx29, align 1, !tbaa !2
  %conv30 = zext i8 %19 to i32
  %and = and i32 %conv30, 192
  %cmp31 = icmp eq i32 %and, 128
  br i1 %cmp31, label %TaintCheck.succeeded46, label %cleanup

TaintCheck.succeeded46:                           ; preds = %TaintCheck.succeeded28
  %20 = load i8, i8* %18, align 4, !tbaa !2
  %21 = and i8 %20, 31
  %and41 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %and41, 6
  %and49 = and i32 %conv30, 63
  %or = or i32 %shl, %and49
  br label %if.end192

land.lhs.true58:                                  ; preds = %TaintCheck.succeeded10
  %SandMem.TaintCheck59 = icmp ult i64 %1, %13
  br i1 %SandMem.TaintCheck59, label %TaintCheck.succeeded63, label %wasm.trap.fail60

wasm.trap.fail60:                                 ; preds = %land.lhs.true58
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded63:                           ; preds = %land.lhs.true58
  %22 = add i64 %12, %1
  %23 = inttoptr i64 %22 to i8*
  %arrayidx64 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx64, align 1, !tbaa !2
  %conv65 = zext i8 %24 to i32
  %and66 = and i32 %conv65, 192
  %cmp67 = icmp eq i32 %and66, 128
  br i1 %cmp67, label %TaintCheck.succeeded74, label %cleanup

TaintCheck.succeeded74:                           ; preds = %TaintCheck.succeeded63
  %arrayidx75 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %arrayidx75, align 2, !tbaa !2
  %conv76 = zext i8 %25 to i32
  %and77 = and i32 %conv76, 192
  %cmp78 = icmp eq i32 %and77, 128
  br i1 %cmp78, label %TaintCheck.succeeded104, label %cleanup

TaintCheck.succeeded104:                          ; preds = %TaintCheck.succeeded74
  %26 = load i8, i8* %23, align 4, !tbaa !2
  %27 = and i8 %26, 15
  %and88 = zext i8 %27 to i32
  %28 = shl nuw nsw i32 %and88, 12
  %and97 = shl nuw nsw i32 %conv65, 6
  %29 = and i32 %and97, 4032
  %and107 = and i32 %conv76, 63
  %shl99 = or i32 %and107, %29
  %or108 = or i32 %shl99, %28
  br label %if.end192

land.lhs.true117:                                 ; preds = %TaintCheck.succeeded10
  %SandMem.TaintCheck118 = icmp ult i64 %1, %13
  br i1 %SandMem.TaintCheck118, label %TaintCheck.succeeded122, label %wasm.trap.fail119

wasm.trap.fail119:                                ; preds = %land.lhs.true117
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded122:                          ; preds = %land.lhs.true117
  %30 = add i64 %12, %1
  %31 = inttoptr i64 %30 to i8*
  %arrayidx123 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx123, align 1, !tbaa !2
  %conv124 = zext i8 %32 to i32
  %and125 = and i32 %conv124, 192
  %cmp126 = icmp eq i32 %and125, 128
  br i1 %cmp126, label %TaintCheck.succeeded133, label %cleanup

TaintCheck.succeeded133:                          ; preds = %TaintCheck.succeeded122
  %arrayidx134 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %arrayidx134, align 2, !tbaa !2
  %conv135 = zext i8 %33 to i32
  %and136 = and i32 %conv135, 192
  %cmp137 = icmp eq i32 %and136, 128
  br i1 %cmp137, label %TaintCheck.succeeded144, label %cleanup

TaintCheck.succeeded144:                          ; preds = %TaintCheck.succeeded133
  %arrayidx145 = getelementptr inbounds i8, i8* %31, i64 3
  %34 = load i8, i8* %arrayidx145, align 1, !tbaa !2
  %conv146 = zext i8 %34 to i32
  %and147 = and i32 %conv146, 192
  %cmp148 = icmp eq i32 %and147, 128
  br i1 %cmp148, label %TaintCheck.succeeded184, label %cleanup

TaintCheck.succeeded184:                          ; preds = %TaintCheck.succeeded144
  %35 = load i8, i8* %31, align 4, !tbaa !2
  %36 = and i8 %35, 7
  %and158 = zext i8 %36 to i32
  %and167 = shl nuw nsw i32 %conv124, 6
  %37 = and i32 %and167, 4032
  %and177 = and i32 %conv135, 63
  %shl169 = or i32 %and177, %37
  %38 = shl nuw nsw i32 %and158, 18
  %39 = shl nuw nsw i32 %shl169, 6
  %shl179 = or i32 %38, %39
  %and187 = and i32 %conv146, 63
  %or188 = or i32 %shl179, %and187
  br label %if.end192

if.end192:                                        ; preds = %TaintCheck.succeeded46, %TaintCheck.succeeded184, %TaintCheck.succeeded104
  %cp.0 = phi i32 [ %or, %TaintCheck.succeeded46 ], [ %or108, %TaintCheck.succeeded104 ], [ %or188, %TaintCheck.succeeded184 ]
  %cmp193 = icmp ult i32 %cp.0, 128
  br i1 %cmp193, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end192
  %cmp203 = icmp ult i32 %cp.0, 2048
  br i1 %cmp203, label %TaintCheck.succeeded210, label %lor.lhs.false213

TaintCheck.succeeded210:                          ; preds = %lor.lhs.false
  %cmp211 = icmp sgt i32 %16, 2
  br i1 %cmp211, label %cleanup, label %if.end229

lor.lhs.false213:                                 ; preds = %lor.lhs.false
  %cmp214 = icmp ult i32 %cp.0, 65536
  br i1 %cmp214, label %TaintCheck.succeeded221, label %if.end225

TaintCheck.succeeded221:                          ; preds = %lor.lhs.false213
  %cmp222 = icmp sgt i32 %16, 3
  br i1 %cmp222, label %cleanup, label %if.end229

if.end225:                                        ; preds = %lor.lhs.false213
  %cmp226.old = icmp ugt i32 %cp.0, 1114111
  br i1 %cmp226.old, label %cleanup, label %if.end229

if.end229:                                        ; preds = %TaintCheck.succeeded210, %if.then, %TaintCheck.succeeded221, %if.end225
  %cp.0284 = phi i32 [ %cp.0, %TaintCheck.succeeded221 ], [ %cp.0, %if.end225 ], [ 0, %if.then ], [ %cp.0, %TaintCheck.succeeded210 ]
  %40 = and i32 %cp.0284, -2048
  %41 = icmp ne i32 %40, 55296
  %spec.select = zext i1 %41 to i32
  ret i32 %spec.select

cleanup:                                          ; preds = %if.end192, %TaintCheck.succeeded10, %TaintCheck.succeeded28, %TaintCheck.succeeded74, %TaintCheck.succeeded63, %if.end225, %TaintCheck.succeeded210, %TaintCheck.succeeded221, %TaintCheck.succeeded122, %TaintCheck.succeeded133, %TaintCheck.succeeded144
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @is_decimal(i8* %string, i64 %length) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %string to i64
  %1 = and i64 %0, 4294967295
  %cmp = icmp ugt i64 %length, 1
  br i1 %cmp, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %2
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %land.lhs.true
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %land.lhs.true
  %3 = load i64, i64* @sbxHeap, align 8
  %4 = add i64 %3, %1
  %5 = inttoptr i64 %4 to i8*
  %6 = load i8, i8* %5, align 4, !tbaa !2
  %cmp1 = icmp eq i8 %6, 48
  br i1 %cmp1, label %TaintCheck.succeeded8, label %if.end

TaintCheck.succeeded8:                            ; preds = %TaintCheck.succeeded
  %arrayidx9 = getelementptr inbounds i8, i8* %5, i64 1
  %7 = load i8, i8* %arrayidx9, align 1, !tbaa !2
  %cmp11.not = icmp eq i8 %7, 46
  br i1 %cmp11.not, label %if.end, label %return

if.end:                                           ; preds = %TaintCheck.succeeded8, %TaintCheck.succeeded
  %cmp13 = icmp ugt i64 %length, 2
  br i1 %cmp13, label %TaintCheck.succeeded20, label %if.end32

TaintCheck.succeeded20:                           ; preds = %if.end
  %call = tail call i32 @t_strncmp(i8* nonnull %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true21, label %if.end32

land.lhs.true21:                                  ; preds = %TaintCheck.succeeded20
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck22 = icmp ult i64 %1, %8
  br i1 %SandMem.TaintCheck22, label %TaintCheck.succeeded26, label %wasm.trap.fail23

wasm.trap.fail23:                                 ; preds = %land.lhs.true21
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded26:                           ; preds = %land.lhs.true21
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to i8*
  %arrayidx27 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx27, align 2, !tbaa !2
  %cmp29.not = icmp eq i8 %12, 46
  br i1 %cmp29.not, label %if.end32, label %return

if.end32:                                         ; preds = %entry, %TaintCheck.succeeded26, %TaintCheck.succeeded20, %if.end
  %13 = load i64, i64* @sbxHeapRange, align 8
  %SbxHeapRangePlusMaxIndex = add nsw i64 %1, -1
  %SandMem.TaintCheck53 = icmp ult i64 %SbxHeapRangePlusMaxIndex, %13
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck53) #16
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck34 = icmp ult i64 %1, %14
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %1
  %17 = inttoptr i64 %16 to i8*
  br label %while.cond

while.cond:                                       ; preds = %TaintCheck.succeeded38, %if.end32
  %length.addr.0 = phi i64 [ %length, %if.end32 ], [ %dec, %TaintCheck.succeeded38 ]
  %dec = add i64 %length.addr.0, -1
  %tobool33.not = icmp eq i64 %length.addr.0, 0
  br i1 %tobool33.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  br i1 %SandMem.TaintCheck34, label %TaintCheck.succeeded38, label %wasm.trap.fail35

wasm.trap.fail35:                                 ; preds = %while.body
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded38:                           ; preds = %while.body
  %arrayidx39 = getelementptr inbounds i8, i8* %17, i64 %dec
  %18 = load i8, i8* %arrayidx39, align 1, !tbaa !2
  %conv40 = sext i8 %18 to i32
  %memchr = tail call i8* @memchr(i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %conv40, i64 3)
  %tobool42.not = icmp eq i8* %memchr, null
  br i1 %tobool42.not, label %while.cond, label %return, !llvm.loop !7

return:                                           ; preds = %while.cond, %TaintCheck.succeeded38, %TaintCheck.succeeded26, %TaintCheck.succeeded8
  %retval.0 = phi i32 [ 0, %TaintCheck.succeeded8 ], [ 0, %TaintCheck.succeeded26 ], [ 1, %while.cond ], [ 0, %TaintCheck.succeeded38 ]
  ret i32 %retval.0
}

declare dso_local i32 @t_strncmp(i8*, i8*, i64) local_unnamed_addr #3

declare void @c_licm_verify_addr(i64, i64, i64) local_unnamed_addr

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_addn(%Tstruct.json_object_t_t* %object, i8* %name, i64 %name_len, %Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %6 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %7 = and i64 %6, 4294967295
  %8 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %8, 0
  %cmp1 = icmp eq i64 %4, 0
  %or.cond = or i1 %cmp, %cmp1
  %9 = trunc i64 %6 to i32
  %cmp3 = icmp eq i32 %9, 0
  %or.cond117 = or i1 %or.cond, %cmp3
  br i1 %or.cond117, label %cleanup90, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %2, i8* %5, i64 %name_len)
  %10 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %11 = trunc i64 %10 to i32
  %cmp4.not = icmp eq i32 %11, 0
  br i1 %cmp4.not, label %if.end6, label %cleanup90

if.end6:                                          ; preds = %if.end
  %12 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %12
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end6
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end6
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = add i64 %13, %1
  %15 = inttoptr i64 %14 to %Tstruct.json_object_t_t*
  %count = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %15, i64 0, i32 3
  %16 = load i64, i64* %count, align 8, !tbaa !9
  %capacity = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %15, i64 0, i32 4
  %17 = load i64, i64* %capacity, align 8, !tbaa !13
  %cmp12.not = icmp ult i64 %16, %17
  br i1 %cmp12.not, label %if.end32, label %TaintCheck.succeeded18

TaintCheck.succeeded18:                           ; preds = %TaintCheck.succeeded
  %mul = shl i64 %17, 1
  %cmp20 = icmp ugt i64 %mul, 16
  %cond = select i1 %cmp20, i64 %mul, i64 16
  %call28 = tail call i32 @json_object_resize(%Tstruct.json_object_t_t* %2, i64 %cond)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %cleanup90, label %TaintCheck.succeeded18.if.end32_crit_edge

TaintCheck.succeeded18.if.end32_crit_edge:        ; preds = %TaintCheck.succeeded18
  %.pre = load i64, i64* @sbxHeapRange, align 8
  br label %if.end32

if.end32:                                         ; preds = %TaintCheck.succeeded18.if.end32_crit_edge, %TaintCheck.succeeded
  %18 = phi i64 [ %.pre, %TaintCheck.succeeded18.if.end32_crit_edge ], [ %12, %TaintCheck.succeeded ]
  %SandMem.TaintCheck33 = icmp ult i64 %1, %18
  br i1 %SandMem.TaintCheck33, label %TaintCheck.succeeded37, label %wasm.trap.fail34

wasm.trap.fail34:                                 ; preds = %if.end32
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded37:                           ; preds = %if.end32
  %19 = load i64, i64* @sbxHeap, align 8
  %20 = add i64 %19, %1
  %21 = inttoptr i64 %20 to %Tstruct.json_object_t_t*
  %count38 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %21, i64 0, i32 3
  %22 = load i64, i64* %count38, align 8, !tbaa !9
  %call39 = tail call i8* @tainted_parson_strndup(i8* %5, i64 %name_len)
  %23 = ptrtoint i8* %call39 to i64
  %24 = load i64, i64* @sbxHeap, align 8
  %25 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck41 = icmp ult i64 %1, %25
  br i1 %SandMem.TaintCheck41, label %TaintCheck.succeeded45, label %wasm.trap.fail42

wasm.trap.fail42:                                 ; preds = %TaintCheck.succeeded37
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded45:                           ; preds = %TaintCheck.succeeded37
  %26 = add i64 %24, %1
  %27 = inttoptr i64 %26 to %Tstruct.json_object_t_t*
  %names = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %27, i64 0, i32 1
  %28 = load i8**, i8*** %names, align 4, !tbaa !14
  %29 = ptrtoint i8** %28 to i64
  %30 = and i64 %29, 4294967295
  %SandMem.TaintCheck46 = icmp ult i64 %30, %25
  br i1 %SandMem.TaintCheck46, label %TaintCheck.succeeded50, label %wasm.trap.fail47

wasm.trap.fail47:                                 ; preds = %TaintCheck.succeeded45
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded50:                           ; preds = %TaintCheck.succeeded45
  %31 = add i64 %30, %24
  %32 = inttoptr i64 %31 to i8**
  %arrayidx = getelementptr inbounds i8*, i8** %32, i64 %22
  %33 = and i64 %23, 4294967295
  %34 = bitcast i8** %arrayidx to i64*
  store i64 %33, i64* %34, align 4, !tbaa !15
  %35 = load i64, i64* @sbxHeap, align 8
  %36 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck51 = icmp ult i64 %1, %36
  br i1 %SandMem.TaintCheck51, label %TaintCheck.succeeded55, label %wasm.trap.fail52

wasm.trap.fail52:                                 ; preds = %TaintCheck.succeeded50
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded55:                           ; preds = %TaintCheck.succeeded50
  %37 = add i64 %35, %1
  %38 = inttoptr i64 %37 to %Tstruct.json_object_t_t*
  %names56 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %38, i64 0, i32 1
  %39 = load i8**, i8*** %names56, align 4, !tbaa !14
  %40 = ptrtoint i8** %39 to i64
  %41 = and i64 %40, 4294967295
  %SandMem.TaintCheck57 = icmp ult i64 %41, %36
  br i1 %SandMem.TaintCheck57, label %TaintCheck.succeeded61, label %wasm.trap.fail58

wasm.trap.fail58:                                 ; preds = %TaintCheck.succeeded55
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded61:                           ; preds = %TaintCheck.succeeded55
  %42 = add i64 %41, %35
  %43 = inttoptr i64 %42 to i8**
  %arrayidx62 = getelementptr inbounds i8*, i8** %43, i64 %22
  %44 = load i8*, i8** %arrayidx62, align 4, !tbaa !15
  %45 = ptrtoint i8* %44 to i64
  %46 = and i64 %45, 4294967295
  %cmp63 = icmp eq i64 %46, 0
  br i1 %cmp63, label %cleanup90, label %json_object_get_wrapping_value.exit

json_object_get_wrapping_value.exit:              ; preds = %TaintCheck.succeeded61
  %SandMem.TaintCheck68 = icmp ult i64 %7, %36
  br i1 %SandMem.TaintCheck68, label %TaintCheck.succeeded72, label %wasm.trap.fail69

wasm.trap.fail69:                                 ; preds = %json_object_get_wrapping_value.exit
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded72:                           ; preds = %json_object_get_wrapping_value.exit
  %wrapping_value.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %38, i64 0, i32 0
  %47 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %wrapping_value.i, align 4, !tbaa !16
  %48 = add i64 %35, %7
  %49 = ptrtoint %Tstruct.json_value_t_t* %47 to i64
  %50 = and i64 %49, 4294967295
  %51 = inttoptr i64 %48 to i64*
  store i64 %50, i64* %51, align 4, !tbaa !17
  %52 = load i64, i64* @sbxHeap, align 8
  %53 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck73 = icmp ult i64 %1, %53
  br i1 %SandMem.TaintCheck73, label %TaintCheck.succeeded77, label %wasm.trap.fail74

wasm.trap.fail74:                                 ; preds = %TaintCheck.succeeded72
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded77:                           ; preds = %TaintCheck.succeeded72
  %54 = add i64 %52, %1
  %55 = inttoptr i64 %54 to %Tstruct.json_object_t_t*
  %values = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %55, i64 0, i32 2
  %56 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values, align 4, !tbaa !21
  %57 = ptrtoint %Tstruct.json_value_t_t** %56 to i64
  %58 = and i64 %57, 4294967295
  %SandMem.TaintCheck78 = icmp ult i64 %58, %53
  br i1 %SandMem.TaintCheck78, label %TaintCheck.succeeded82, label %wasm.trap.fail79

wasm.trap.fail79:                                 ; preds = %TaintCheck.succeeded77
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded82:                           ; preds = %TaintCheck.succeeded77
  %59 = add i64 %58, %52
  %60 = inttoptr i64 %59 to %Tstruct.json_value_t_t**
  %arrayidx83 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %60, i64 %22
  %61 = bitcast %Tstruct.json_value_t_t** %arrayidx83 to i64*
  store i64 %7, i64* %61, align 4, !tbaa !15
  %62 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck84 = icmp ult i64 %1, %62
  br i1 %SandMem.TaintCheck84, label %TaintCheck.succeeded88, label %wasm.trap.fail85

wasm.trap.fail85:                                 ; preds = %TaintCheck.succeeded82
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded88:                           ; preds = %TaintCheck.succeeded82
  %63 = load i64, i64* @sbxHeap, align 8
  %64 = add i64 %63, %1
  %65 = inttoptr i64 %64 to %Tstruct.json_object_t_t*
  %count89 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %65, i64 0, i32 3
  %66 = load i64, i64* %count89, align 8, !tbaa !9
  %inc = add i64 %66, 1
  store i64 %inc, i64* %count89, align 8, !tbaa !9
  br label %cleanup90

cleanup90:                                        ; preds = %TaintCheck.succeeded61, %if.end, %entry, %TaintCheck.succeeded18, %TaintCheck.succeeded88
  %retval.1 = phi i32 [ 0, %TaintCheck.succeeded88 ], [ -1, %TaintCheck.succeeded18 ], [ -1, %entry ], [ -1, %if.end ], [ -1, %TaintCheck.succeeded61 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define internal fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %object, i8* %name, i64 %name_len) unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %name to i64
  %3 = and i64 %2, 4294967295
  %4 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %4, 0
  %5 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %5
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = add i64 %6, %1
  %8 = inttoptr i64 %7 to %Tstruct.json_object_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %8, i64 0, i32 3
  %names = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %8, i64 0, i32 1
  %SandMem.TaintCheck30 = icmp ult i64 %3, %5
  %9 = add i64 %6, %3
  %10 = inttoptr i64 %9 to i8*
  %11 = load i64, i64* @sbxHeapRange, align 8
  br i1 %tobool.not.i, label %cleanup, label %cond.true.i

cond.true.i:                                      ; preds = %entry, %for.inc
  %i.0100 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  br i1 %SandMem.TaintCheck.i, label %json_object_get_count.exit.thread, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_object_get_count.exit.thread:                ; preds = %cond.true.i
  %12 = load i64, i64* %count.i, align 8, !tbaa !9
  %cmp85 = icmp ult i64 %i.0100, %12
  br i1 %cmp85, label %TaintCheck.succeeded, label %cleanup

TaintCheck.succeeded:                             ; preds = %json_object_get_count.exit.thread
  %13 = load i8**, i8*** %names, align 4, !tbaa !14
  %14 = ptrtoint i8** %13 to i64
  %15 = and i64 %14, 4294967295
  %SbxHeapRangePlusMaxIndex = add i64 %15, %i.0100
  %SandMem.TaintCheck72 = icmp ult i64 %SbxHeapRangePlusMaxIndex, %11
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck72) #16
  %SandMem.TaintCheck1 = icmp ult i64 %15, %5
  br i1 %SandMem.TaintCheck1, label %TaintCheck.succeeded5, label %wasm.trap.fail2

wasm.trap.fail2:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded
  %16 = add i64 %6, %15
  %17 = inttoptr i64 %16 to i8**
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %i.0100
  %18 = load i8*, i8** %arrayidx, align 4, !tbaa !15
  %19 = ptrtoint i8* %18 to i64
  %20 = and i64 %19, 4294967295
  %SandMem.TaintCheck6 = icmp ult i64 %20, %5
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded10, label %wasm.trap.fail7

wasm.trap.fail7:                                  ; preds = %TaintCheck.succeeded5
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded10:                           ; preds = %TaintCheck.succeeded5
  %21 = add i64 %20, %6
  %22 = inttoptr i64 %21 to i8*
  %call11 = tail call i64 @t_strlen(i8* %22) #16
  %cmp12.not = icmp eq i64 %call11, %name_len
  br i1 %cmp12.not, label %TaintCheck.succeeded17, label %for.inc

TaintCheck.succeeded17:                           ; preds = %TaintCheck.succeeded10
  %23 = load i8**, i8*** %names, align 4, !tbaa !14
  %24 = ptrtoint i8** %23 to i64
  %25 = and i64 %24, 4294967295
  %SbxHeapRangePlusMaxIndex73 = add i64 %25, %i.0100
  %SandMem.TaintCheck74 = icmp ult i64 %SbxHeapRangePlusMaxIndex73, %11
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck74) #16
  %SandMem.TaintCheck19 = icmp ult i64 %25, %5
  br i1 %SandMem.TaintCheck19, label %TaintCheck.succeeded23, label %wasm.trap.fail20

wasm.trap.fail20:                                 ; preds = %TaintCheck.succeeded17
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded23:                           ; preds = %TaintCheck.succeeded17
  %26 = add i64 %6, %25
  %27 = inttoptr i64 %26 to i8**
  %arrayidx24 = getelementptr inbounds i8*, i8** %27, i64 %i.0100
  %28 = load i8*, i8** %arrayidx24, align 4, !tbaa !15
  %29 = ptrtoint i8* %28 to i64
  %30 = and i64 %29, 4294967295
  %SandMem.TaintCheck25 = icmp ult i64 %30, %5
  br i1 %SandMem.TaintCheck25, label %TaintCheck.succeeded29, label %wasm.trap.fail26

wasm.trap.fail26:                                 ; preds = %TaintCheck.succeeded23
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded29:                           ; preds = %TaintCheck.succeeded23
  br i1 %SandMem.TaintCheck30, label %TaintCheck.succeeded34, label %wasm.trap.fail31

wasm.trap.fail31:                                 ; preds = %TaintCheck.succeeded29
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded34:                           ; preds = %TaintCheck.succeeded29
  %31 = add i64 %30, %6
  %32 = inttoptr i64 %31 to i8*
  %call35 = tail call i32 @t_strncmp(i8* %32, i8* %10, i64 %name_len) #16
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %for.inc

if.then37:                                        ; preds = %TaintCheck.succeeded34
  %33 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck38 = icmp ult i64 %1, %33
  br i1 %SandMem.TaintCheck38, label %TaintCheck.succeeded42, label %wasm.trap.fail39

wasm.trap.fail39:                                 ; preds = %if.then37
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded42:                           ; preds = %if.then37
  %34 = load i64, i64* @sbxHeap, align 8
  %35 = add i64 %34, %1
  %36 = inttoptr i64 %35 to %Tstruct.json_object_t_t*
  %values = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %36, i64 0, i32 2
  %37 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values, align 4, !tbaa !21
  %38 = ptrtoint %Tstruct.json_value_t_t** %37 to i64
  tail call void @c_licm_verify_addr(i64 %38, i64 %i.0100, i64 8) #16
  %39 = load i64, i64* @sbxHeapRange, align 8
  %40 = and i64 %38, 4294967295
  %SandMem.TaintCheck43 = icmp ult i64 %40, %39
  br i1 %SandMem.TaintCheck43, label %TaintCheck.succeeded47, label %wasm.trap.fail44

wasm.trap.fail44:                                 ; preds = %TaintCheck.succeeded42
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded47:                           ; preds = %TaintCheck.succeeded42
  %41 = load i64, i64* @sbxHeap, align 8
  %42 = add i64 %41, %40
  %43 = inttoptr i64 %42 to %Tstruct.json_value_t_t**
  %arrayidx48 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %43, i64 %i.0100
  %44 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx48, align 4, !tbaa !15
  br label %cleanup

for.inc:                                          ; preds = %TaintCheck.succeeded34, %TaintCheck.succeeded10
  %inc = add nuw i64 %i.0100, 1
  br i1 %tobool.not.i, label %cleanup, label %cond.true.i, !llvm.loop !22

cleanup:                                          ; preds = %json_object_get_count.exit.thread, %for.inc, %entry, %TaintCheck.succeeded47
  %retval.0 = phi %Tstruct.json_value_t_t* [ %44, %TaintCheck.succeeded47 ], [ null, %entry ], [ null, %for.inc ], [ null, %json_object_get_count.exit.thread ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_resize(%Tstruct.json_object_t_t* %object, i64 %new_capacity) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %2
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %entry
  %3 = load i64, i64* @sbxHeap, align 8
  %4 = add i64 %3, %1
  %5 = inttoptr i64 %4 to %Tstruct.json_object_t_t*
  %names = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %5, i64 0, i32 1
  %6 = load i8**, i8*** %names, align 4, !tbaa !14
  %7 = ptrtoint i8** %6 to i64
  %8 = trunc i64 %7 to i32
  %cmp = icmp eq i32 %8, 0
  %values = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %5, i64 0, i32 2
  %9 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values, align 4, !tbaa !21
  %10 = ptrtoint %Tstruct.json_value_t_t** %9 to i64
  %11 = trunc i64 %10 to i32
  br i1 %cmp, label %TaintCheck.succeeded5, label %TaintCheck.succeeded19

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded
  %cmp6.not = icmp ne i32 %11, 0
  %cmp23.old = icmp eq i64 %new_capacity, 0
  %or.cond259 = or i1 %cmp23.old, %cmp6.not
  br i1 %or.cond259, label %cleanup218.thread, label %if.end

TaintCheck.succeeded19:                           ; preds = %TaintCheck.succeeded
  %cmp21 = icmp eq i32 %11, 0
  %cmp23 = icmp eq i64 %new_capacity, 0
  %or.cond = or i1 %cmp23, %cmp21
  br i1 %or.cond, label %cleanup218.thread, label %if.end

if.end:                                           ; preds = %TaintCheck.succeeded5, %TaintCheck.succeeded19
  %mul = shl i64 %new_capacity, 3
  %call = tail call i8* @t_malloc(i64 %mul) #16
  %12 = ptrtoint i8* %call to i64
  %13 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %13, i64* @sbxHeapRange, align 8
  %14 = and i64 %12, 4294967295
  %15 = inttoptr i64 %14 to i8**
  %16 = trunc i64 %12 to i32
  %cmp24 = icmp eq i32 %16, 0
  br i1 %cmp24, label %cleanup218.thread, label %if.end26

if.end26:                                         ; preds = %if.end
  %call28 = tail call i8* @t_malloc(i64 %mul) #16
  %17 = ptrtoint i8* %call28 to i64
  %18 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %18, i64* @sbxHeapRange, align 8
  %19 = and i64 %17, 4294967295
  %20 = trunc i64 %17 to i32
  %cmp30 = icmp eq i32 %20, 0
  br i1 %cmp30, label %IsoHeap.subsumption, label %if.end46

IsoHeap.subsumption:                              ; preds = %if.end26
  %IsoHeap.non_null.not = icmp eq i64 %14, 0
  br i1 %IsoHeap.non_null.not, label %TaintCheck.failed33, label %TaintCheck.succeeded34

TaintCheck.succeeded34:                           ; preds = %IsoHeap.subsumption
  %add.ptr = getelementptr inbounds i8*, i8** %15, i64 1
  %21 = ptrtoint i8** %add.ptr to i64
  %22 = trunc i64 %21 to i32
  %IsoHeap.upper.not = icmp ugt i32 %16, %22
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed40, label %IsoHeap.success

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded34
  %SandMem.TaintCheck41 = icmp ult i64 %14, %18
  br i1 %SandMem.TaintCheck41, label %TaintCheck.succeeded45, label %wasm.trap.fail42

TaintCheck.failed33:                              ; preds = %IsoHeap.subsumption
  tail call void @llvm.trap() #17
  unreachable

TaintCheck.failed40:                              ; preds = %TaintCheck.succeeded34
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail42:                                 ; preds = %IsoHeap.success
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded45:                           ; preds = %IsoHeap.success
  %23 = load i64, i64* @sbxHeap, align 8
  %24 = add i64 %23, %14
  %25 = inttoptr i64 %24 to i8*
  tail call void @t_free(i8* %25) #16
  %26 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %26, i64* @sbxHeapRange, align 8
  br label %cleanup218.thread

if.end46:                                         ; preds = %if.end26
  %27 = load i64, i64* @sbxHeap, align 8
  %SandMem.TaintCheck47 = icmp ult i64 %1, %18
  br i1 %SandMem.TaintCheck47, label %TaintCheck.succeeded51, label %wasm.trap.fail48

wasm.trap.fail48:                                 ; preds = %if.end46
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded51:                           ; preds = %if.end46
  %28 = add i64 %27, %1
  %29 = inttoptr i64 %28 to %Tstruct.json_object_t_t*
  %names52 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %29, i64 0, i32 1
  %30 = load i8**, i8*** %names52, align 4, !tbaa !14
  %31 = ptrtoint i8** %30 to i64
  %32 = trunc i64 %31 to i32
  %cmp53.not = icmp eq i32 %32, 0
  br i1 %cmp53.not, label %if.end120, label %TaintCheck.succeeded59

TaintCheck.succeeded59:                           ; preds = %TaintCheck.succeeded51
  %values60 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %29, i64 0, i32 2
  %33 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values60, align 4, !tbaa !21
  %34 = ptrtoint %Tstruct.json_value_t_t** %33 to i64
  %35 = trunc i64 %34 to i32
  %cmp61.not = icmp eq i32 %35, 0
  br i1 %cmp61.not, label %if.end120, label %TaintCheck.succeeded67

TaintCheck.succeeded67:                           ; preds = %TaintCheck.succeeded59
  %count = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %29, i64 0, i32 3
  %36 = load i64, i64* %count, align 8, !tbaa !9
  %cmp68.not = icmp eq i64 %36, 0
  br i1 %cmp68.not, label %if.end120, label %TaintCheck.succeeded80

TaintCheck.succeeded80:                           ; preds = %TaintCheck.succeeded67
  %mul82 = shl i64 %36, 3
  %SandMem.TaintCheck83 = icmp ult i64 %14, %18
  br i1 %SandMem.TaintCheck83, label %TaintCheck.succeeded87, label %wasm.trap.fail84

wasm.trap.fail84:                                 ; preds = %TaintCheck.succeeded80
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded87:                           ; preds = %TaintCheck.succeeded80
  %37 = and i64 %31, 4294967295
  %SandMem.TaintCheck88 = icmp ult i64 %37, %18
  br i1 %SandMem.TaintCheck88, label %TaintCheck.succeeded92, label %wasm.trap.fail89

wasm.trap.fail89:                                 ; preds = %TaintCheck.succeeded87
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded92:                           ; preds = %TaintCheck.succeeded87
  %38 = add i64 %37, %27
  %39 = add i64 %27, %14
  %40 = inttoptr i64 %39 to i8*
  %41 = inttoptr i64 %38 to i8*
  %call93 = tail call i8* @t_memcpy(i8* %40, i8* %41, i64 %mul82) #16
  %42 = load i64, i64* @sbxHeap, align 8
  %43 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck95 = icmp ult i64 %1, %43
  br i1 %SandMem.TaintCheck95, label %TaintCheck.succeeded99, label %wasm.trap.fail96

wasm.trap.fail96:                                 ; preds = %TaintCheck.succeeded92
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded99:                           ; preds = %TaintCheck.succeeded92
  %44 = add i64 %42, %1
  %45 = inttoptr i64 %44 to %Tstruct.json_object_t_t*
  %count106 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %45, i64 0, i32 3
  %46 = load i64, i64* %count106, align 8, !tbaa !9
  %mul107 = shl i64 %46, 3
  %SandMem.TaintCheck108 = icmp ult i64 %19, %43
  br i1 %SandMem.TaintCheck108, label %TaintCheck.succeeded112, label %wasm.trap.fail109

wasm.trap.fail109:                                ; preds = %TaintCheck.succeeded99
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded112:                          ; preds = %TaintCheck.succeeded99
  %values100 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %45, i64 0, i32 2
  %47 = bitcast %Tstruct.json_value_t_t*** %values100 to i8**
  %48 = load i8*, i8** %47, align 4, !tbaa !21
  %49 = ptrtoint i8* %48 to i64
  %50 = and i64 %49, 4294967295
  %SandMem.TaintCheck113 = icmp ult i64 %50, %43
  br i1 %SandMem.TaintCheck113, label %TaintCheck.succeeded117, label %wasm.trap.fail114

wasm.trap.fail114:                                ; preds = %TaintCheck.succeeded112
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded117:                          ; preds = %TaintCheck.succeeded112
  %51 = add i64 %50, %42
  %52 = add i64 %42, %19
  %53 = inttoptr i64 %52 to i8*
  %54 = inttoptr i64 %51 to i8*
  %call118 = tail call i8* @t_memcpy(i8* %53, i8* %54, i64 %mul107) #16
  %.pre = load i64, i64* @sbxHeapRange, align 8
  br label %if.end120

if.end120:                                        ; preds = %TaintCheck.succeeded117, %TaintCheck.succeeded67, %TaintCheck.succeeded59, %TaintCheck.succeeded51
  %55 = phi i64 [ %.pre, %TaintCheck.succeeded117 ], [ %18, %TaintCheck.succeeded67 ], [ %18, %TaintCheck.succeeded59 ], [ %18, %TaintCheck.succeeded51 ]
  %SandMem.TaintCheck121 = icmp ult i64 %1, %55
  br i1 %SandMem.TaintCheck121, label %TaintCheck.succeeded125, label %wasm.trap.fail122

wasm.trap.fail122:                                ; preds = %if.end120
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded125:                          ; preds = %if.end120
  %56 = load i64, i64* @sbxHeap, align 8
  %57 = add i64 %56, %1
  %58 = inttoptr i64 %57 to %Tstruct.json_object_t_t*
  %names126 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %58, i64 0, i32 1
  %59 = load i8**, i8*** %names126, align 4, !tbaa !14
  %60 = ptrtoint i8** %59 to i64
  %61 = trunc i64 %60 to i32
  %IsoHeap.is_null127 = icmp eq i32 %61, 0
  br i1 %IsoHeap.is_null127, label %IsoHeap.success155, label %TaintCheck.succeeded145

TaintCheck.succeeded145:                          ; preds = %TaintCheck.succeeded125
  %add.ptr141 = getelementptr inbounds i8*, i8** %59, i64 1
  %62 = ptrtoint i8** %add.ptr141 to i64
  %63 = trunc i64 %62 to i32
  %IsoHeap.upper152.not = icmp ugt i32 %61, %63
  br i1 %IsoHeap.upper152.not, label %TaintCheck.failed154, label %IsoHeap.success155

IsoHeap.success155:                               ; preds = %TaintCheck.succeeded145, %TaintCheck.succeeded125
  %64 = and i64 %60, 4294967295
  %SandMem.TaintCheck156 = icmp ult i64 %64, %55
  br i1 %SandMem.TaintCheck156, label %TaintCheck.succeeded160, label %wasm.trap.fail157

TaintCheck.failed154:                             ; preds = %TaintCheck.succeeded145
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail157:                                ; preds = %IsoHeap.success155
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded160:                          ; preds = %IsoHeap.success155
  %65 = add i64 %64, %56
  %66 = inttoptr i64 %65 to i8*
  tail call void @t_free(i8* %66) #16
  %67 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %67, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck161 = icmp ult i64 %1, %67
  br i1 %SandMem.TaintCheck161, label %TaintCheck.succeeded165, label %wasm.trap.fail162

wasm.trap.fail162:                                ; preds = %TaintCheck.succeeded160
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded165:                          ; preds = %TaintCheck.succeeded160
  %68 = load i64, i64* @sbxHeap, align 8
  %69 = add i64 %68, %1
  %70 = inttoptr i64 %69 to %Tstruct.json_object_t_t*
  %values166 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %70, i64 0, i32 2
  %71 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values166, align 4, !tbaa !21
  %72 = ptrtoint %Tstruct.json_value_t_t** %71 to i64
  %73 = trunc i64 %72 to i32
  %IsoHeap.is_null167 = icmp eq i32 %73, 0
  br i1 %IsoHeap.is_null167, label %IsoHeap.success195, label %TaintCheck.succeeded185

TaintCheck.succeeded185:                          ; preds = %TaintCheck.succeeded165
  %add.ptr181 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %71, i64 1
  %74 = ptrtoint %Tstruct.json_value_t_t** %add.ptr181 to i64
  %75 = trunc i64 %74 to i32
  %IsoHeap.upper192.not = icmp ugt i32 %73, %75
  br i1 %IsoHeap.upper192.not, label %TaintCheck.failed194, label %IsoHeap.success195

IsoHeap.success195:                               ; preds = %TaintCheck.succeeded185, %TaintCheck.succeeded165
  %76 = and i64 %72, 4294967295
  %SandMem.TaintCheck196 = icmp ult i64 %76, %67
  br i1 %SandMem.TaintCheck196, label %TaintCheck.succeeded200, label %wasm.trap.fail197

TaintCheck.failed194:                             ; preds = %TaintCheck.succeeded185
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail197:                                ; preds = %IsoHeap.success195
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded200:                          ; preds = %IsoHeap.success195
  %77 = add i64 %76, %68
  %78 = inttoptr i64 %77 to i8*
  tail call void @t_free(i8* %78) #16
  %79 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %79, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck201 = icmp ult i64 %1, %79
  br i1 %SandMem.TaintCheck201, label %80, label %wasm.trap.fail202

wasm.trap.fail202:                                ; preds = %TaintCheck.succeeded200
  tail call void @llvm.trap()
  unreachable

80:                                               ; preds = %TaintCheck.succeeded200
  %81 = load i64, i64* @sbxHeap, align 8
  %82 = add i64 %81, %1
  %83 = inttoptr i64 %82 to %Tstruct.json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %83, i64 0, i32 4
  store i64 %new_capacity, i64* %capacity, align 8, !tbaa !13
  %names211 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %83, i64 0, i32 1
  %84 = bitcast i8*** %names211 to i64*
  store i64 %14, i64* %84, align 4, !tbaa !14
  %values217 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %83, i64 0, i32 2
  %85 = bitcast %Tstruct.json_value_t_t*** %values217 to i64*
  store i64 %19, i64* %85, align 4, !tbaa !21
  br label %cleanup218.thread

cleanup218.thread:                                ; preds = %TaintCheck.succeeded19, %TaintCheck.succeeded5, %TaintCheck.succeeded45, %if.end, %80
  %86 = phi i32 [ 0, %80 ], [ -1, %if.end ], [ -1, %TaintCheck.succeeded45 ], [ -1, %TaintCheck.succeeded5 ], [ -1, %TaintCheck.succeeded19 ]
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_object_get_wrapping_value(%Tstruct.json_object_t_t* %object) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %2
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %entry
  %3 = load i64, i64* @sbxHeap, align 8
  %4 = add i64 %3, %1
  %5 = inttoptr i64 %4 to %Tstruct.json_object_t_t*
  %wrapping_value = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %5, i64 0, i32 0
  %6 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %wrapping_value, align 4, !tbaa !16
  ret %Tstruct.json_value_t_t* %6
}

declare dso_local i8* @t_malloc(i64) local_unnamed_addr #3

declare i64 @c_fetch_sandbox_heap_bound() local_unnamed_addr

declare dso_local void @t_free(i8*) local_unnamed_addr #3

declare dso_local i8* @t_memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_remove_internal(%Tstruct.json_object_t_t* %object, i8* %name, i32 %free_value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %name to i64
  %3 = and i64 %2, 4294967295
  %4 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %cleanup, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %5 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %6 = inttoptr i64 %3 to i8*
  %7 = trunc i64 %2 to i32
  %cmp1.i = icmp eq i32 %7, 0
  br i1 %cmp1.i, label %json_object_get_value.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %3, %8
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to i8*
  %call.i = tail call i64 @t_strlen(i8* %11) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %5, i8* %6, i64 %call.i) #16
  %12 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %13 = and i64 %12, 4294967295
  %14 = inttoptr i64 %13 to %Tstruct.json_value_t_t*
  br label %json_object_get_value.exit

json_object_get_value.exit:                       ; preds = %lor.lhs.false.i, %TaintCheck.succeeded.i
  %retval.0.i = phi %Tstruct.json_value_t_t* [ %14, %TaintCheck.succeeded.i ], [ null, %lor.lhs.false.i ]
  %15 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i to i64
  %16 = and i64 %15, 4294967295
  %cmp1 = icmp eq i64 %16, 0
  br i1 %cmp1, label %cleanup, label %cond.true.i

cond.true.i:                                      ; preds = %json_object_get_value.exit
  %17 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i178 = icmp ult i64 %1, %17
  br i1 %SandMem.TaintCheck.i178, label %json_object_get_count.exit, label %wasm.trap.fail.i179

wasm.trap.fail.i179:                              ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_object_get_count.exit:                       ; preds = %cond.true.i
  %18 = load i64, i64* @sbxHeap, align 8
  %19 = add i64 %18, %1
  %20 = inttoptr i64 %19 to %Tstruct.json_object_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %20, i64 0, i32 3
  %21 = load i64, i64* %count.i, align 8, !tbaa !9
  %sub = add i64 %21, -1
  %count.i185 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %20, i64 0, i32 3
  %names = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %20, i64 0, i32 1
  %SandMem.TaintCheck15 = icmp ult i64 %3, %17
  %22 = add i64 %18, %3
  %23 = inttoptr i64 %22 to i8*
  %24 = load i64, i64* @sbxHeapRange, align 8
  br label %json_object_get_count.exit188

json_object_get_count.exit188:                    ; preds = %for.inc, %json_object_get_count.exit
  %i.0 = phi i64 [ 0, %json_object_get_count.exit ], [ %inc, %for.inc ]
  %25 = load i64, i64* %count.i185, align 8, !tbaa !9
  %cmp4 = icmp ult i64 %i.0, %25
  br i1 %cmp4, label %TaintCheck.succeeded, label %cleanup

TaintCheck.succeeded:                             ; preds = %json_object_get_count.exit188
  %26 = load i8**, i8*** %names, align 4, !tbaa !14
  %27 = ptrtoint i8** %26 to i64
  %28 = and i64 %27, 4294967295
  %SbxHeapRangePlusMaxIndex = add i64 %28, %i.0
  %SandMem.TaintCheck197 = icmp ult i64 %SbxHeapRangePlusMaxIndex, %24
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck197) #16
  %SandMem.TaintCheck5 = icmp ult i64 %28, %17
  br i1 %SandMem.TaintCheck5, label %TaintCheck.succeeded9, label %wasm.trap.fail6

wasm.trap.fail6:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded9:                            ; preds = %TaintCheck.succeeded
  %29 = add i64 %18, %28
  %30 = inttoptr i64 %29 to i8**
  %arrayidx = getelementptr inbounds i8*, i8** %30, i64 %i.0
  %31 = load i8*, i8** %arrayidx, align 4, !tbaa !15
  %32 = ptrtoint i8* %31 to i64
  %33 = and i64 %32, 4294967295
  %SandMem.TaintCheck10 = icmp ult i64 %33, %17
  br i1 %SandMem.TaintCheck10, label %TaintCheck.succeeded14, label %wasm.trap.fail11

wasm.trap.fail11:                                 ; preds = %TaintCheck.succeeded9
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded14:                           ; preds = %TaintCheck.succeeded9
  br i1 %SandMem.TaintCheck15, label %TaintCheck.succeeded19, label %wasm.trap.fail16

wasm.trap.fail16:                                 ; preds = %TaintCheck.succeeded14
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded19:                           ; preds = %TaintCheck.succeeded14
  %34 = add i64 %33, %18
  %35 = inttoptr i64 %34 to i8*
  %call20 = tail call i32 @t_strcmp(i8* %35, i8* %23) #16
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %for.inc

if.then22:                                        ; preds = %TaintCheck.succeeded19
  %36 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck23 = icmp ult i64 %1, %36
  br i1 %SandMem.TaintCheck23, label %TaintCheck.succeeded27, label %wasm.trap.fail24

wasm.trap.fail24:                                 ; preds = %if.then22
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded27:                           ; preds = %if.then22
  %37 = load i64, i64* @sbxHeap, align 8
  %38 = add i64 %37, %1
  %39 = inttoptr i64 %38 to %Tstruct.json_object_t_t*
  %names28 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %39, i64 0, i32 1
  %40 = load i8**, i8*** %names28, align 4, !tbaa !14
  %41 = ptrtoint i8** %40 to i64
  tail call void @c_licm_verify_addr(i64 %41, i64 %i.0, i64 8) #16
  %42 = load i64, i64* @sbxHeap, align 8
  %43 = load i64, i64* @sbxHeapRange, align 8
  %44 = and i64 %41, 4294967295
  %SandMem.TaintCheck29 = icmp ult i64 %44, %43
  br i1 %SandMem.TaintCheck29, label %TaintCheck.succeeded33, label %wasm.trap.fail30

wasm.trap.fail30:                                 ; preds = %TaintCheck.succeeded27
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded33:                           ; preds = %TaintCheck.succeeded27
  %45 = add i64 %42, %44
  %46 = inttoptr i64 %45 to i8**
  %arrayidx34 = getelementptr inbounds i8*, i8** %46, i64 %i.0
  %47 = load i8*, i8** %arrayidx34, align 4, !tbaa !15
  %48 = ptrtoint i8* %47 to i64
  %49 = trunc i64 %48 to i32
  %IsoHeap.is_null = icmp eq i32 %49, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %TaintCheck.succeeded33
  %SandMem.TaintCheck35 = icmp ult i64 %1, %43
  br i1 %SandMem.TaintCheck35, label %TaintCheck.succeeded39, label %wasm.trap.fail36

wasm.trap.fail36:                                 ; preds = %IsoHeap.subsumption
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded39:                           ; preds = %IsoHeap.subsumption
  %50 = add i64 %42, %1
  %51 = inttoptr i64 %50 to %Tstruct.json_object_t_t*
  %names40 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %51, i64 0, i32 1
  %52 = load i8**, i8*** %names40, align 4, !tbaa !14
  %53 = ptrtoint i8** %52 to i64
  tail call void @c_licm_verify_addr(i64 %53, i64 %i.0, i64 8) #16
  %54 = load i64, i64* @sbxHeap, align 8
  %55 = load i64, i64* @sbxHeapRange, align 8
  %56 = and i64 %53, 4294967295
  %SandMem.TaintCheck41 = icmp ult i64 %56, %55
  br i1 %SandMem.TaintCheck41, label %TaintCheck.succeeded45, label %wasm.trap.fail42

wasm.trap.fail42:                                 ; preds = %TaintCheck.succeeded39
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded45:                           ; preds = %TaintCheck.succeeded39
  %57 = add i64 %54, %56
  %58 = inttoptr i64 %57 to i8**
  %arrayidx46 = getelementptr inbounds i8*, i8** %58, i64 %i.0
  %59 = load i8*, i8** %arrayidx46, align 4, !tbaa !15
  %SandMem.TaintCheck47 = icmp ult i64 %1, %55
  br i1 %SandMem.TaintCheck47, label %TaintCheck.succeeded51, label %wasm.trap.fail48

wasm.trap.fail48:                                 ; preds = %TaintCheck.succeeded45
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded51:                           ; preds = %TaintCheck.succeeded45
  %60 = add i64 %54, %1
  %61 = inttoptr i64 %60 to %Tstruct.json_object_t_t*
  %names52 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %61, i64 0, i32 1
  %62 = load i8**, i8*** %names52, align 4, !tbaa !14
  %63 = ptrtoint i8** %62 to i64
  tail call void @c_licm_verify_addr(i64 %63, i64 %i.0, i64 8) #16
  %64 = load i64, i64* @sbxHeapRange, align 8
  %65 = and i64 %63, 4294967295
  %SandMem.TaintCheck53 = icmp ult i64 %65, %64
  br i1 %SandMem.TaintCheck53, label %TaintCheck.succeeded61, label %wasm.trap.fail54

wasm.trap.fail54:                                 ; preds = %TaintCheck.succeeded51
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded61:                           ; preds = %TaintCheck.succeeded51
  %66 = load i64, i64* @sbxHeap, align 8
  %67 = add i64 %66, %65
  %68 = inttoptr i64 %67 to i8**
  %arrayidx58 = getelementptr inbounds i8*, i8** %68, i64 %i.0
  %69 = load i8*, i8** %arrayidx58, align 4, !tbaa !15
  %add.ptr = getelementptr inbounds i8, i8* %69, i64 1
  %70 = ptrtoint i8* %59 to i64
  %71 = trunc i64 %70 to i32
  %IsoHeap.lower = icmp ule i32 %71, %49
  %72 = ptrtoint i8* %add.ptr to i64
  %73 = trunc i64 %72 to i32
  %IsoHeap.upper = icmp ule i32 %49, %73
  %IsoHeap.cast = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed67

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded61, %TaintCheck.succeeded33
  %74 = phi i64 [ %66, %TaintCheck.succeeded61 ], [ %42, %TaintCheck.succeeded33 ]
  %75 = phi i64 [ %64, %TaintCheck.succeeded61 ], [ %43, %TaintCheck.succeeded33 ]
  %76 = and i64 %48, 4294967295
  %SandMem.TaintCheck68 = icmp ult i64 %76, %75
  br i1 %SandMem.TaintCheck68, label %TaintCheck.succeeded72, label %wasm.trap.fail69

TaintCheck.failed67:                              ; preds = %TaintCheck.succeeded61
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail69:                                 ; preds = %IsoHeap.success
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded72:                           ; preds = %IsoHeap.success
  %77 = add i64 %74, %76
  %78 = inttoptr i64 %77 to i8*
  tail call void @t_free(i8* %78) #16
  %79 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %79, i64* @sbxHeapRange, align 8
  %tobool.not = icmp eq i32 %free_value, 0
  br i1 %tobool.not, label %if.end85, label %if.then73

if.then73:                                        ; preds = %TaintCheck.succeeded72
  %SandMem.TaintCheck74 = icmp ult i64 %1, %79
  br i1 %SandMem.TaintCheck74, label %TaintCheck.succeeded78, label %wasm.trap.fail75

wasm.trap.fail75:                                 ; preds = %if.then73
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded78:                           ; preds = %if.then73
  %80 = load i64, i64* @sbxHeap, align 8
  %81 = add i64 %80, %1
  %82 = inttoptr i64 %81 to %Tstruct.json_object_t_t*
  %values = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %82, i64 0, i32 2
  %83 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values, align 4, !tbaa !21
  %84 = ptrtoint %Tstruct.json_value_t_t** %83 to i64
  tail call void @c_licm_verify_addr(i64 %84, i64 %i.0, i64 8) #16
  %85 = load i64, i64* @sbxHeapRange, align 8
  %86 = and i64 %84, 4294967295
  %SandMem.TaintCheck79 = icmp ult i64 %86, %85
  br i1 %SandMem.TaintCheck79, label %TaintCheck.succeeded83, label %wasm.trap.fail80

wasm.trap.fail80:                                 ; preds = %TaintCheck.succeeded78
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded83:                           ; preds = %TaintCheck.succeeded78
  %87 = load i64, i64* @sbxHeap, align 8
  %88 = add i64 %87, %86
  %89 = inttoptr i64 %88 to %Tstruct.json_value_t_t**
  %arrayidx84 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %89, i64 %i.0
  %90 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx84, align 4, !tbaa !15
  tail call void @json_value_free(%Tstruct.json_value_t_t* %90)
  br label %if.end85

if.end85:                                         ; preds = %TaintCheck.succeeded83, %TaintCheck.succeeded72
  %cmp86.not = icmp eq i64 %i.0, %sub
  br i1 %cmp86.not, label %if.end136, label %if.then87

if.then87:                                        ; preds = %if.end85
  %91 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck88 = icmp ult i64 %1, %91
  br i1 %SandMem.TaintCheck88, label %TaintCheck.succeeded92, label %wasm.trap.fail89

wasm.trap.fail89:                                 ; preds = %if.then87
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded92:                           ; preds = %if.then87
  %92 = load i64, i64* @sbxHeap, align 8
  %93 = add i64 %92, %1
  %94 = inttoptr i64 %93 to %Tstruct.json_object_t_t*
  %names93 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %94, i64 0, i32 1
  %95 = load i8**, i8*** %names93, align 4, !tbaa !14
  %96 = ptrtoint i8** %95 to i64
  tail call void @c_licm_verify_addr(i64 %96, i64 %sub, i64 8) #16
  %97 = load i64, i64* @sbxHeap, align 8
  %98 = load i64, i64* @sbxHeapRange, align 8
  %99 = and i64 %96, 4294967295
  %SandMem.TaintCheck94 = icmp ult i64 %99, %98
  br i1 %SandMem.TaintCheck94, label %TaintCheck.succeeded98, label %wasm.trap.fail95

wasm.trap.fail95:                                 ; preds = %TaintCheck.succeeded92
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded98:                           ; preds = %TaintCheck.succeeded92
  %100 = add i64 %97, %99
  %101 = inttoptr i64 %100 to i8**
  %arrayidx99 = getelementptr inbounds i8*, i8** %101, i64 %sub
  %102 = load i8*, i8** %arrayidx99, align 4, !tbaa !15
  %SandMem.TaintCheck100 = icmp ult i64 %1, %98
  br i1 %SandMem.TaintCheck100, label %TaintCheck.succeeded104, label %wasm.trap.fail101

wasm.trap.fail101:                                ; preds = %TaintCheck.succeeded98
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded104:                          ; preds = %TaintCheck.succeeded98
  %103 = add i64 %97, %1
  %104 = inttoptr i64 %103 to %Tstruct.json_object_t_t*
  %names105 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %104, i64 0, i32 1
  %105 = load i8**, i8*** %names105, align 4, !tbaa !14
  %106 = ptrtoint i8** %105 to i64
  tail call void @c_licm_verify_addr(i64 %106, i64 %i.0, i64 8) #16
  %107 = load i64, i64* @sbxHeapRange, align 8
  %108 = and i64 %106, 4294967295
  %SandMem.TaintCheck106 = icmp ult i64 %108, %107
  br i1 %SandMem.TaintCheck106, label %TaintCheck.succeeded110, label %wasm.trap.fail107

wasm.trap.fail107:                                ; preds = %TaintCheck.succeeded104
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded110:                          ; preds = %TaintCheck.succeeded104
  %109 = load i64, i64* @sbxHeap, align 8
  %110 = add i64 %109, %108
  %111 = inttoptr i64 %110 to i8**
  %arrayidx111 = getelementptr inbounds i8*, i8** %111, i64 %i.0
  %112 = ptrtoint i8* %102 to i64
  %113 = and i64 %112, 4294967295
  %114 = bitcast i8** %arrayidx111 to i64*
  store i64 %113, i64* %114, align 4, !tbaa !15
  %115 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck112 = icmp ult i64 %1, %115
  br i1 %SandMem.TaintCheck112, label %TaintCheck.succeeded116, label %wasm.trap.fail113

wasm.trap.fail113:                                ; preds = %TaintCheck.succeeded110
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded116:                          ; preds = %TaintCheck.succeeded110
  %116 = load i64, i64* @sbxHeap, align 8
  %117 = add i64 %116, %1
  %118 = inttoptr i64 %117 to %Tstruct.json_object_t_t*
  %values117 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %118, i64 0, i32 2
  %119 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values117, align 4, !tbaa !21
  %120 = ptrtoint %Tstruct.json_value_t_t** %119 to i64
  tail call void @c_licm_verify_addr(i64 %120, i64 %sub, i64 8) #16
  %121 = load i64, i64* @sbxHeap, align 8
  %122 = load i64, i64* @sbxHeapRange, align 8
  %123 = and i64 %120, 4294967295
  %SandMem.TaintCheck118 = icmp ult i64 %123, %122
  br i1 %SandMem.TaintCheck118, label %TaintCheck.succeeded122, label %wasm.trap.fail119

wasm.trap.fail119:                                ; preds = %TaintCheck.succeeded116
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded122:                          ; preds = %TaintCheck.succeeded116
  %124 = add i64 %121, %123
  %125 = inttoptr i64 %124 to %Tstruct.json_value_t_t**
  %arrayidx123 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %125, i64 %sub
  %126 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx123, align 4, !tbaa !15
  %SandMem.TaintCheck124 = icmp ult i64 %1, %122
  br i1 %SandMem.TaintCheck124, label %TaintCheck.succeeded128, label %wasm.trap.fail125

wasm.trap.fail125:                                ; preds = %TaintCheck.succeeded122
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded128:                          ; preds = %TaintCheck.succeeded122
  %127 = add i64 %121, %1
  %128 = inttoptr i64 %127 to %Tstruct.json_object_t_t*
  %values129 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %128, i64 0, i32 2
  %129 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values129, align 4, !tbaa !21
  %130 = ptrtoint %Tstruct.json_value_t_t** %129 to i64
  tail call void @c_licm_verify_addr(i64 %130, i64 %i.0, i64 8) #16
  %131 = load i64, i64* @sbxHeapRange, align 8
  %132 = and i64 %130, 4294967295
  %SandMem.TaintCheck130 = icmp ult i64 %132, %131
  br i1 %SandMem.TaintCheck130, label %TaintCheck.succeeded134, label %wasm.trap.fail131

wasm.trap.fail131:                                ; preds = %TaintCheck.succeeded128
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded134:                          ; preds = %TaintCheck.succeeded128
  %133 = load i64, i64* @sbxHeap, align 8
  %134 = add i64 %133, %132
  %135 = inttoptr i64 %134 to %Tstruct.json_value_t_t**
  %arrayidx135 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %135, i64 %i.0
  %136 = ptrtoint %Tstruct.json_value_t_t* %126 to i64
  %137 = and i64 %136, 4294967295
  %138 = bitcast %Tstruct.json_value_t_t** %arrayidx135 to i64*
  store i64 %137, i64* %138, align 4, !tbaa !15
  br label %if.end136

if.end136:                                        ; preds = %TaintCheck.succeeded134, %if.end85
  %139 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck137 = icmp ult i64 %1, %139
  br i1 %SandMem.TaintCheck137, label %TaintCheck.succeeded141, label %wasm.trap.fail138

wasm.trap.fail138:                                ; preds = %if.end136
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded141:                          ; preds = %if.end136
  %140 = load i64, i64* @sbxHeap, align 8
  %141 = add i64 %140, %1
  %142 = inttoptr i64 %141 to %Tstruct.json_object_t_t*
  %count = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %142, i64 0, i32 3
  %143 = load i64, i64* %count, align 8, !tbaa !9
  %sub142 = add i64 %143, -1
  store i64 %sub142, i64* %count, align 8, !tbaa !9
  br label %cleanup

for.inc:                                          ; preds = %TaintCheck.succeeded19
  %inc = add nuw i64 %i.0, 1
  br label %json_object_get_count.exit188, !llvm.loop !23

cleanup:                                          ; preds = %json_object_get_count.exit188, %entry, %json_object_get_value.exit, %TaintCheck.succeeded141
  %retval.0 = phi i32 [ 0, %TaintCheck.succeeded141 ], [ -1, %json_object_get_value.exit ], [ -1, %entry ], [ -1, %json_object_get_count.exit188 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_object_get_value(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = inttoptr i64 %4 to i8*
  %7 = trunc i64 %3 to i32
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %4, %8
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to i8*
  %call = tail call i64 @t_strlen(i8* %11) #16
  %call2 = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %2, i8* %6, i64 %call)
  %12 = ptrtoint %Tstruct.json_value_t_t* %call2 to i64
  %13 = and i64 %12, 4294967295
  %14 = inttoptr i64 %13 to %Tstruct.json_value_t_t*
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %TaintCheck.succeeded
  %retval.0 = phi %Tstruct.json_value_t_t* [ %14, %TaintCheck.succeeded ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @json_object_get_count(%Tstruct.json_object_t_t* %object) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = trunc i64 %0 to i32
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %2 = and i64 %0, 4294967295
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %2, %3
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %cond.true
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %cond.true
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to %Tstruct.json_object_t_t*
  %count = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %6, i64 0, i32 3
  %7 = load i64, i64* %count, align 8, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %entry, %TaintCheck.succeeded
  %cond = phi i64 [ %7, %TaintCheck.succeeded ], [ 0, %entry ]
  ret i64 %cond
}

declare dso_local i32 @t_strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @json_value_free(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %sw.epilog, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %json_value_get_type.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit:                         ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i, align 8, !tbaa !24
  switch i32 %7, label %sw.epilog [
    i32 4, label %TaintCheck.succeeded
    i32 2, label %TaintCheck.succeeded12
    i32 5, label %TaintCheck.succeeded61
  ]

TaintCheck.succeeded:                             ; preds = %json_value_get_type.exit
  %value1 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1 to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2 = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded6, label %wasm.trap.fail3

wasm.trap.fail3:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %object = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 2
  %12 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object, align 4, !tbaa !25
  tail call void @json_object_free(%Tstruct.json_object_t_t* %12)
  br label %sw.epilog

TaintCheck.succeeded12:                           ; preds = %json_value_get_type.exit
  %value13 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %13 = ptrtoint %Tstruct.json_value_value_t_t* %value13 to i64
  %14 = and i64 %13, 4294967295
  %SandMem.TaintCheck14 = icmp ult i64 %14, %3
  br i1 %SandMem.TaintCheck14, label %TaintCheck.succeeded18, label %wasm.trap.fail15

wasm.trap.fail15:                                 ; preds = %TaintCheck.succeeded12
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded18:                           ; preds = %TaintCheck.succeeded12
  %15 = add i64 %14, %4
  %16 = inttoptr i64 %15 to %Tstruct.json_value_value_t_t*
  %string = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %16, i64 0, i32 0
  %17 = load i8*, i8** %string, align 4, !tbaa !26
  %IsoHeap.is_null = icmp eq i8* %17, null
  %.pre = ptrtoint i8* %17 to i64
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %TaintCheck.succeeded41

TaintCheck.succeeded41:                           ; preds = %TaintCheck.succeeded18
  %18 = trunc i64 %.pre to i32
  %IsoHeap.non_null.not = icmp eq i32 %18, 0
  br i1 %IsoHeap.non_null.not, label %TaintCheck.failed43, label %TaintCheck.succeeded44

TaintCheck.succeeded44:                           ; preds = %TaintCheck.succeeded41
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  %19 = ptrtoint i8* %add.ptr to i64
  %20 = trunc i64 %19 to i32
  %IsoHeap.upper.not = icmp ugt i32 %18, %20
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed50, label %IsoHeap.success

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded18, %TaintCheck.succeeded44
  %21 = and i64 %.pre, 4294967295
  %SandMem.TaintCheck51 = icmp ult i64 %21, %3
  br i1 %SandMem.TaintCheck51, label %TaintCheck.succeeded55, label %wasm.trap.fail52

TaintCheck.failed43:                              ; preds = %TaintCheck.succeeded41
  tail call void @llvm.trap() #17
  unreachable

TaintCheck.failed50:                              ; preds = %TaintCheck.succeeded44
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail52:                                 ; preds = %IsoHeap.success
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded55:                           ; preds = %IsoHeap.success
  %22 = add i64 %21, %4
  %23 = inttoptr i64 %22 to i8*
  tail call void @t_free(i8* %23) #16
  %24 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %24, i64* @sbxHeapRange, align 8
  br label %sw.epilog

TaintCheck.succeeded61:                           ; preds = %json_value_get_type.exit
  %value62 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %25 = ptrtoint %Tstruct.json_value_value_t_t* %value62 to i64
  %26 = and i64 %25, 4294967295
  %SandMem.TaintCheck63 = icmp ult i64 %26, %3
  br i1 %SandMem.TaintCheck63, label %TaintCheck.succeeded67, label %wasm.trap.fail64

wasm.trap.fail64:                                 ; preds = %TaintCheck.succeeded61
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded67:                           ; preds = %TaintCheck.succeeded61
  %27 = add i64 %26, %4
  %28 = inttoptr i64 %27 to %Tstruct.json_value_value_t_t*
  %array = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %28, i64 0, i32 3
  %29 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4, !tbaa !27
  %30 = ptrtoint %Tstruct.json_array_t_t* %29 to i64
  %31 = and i64 %30, 4294967295
  %32 = inttoptr i64 %31 to %Tstruct.json_array_t_t*
  %33 = trunc i64 %30 to i32
  %SandMem.TaintCheck.i7689 = icmp ult i64 %31, %3
  br i1 %SandMem.TaintCheck.i7689, label %TaintCheck.succeeded.i78.lr.ph, label %wasm.trap.fail.i77

TaintCheck.succeeded.i78.lr.ph:                   ; preds = %TaintCheck.succeeded67
  %34 = add i64 %4, %31
  %35 = inttoptr i64 %34 to %Tstruct.json_array_t_t*
  %36 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %35, i64 0, i32 2
  %37 = load i64, i64* %36, align 8, !tbaa !28
  %38 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %35, i64 0, i32 1
  %39 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %38, align 4, !tbaa !30
  %40 = ptrtoint %Tstruct.json_value_t_t** %39 to i64
  %ScaledMaxIndex = shl i64 %37, 3
  %41 = and i64 %40, 4294967295
  %SbxHeapRangePlusMaxIndex = add i64 %41, %ScaledMaxIndex
  %SandMem.TaintCheck91 = icmp ult i64 %SbxHeapRangePlusMaxIndex, %3
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck91) #16
  %42 = load i64, i64* @sbxHeap, align 8
  %43 = add i64 %42, %31
  %44 = inttoptr i64 %43 to %Tstruct.json_array_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %44, i64 0, i32 2
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %44, i64 0, i32 1
  %45 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i76 = icmp ult i64 %31, %45
  %46 = load i64, i64* %count.i, align 8, !tbaa !28
  %cmp.i98.not = icmp eq i64 %46, 0
  br i1 %cmp.i98.not, label %TaintCheck.succeeded15.i, label %TaintCheck.succeeded5.i

wasm.trap.fail.i77:                               ; preds = %TaintCheck.succeeded10.i, %TaintCheck.succeeded67
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i78:                         ; preds = %TaintCheck.succeeded10.i
  %47 = load i64, i64* %count.i, align 8, !tbaa !28
  %cmp.i = icmp ult i64 %inc.i, %47
  br i1 %cmp.i, label %TaintCheck.succeeded5.i, label %TaintCheck.succeeded15.i, !llvm.loop !31

TaintCheck.succeeded5.i:                          ; preds = %TaintCheck.succeeded.i78.lr.ph, %TaintCheck.succeeded.i78
  %i.0.i9099 = phi i64 [ %inc.i, %TaintCheck.succeeded.i78 ], [ 0, %TaintCheck.succeeded.i78.lr.ph ]
  %48 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %49 = ptrtoint %Tstruct.json_value_t_t** %48 to i64
  %50 = and i64 %49, 4294967295
  %SandMem.TaintCheck6.i = icmp ult i64 %50, %45
  br i1 %SandMem.TaintCheck6.i, label %TaintCheck.succeeded10.i, label %wasm.trap.fail7.i

wasm.trap.fail7.i:                                ; preds = %TaintCheck.succeeded5.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded10.i:                         ; preds = %TaintCheck.succeeded5.i
  %51 = add i64 %42, %50
  %52 = inttoptr i64 %51 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %52, i64 %i.0.i9099
  %53 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  tail call void @json_value_free(%Tstruct.json_value_t_t* %53) #16
  %inc.i = add nuw i64 %i.0.i9099, 1
  br i1 %SandMem.TaintCheck.i76, label %TaintCheck.succeeded.i78, label %wasm.trap.fail.i77, !llvm.loop !31

TaintCheck.succeeded15.i:                         ; preds = %TaintCheck.succeeded.i78, %TaintCheck.succeeded.i78.lr.ph
  %.lcssa = phi i64 [ %3, %TaintCheck.succeeded.i78.lr.ph ], [ %45, %TaintCheck.succeeded.i78 ]
  %54 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %55 = ptrtoint %Tstruct.json_value_t_t** %54 to i64
  %56 = trunc i64 %55 to i32
  %IsoHeap.is_null.i = icmp eq i32 %56, 0
  br i1 %IsoHeap.is_null.i, label %IsoHeap.success.i, label %TaintCheck.succeeded30.i

TaintCheck.succeeded30.i:                         ; preds = %TaintCheck.succeeded15.i
  %add.ptr.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %54, i64 1
  %57 = ptrtoint %Tstruct.json_value_t_t** %add.ptr.i to i64
  %58 = trunc i64 %57 to i32
  %IsoHeap.upper.not.i = icmp ugt i32 %56, %58
  br i1 %IsoHeap.upper.not.i, label %TaintCheck.failed36.i, label %IsoHeap.success.i

IsoHeap.success.i:                                ; preds = %TaintCheck.succeeded30.i, %TaintCheck.succeeded15.i
  %59 = and i64 %55, 4294967295
  %SandMem.TaintCheck37.i = icmp ult i64 %59, %.lcssa
  br i1 %SandMem.TaintCheck37.i, label %TaintCheck.succeeded41.i, label %wasm.trap.fail38.i

TaintCheck.failed36.i:                            ; preds = %TaintCheck.succeeded30.i
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail38.i:                               ; preds = %IsoHeap.success.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded41.i:                         ; preds = %IsoHeap.success.i
  %60 = add i64 %59, %42
  %61 = inttoptr i64 %60 to i8*
  tail call void @t_free(i8* %61) #16
  %62 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %62, i64* @sbxHeapRange, align 8
  %IsoHeap.is_null42.i = icmp eq i32 %33, 0
  br i1 %IsoHeap.is_null42.i, label %IsoHeap.success58.i, label %TaintCheck.succeeded48.i

TaintCheck.succeeded48.i:                         ; preds = %TaintCheck.succeeded41.i
  %add.ptr44.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %32, i64 1
  %63 = ptrtoint %Tstruct.json_array_t_t* %add.ptr44.i to i64
  %64 = trunc i64 %63 to i32
  %IsoHeap.upper55.not.i = icmp ugt i32 %33, %64
  br i1 %IsoHeap.upper55.not.i, label %TaintCheck.failed57.i, label %IsoHeap.success58.i

IsoHeap.success58.i:                              ; preds = %TaintCheck.succeeded48.i, %TaintCheck.succeeded41.i
  %SandMem.TaintCheck59.i = icmp ult i64 %31, %62
  br i1 %SandMem.TaintCheck59.i, label %json_array_free.exit, label %wasm.trap.fail60.i

TaintCheck.failed57.i:                            ; preds = %TaintCheck.succeeded48.i
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail60.i:                               ; preds = %IsoHeap.success58.i
  tail call void @llvm.trap() #16
  unreachable

json_array_free.exit:                             ; preds = %IsoHeap.success58.i
  %65 = load i64, i64* @sbxHeap, align 8
  %66 = add i64 %65, %31
  %67 = inttoptr i64 %66 to i8*
  tail call void @t_free(i8* %67) #16
  %68 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %68, i64* @sbxHeapRange, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %json_value_get_type.exit, %json_array_free.exit, %TaintCheck.succeeded55, %TaintCheck.succeeded6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_dotremove_internal(%Tstruct.json_object_t_t* %object, i8* %name, i32 %free_value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %name to i64
  %1 = and i64 %0, 4294967295
  %2 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck44 = icmp ult i64 %1, %2
  br i1 %SandMem.TaintCheck44, label %TaintCheck.succeeded.lr.ph, label %wasm.trap.fail

TaintCheck.succeeded.lr.ph:                       ; preds = %entry
  %3 = load i64, i64* @sbxHeap, align 8
  br label %TaintCheck.succeeded

wasm.trap.fail:                                   ; preds = %json_value_get_object.exit, %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %TaintCheck.succeeded.lr.ph, %json_value_get_object.exit
  %4 = phi i64 [ %1, %TaintCheck.succeeded.lr.ph ], [ %27, %json_value_get_object.exit ]
  %.in.in.in = phi %Tstruct.json_object_t_t* [ %object, %TaintCheck.succeeded.lr.ph ], [ %phi.cast32, %json_value_get_object.exit ]
  %.in.in = ptrtoint %Tstruct.json_object_t_t* %.in.in.in to i64
  %.in = and i64 %.in.in, 4294967295
  %5 = add i64 %3, %4
  %6 = inttoptr i64 %5 to i8*
  %call = tail call i8* @t_strchr(i8* %6, i32 46) #16
  %7 = ptrtoint i8* %call to i64
  %8 = and i64 %7, 4294967295
  %9 = inttoptr i64 %8 to i8*
  %10 = trunc i64 %7 to i32
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %TaintCheck.succeeded
  %11 = inttoptr i64 %.in to %Tstruct.json_object_t_t*
  %12 = inttoptr i64 %4 to i8*
  %call1 = tail call i32 @json_object_remove_internal(%Tstruct.json_object_t_t* %11, i8* %12, i32 %free_value)
  br label %cleanup12

if.end:                                           ; preds = %TaintCheck.succeeded
  %13 = inttoptr i64 %4 to i8*
  %14 = inttoptr i64 %.in to %Tstruct.json_object_t_t*
  %sub.ptr.sub = sub nsw i64 %8, %4
  %call2 = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %14, i8* %13, i64 %sub.ptr.sub)
  %15 = ptrtoint %Tstruct.json_value_t_t* %call2 to i64
  %16 = and i64 %15, 4294967295
  %17 = trunc i64 %15 to i32
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %cleanup12, label %cond.true.i

cond.true.i:                                      ; preds = %if.end
  %SandMem.TaintCheck.i = icmp ult i64 %16, %2
  br i1 %SandMem.TaintCheck.i, label %json_value_get_type.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit:                         ; preds = %cond.true.i
  %18 = add i64 %3, %16
  %19 = inttoptr i64 %18 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %19, i64 0, i32 1
  %20 = load i32, i32* %type.i, align 8, !tbaa !24
  %cmp5.not = icmp eq i32 %20, 4
  br i1 %cmp5.not, label %TaintCheck.succeeded.i28, label %cleanup12

TaintCheck.succeeded.i28:                         ; preds = %json_value_get_type.exit
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %19, i64 0, i32 2
  %21 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %22 = and i64 %21, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %22, %2
  br i1 %SandMem.TaintCheck2.i, label %json_value_get_object.exit, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i28
  tail call void @llvm.trap() #16
  unreachable

json_value_get_object.exit:                       ; preds = %TaintCheck.succeeded.i28
  %23 = add i64 %22, %3
  %24 = inttoptr i64 %23 to %Tstruct.json_value_value_t_t*
  %object.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %24, i64 0, i32 2
  %25 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i, align 4, !tbaa !25
  %phi.cast = ptrtoint %Tstruct.json_object_t_t* %25 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast32 = inttoptr i64 %phi.bo to %Tstruct.json_object_t_t*
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %26 = ptrtoint i8* %add.ptr to i64
  %27 = and i64 %26, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %27, %2
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

cleanup12:                                        ; preds = %if.end, %json_value_get_type.exit, %if.then
  %retval.1 = phi i32 [ %call1, %if.then ], [ -1, %json_value_get_type.exit ], [ -1, %if.end ]
  ret i32 %retval.1
}

declare dso_local i8* @t_strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @json_value_get_type(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = trunc i64 %0 to i32
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %2 = and i64 %0, 4294967295
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %2, %3
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %cond.true
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %cond.true
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type, align 8, !tbaa !24
  br label %cond.end

cond.end:                                         ; preds = %entry, %TaintCheck.succeeded
  %cond = phi i32 [ %7, %TaintCheck.succeeded ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %cond.end, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %json_value_get_type.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit:                         ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i, align 8, !tbaa !24
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %TaintCheck.succeeded, label %cond.end

TaintCheck.succeeded:                             ; preds = %json_value_get_type.exit
  %value1 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1 to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2 = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded6, label %wasm.trap.fail3

wasm.trap.fail3:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %object = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 2
  %12 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object, align 4, !tbaa !25
  br label %cond.end

cond.end:                                         ; preds = %entry, %json_value_get_type.exit, %TaintCheck.succeeded6
  %cond = phi %Tstruct.json_object_t_t* [ %12, %TaintCheck.succeeded6 ], [ null, %json_value_get_type.exit ], [ null, %entry ]
  ret %Tstruct.json_object_t_t* %cond
}

; Function Attrs: nounwind uwtable
define dso_local void @json_object_free(%Tstruct.json_object_t_t* %object) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = trunc i64 %0 to i32
  %4 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck227 = icmp ult i64 %1, %4
  br i1 %SandMem.TaintCheck227, label %TaintCheck.succeeded.lr.ph, label %wasm.trap.fail

TaintCheck.succeeded.lr.ph:                       ; preds = %entry
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %1
  %7 = inttoptr i64 %6 to %Tstruct.json_object_t_t*
  %8 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %7, i64 0, i32 3
  %9 = load i64, i64* %8, align 8, !tbaa !9
  %10 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %7, i64 0, i32 1
  %11 = load i8**, i8*** %10, align 4, !tbaa !14
  %12 = ptrtoint i8** %11 to i64
  %ScaledMaxIndex = shl i64 %9, 3
  %13 = and i64 %12, 4294967295
  %SbxHeapRangePlusMaxIndex = add i64 %13, %ScaledMaxIndex
  %SandMem.TaintCheck229 = icmp ult i64 %SbxHeapRangePlusMaxIndex, %4
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck229) #16
  %14 = load i64, i64* @sbxHeap, align 8
  %15 = add i64 %14, %1
  %16 = inttoptr i64 %15 to %Tstruct.json_object_t_t*
  %17 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %16, i64 0, i32 3
  %18 = load i64, i64* %17, align 8, !tbaa !9
  %19 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %16, i64 0, i32 1
  %20 = load i8**, i8*** %19, align 4, !tbaa !14
  %21 = ptrtoint i8** %20 to i64
  %ScaledMaxIndex230 = shl i64 %18, 3
  %22 = load i64, i64* @sbxHeapRange, align 8
  %23 = and i64 %21, 4294967295
  %SbxHeapRangePlusMaxIndex231 = add i64 %23, %ScaledMaxIndex230
  %SandMem.TaintCheck232 = icmp ult i64 %SbxHeapRangePlusMaxIndex231, %22
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck232) #16
  %24 = load i64, i64* @sbxHeap, align 8
  %25 = add i64 %24, %1
  %26 = inttoptr i64 %25 to %Tstruct.json_object_t_t*
  %27 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %26, i64 0, i32 3
  %28 = load i64, i64* %27, align 8, !tbaa !9
  %29 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %26, i64 0, i32 1
  %30 = load i8**, i8*** %29, align 4, !tbaa !14
  %31 = ptrtoint i8** %30 to i64
  %ScaledMaxIndex233 = shl i64 %28, 3
  %32 = load i64, i64* @sbxHeapRange, align 8
  %33 = and i64 %31, 4294967295
  %SbxHeapRangePlusMaxIndex234 = add i64 %33, %ScaledMaxIndex233
  %SandMem.TaintCheck235 = icmp ult i64 %SbxHeapRangePlusMaxIndex234, %32
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck235) #16
  %34 = load i64, i64* @sbxHeap, align 8
  %35 = add i64 %34, %1
  %36 = inttoptr i64 %35 to %Tstruct.json_object_t_t*
  %37 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %36, i64 0, i32 3
  %38 = load i64, i64* %37, align 8, !tbaa !9
  %39 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %36, i64 0, i32 2
  %40 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %39, align 4, !tbaa !21
  %41 = ptrtoint %Tstruct.json_value_t_t** %40 to i64
  %ScaledMaxIndex236 = shl i64 %38, 3
  %42 = load i64, i64* @sbxHeapRange, align 8
  %43 = and i64 %41, 4294967295
  %SbxHeapRangePlusMaxIndex237 = add i64 %43, %ScaledMaxIndex236
  %SandMem.TaintCheck238 = icmp ult i64 %SbxHeapRangePlusMaxIndex237, %42
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck238) #16
  %44 = load i64, i64* @sbxHeap, align 8
  %45 = add i64 %44, %1
  %46 = inttoptr i64 %45 to %Tstruct.json_object_t_t*
  %count = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %46, i64 0, i32 3
  %names = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %46, i64 0, i32 1
  %values = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %46, i64 0, i32 2
  %47 = load i64, i64* %count, align 8, !tbaa !9
  %cmp263.not = icmp eq i64 %47, 0
  br i1 %cmp263.not, label %TaintCheck.succeeded63, label %TaintCheck.succeeded5

wasm.trap.fail:                                   ; preds = %TaintCheck.succeeded57, %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %TaintCheck.succeeded57
  %48 = load i64, i64* %count, align 8, !tbaa !9
  %cmp = icmp ult i64 %inc, %48
  br i1 %cmp, label %TaintCheck.succeeded5, label %TaintCheck.succeeded63, !llvm.loop !32

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded.lr.ph, %TaintCheck.succeeded
  %i.0228264 = phi i64 [ %inc, %TaintCheck.succeeded ], [ 0, %TaintCheck.succeeded.lr.ph ]
  %49 = load i8**, i8*** %names, align 4, !tbaa !14
  %50 = ptrtoint i8** %49 to i64
  %51 = load i64, i64* @sbxHeapRange, align 8
  %52 = and i64 %50, 4294967295
  %SandMem.TaintCheck6 = icmp ult i64 %52, %51
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded10, label %wasm.trap.fail7

wasm.trap.fail7:                                  ; preds = %TaintCheck.succeeded5
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded10:                           ; preds = %TaintCheck.succeeded5
  %53 = add i64 %44, %52
  %54 = inttoptr i64 %53 to i8**
  %arrayidx = getelementptr inbounds i8*, i8** %54, i64 %i.0228264
  %55 = load i8*, i8** %arrayidx, align 4, !tbaa !15
  %56 = ptrtoint i8* %55 to i64
  %57 = trunc i64 %56 to i32
  %IsoHeap.is_null = icmp eq i32 %57, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %TaintCheck.succeeded10
  %SandMem.TaintCheck11 = icmp ult i64 %1, %51
  br i1 %SandMem.TaintCheck11, label %TaintCheck.succeeded36, label %wasm.trap.fail12

wasm.trap.fail12:                                 ; preds = %IsoHeap.subsumption
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded36:                           ; preds = %IsoHeap.subsumption
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 1
  %58 = ptrtoint i8* %add.ptr to i64
  %59 = trunc i64 %58 to i32
  %IsoHeap.upper.not = icmp ugt i32 %57, %59
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed42, label %IsoHeap.success

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded36, %TaintCheck.succeeded10
  %60 = and i64 %56, 4294967295
  %SandMem.TaintCheck43 = icmp ult i64 %60, %51
  br i1 %SandMem.TaintCheck43, label %TaintCheck.succeeded47, label %wasm.trap.fail44

TaintCheck.failed42:                              ; preds = %TaintCheck.succeeded36
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail44:                                 ; preds = %IsoHeap.success
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded47:                           ; preds = %IsoHeap.success
  %61 = add i64 %44, %60
  %62 = inttoptr i64 %61 to i8*
  tail call void @t_free(i8* %62) #16
  %63 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %63, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck48 = icmp ult i64 %1, %63
  br i1 %SandMem.TaintCheck48, label %TaintCheck.succeeded52, label %wasm.trap.fail49

wasm.trap.fail49:                                 ; preds = %TaintCheck.succeeded47
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded52:                           ; preds = %TaintCheck.succeeded47
  %64 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values, align 4, !tbaa !21
  %65 = ptrtoint %Tstruct.json_value_t_t** %64 to i64
  %66 = and i64 %65, 4294967295
  %SandMem.TaintCheck53 = icmp ult i64 %66, %63
  br i1 %SandMem.TaintCheck53, label %TaintCheck.succeeded57, label %wasm.trap.fail54

wasm.trap.fail54:                                 ; preds = %TaintCheck.succeeded52
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded57:                           ; preds = %TaintCheck.succeeded52
  %67 = add i64 %44, %66
  %68 = inttoptr i64 %67 to %Tstruct.json_value_t_t**
  %arrayidx58 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %68, i64 %i.0228264
  %69 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx58, align 4, !tbaa !15
  tail call void @json_value_free(%Tstruct.json_value_t_t* %69)
  %inc = add nuw i64 %i.0228264, 1
  %70 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %70
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail, !llvm.loop !32

TaintCheck.succeeded63:                           ; preds = %TaintCheck.succeeded, %TaintCheck.succeeded.lr.ph
  %.lcssa = phi i64 [ %4, %TaintCheck.succeeded.lr.ph ], [ %70, %TaintCheck.succeeded ]
  %71 = load i8**, i8*** %names, align 4, !tbaa !14
  %72 = ptrtoint i8** %71 to i64
  %73 = trunc i64 %72 to i32
  %IsoHeap.is_null65 = icmp eq i32 %73, 0
  br i1 %IsoHeap.is_null65, label %IsoHeap.success93, label %TaintCheck.succeeded83

TaintCheck.succeeded83:                           ; preds = %TaintCheck.succeeded63
  %add.ptr79 = getelementptr inbounds i8*, i8** %71, i64 1
  %74 = ptrtoint i8** %add.ptr79 to i64
  %75 = trunc i64 %74 to i32
  %IsoHeap.upper90.not = icmp ugt i32 %73, %75
  br i1 %IsoHeap.upper90.not, label %TaintCheck.failed92, label %IsoHeap.success93

IsoHeap.success93:                                ; preds = %TaintCheck.succeeded83, %TaintCheck.succeeded63
  %76 = and i64 %72, 4294967295
  %SandMem.TaintCheck94 = icmp ult i64 %76, %.lcssa
  br i1 %SandMem.TaintCheck94, label %TaintCheck.succeeded98, label %wasm.trap.fail95

TaintCheck.failed92:                              ; preds = %TaintCheck.succeeded83
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail95:                                 ; preds = %IsoHeap.success93
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded98:                           ; preds = %IsoHeap.success93
  %77 = add i64 %76, %44
  %78 = inttoptr i64 %77 to i8*
  tail call void @t_free(i8* %78) #16
  %79 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %79, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck99 = icmp ult i64 %1, %79
  br i1 %SandMem.TaintCheck99, label %TaintCheck.succeeded103, label %wasm.trap.fail100

wasm.trap.fail100:                                ; preds = %TaintCheck.succeeded98
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded103:                          ; preds = %TaintCheck.succeeded98
  %80 = load i64, i64* @sbxHeap, align 8
  %81 = add i64 %80, %1
  %82 = inttoptr i64 %81 to %Tstruct.json_object_t_t*
  %values104 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %82, i64 0, i32 2
  %83 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values104, align 4, !tbaa !21
  %84 = ptrtoint %Tstruct.json_value_t_t** %83 to i64
  %85 = trunc i64 %84 to i32
  %IsoHeap.is_null105 = icmp eq i32 %85, 0
  br i1 %IsoHeap.is_null105, label %IsoHeap.success133, label %TaintCheck.succeeded123

TaintCheck.succeeded123:                          ; preds = %TaintCheck.succeeded103
  %add.ptr119 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %83, i64 1
  %86 = ptrtoint %Tstruct.json_value_t_t** %add.ptr119 to i64
  %87 = trunc i64 %86 to i32
  %IsoHeap.upper130.not = icmp ugt i32 %85, %87
  br i1 %IsoHeap.upper130.not, label %TaintCheck.failed132, label %IsoHeap.success133

IsoHeap.success133:                               ; preds = %TaintCheck.succeeded123, %TaintCheck.succeeded103
  %88 = and i64 %84, 4294967295
  %SandMem.TaintCheck134 = icmp ult i64 %88, %79
  br i1 %SandMem.TaintCheck134, label %TaintCheck.succeeded138, label %wasm.trap.fail135

TaintCheck.failed132:                             ; preds = %TaintCheck.succeeded123
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail135:                                ; preds = %IsoHeap.success133
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded138:                          ; preds = %IsoHeap.success133
  %89 = add i64 %88, %80
  %90 = inttoptr i64 %89 to i8*
  tail call void @t_free(i8* %90) #16
  %91 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %91, i64* @sbxHeapRange, align 8
  %IsoHeap.is_null139 = icmp eq i32 %3, 0
  br i1 %IsoHeap.is_null139, label %IsoHeap.success155, label %TaintCheck.succeeded145

TaintCheck.succeeded145:                          ; preds = %TaintCheck.succeeded138
  %add.ptr141 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %2, i64 1
  %92 = ptrtoint %Tstruct.json_object_t_t* %add.ptr141 to i64
  %93 = trunc i64 %92 to i32
  %IsoHeap.upper152.not = icmp ugt i32 %3, %93
  br i1 %IsoHeap.upper152.not, label %TaintCheck.failed154, label %IsoHeap.success155

IsoHeap.success155:                               ; preds = %TaintCheck.succeeded145, %TaintCheck.succeeded138
  %SandMem.TaintCheck156 = icmp ult i64 %1, %91
  br i1 %SandMem.TaintCheck156, label %TaintCheck.succeeded160, label %wasm.trap.fail157

TaintCheck.failed154:                             ; preds = %TaintCheck.succeeded145
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail157:                                ; preds = %IsoHeap.success155
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded160:                          ; preds = %IsoHeap.success155
  %94 = load i64, i64* @sbxHeap, align 8
  %95 = add i64 %94, %1
  %96 = inttoptr i64 %95 to i8*
  tail call void @t_free(i8* %96) #16
  %97 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %97, i64* @sbxHeapRange, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_value_init_string_no_copy(i8* %string) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %string to i64
  %call = tail call i8* @t_malloc(i64 56) #16
  %1 = ptrtoint i8* %call to i64
  %2 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %2, i64* @sbxHeapRange, align 8
  %3 = and i64 %1, 4294967295
  %4 = inttoptr i64 %3 to %Tstruct.json_value_t_t*
  %5 = trunc i64 %1 to i32
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %SandMem.TaintCheck = icmp ult i64 %3, %2
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to i64*
  store i64 0, i64* %8, align 4, !tbaa !17
  %9 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1 = icmp ult i64 %3, %9
  br i1 %SandMem.TaintCheck1, label %TaintCheck.succeeded10, label %wasm.trap.fail2

wasm.trap.fail2:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded10:                           ; preds = %TaintCheck.succeeded
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = add i64 %10, %3
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t*
  %type = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 1
  store i32 2, i32* %type, align 8, !tbaa !24
  %value = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 2
  %13 = ptrtoint %Tstruct.json_value_value_t_t* %value to i64
  %14 = and i64 %13, 4294967295
  %SandMem.TaintCheck11 = icmp ult i64 %14, %9
  br i1 %SandMem.TaintCheck11, label %TaintCheck.succeeded15, label %wasm.trap.fail12

wasm.trap.fail12:                                 ; preds = %TaintCheck.succeeded10
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded15:                           ; preds = %TaintCheck.succeeded10
  %15 = add i64 %14, %10
  %16 = and i64 %0, 4294967295
  %17 = inttoptr i64 %15 to i64*
  store i64 %16, i64* %17, align 4, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %entry, %TaintCheck.succeeded15
  %retval.0 = phi %Tstruct.json_value_t_t* [ %4, %TaintCheck.succeeded15 ], [ null, %entry ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @parse_utf16(i8** nocapture %unprocessed, i8** nocapture %processed) local_unnamed_addr #0 {
entry:
  %cp = alloca i32, align 4
  %trail = alloca i32, align 4
  %0 = bitcast i32* %cp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  %1 = bitcast i32* %trail to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  %2 = load i8*, i8** %processed, align 4, !tbaa !15
  %3 = ptrtoint i8* %2 to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %6 = load i8*, i8** %unprocessed, align 4, !tbaa !15
  %7 = ptrtoint i8* %6 to i64
  %8 = and i64 %7, 4294967295
  %9 = inttoptr i64 %8 to i8*
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %10 = ptrtoint i8* %incdec.ptr to i64
  %11 = and i64 %10, 4294967295
  %12 = inttoptr i64 %11 to i8*
  %call = call fastcc i32 @parse_utf16_hex(i8* %12, i32* nonnull %cp)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %cp, align 4, !tbaa !5
  %cmp = icmp ult i32 %13, 128
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %4, %14
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.then1
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.then1
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %4
  %conv = trunc i32 %13 to i8
  %17 = inttoptr i64 %16 to i8*
  store i8 %conv, i8* %17, align 4, !tbaa !2
  br label %if.end146

if.else:                                          ; preds = %if.end
  %cmp2 = icmp ult i32 %13, 2048
  br i1 %cmp2, label %if.then4, label %if.else21

if.then4:                                         ; preds = %if.else
  %18 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck6 = icmp ult i64 %4, %18
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded10, label %wasm.trap.fail7

wasm.trap.fail7:                                  ; preds = %if.then4
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded10:                           ; preds = %if.then4
  %19 = load i64, i64* @sbxHeap, align 8
  %20 = add i64 %19, %4
  %shr = lshr i32 %13, 6
  %21 = trunc i32 %shr to i8
  %conv5 = or i8 %21, -64
  %22 = inttoptr i64 %20 to i8*
  store i8 %conv5, i8* %22, align 4, !tbaa !2
  %23 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck15 = icmp ult i64 %4, %23
  br i1 %SandMem.TaintCheck15, label %TaintCheck.succeeded19, label %wasm.trap.fail16

wasm.trap.fail16:                                 ; preds = %TaintCheck.succeeded10
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded19:                           ; preds = %TaintCheck.succeeded10
  %24 = load i64, i64* @sbxHeap, align 8
  %25 = add i64 %24, %4
  %26 = load i32, i32* %cp, align 4, !tbaa !5
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 63
  %conv14 = or i8 %28, -128
  %29 = inttoptr i64 %25 to i8*
  %arrayidx20 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %conv14, i8* %arrayidx20, align 1, !tbaa !2
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  %30 = ptrtoint i8* %add.ptr to i64
  %31 = and i64 %30, 4294967295
  %32 = inttoptr i64 %31 to i8*
  br label %if.end146

if.else21:                                        ; preds = %if.else
  %33 = and i32 %13, -2048
  %.not = icmp eq i32 %33, 55296
  br i1 %.not, label %if.else58, label %if.then26

if.then26:                                        ; preds = %if.else21
  %34 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck31 = icmp ult i64 %4, %34
  br i1 %SandMem.TaintCheck31, label %TaintCheck.succeeded35, label %wasm.trap.fail32

wasm.trap.fail32:                                 ; preds = %if.then26
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded35:                           ; preds = %if.then26
  %35 = load i64, i64* @sbxHeap, align 8
  %36 = add i64 %35, %4
  %shr27 = lshr i32 %13, 12
  %37 = trunc i32 %shr27 to i8
  %38 = and i8 %37, 15
  %conv30 = or i8 %38, -32
  %39 = inttoptr i64 %36 to i8*
  store i8 %conv30, i8* %39, align 4, !tbaa !2
  %40 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck41 = icmp ult i64 %4, %40
  br i1 %SandMem.TaintCheck41, label %TaintCheck.succeeded45, label %wasm.trap.fail42

wasm.trap.fail42:                                 ; preds = %TaintCheck.succeeded35
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded45:                           ; preds = %TaintCheck.succeeded35
  %41 = load i64, i64* @sbxHeap, align 8
  %42 = add i64 %41, %4
  %43 = load i32, i32* %cp, align 4, !tbaa !5
  %shr37 = lshr i32 %43, 6
  %44 = trunc i32 %shr37 to i8
  %45 = and i8 %44, 63
  %conv40 = or i8 %45, -128
  %46 = inttoptr i64 %42 to i8*
  %arrayidx46 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 %conv40, i8* %arrayidx46, align 1, !tbaa !2
  %47 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck50 = icmp ult i64 %4, %47
  br i1 %SandMem.TaintCheck50, label %TaintCheck.succeeded54, label %wasm.trap.fail51

wasm.trap.fail51:                                 ; preds = %TaintCheck.succeeded45
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded54:                           ; preds = %TaintCheck.succeeded45
  %48 = load i64, i64* @sbxHeap, align 8
  %49 = add i64 %48, %4
  %50 = load i32, i32* %cp, align 4, !tbaa !5
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 63
  %conv49 = or i8 %52, -128
  %53 = inttoptr i64 %49 to i8*
  %arrayidx55 = getelementptr inbounds i8, i8* %53, i64 2
  store i8 %conv49, i8* %arrayidx55, align 2, !tbaa !2
  %add.ptr56 = getelementptr inbounds i8, i8* %5, i64 2
  %54 = ptrtoint i8* %add.ptr56 to i64
  %55 = and i64 %54, 4294967295
  %56 = inttoptr i64 %55 to i8*
  br label %if.end146

if.else58:                                        ; preds = %if.else21
  %cmp61 = icmp ult i32 %13, 56320
  br i1 %cmp61, label %if.then63, label %cleanup

if.then63:                                        ; preds = %if.else58
  %add.ptr64 = getelementptr inbounds i8, i8* %12, i64 4
  %57 = ptrtoint i8* %add.ptr64 to i64
  %58 = and i64 %57, 4294967295
  %59 = inttoptr i64 %58 to i8*
  %incdec.ptr66 = getelementptr inbounds i8, i8* %59, i64 1
  %60 = ptrtoint i8* %incdec.ptr66 to i64
  %61 = and i64 %60, 4294967295
  %62 = inttoptr i64 %61 to i8*
  %63 = load i64, i64* @sbxHeap, align 8
  %64 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck67 = icmp ult i64 %58, %64
  br i1 %SandMem.TaintCheck67, label %TaintCheck.succeeded71, label %wasm.trap.fail68

wasm.trap.fail68:                                 ; preds = %if.then63
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded71:                           ; preds = %if.then63
  %65 = add i64 %63, %58
  %66 = inttoptr i64 %65 to i8*
  %67 = load i8, i8* %66, align 1, !tbaa !2
  %cmp73.not = icmp eq i8 %67, 92
  br i1 %cmp73.not, label %lor.lhs.false75, label %cleanup

lor.lhs.false75:                                  ; preds = %TaintCheck.succeeded71
  %incdec.ptr76 = getelementptr inbounds i8, i8* %62, i64 1
  %68 = ptrtoint i8* %incdec.ptr76 to i64
  %69 = and i64 %68, 4294967295
  %70 = inttoptr i64 %69 to i8*
  %SandMem.TaintCheck77 = icmp ult i64 %61, %64
  br i1 %SandMem.TaintCheck77, label %TaintCheck.succeeded81, label %wasm.trap.fail78

wasm.trap.fail78:                                 ; preds = %lor.lhs.false75
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded81:                           ; preds = %lor.lhs.false75
  %71 = add i64 %63, %61
  %72 = inttoptr i64 %71 to i8*
  %73 = load i8, i8* %72, align 1, !tbaa !2
  %cmp83.not = icmp eq i8 %73, 117
  br i1 %cmp83.not, label %if.end86, label %cleanup

if.end86:                                         ; preds = %TaintCheck.succeeded81
  %call87 = call fastcc i32 @parse_utf16_hex(i8* %70, i32* nonnull %trail)
  %tobool88 = icmp eq i32 %call87, 0
  %74 = load i32, i32* %trail, align 4
  %75 = and i32 %74, -1024
  %76 = icmp ne i32 %75, 56320
  %77 = or i1 %tobool88, %76
  br i1 %77, label %cleanup, label %if.end96

if.end96:                                         ; preds = %if.end86
  %and97 = shl nuw nsw i32 %13, 10
  %shl = and i32 %and97, 1047552
  %and99 = and i32 %74, 1023
  %or100 = or i32 %and99, %shl
  %add = add nuw nsw i32 %or100, 65536
  store i32 %add, i32* %cp, align 4, !tbaa !5
  %78 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck105 = icmp ult i64 %4, %78
  br i1 %SandMem.TaintCheck105, label %TaintCheck.succeeded109, label %wasm.trap.fail106

wasm.trap.fail106:                                ; preds = %if.end96
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded109:                          ; preds = %if.end96
  %79 = load i64, i64* @sbxHeap, align 8
  %80 = add i64 %79, %4
  %shr101 = lshr i32 %add, 18
  %81 = trunc i32 %shr101 to i8
  %conv104 = or i8 %81, -16
  %82 = inttoptr i64 %80 to i8*
  store i8 %conv104, i8* %82, align 4, !tbaa !2
  %83 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck115 = icmp ult i64 %4, %83
  br i1 %SandMem.TaintCheck115, label %TaintCheck.succeeded119, label %wasm.trap.fail116

wasm.trap.fail116:                                ; preds = %TaintCheck.succeeded109
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded119:                          ; preds = %TaintCheck.succeeded109
  %84 = load i64, i64* @sbxHeap, align 8
  %85 = add i64 %84, %4
  %86 = load i32, i32* %cp, align 4, !tbaa !5
  %shr111 = lshr i32 %86, 12
  %87 = trunc i32 %shr111 to i8
  %88 = and i8 %87, 63
  %conv114 = or i8 %88, -128
  %89 = inttoptr i64 %85 to i8*
  %arrayidx120 = getelementptr inbounds i8, i8* %89, i64 1
  store i8 %conv114, i8* %arrayidx120, align 1, !tbaa !2
  %90 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck125 = icmp ult i64 %4, %90
  br i1 %SandMem.TaintCheck125, label %TaintCheck.succeeded129, label %wasm.trap.fail126

wasm.trap.fail126:                                ; preds = %TaintCheck.succeeded119
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded129:                          ; preds = %TaintCheck.succeeded119
  %91 = load i64, i64* @sbxHeap, align 8
  %92 = add i64 %91, %4
  %93 = load i32, i32* %cp, align 4, !tbaa !5
  %shr121 = lshr i32 %93, 6
  %94 = trunc i32 %shr121 to i8
  %95 = and i8 %94, 63
  %conv124 = or i8 %95, -128
  %96 = inttoptr i64 %92 to i8*
  %arrayidx130 = getelementptr inbounds i8, i8* %96, i64 2
  store i8 %conv124, i8* %arrayidx130, align 2, !tbaa !2
  %97 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck134 = icmp ult i64 %4, %97
  br i1 %SandMem.TaintCheck134, label %TaintCheck.succeeded138, label %wasm.trap.fail135

wasm.trap.fail135:                                ; preds = %TaintCheck.succeeded129
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded138:                          ; preds = %TaintCheck.succeeded129
  %98 = load i64, i64* @sbxHeap, align 8
  %99 = add i64 %98, %4
  %100 = load i32, i32* %cp, align 4, !tbaa !5
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 63
  %conv133 = or i8 %102, -128
  %103 = inttoptr i64 %99 to i8*
  %arrayidx139 = getelementptr inbounds i8, i8* %103, i64 3
  store i8 %conv133, i8* %arrayidx139, align 1, !tbaa !2
  %add.ptr140 = getelementptr inbounds i8, i8* %5, i64 3
  %104 = ptrtoint i8* %add.ptr140 to i64
  %105 = and i64 %104, 4294967295
  %106 = inttoptr i64 %105 to i8*
  br label %if.end146

if.end146:                                        ; preds = %TaintCheck.succeeded19, %TaintCheck.succeeded138, %TaintCheck.succeeded54, %TaintCheck.succeeded
  %unprocessed_ptr.0 = phi i8* [ %12, %TaintCheck.succeeded ], [ %12, %TaintCheck.succeeded19 ], [ %12, %TaintCheck.succeeded54 ], [ %70, %TaintCheck.succeeded138 ]
  %processed_ptr.0 = phi i8* [ %5, %TaintCheck.succeeded ], [ %32, %TaintCheck.succeeded19 ], [ %56, %TaintCheck.succeeded54 ], [ %106, %TaintCheck.succeeded138 ]
  %add.ptr147 = getelementptr inbounds i8, i8* %unprocessed_ptr.0, i64 3
  %107 = ptrtoint i8* %add.ptr147 to i64
  %108 = ptrtoint i8* %processed_ptr.0 to i64
  %109 = and i64 %108, 4294967295
  %110 = bitcast i8** %processed to i64*
  store i64 %109, i64* %110, align 4, !tbaa !15
  %111 = and i64 %107, 4294967295
  %112 = bitcast i8** %unprocessed to i64*
  store i64 %111, i64* %112, align 4, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %if.else58, %if.end86, %TaintCheck.succeeded71, %TaintCheck.succeeded81, %entry, %if.end146
  %retval.0 = phi i32 [ 0, %if.end146 ], [ -1, %entry ], [ -1, %TaintCheck.succeeded81 ], [ -1, %TaintCheck.succeeded71 ], [ -1, %if.end86 ], [ -1, %if.else58 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_utf16_hex(i8* %s, i32* nocapture %result) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %s to i64
  %1 = and i64 %0, 4294967295
  %2 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %2
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %entry
  %3 = load i64, i64* @sbxHeap, align 8
  %4 = add i64 %3, %1
  %5 = inttoptr i64 %4 to i8*
  %6 = load i8, i8* %5, align 4, !tbaa !2
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %cleanup, label %TaintCheck.succeeded6

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %arrayidx7 = getelementptr inbounds i8, i8* %5, i64 1
  %7 = load i8, i8* %arrayidx7, align 1, !tbaa !2
  %cmp9 = icmp eq i8 %7, 0
  br i1 %cmp9, label %cleanup, label %TaintCheck.succeeded16

TaintCheck.succeeded16:                           ; preds = %TaintCheck.succeeded6
  %arrayidx17 = getelementptr inbounds i8, i8* %5, i64 2
  %8 = load i8, i8* %arrayidx17, align 2, !tbaa !2
  %cmp19 = icmp eq i8 %8, 0
  br i1 %cmp19, label %cleanup, label %TaintCheck.succeeded26

TaintCheck.succeeded26:                           ; preds = %TaintCheck.succeeded16
  %arrayidx27 = getelementptr inbounds i8, i8* %5, i64 3
  %9 = load i8, i8* %arrayidx27, align 1, !tbaa !2
  %cmp29 = icmp eq i8 %9, 0
  br i1 %cmp29, label %cleanup, label %TaintCheck.succeeded35

TaintCheck.succeeded35:                           ; preds = %TaintCheck.succeeded26
  %conv.i = sext i8 %6 to i32
  %c.off.i = add i8 %6, -48
  %10 = icmp ult i8 %c.off.i, 10
  br i1 %10, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %TaintCheck.succeeded35
  %sub.i = add nsw i32 %conv.i, -48
  br label %TaintCheck.succeeded41

if.else.i:                                        ; preds = %TaintCheck.succeeded35
  %c.off40.i = add i8 %6, -97
  %11 = icmp ult i8 %c.off40.i, 6
  br i1 %11, label %if.then13.i, label %if.else16.i

if.then13.i:                                      ; preds = %if.else.i
  %add.i = add nsw i32 %conv.i, -87
  br label %TaintCheck.succeeded41

if.else16.i:                                      ; preds = %if.else.i
  %c.off41.i = add i8 %6, -65
  %12 = icmp ult i8 %c.off41.i, 6
  %add27.i = add nsw i32 %conv.i, -55
  %spec.select.i = select i1 %12, i32 %add27.i, i32 -1
  br label %TaintCheck.succeeded41

TaintCheck.succeeded41:                           ; preds = %if.else16.i, %if.then13.i, %if.then.i
  %call95 = phi i32 [ %spec.select.i, %if.else16.i ], [ %sub.i, %if.then.i ], [ %add.i, %if.then13.i ]
  %conv.i128 = sext i8 %7 to i32
  %c.off.i129 = add i8 %7, -48
  %13 = icmp ult i8 %c.off.i129, 10
  br i1 %13, label %if.then.i131, label %if.else.i133

if.then.i131:                                     ; preds = %TaintCheck.succeeded41
  %sub.i130 = add nsw i32 %conv.i128, -48
  br label %TaintCheck.succeeded48

if.else.i133:                                     ; preds = %TaintCheck.succeeded41
  %c.off40.i132 = add i8 %7, -97
  %14 = icmp ult i8 %c.off40.i132, 6
  br i1 %14, label %if.then13.i135, label %if.else16.i139

if.then13.i135:                                   ; preds = %if.else.i133
  %add.i134 = add nsw i32 %conv.i128, -87
  br label %TaintCheck.succeeded48

if.else16.i139:                                   ; preds = %if.else.i133
  %c.off41.i136 = add i8 %7, -65
  %15 = icmp ult i8 %c.off41.i136, 6
  %add27.i137 = add nsw i32 %conv.i128, -55
  %spec.select.i138 = select i1 %15, i32 %add27.i137, i32 -1
  br label %TaintCheck.succeeded48

TaintCheck.succeeded48:                           ; preds = %if.else16.i139, %if.then13.i135, %if.then.i131
  %call43143 = phi i32 [ %spec.select.i138, %if.else16.i139 ], [ %sub.i130, %if.then.i131 ], [ %add.i134, %if.then13.i135 ]
  %conv.i112 = sext i8 %8 to i32
  %c.off.i113 = add i8 %8, -48
  %16 = icmp ult i8 %c.off.i113, 10
  br i1 %16, label %if.then.i115, label %if.else.i117

if.then.i115:                                     ; preds = %TaintCheck.succeeded48
  %sub.i114 = add nsw i32 %conv.i112, -48
  br label %TaintCheck.succeeded55

if.else.i117:                                     ; preds = %TaintCheck.succeeded48
  %c.off40.i116 = add i8 %8, -97
  %17 = icmp ult i8 %c.off40.i116, 6
  br i1 %17, label %if.then13.i119, label %if.else16.i123

if.then13.i119:                                   ; preds = %if.else.i117
  %add.i118 = add nsw i32 %conv.i112, -87
  br label %TaintCheck.succeeded55

if.else16.i123:                                   ; preds = %if.else.i117
  %c.off41.i120 = add i8 %8, -65
  %18 = icmp ult i8 %c.off41.i120, 6
  %add27.i121 = add nsw i32 %conv.i112, -55
  %spec.select.i122 = select i1 %18, i32 %add27.i121, i32 -1
  br label %TaintCheck.succeeded55

TaintCheck.succeeded55:                           ; preds = %if.else16.i123, %if.then13.i119, %if.then.i115
  %call50127 = phi i32 [ %spec.select.i122, %if.else16.i123 ], [ %sub.i114, %if.then.i115 ], [ %add.i118, %if.then13.i119 ]
  %conv.i96 = sext i8 %9 to i32
  %c.off.i97 = add i8 %9, -48
  %19 = icmp ult i8 %c.off.i97, 10
  br i1 %19, label %if.then.i99, label %if.else.i101

if.then.i99:                                      ; preds = %TaintCheck.succeeded55
  %sub.i98 = add nsw i32 %conv.i96, -48
  br label %hex_char_to_int.exit110

if.else.i101:                                     ; preds = %TaintCheck.succeeded55
  %c.off40.i100 = add i8 %9, -97
  %20 = icmp ult i8 %c.off40.i100, 6
  br i1 %20, label %if.then13.i103, label %if.else16.i107

if.then13.i103:                                   ; preds = %if.else.i101
  %add.i102 = add nsw i32 %conv.i96, -87
  br label %hex_char_to_int.exit110

if.else16.i107:                                   ; preds = %if.else.i101
  %c.off41.i104 = add i8 %9, -65
  %21 = icmp ult i8 %c.off41.i104, 6
  %add27.i105 = add nsw i32 %conv.i96, -55
  %spec.select.i106 = select i1 %21, i32 %add27.i105, i32 -1
  br label %hex_char_to_int.exit110

hex_char_to_int.exit110:                          ; preds = %if.then.i99, %if.then13.i103, %if.else16.i107
  %call57111 = phi i32 [ %spec.select.i106, %if.else16.i107 ], [ %sub.i98, %if.then.i99 ], [ %add.i102, %if.then13.i103 ]
  %cmp58 = icmp eq i32 %call95, -1
  %cmp61 = icmp eq i32 %call43143, -1
  %or.cond = or i1 %cmp58, %cmp61
  %cmp64 = icmp eq i32 %call50127, -1
  %or.cond78 = or i1 %or.cond, %cmp64
  %cmp67 = icmp eq i32 %call57111, -1
  %or.cond79 = or i1 %or.cond78, %cmp67
  br i1 %or.cond79, label %cleanup, label %if.end70

if.end70:                                         ; preds = %hex_char_to_int.exit110
  %shl = shl nsw i32 %call95, 12
  %shl71 = shl nsw i32 %call43143, 8
  %or = or i32 %shl71, %shl
  %shl72 = shl nsw i32 %call50127, 4
  %or73 = or i32 %or, %shl72
  %or74 = or i32 %or73, %call57111
  store i32 %or74, i32* %result, align 4, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %hex_char_to_int.exit110, %TaintCheck.succeeded, %TaintCheck.succeeded6, %TaintCheck.succeeded16, %TaintCheck.succeeded26, %if.end70
  %retval.0 = phi i32 [ 1, %if.end70 ], [ 0, %TaintCheck.succeeded26 ], [ 0, %TaintCheck.succeeded16 ], [ 0, %TaintCheck.succeeded6 ], [ 0, %TaintCheck.succeeded ], [ 0, %hex_char_to_int.exit110 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i8* @get_quoted_string(i8** %string) local_unnamed_addr #0 {
entry:
  %input_tmp.i = alloca i8*, align 8
  %output_tmp.i = alloca i8*, align 8
  %IsoHeap.non_null.not = icmp eq i8** %string, null
  br i1 %IsoHeap.non_null.not, label %TaintCheck.failed, label %TaintCheck.succeeded.i

TaintCheck.succeeded.i:                           ; preds = %entry
  %0 = load i8*, i8** %string, align 4, !tbaa !15
  %1 = ptrtoint i8* %0 to i64
  %2 = and i64 %1, 4294967295
  %3 = inttoptr i64 %2 to i8*
  %4 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %2, %4
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded2.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded2.i:                          ; preds = %TaintCheck.succeeded.i
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to i8*
  %8 = load i8, i8* %7, align 1, !tbaa !2
  %cmp.not.i = icmp eq i8 %8, 34
  br i1 %cmp.not.i, label %TaintCheck.succeeded6.i, label %cleanup

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded2.i
  %9 = bitcast i8** %string to i64*
  %storemerge.in.in81.i = getelementptr inbounds i8, i8* %0, i64 1
  %storemerge.in82.i = ptrtoint i8* %storemerge.in.in81.i to i64
  %storemerge83.i = and i64 %storemerge.in82.i, 4294967295
  store i64 %storemerge83.i, i64* %9, align 4, !tbaa !15
  %10 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1085.i = icmp ult i64 %storemerge83.i, %10
  br i1 %SandMem.TaintCheck1085.i, label %TaintCheck.succeeded14.lr.ph.i, label %wasm.trap.fail11.i

TaintCheck.succeeded14.lr.ph.i:                   ; preds = %TaintCheck.succeeded6.i
  %11 = load i64, i64* @sbxHeap, align 8
  br label %TaintCheck.succeeded14.i

wasm.trap.fail11.i:                               ; preds = %TaintCheck.succeeded63.i, %TaintCheck.succeeded6.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded14.i:                         ; preds = %TaintCheck.succeeded63.i, %TaintCheck.succeeded14.lr.ph.i
  %storemerge86.i = phi i64 [ %storemerge83.i, %TaintCheck.succeeded14.lr.ph.i ], [ %storemerge.i, %TaintCheck.succeeded63.i ]
  %12 = add i64 %storemerge86.i, %11
  %13 = inttoptr i64 %12 to i8*
  %14 = load i8, i8* %13, align 1, !tbaa !2
  switch i8 %14, label %TaintCheck.succeeded63.i [
    i8 34, label %TaintCheck.succeeded3
    i8 0, label %cleanup
    i8 92, label %TaintCheck.succeeded44.i
  ]

TaintCheck.succeeded44.i:                         ; preds = %TaintCheck.succeeded14.i
  %.cast87.i = inttoptr i64 %storemerge86.i to i8*
  %incdec.ptr45.i = getelementptr inbounds i8, i8* %.cast87.i, i64 1
  %15 = ptrtoint i8* %incdec.ptr45.i to i64
  %16 = and i64 %15, 4294967295
  store i64 %16, i64* %9, align 4, !tbaa !15
  %SandMem.TaintCheck49.i = icmp ult i64 %16, %10
  br i1 %SandMem.TaintCheck49.i, label %TaintCheck.succeeded53.i, label %wasm.trap.fail50.i

wasm.trap.fail50.i:                               ; preds = %TaintCheck.succeeded44.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded53.i:                         ; preds = %TaintCheck.succeeded44.i
  %17 = add i64 %16, %11
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8, i8* %18, align 1, !tbaa !2
  %cmp55.i = icmp eq i8 %19, 0
  br i1 %cmp55.i, label %cleanup, label %TaintCheck.succeeded63.i

TaintCheck.succeeded63.i:                         ; preds = %TaintCheck.succeeded53.i, %TaintCheck.succeeded14.i
  %.in.i = phi i64 [ %16, %TaintCheck.succeeded53.i ], [ %storemerge86.i, %TaintCheck.succeeded14.i ]
  %20 = inttoptr i64 %.in.i to i8*
  %storemerge.in.in.i = getelementptr inbounds i8, i8* %20, i64 1
  %storemerge.in.i = ptrtoint i8* %storemerge.in.in.i to i64
  %storemerge.i = and i64 %storemerge.in.i, 4294967295
  store i64 %storemerge.i, i64* %9, align 4, !tbaa !15
  %SandMem.TaintCheck10.i = icmp ult i64 %storemerge.i, %10
  br i1 %SandMem.TaintCheck10.i, label %TaintCheck.succeeded14.i, label %wasm.trap.fail11.i, !llvm.loop !33

TaintCheck.failed:                                ; preds = %entry
  tail call void @llvm.trap() #17
  unreachable

TaintCheck.succeeded3:                            ; preds = %TaintCheck.succeeded14.i
  %.cast87.le.i = inttoptr i64 %storemerge86.i to i8*
  %incdec.ptr68.i = getelementptr inbounds i8, i8* %.cast87.le.i, i64 1
  %21 = ptrtoint i8* %incdec.ptr68.i to i64
  %22 = and i64 %21, 4294967295
  store i64 %22, i64* %9, align 4, !tbaa !15
  %sub.ptr.sub = sub nsw i64 %22, %2
  %sub = add nsw i64 %sub.ptr.sub, -2
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %23 = ptrtoint i8* %add.ptr to i64
  %24 = and i64 %23, 4294967295
  %add.i = add nsw i64 %sub.ptr.sub, -1
  %cmp.i.i = icmp eq i64 %sub.ptr.sub, 0
  br i1 %cmp.i.i, label %string_tainted_malloc.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %TaintCheck.succeeded3
  %call.i.i = tail call i8* @t_malloc(i64 %sub.ptr.sub) #16
  %25 = ptrtoint i8* %call.i.i to i64
  %26 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %26, i64* @sbxHeapRange, align 8
  %27 = and i64 %25, 4294967295
  %28 = inttoptr i64 %27 to i8*
  %29 = trunc i64 %25 to i32
  %cmp1.not.i.i = icmp eq i32 %29, 0
  br i1 %cmp1.not.i.i, label %string_tainted_malloc.exit.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %SandMem.TaintCheck.i.i = icmp ult i64 %27, %26
  br i1 %SandMem.TaintCheck.i.i, label %TaintCheck.succeeded.i.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %if.then2.i.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i.i:                         ; preds = %if.then2.i.i
  %30 = load i64, i64* @sbxHeap, align 8
  %31 = add i64 %30, %27
  %32 = inttoptr i64 %31 to i8*
  %arrayidx.i.i = getelementptr inbounds i8, i8* %32, i64 %add.i
  %33 = ptrtoint i8* %arrayidx.i.i to i64
  %34 = trunc i64 %33 to i32
  %add.ptr.i.i = getelementptr inbounds i8, i8* %28, i64 %sub.ptr.sub
  %35 = ptrtoint i8* %add.ptr.i.i to i64
  %36 = trunc i64 %35 to i32
  %IsoHeap.lower.i.i = icmp ule i32 %29, %34
  %IsoHeap.upper.i.i = icmp ult i32 %34, %36
  %IsoHeap.range.i.i = and i1 %IsoHeap.lower.i.i, %IsoHeap.upper.i.i
  br i1 %IsoHeap.range.i.i, label %TaintCheck.succeeded9.i.i, label %TaintCheck.failed8.i.i

TaintCheck.succeeded9.i.i:                        ; preds = %TaintCheck.succeeded.i.i
  store i8 0, i8* %arrayidx.i.i, align 1, !tbaa !2
  br label %string_tainted_malloc.exit.i

TaintCheck.failed8.i.i:                           ; preds = %TaintCheck.succeeded.i.i
  tail call void @llvm.trap() #17
  unreachable

string_tainted_malloc.exit.i:                     ; preds = %TaintCheck.succeeded9.i.i, %if.end.i.i, %TaintCheck.succeeded3
  %retval.0.i.i = phi i8* [ null, %TaintCheck.succeeded3 ], [ %28, %TaintCheck.succeeded9.i.i ], [ %28, %if.end.i.i ]
  %37 = ptrtoint i8* %retval.0.i.i to i64
  %38 = and i64 %37, 4294967295
  %39 = inttoptr i64 %38 to i8*
  %40 = trunc i64 %37 to i32
  %cmp.i = icmp eq i32 %40, 0
  br i1 %cmp.i, label %IsoHeap.success156.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %string_tainted_malloc.exit.i
  %41 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck265.i = icmp ult i64 %24, %41
  br i1 %SandMem.TaintCheck265.i, label %TaintCheck.succeeded.lr.ph.i, label %wasm.trap.fail.i15

TaintCheck.succeeded.lr.ph.i:                     ; preds = %while.cond.preheader.i
  %42 = load i64, i64* @sbxHeap, align 8
  %43 = bitcast i8** %input_tmp.i to i8*
  %44 = bitcast i8** %input_tmp.i to i64*
  %45 = bitcast i8** %output_tmp.i to i8*
  %46 = bitcast i8** %output_tmp.i to i64*
  br label %TaintCheck.succeeded.i16

wasm.trap.fail.i15:                               ; preds = %if.end96.i, %while.cond.preheader.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i16:                         ; preds = %if.end96.i, %TaintCheck.succeeded.lr.ph.i
  %input_ptr.0.in267.i = phi i64 [ %24, %TaintCheck.succeeded.lr.ph.i ], [ %68, %if.end96.i ]
  %output_ptr.0.in266.i = phi i64 [ %38, %TaintCheck.succeeded.lr.ph.i ], [ %66, %if.end96.i ]
  %input_ptr.0268.i = inttoptr i64 %input_ptr.0.in267.i to i8*
  %47 = add i64 %input_ptr.0.in267.i, %42
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8, i8* %48, align 1, !tbaa !2
  %cmp1.not.i = icmp ne i8 %49, 0
  %sub.ptr.sub.i = sub nsw i64 %input_ptr.0.in267.i, %24
  %cmp3.i = icmp ult i64 %sub.ptr.sub.i, %sub
  %or.cond.i = and i1 %cmp3.i, %cmp1.not.i
  br i1 %or.cond.i, label %TaintCheck.succeeded10.i, label %while.end.i

TaintCheck.succeeded10.i:                         ; preds = %TaintCheck.succeeded.i16
  %cmp12.i = icmp eq i8 %49, 92
  br i1 %cmp12.i, label %if.then14.i, label %TaintCheck.succeeded79.i

if.then14.i:                                      ; preds = %TaintCheck.succeeded10.i
  %incdec.ptr.i = getelementptr inbounds i8, i8* %input_ptr.0268.i, i64 1
  %50 = ptrtoint i8* %incdec.ptr.i to i64
  %51 = and i64 %50, 4294967295
  %52 = inttoptr i64 %51 to i8*
  %SandMem.TaintCheck15.i = icmp ult i64 %51, %41
  br i1 %SandMem.TaintCheck15.i, label %TaintCheck.succeeded19.i, label %wasm.trap.fail16.i

wasm.trap.fail16.i:                               ; preds = %if.then14.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded19.i:                         ; preds = %if.then14.i
  %53 = add i64 %51, %42
  %54 = inttoptr i64 %53 to i8*
  %55 = load i8, i8* %54, align 1, !tbaa !2
  %conv20.i = sext i8 %55 to i32
  switch i32 %conv20.i, label %TaintCheck.succeeded146.i [
    i32 34, label %sw.bb.i
    i32 92, label %sw.bb26.i
    i32 47, label %sw.bb32.i
    i32 98, label %sw.bb38.i
    i32 102, label %sw.bb44.i
    i32 110, label %sw.bb50.i
    i32 114, label %sw.bb56.i
    i32 116, label %sw.bb62.i
    i32 117, label %sw.bb68.i
  ]

sw.bb.i:                                          ; preds = %TaintCheck.succeeded19.i
  %SandMem.TaintCheck21.i = icmp ult i64 %output_ptr.0.in266.i, %41
  br i1 %SandMem.TaintCheck21.i, label %if.end96.i.sink.split, label %wasm.trap.fail22.i

wasm.trap.fail22.i:                               ; preds = %sw.bb.i
  tail call void @llvm.trap() #16
  unreachable

sw.bb26.i:                                        ; preds = %TaintCheck.succeeded19.i
  %SandMem.TaintCheck27.i = icmp ult i64 %output_ptr.0.in266.i, %41
  br i1 %SandMem.TaintCheck27.i, label %if.end96.i.sink.split, label %wasm.trap.fail28.i

wasm.trap.fail28.i:                               ; preds = %sw.bb26.i
  tail call void @llvm.trap() #16
  unreachable

sw.bb32.i:                                        ; preds = %TaintCheck.succeeded19.i
  %SandMem.TaintCheck33.i = icmp ult i64 %output_ptr.0.in266.i, %41
  br i1 %SandMem.TaintCheck33.i, label %if.end96.i.sink.split, label %wasm.trap.fail34.i

wasm.trap.fail34.i:                               ; preds = %sw.bb32.i
  tail call void @llvm.trap() #16
  unreachable

sw.bb38.i:                                        ; preds = %TaintCheck.succeeded19.i
  %SandMem.TaintCheck39.i = icmp ult i64 %output_ptr.0.in266.i, %41
  br i1 %SandMem.TaintCheck39.i, label %if.end96.i.sink.split, label %wasm.trap.fail40.i

wasm.trap.fail40.i:                               ; preds = %sw.bb38.i
  tail call void @llvm.trap() #16
  unreachable

sw.bb44.i:                                        ; preds = %TaintCheck.succeeded19.i
  %SandMem.TaintCheck45.i = icmp ult i64 %output_ptr.0.in266.i, %41
  br i1 %SandMem.TaintCheck45.i, label %if.end96.i.sink.split, label %wasm.trap.fail46.i

wasm.trap.fail46.i:                               ; preds = %sw.bb44.i
  tail call void @llvm.trap() #16
  unreachable

sw.bb50.i:                                        ; preds = %TaintCheck.succeeded19.i
  %SandMem.TaintCheck51.i = icmp ult i64 %output_ptr.0.in266.i, %41
  br i1 %SandMem.TaintCheck51.i, label %if.end96.i.sink.split, label %wasm.trap.fail52.i

wasm.trap.fail52.i:                               ; preds = %sw.bb50.i
  tail call void @llvm.trap() #16
  unreachable

sw.bb56.i:                                        ; preds = %TaintCheck.succeeded19.i
  %SandMem.TaintCheck57.i = icmp ult i64 %output_ptr.0.in266.i, %41
  br i1 %SandMem.TaintCheck57.i, label %if.end96.i.sink.split, label %wasm.trap.fail58.i

wasm.trap.fail58.i:                               ; preds = %sw.bb56.i
  tail call void @llvm.trap() #16
  unreachable

sw.bb62.i:                                        ; preds = %TaintCheck.succeeded19.i
  %SandMem.TaintCheck63.i = icmp ult i64 %output_ptr.0.in266.i, %41
  br i1 %SandMem.TaintCheck63.i, label %if.end96.i.sink.split, label %wasm.trap.fail64.i

wasm.trap.fail64.i:                               ; preds = %sw.bb62.i
  tail call void @llvm.trap() #16
  unreachable

sw.bb68.i:                                        ; preds = %TaintCheck.succeeded19.i
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #16
  store i64 %51, i64* %44, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #16
  store i64 %output_ptr.0.in266.i, i64* %46, align 8, !tbaa !15
  %call69.i = call i32 @parse_utf16(i8** nonnull %input_tmp.i, i8** nonnull %output_tmp.i) #16
  %cmp70.i = icmp eq i32 %call69.i, -1
  %56 = load i8*, i8** %input_tmp.i, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = and i64 %57, 4294967295
  %59 = inttoptr i64 %58 to i8*
  %60 = load i8*, i8** %output_tmp.i, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = and i64 %61, 4294967295
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #16
  br i1 %cmp70.i, label %TaintCheck.succeeded146.i, label %if.end96.i

TaintCheck.succeeded79.i:                         ; preds = %TaintCheck.succeeded10.i
  %cmp81.i = icmp ult i8 %49, 32
  br i1 %cmp81.i, label %TaintCheck.succeeded146.i, label %TaintCheck.succeeded89.i

TaintCheck.succeeded89.i:                         ; preds = %TaintCheck.succeeded79.i
  %SandMem.TaintCheck90.i = icmp ult i64 %output_ptr.0.in266.i, %41
  br i1 %SandMem.TaintCheck90.i, label %if.end96.i.sink.split, label %wasm.trap.fail91.i

wasm.trap.fail91.i:                               ; preds = %TaintCheck.succeeded89.i
  tail call void @llvm.trap() #16
  unreachable

if.end96.i.sink.split:                            ; preds = %TaintCheck.succeeded89.i, %sw.bb62.i, %sw.bb56.i, %sw.bb50.i, %sw.bb44.i, %sw.bb38.i, %sw.bb32.i, %sw.bb26.i, %sw.bb.i
  %.sink = phi i8 [ 34, %sw.bb.i ], [ 92, %sw.bb26.i ], [ 47, %sw.bb32.i ], [ 8, %sw.bb38.i ], [ 12, %sw.bb44.i ], [ 10, %sw.bb50.i ], [ 13, %sw.bb56.i ], [ 9, %sw.bb62.i ], [ %49, %TaintCheck.succeeded89.i ]
  %input_ptr.2.i.ph = phi i8* [ %52, %sw.bb.i ], [ %52, %sw.bb26.i ], [ %52, %sw.bb32.i ], [ %52, %sw.bb38.i ], [ %52, %sw.bb44.i ], [ %52, %sw.bb50.i ], [ %52, %sw.bb56.i ], [ %52, %sw.bb62.i ], [ %input_ptr.0268.i, %TaintCheck.succeeded89.i ]
  %63 = add i64 %output_ptr.0.in266.i, %42
  %64 = inttoptr i64 %63 to i8*
  store i8 %.sink, i8* %64, align 1, !tbaa !2
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.end96.i.sink.split, %sw.bb68.i
  %output_ptr.2.in.i = phi i64 [ %62, %sw.bb68.i ], [ %output_ptr.0.in266.i, %if.end96.i.sink.split ]
  %input_ptr.2.i = phi i8* [ %59, %sw.bb68.i ], [ %input_ptr.2.i.ph, %if.end96.i.sink.split ]
  %output_ptr.2.i = inttoptr i64 %output_ptr.2.in.i to i8*
  %incdec.ptr97.i = getelementptr inbounds i8, i8* %output_ptr.2.i, i64 1
  %65 = ptrtoint i8* %incdec.ptr97.i to i64
  %66 = and i64 %65, 4294967295
  %incdec.ptr98.i = getelementptr inbounds i8, i8* %input_ptr.2.i, i64 1
  %67 = ptrtoint i8* %incdec.ptr98.i to i64
  %68 = and i64 %67, 4294967295
  %SandMem.TaintCheck.i18 = icmp ult i64 %68, %41
  br i1 %SandMem.TaintCheck.i18, label %TaintCheck.succeeded.i16, label %wasm.trap.fail.i15, !llvm.loop !34

while.end.i:                                      ; preds = %TaintCheck.succeeded.i16
  %SandMem.TaintCheck99.i = icmp ult i64 %output_ptr.0.in266.i, %41
  br i1 %SandMem.TaintCheck99.i, label %TaintCheck.succeeded103.i, label %wasm.trap.fail100.i

wasm.trap.fail100.i:                              ; preds = %while.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded103.i:                        ; preds = %while.end.i
  %69 = add i64 %output_ptr.0.in266.i, %42
  %70 = inttoptr i64 %69 to i8*
  store i8 0, i8* %70, align 1, !tbaa !2
  %sub.ptr.sub106.i = sub nsw i64 %output_ptr.0.in266.i, %38
  %add107.i = add nsw i64 %sub.ptr.sub106.i, 1
  %cmp.i209.i = icmp eq i64 %add107.i, -1
  br i1 %cmp.i209.i, label %string_tainted_malloc.exit226.i, label %if.end.i213.i

if.end.i213.i:                                    ; preds = %TaintCheck.succeeded103.i
  %add.i210.i = add nsw i64 %sub.ptr.sub106.i, 2
  %call.i211.i = tail call i8* @t_malloc(i64 %add.i210.i) #16
  %71 = ptrtoint i8* %call.i211.i to i64
  %72 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %72, i64* @sbxHeapRange, align 8
  %73 = and i64 %71, 4294967295
  %74 = inttoptr i64 %73 to i8*
  %75 = trunc i64 %71 to i32
  %cmp1.not.i212.i = icmp eq i32 %75, 0
  br i1 %cmp1.not.i212.i, label %string_tainted_malloc.exit226.i, label %if.then2.i215.i

if.then2.i215.i:                                  ; preds = %if.end.i213.i
  %SandMem.TaintCheck.i214.i = icmp ult i64 %73, %72
  br i1 %SandMem.TaintCheck.i214.i, label %TaintCheck.succeeded.i222.i, label %wasm.trap.fail.i216.i

wasm.trap.fail.i216.i:                            ; preds = %if.then2.i215.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i222.i:                      ; preds = %if.then2.i215.i
  %76 = load i64, i64* @sbxHeap, align 8
  %77 = add i64 %76, %73
  %78 = inttoptr i64 %77 to i8*
  %arrayidx.i217.i = getelementptr inbounds i8, i8* %78, i64 %add107.i
  %79 = ptrtoint i8* %arrayidx.i217.i to i64
  %80 = trunc i64 %79 to i32
  %add.ptr.i218.i = getelementptr inbounds i8, i8* %74, i64 %add.i210.i
  %81 = ptrtoint i8* %add.ptr.i218.i to i64
  %82 = trunc i64 %81 to i32
  %IsoHeap.lower.i219.i = icmp ule i32 %75, %80
  %IsoHeap.upper.i220.i = icmp ult i32 %80, %82
  %IsoHeap.range.i221.i = and i1 %IsoHeap.lower.i219.i, %IsoHeap.upper.i220.i
  br i1 %IsoHeap.range.i221.i, label %TaintCheck.succeeded9.i223.i, label %TaintCheck.failed8.i224.i

TaintCheck.succeeded9.i223.i:                     ; preds = %TaintCheck.succeeded.i222.i
  store i8 0, i8* %arrayidx.i217.i, align 1, !tbaa !2
  br label %string_tainted_malloc.exit226.i

TaintCheck.failed8.i224.i:                        ; preds = %TaintCheck.succeeded.i222.i
  tail call void @llvm.trap() #17
  unreachable

string_tainted_malloc.exit226.i:                  ; preds = %TaintCheck.succeeded9.i223.i, %if.end.i213.i, %TaintCheck.succeeded103.i
  %retval.0.i225.i = phi i8* [ null, %TaintCheck.succeeded103.i ], [ %74, %TaintCheck.succeeded9.i223.i ], [ %74, %if.end.i213.i ]
  %83 = ptrtoint i8* %retval.0.i225.i to i64
  %84 = and i64 %83, 4294967295
  %85 = trunc i64 %83 to i32
  %cmp110.i = icmp eq i32 %85, 0
  br i1 %cmp110.i, label %TaintCheck.succeeded146.i, label %if.end113.i

if.end113.i:                                      ; preds = %string_tainted_malloc.exit226.i
  %86 = load i64, i64* @sbxHeap, align 8
  %87 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck114.i = icmp ult i64 %84, %87
  br i1 %SandMem.TaintCheck114.i, label %TaintCheck.succeeded118.i, label %wasm.trap.fail115.i

wasm.trap.fail115.i:                              ; preds = %if.end113.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded118.i:                        ; preds = %if.end113.i
  %SandMem.TaintCheck119.i = icmp ult i64 %38, %87
  br i1 %SandMem.TaintCheck119.i, label %TaintCheck.succeeded128.i, label %wasm.trap.fail120.i

wasm.trap.fail120.i:                              ; preds = %TaintCheck.succeeded118.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded128.i:                        ; preds = %TaintCheck.succeeded118.i
  %88 = add i64 %86, %38
  %89 = add i64 %86, %84
  %90 = inttoptr i64 %89 to i8*
  %91 = inttoptr i64 %88 to i8*
  %call124.i = tail call i8* @t_memcpy(i8* %90, i8* %91, i64 %add107.i) #16
  %add.ptr.i = getelementptr inbounds i8, i8* %39, i64 1
  %92 = ptrtoint i8* %add.ptr.i to i64
  %93 = trunc i64 %92 to i32
  %IsoHeap.upper.not.i = icmp ugt i32 %40, %93
  br i1 %IsoHeap.upper.not.i, label %TaintCheck.failed134.i, label %IsoHeap.success.i

IsoHeap.success.i:                                ; preds = %TaintCheck.succeeded128.i
  %94 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck135.i = icmp ult i64 %38, %94
  br i1 %SandMem.TaintCheck135.i, label %TaintCheck.succeeded139.i, label %wasm.trap.fail136.i

TaintCheck.failed134.i:                           ; preds = %TaintCheck.succeeded128.i
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail136.i:                              ; preds = %IsoHeap.success.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded139.i:                        ; preds = %IsoHeap.success.i
  %95 = load i64, i64* @sbxHeap, align 8
  %96 = add i64 %95, %38
  %97 = inttoptr i64 %96 to i8*
  tail call void @t_free(i8* %97) #16
  %98 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  %phi.cast = inttoptr i64 %84 to i8*
  br label %process_string.exit

TaintCheck.succeeded146.i:                        ; preds = %TaintCheck.succeeded79.i, %sw.bb68.i, %TaintCheck.succeeded19.i, %string_tainted_malloc.exit226.i
  %add.ptr142.i = getelementptr inbounds i8, i8* %39, i64 1
  %99 = ptrtoint i8* %add.ptr142.i to i64
  %100 = trunc i64 %99 to i32
  %IsoHeap.upper153.not.i = icmp ugt i32 %40, %100
  br i1 %IsoHeap.upper153.not.i, label %TaintCheck.failed155.i, label %IsoHeap.success156.i

IsoHeap.success156.i:                             ; preds = %TaintCheck.succeeded146.i, %string_tainted_malloc.exit.i
  %101 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck157.i = icmp ult i64 %38, %101
  br i1 %SandMem.TaintCheck157.i, label %TaintCheck.succeeded161.i, label %wasm.trap.fail158.i

TaintCheck.failed155.i:                           ; preds = %TaintCheck.succeeded146.i
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail158.i:                              ; preds = %IsoHeap.success156.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded161.i:                        ; preds = %IsoHeap.success156.i
  %102 = load i64, i64* @sbxHeap, align 8
  %103 = add i64 %102, %38
  %104 = inttoptr i64 %103 to i8*
  tail call void @t_free(i8* %104) #16
  %105 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  br label %process_string.exit

process_string.exit:                              ; preds = %TaintCheck.succeeded139.i, %TaintCheck.succeeded161.i
  %storemerge.i19 = phi i64 [ %98, %TaintCheck.succeeded139.i ], [ %105, %TaintCheck.succeeded161.i ]
  %retval.0.i20 = phi i8* [ %phi.cast, %TaintCheck.succeeded139.i ], [ null, %TaintCheck.succeeded161.i ]
  store i64 %storemerge.i19, i64* @sbxHeapRange, align 8
  br label %cleanup

cleanup:                                          ; preds = %TaintCheck.succeeded53.i, %TaintCheck.succeeded14.i, %TaintCheck.succeeded2.i, %process_string.exit
  %retval.0 = phi i8* [ %retval.0.i20, %process_string.exit ], [ null, %TaintCheck.succeeded2.i ], [ null, %TaintCheck.succeeded14.i ], [ null, %TaintCheck.succeeded53.i ]
  ret i8* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @parse_value(i8** %string, i64 %nesting) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %nesting, 1000
  br i1 %cmp, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %IsoHeap.non_null.not = icmp eq i8** %string, null
  br i1 %IsoHeap.non_null.not, label %TaintCheck.failed, label %TaintCheck.succeeded.lr.ph

TaintCheck.succeeded.lr.ph:                       ; preds = %while.cond.preheader
  %0 = load i64, i64* @sbxHeapRange, align 8
  %1 = load i64, i64* @sbxHeap, align 8
  %2 = bitcast i8** %string to i64*
  %.pre = load i8*, i8** %string, align 4, !tbaa !15
  %3 = ptrtoint i8* %.pre to i64
  %4 = and i64 %3, 4294967295
  %SandMem.TaintCheck582 = icmp ult i64 %4, %0
  br i1 %SandMem.TaintCheck582, label %TaintCheck.succeeded2, label %wasm.trap.fail

TaintCheck.failed:                                ; preds = %while.cond.preheader
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail:                                   ; preds = %TaintCheck.succeeded5, %TaintCheck.succeeded.lr.ph
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded2:                            ; preds = %TaintCheck.succeeded.lr.ph, %TaintCheck.succeeded5
  %5 = phi i64 [ %11, %TaintCheck.succeeded5 ], [ %4, %TaintCheck.succeeded.lr.ph ]
  %6 = phi i8* [ %12, %TaintCheck.succeeded5 ], [ %.pre, %TaintCheck.succeeded.lr.ph ]
  %7 = add i64 %1, %5
  %8 = inttoptr i64 %7 to i8*
  %9 = load i8, i8* %8, align 1, !tbaa !2
  %conv = zext i8 %9 to i32
  %call = tail call i32 @isspace(i32 %conv) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %TaintCheck.succeeded13, label %TaintCheck.succeeded5

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded2
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i64 1
  %10 = ptrtoint i8* %incdec.ptr to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %2, align 4, !tbaa !15
  %12 = inttoptr i64 %11 to i8*
  %SandMem.TaintCheck = icmp ult i64 %11, %0
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded2, label %wasm.trap.fail

TaintCheck.succeeded13:                           ; preds = %TaintCheck.succeeded2
  %13 = inttoptr i64 %7 to i8*
  %conv14 = sext i8 %9 to i32
  switch i32 %conv14, label %return [
    i32 123, label %sw.bb
    i32 91, label %sw.bb16
    i32 34, label %sw.bb20
    i32 102, label %TaintCheck.succeeded2.i49
    i32 116, label %TaintCheck.succeeded2.i49
    i32 45, label %sw.bb26
    i32 48, label %sw.bb26
    i32 49, label %sw.bb26
    i32 50, label %sw.bb26
    i32 51, label %sw.bb26
    i32 52, label %sw.bb26
    i32 53, label %sw.bb26
    i32 54, label %sw.bb26
    i32 55, label %sw.bb26
    i32 56, label %sw.bb26
    i32 57, label %sw.bb26
    i32 110, label %TaintCheck.succeeded2.i
  ]

sw.bb:                                            ; preds = %TaintCheck.succeeded13
  %add = add i64 %nesting, 1
  %call.i76 = tail call %Tstruct.json_value_t_t* @json_value_init_object() #16
  %14 = ptrtoint %Tstruct.json_value_t_t* %call.i76 to i64
  %15 = and i64 %14, 4294967295
  %16 = inttoptr i64 %15 to %Tstruct.json_value_t_t*
  %17 = trunc i64 %14 to i32
  %cmp.i77 = icmp eq i32 %17, 0
  br i1 %cmp.i77, label %parse_object_value.exit, label %TaintCheck.succeeded.i81

TaintCheck.succeeded.i81:                         ; preds = %sw.bb
  %18 = load i8*, i8** %string, align 4, !tbaa !15
  %19 = ptrtoint i8* %18 to i64
  %20 = load i64, i64* @sbxHeapRange, align 8
  %21 = and i64 %19, 4294967295
  %SandMem.TaintCheck.i80 = icmp ult i64 %21, %20
  br i1 %SandMem.TaintCheck.i80, label %TaintCheck.succeeded2.i85, label %wasm.trap.fail.i83

wasm.trap.fail.i83:                               ; preds = %TaintCheck.succeeded.i81
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded2.i85:                        ; preds = %TaintCheck.succeeded.i81
  %22 = load i64, i64* @sbxHeap, align 8
  %23 = add i64 %22, %21
  %24 = inttoptr i64 %23 to i8*
  %25 = load i8, i8* %24, align 1, !tbaa !2
  %cmp3.not.i84 = icmp eq i8 %25, 123
  br i1 %cmp3.not.i84, label %cond.true.i.i.i90, label %if.then5.i86

if.then5.i86:                                     ; preds = %TaintCheck.succeeded2.i85
  tail call void @json_value_free(%Tstruct.json_value_t_t* %16) #16
  br label %parse_object_value.exit

cond.true.i.i.i90:                                ; preds = %TaintCheck.succeeded2.i85
  %SandMem.TaintCheck.i.i.i89 = icmp ult i64 %15, %20
  br i1 %SandMem.TaintCheck.i.i.i89, label %json_value_get_type.exit.i.i94, label %wasm.trap.fail.i.i.i91

wasm.trap.fail.i.i.i91:                           ; preds = %cond.true.i.i.i90
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i.i94:                   ; preds = %cond.true.i.i.i90
  %26 = add i64 %22, %15
  %27 = inttoptr i64 %26 to %Tstruct.json_value_t_t*
  %type.i.i.i92 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %27, i64 0, i32 1
  %28 = load i32, i32* %type.i.i.i92, align 8, !tbaa !24
  %cmp.i.i93 = icmp eq i32 %28, 4
  br i1 %cmp.i.i93, label %TaintCheck.succeeded.i.i97, label %json_value_get_object.exit.i

TaintCheck.succeeded.i.i97:                       ; preds = %json_value_get_type.exit.i.i94
  %value1.i.i95 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %27, i64 0, i32 2
  %29 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i.i95 to i64
  %30 = and i64 %29, 4294967295
  %SandMem.TaintCheck2.i.i96 = icmp ult i64 %30, %20
  br i1 %SandMem.TaintCheck2.i.i96, label %TaintCheck.succeeded6.i.i99, label %wasm.trap.fail3.i.i98

wasm.trap.fail3.i.i98:                            ; preds = %TaintCheck.succeeded.i.i97
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i.i99:                      ; preds = %TaintCheck.succeeded.i.i97
  %31 = add i64 %30, %22
  %32 = inttoptr i64 %31 to %Tstruct.json_value_value_t_t*
  %object.i.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %32, i64 0, i32 2
  %33 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i.i, align 4, !tbaa !25
  br label %json_value_get_object.exit.i

json_value_get_object.exit.i:                     ; preds = %TaintCheck.succeeded6.i.i99, %json_value_get_type.exit.i.i94
  %cond.i.i100 = phi %Tstruct.json_object_t_t* [ %33, %TaintCheck.succeeded6.i.i99 ], [ null, %json_value_get_type.exit.i.i94 ]
  %34 = ptrtoint %Tstruct.json_object_t_t* %cond.i.i100 to i64
  %35 = and i64 %34, 4294967295
  %36 = inttoptr i64 %35 to %Tstruct.json_object_t_t*
  br label %while.cond.i105

while.cond.i105:                                  ; preds = %TaintCheck.succeeded19.i110, %json_value_get_object.exit.i
  %.pn338.i = phi i8* [ %18, %json_value_get_object.exit.i ], [ %37, %TaintCheck.succeeded19.i110 ]
  %storemerge.in.in.i101 = getelementptr inbounds i8, i8* %.pn338.i, i64 1
  %storemerge.in.i102 = ptrtoint i8* %storemerge.in.in.i101 to i64
  %storemerge.i103 = and i64 %storemerge.in.i102, 4294967295
  store i64 %storemerge.i103, i64* %2, align 4, !tbaa !15
  %SandMem.TaintCheck15.i104 = icmp ult i64 %storemerge.i103, %20
  br i1 %SandMem.TaintCheck15.i104, label %TaintCheck.succeeded19.i110, label %wasm.trap.fail16.i106

wasm.trap.fail16.i106:                            ; preds = %while.cond.i105
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded19.i110:                      ; preds = %while.cond.i105
  %37 = inttoptr i64 %storemerge.i103 to i8*
  %38 = add i64 %22, %storemerge.i103
  %39 = inttoptr i64 %38 to i8*
  %40 = load i8, i8* %39, align 1, !tbaa !2
  %conv20.i107 = zext i8 %40 to i32
  %call21.i108 = tail call i32 @isspace(i32 %conv20.i107) #18
  %tobool.not.i109 = icmp eq i32 %call21.i108, 0
  br i1 %tobool.not.i109, label %TaintCheck.succeeded33.i112, label %while.cond.i105, !llvm.loop !35

TaintCheck.succeeded33.i112:                      ; preds = %TaintCheck.succeeded19.i110
  %41 = inttoptr i64 %storemerge.i103 to i8*
  %cmp35.i111 = icmp eq i8 %40, 125
  br i1 %cmp35.i111, label %TaintCheck.succeeded40.i114, label %while.cond43.i116.preheader

while.cond43.i116.preheader:                      ; preds = %TaintCheck.succeeded33.i112
  %42 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck47.i115217 = icmp ult i64 %storemerge.i103, %42
  br i1 %SandMem.TaintCheck47.i115217, label %TaintCheck.succeeded51.i118.lr.ph, label %wasm.trap.fail48.i117

TaintCheck.succeeded51.i118.lr.ph:                ; preds = %while.cond43.i116.preheader
  %43 = load i64, i64* @sbxHeap, align 8
  %44 = add i64 %43, %storemerge.i103
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8, i8* %45, align 1, !tbaa !2
  %cmp53.not.i577 = icmp eq i8 %46, 0
  br i1 %cmp53.not.i577, label %while.end242.i, label %while.body55.i

TaintCheck.succeeded40.i114:                      ; preds = %TaintCheck.succeeded33.i112
  %incdec.ptr41.i113 = getelementptr inbounds i8, i8* %41, i64 1
  %47 = ptrtoint i8* %incdec.ptr41.i113 to i64
  %48 = and i64 %47, 4294967295
  store i64 %48, i64* %2, align 4, !tbaa !15
  br label %parse_object_value.exit

while.cond43.i116.loopexit:                       ; preds = %TaintCheck.succeeded232.i
  %49 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck47.i115 = icmp ult i64 %storemerge337.i, %49
  br i1 %SandMem.TaintCheck47.i115, label %TaintCheck.succeeded51.i118, label %wasm.trap.fail48.i117, !llvm.loop !36

wasm.trap.fail48.i117:                            ; preds = %while.cond43.i116.loopexit, %while.cond43.i116.preheader
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded51.i118:                      ; preds = %while.cond43.i116.loopexit
  %50 = add i64 %43, %storemerge337.i
  %51 = inttoptr i64 %50 to i8*
  %52 = load i8, i8* %51, align 1, !tbaa !2
  %cmp53.not.i = icmp eq i8 %52, 0
  br i1 %cmp53.not.i, label %TaintCheck.succeeded51.i118.while.end242.i.loopexit_crit_edge, label %while.body55.i, !llvm.loop !36

while.body55.i:                                   ; preds = %TaintCheck.succeeded51.i118.lr.ph, %TaintCheck.succeeded51.i118
  %call56.i = tail call i8* @get_quoted_string(i8** nonnull %string) #16
  %53 = ptrtoint i8* %call56.i to i64
  %54 = and i64 %53, 4294967295
  %55 = inttoptr i64 %54 to i8*
  %56 = trunc i64 %53 to i32
  %cmp58.i = icmp eq i32 %56, 0
  br i1 %cmp58.i, label %if.then60.i, label %while.cond62.i.preheader

while.cond62.i.preheader:                         ; preds = %while.body55.i
  %57 = load i8*, i8** %string, align 4, !tbaa !15
  %58 = ptrtoint i8* %57 to i64
  %59 = load i64, i64* @sbxHeapRange, align 8
  %60 = and i64 %58, 4294967295
  %SandMem.TaintCheck66.i215 = icmp ult i64 %60, %59
  br i1 %SandMem.TaintCheck66.i215, label %TaintCheck.succeeded70.i, label %wasm.trap.fail67.i

if.then60.i:                                      ; preds = %while.body55.i
  tail call void @json_value_free(%Tstruct.json_value_t_t* %16) #16
  br label %parse_object_value.exit

wasm.trap.fail67.i:                               ; preds = %while.cond62.i.preheader, %TaintCheck.succeeded77.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded70.i:                         ; preds = %while.cond62.i.preheader, %TaintCheck.succeeded77.i
  %61 = phi i64 [ %67, %TaintCheck.succeeded77.i ], [ %60, %while.cond62.i.preheader ]
  %62 = phi i8* [ %.cast234, %TaintCheck.succeeded77.i ], [ %57, %while.cond62.i.preheader ]
  %63 = add i64 %43, %61
  %64 = inttoptr i64 %63 to i8*
  %65 = load i8, i8* %64, align 1, !tbaa !2
  %conv71.i = zext i8 %65 to i32
  %call72.i = tail call i32 @isspace(i32 %conv71.i) #18
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %TaintCheck.succeeded87.i, label %TaintCheck.succeeded77.i

TaintCheck.succeeded77.i:                         ; preds = %TaintCheck.succeeded70.i
  %incdec.ptr78.i = getelementptr inbounds i8, i8* %62, i64 1
  %66 = ptrtoint i8* %incdec.ptr78.i to i64
  %67 = and i64 %66, 4294967295
  store i64 %67, i64* %2, align 4, !tbaa !15
  %.cast234 = inttoptr i64 %67 to i8*
  %SandMem.TaintCheck66.i = icmp ult i64 %67, %59
  br i1 %SandMem.TaintCheck66.i, label %TaintCheck.succeeded70.i, label %wasm.trap.fail67.i, !llvm.loop !37

TaintCheck.succeeded87.i:                         ; preds = %TaintCheck.succeeded70.i
  %cmp89.not.i = icmp eq i8 %65, 58
  br i1 %cmp89.not.i, label %TaintCheck.succeeded110.i, label %TaintCheck.succeeded95.i120

TaintCheck.succeeded95.i120:                      ; preds = %TaintCheck.succeeded87.i
  %68 = ptrtoint i8* %call56.i to i64
  %69 = inttoptr i64 %54 to i8*
  %70 = trunc i64 %68 to i32
  %add.ptr.i119 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = ptrtoint i8* %add.ptr.i119 to i64
  %72 = trunc i64 %71 to i32
  %IsoHeap.upper.not.i = icmp ugt i32 %70, %72
  br i1 %IsoHeap.upper.not.i, label %TaintCheck.failed101.i, label %IsoHeap.success.i

IsoHeap.success.i:                                ; preds = %TaintCheck.succeeded95.i120
  %SandMem.TaintCheck102.i = icmp ult i64 %54, %59
  br i1 %SandMem.TaintCheck102.i, label %TaintCheck.succeeded106.i, label %wasm.trap.fail103.i

TaintCheck.failed101.i:                           ; preds = %TaintCheck.succeeded95.i120
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail103.i:                              ; preds = %IsoHeap.success.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded106.i:                        ; preds = %IsoHeap.success.i
  %73 = add i64 %43, %54
  %74 = inttoptr i64 %73 to i8*
  tail call void @t_free(i8* %74) #16
  %75 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %75, i64* @sbxHeapRange, align 8
  tail call void @json_value_free(%Tstruct.json_value_t_t* %16) #16
  br label %parse_object_value.exit

TaintCheck.succeeded110.i:                        ; preds = %TaintCheck.succeeded87.i
  %incdec.ptr111.i = getelementptr inbounds i8, i8* %62, i64 1
  %76 = ptrtoint i8* %incdec.ptr111.i to i64
  %77 = and i64 %76, 4294967295
  store i64 %77, i64* %2, align 4, !tbaa !15
  %call112.i = tail call %Tstruct.json_value_t_t* @parse_value(i8** nonnull %string, i64 %add) #16
  %78 = ptrtoint %Tstruct.json_value_t_t* %call112.i to i64
  %79 = and i64 %78, 4294967295
  %80 = inttoptr i64 %79 to %Tstruct.json_value_t_t*
  %81 = trunc i64 %78 to i32
  %cmp114.i = icmp eq i32 %81, 0
  br i1 %cmp114.i, label %TaintCheck.succeeded123.i121, label %if.end.i.i123

TaintCheck.succeeded123.i121:                     ; preds = %TaintCheck.succeeded110.i
  %82 = ptrtoint i8* %call56.i to i64
  %83 = inttoptr i64 %54 to i8*
  %84 = trunc i64 %82 to i32
  %add.ptr119.i = getelementptr inbounds i8, i8* %83, i64 1
  %85 = ptrtoint i8* %add.ptr119.i to i64
  %86 = trunc i64 %85 to i32
  %IsoHeap.upper130.not.i = icmp ugt i32 %84, %86
  br i1 %IsoHeap.upper130.not.i, label %TaintCheck.failed132.i, label %IsoHeap.success133.i

IsoHeap.success133.i:                             ; preds = %TaintCheck.succeeded123.i121
  %87 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck134.i = icmp ult i64 %54, %87
  br i1 %SandMem.TaintCheck134.i, label %TaintCheck.succeeded138.i, label %wasm.trap.fail135.i

TaintCheck.failed132.i:                           ; preds = %TaintCheck.succeeded123.i121
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail135.i:                              ; preds = %IsoHeap.success133.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded138.i:                        ; preds = %IsoHeap.success133.i
  %88 = load i64, i64* @sbxHeap, align 8
  %89 = add i64 %88, %54
  %90 = inttoptr i64 %89 to i8*
  tail call void @t_free(i8* %90) #16
  %91 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %91, i64* @sbxHeapRange, align 8
  tail call void @json_value_free(%Tstruct.json_value_t_t* %16) #16
  br label %parse_object_value.exit

if.end.i.i123:                                    ; preds = %TaintCheck.succeeded110.i
  %92 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i122 = icmp ult i64 %54, %92
  br i1 %SandMem.TaintCheck.i.i122, label %json_object_add.exit.i, label %wasm.trap.fail.i.i124

wasm.trap.fail.i.i124:                            ; preds = %if.end.i.i123
  tail call void @llvm.trap() #16
  unreachable

json_object_add.exit.i:                           ; preds = %if.end.i.i123
  %93 = add i64 %43, %54
  %94 = inttoptr i64 %93 to i8*
  %call.i.i125 = tail call i64 @t_strlen(i8* %94) #16
  %call1.i.i = tail call i32 @json_object_addn(%Tstruct.json_object_t_t* %36, i8* %55, i64 %call.i.i125, %Tstruct.json_value_t_t* %80) #16
  %cmp141.i = icmp eq i32 %call1.i.i, -1
  br i1 %cmp141.i, label %TaintCheck.succeeded150.i, label %TaintCheck.succeeded173.i

TaintCheck.succeeded150.i:                        ; preds = %json_object_add.exit.i
  %95 = ptrtoint i8* %call56.i to i64
  %96 = inttoptr i64 %54 to i8*
  %97 = trunc i64 %95 to i32
  %98 = inttoptr i64 %79 to %Tstruct.json_value_t_t*
  %add.ptr146.i = getelementptr inbounds i8, i8* %96, i64 1
  %99 = ptrtoint i8* %add.ptr146.i to i64
  %100 = trunc i64 %99 to i32
  %IsoHeap.upper157.not.i = icmp ugt i32 %97, %100
  br i1 %IsoHeap.upper157.not.i, label %TaintCheck.failed159.i, label %IsoHeap.success160.i

IsoHeap.success160.i:                             ; preds = %TaintCheck.succeeded150.i
  %101 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck161.i = icmp ult i64 %54, %101
  br i1 %SandMem.TaintCheck161.i, label %TaintCheck.succeeded165.i, label %wasm.trap.fail162.i

TaintCheck.failed159.i:                           ; preds = %TaintCheck.succeeded150.i
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail162.i:                              ; preds = %IsoHeap.success160.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded165.i:                        ; preds = %IsoHeap.success160.i
  %102 = load i64, i64* @sbxHeap, align 8
  %103 = add i64 %102, %54
  %104 = inttoptr i64 %103 to i8*
  tail call void @t_free(i8* %104) #16
  %105 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %105, i64* @sbxHeapRange, align 8
  tail call void @json_value_free(%Tstruct.json_value_t_t* %98) #16
  tail call void @json_value_free(%Tstruct.json_value_t_t* %16) #16
  br label %parse_object_value.exit

TaintCheck.succeeded173.i:                        ; preds = %json_object_add.exit.i
  %add.ptr169.i = getelementptr inbounds i8, i8* %55, i64 1
  %106 = ptrtoint i8* %add.ptr169.i to i64
  %107 = trunc i64 %106 to i32
  %IsoHeap.upper180.not.i = icmp ugt i32 %56, %107
  br i1 %IsoHeap.upper180.not.i, label %TaintCheck.failed182.i, label %IsoHeap.success183.i

IsoHeap.success183.i:                             ; preds = %TaintCheck.succeeded173.i
  %108 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck184.i = icmp ult i64 %54, %108
  br i1 %SandMem.TaintCheck184.i, label %TaintCheck.succeeded188.i, label %wasm.trap.fail185.i

TaintCheck.failed182.i:                           ; preds = %TaintCheck.succeeded173.i
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail185.i:                              ; preds = %IsoHeap.success183.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded188.i:                        ; preds = %IsoHeap.success183.i
  tail call void @t_free(i8* %94) #16
  %109 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %109, i64* @sbxHeapRange, align 8
  %110 = load i8*, i8** %string, align 4, !tbaa !15
  %111 = ptrtoint i8* %110 to i64
  %112 = and i64 %111, 4294967295
  %SandMem.TaintCheck193.i216 = icmp ult i64 %112, %109
  br i1 %SandMem.TaintCheck193.i216, label %TaintCheck.succeeded197.i, label %wasm.trap.fail194.i

wasm.trap.fail194.i:                              ; preds = %TaintCheck.succeeded188.i, %TaintCheck.succeeded204.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded197.i:                        ; preds = %TaintCheck.succeeded188.i, %TaintCheck.succeeded204.i
  %113 = phi i64 [ %119, %TaintCheck.succeeded204.i ], [ %112, %TaintCheck.succeeded188.i ]
  %114 = phi i8* [ %.cast235, %TaintCheck.succeeded204.i ], [ %110, %TaintCheck.succeeded188.i ]
  %115 = add i64 %43, %113
  %116 = inttoptr i64 %115 to i8*
  %117 = load i8, i8* %116, align 1, !tbaa !2
  %conv198.i = zext i8 %117 to i32
  %call199.i = tail call i32 @isspace(i32 %conv198.i) #18
  %tobool200.not.i = icmp eq i32 %call199.i, 0
  br i1 %tobool200.not.i, label %TaintCheck.succeeded214.i, label %TaintCheck.succeeded204.i

TaintCheck.succeeded204.i:                        ; preds = %TaintCheck.succeeded197.i
  %incdec.ptr205.i = getelementptr inbounds i8, i8* %114, i64 1
  %118 = ptrtoint i8* %incdec.ptr205.i to i64
  %119 = and i64 %118, 4294967295
  store i64 %119, i64* %2, align 4, !tbaa !15
  %.cast235 = inttoptr i64 %119 to i8*
  %SandMem.TaintCheck193.i = icmp ult i64 %119, %109
  br i1 %SandMem.TaintCheck193.i, label %TaintCheck.succeeded197.i, label %wasm.trap.fail194.i, !llvm.loop !38

TaintCheck.succeeded214.i:                        ; preds = %TaintCheck.succeeded197.i
  %cmp216.not.i = icmp eq i8 %117, 44
  %120 = load i64, i64* @sbxHeapRange, align 8
  br i1 %cmp216.not.i, label %while.cond224.i, label %while.end242.i

while.cond224.i:                                  ; preds = %TaintCheck.succeeded214.i, %TaintCheck.succeeded232.i
  %.pn.i126 = phi i8* [ %121, %TaintCheck.succeeded232.i ], [ %114, %TaintCheck.succeeded214.i ]
  %storemerge337.in.in.i = getelementptr inbounds i8, i8* %.pn.i126, i64 1
  %storemerge337.in.i = ptrtoint i8* %storemerge337.in.in.i to i64
  %storemerge337.i = and i64 %storemerge337.in.i, 4294967295
  store i64 %storemerge337.i, i64* %2, align 4, !tbaa !15
  %SandMem.TaintCheck228.i = icmp ult i64 %storemerge337.i, %120
  br i1 %SandMem.TaintCheck228.i, label %TaintCheck.succeeded232.i, label %wasm.trap.fail229.i

wasm.trap.fail229.i:                              ; preds = %while.cond224.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded232.i:                        ; preds = %while.cond224.i
  %121 = inttoptr i64 %storemerge337.i to i8*
  %122 = add i64 %43, %storemerge337.i
  %123 = inttoptr i64 %122 to i8*
  %124 = load i8, i8* %123, align 1, !tbaa !2
  %conv233.i = zext i8 %124 to i32
  %call234.i = tail call i32 @isspace(i32 %conv233.i) #18
  %tobool235.not.i = icmp eq i32 %call234.i, 0
  br i1 %tobool235.not.i, label %while.cond43.i116.loopexit, label %while.cond224.i

TaintCheck.succeeded51.i118.while.end242.i.loopexit_crit_edge: ; preds = %TaintCheck.succeeded51.i118
  %125 = inttoptr i64 %storemerge337.i to i8*
  br label %while.end242.i

while.end242.i:                                   ; preds = %TaintCheck.succeeded214.i, %TaintCheck.succeeded51.i118.lr.ph, %TaintCheck.succeeded51.i118.while.end242.i.loopexit_crit_edge
  %126 = phi i64 [ %49, %TaintCheck.succeeded51.i118.while.end242.i.loopexit_crit_edge ], [ %42, %TaintCheck.succeeded51.i118.lr.ph ], [ %120, %TaintCheck.succeeded214.i ]
  %127 = phi i8* [ %125, %TaintCheck.succeeded51.i118.while.end242.i.loopexit_crit_edge ], [ %41, %TaintCheck.succeeded51.i118.lr.ph ], [ %114, %TaintCheck.succeeded214.i ]
  %128 = ptrtoint i8* %127 to i64
  %129 = and i64 %128, 4294967295
  %SandMem.TaintCheck247.i214 = icmp ult i64 %129, %126
  br i1 %SandMem.TaintCheck247.i214, label %TaintCheck.succeeded251.i.lr.ph, label %wasm.trap.fail248.i

TaintCheck.succeeded251.i.lr.ph:                  ; preds = %while.end242.i
  %130 = load i64, i64* @sbxHeap, align 8
  br label %TaintCheck.succeeded251.i

wasm.trap.fail248.i:                              ; preds = %TaintCheck.succeeded258.i, %while.end242.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded251.i:                        ; preds = %TaintCheck.succeeded251.i.lr.ph, %TaintCheck.succeeded258.i
  %131 = phi i64 [ %129, %TaintCheck.succeeded251.i.lr.ph ], [ %137, %TaintCheck.succeeded258.i ]
  %132 = phi i8* [ %127, %TaintCheck.succeeded251.i.lr.ph ], [ %.cast236, %TaintCheck.succeeded258.i ]
  %133 = add i64 %130, %131
  %134 = inttoptr i64 %133 to i8*
  %135 = load i8, i8* %134, align 1, !tbaa !2
  %conv252.i = zext i8 %135 to i32
  %call253.i = tail call i32 @isspace(i32 %conv252.i) #18
  %tobool254.not.i = icmp eq i32 %call253.i, 0
  br i1 %tobool254.not.i, label %TaintCheck.succeeded268.i, label %TaintCheck.succeeded258.i

TaintCheck.succeeded258.i:                        ; preds = %TaintCheck.succeeded251.i
  %incdec.ptr259.i = getelementptr inbounds i8, i8* %132, i64 1
  %136 = ptrtoint i8* %incdec.ptr259.i to i64
  %137 = and i64 %136, 4294967295
  store i64 %137, i64* %2, align 4, !tbaa !15
  %.cast236 = inttoptr i64 %137 to i8*
  %SandMem.TaintCheck247.i = icmp ult i64 %137, %126
  br i1 %SandMem.TaintCheck247.i, label %TaintCheck.succeeded251.i, label %wasm.trap.fail248.i, !llvm.loop !39

TaintCheck.succeeded268.i:                        ; preds = %TaintCheck.succeeded251.i
  %cmp270.not.i = icmp eq i8 %135, 125
  br i1 %cmp270.not.i, label %lor.lhs.false.i128, label %if.then276.i

lor.lhs.false.i128:                               ; preds = %TaintCheck.succeeded268.i
  %138 = trunc i64 %34 to i32
  %tobool.not.i.i127 = icmp eq i32 %138, 0
  br i1 %tobool.not.i.i127, label %json_object_get_count.exit.i, label %cond.true.i.i129

cond.true.i.i129:                                 ; preds = %lor.lhs.false.i128
  %SandMem.TaintCheck.i341.i = icmp ult i64 %35, %126
  br i1 %SandMem.TaintCheck.i341.i, label %TaintCheck.succeeded.i343.i, label %wasm.trap.fail.i342.i

wasm.trap.fail.i342.i:                            ; preds = %cond.true.i.i129
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i343.i:                      ; preds = %cond.true.i.i129
  %139 = add i64 %130, %35
  %140 = inttoptr i64 %139 to %Tstruct.json_object_t_t*
  %count.i.i130 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %140, i64 0, i32 3
  %141 = load i64, i64* %count.i.i130, align 8, !tbaa !9
  br label %json_object_get_count.exit.i

json_object_get_count.exit.i:                     ; preds = %TaintCheck.succeeded.i343.i, %lor.lhs.false.i128
  %cond.i344.i = phi i64 [ %141, %TaintCheck.succeeded.i343.i ], [ 0, %lor.lhs.false.i128 ]
  %call273.i = tail call i32 @json_object_resize(%Tstruct.json_object_t_t* %36, i64 %cond.i344.i) #16
  %cmp274.i = icmp eq i32 %call273.i, -1
  br i1 %cmp274.i, label %if.then276.i, label %TaintCheck.succeeded280.i

if.then276.i:                                     ; preds = %json_object_get_count.exit.i, %TaintCheck.succeeded268.i
  tail call void @json_value_free(%Tstruct.json_value_t_t* %16) #16
  br label %parse_object_value.exit

TaintCheck.succeeded280.i:                        ; preds = %json_object_get_count.exit.i
  %142 = load i8*, i8** %string, align 4, !tbaa !15
  %incdec.ptr281.i = getelementptr inbounds i8, i8* %142, i64 1
  %143 = ptrtoint i8* %incdec.ptr281.i to i64
  %144 = and i64 %143, 4294967295
  store i64 %144, i64* %2, align 4, !tbaa !15
  br label %parse_object_value.exit

parse_object_value.exit:                          ; preds = %sw.bb, %if.then5.i86, %TaintCheck.succeeded40.i114, %if.then60.i, %TaintCheck.succeeded106.i, %TaintCheck.succeeded138.i, %TaintCheck.succeeded165.i, %if.then276.i, %TaintCheck.succeeded280.i
  %retval.0.i131 = phi %Tstruct.json_value_t_t* [ null, %if.then5.i86 ], [ %16, %TaintCheck.succeeded40.i114 ], [ null, %if.then60.i ], [ null, %TaintCheck.succeeded106.i ], [ null, %TaintCheck.succeeded138.i ], [ null, %TaintCheck.succeeded165.i ], [ null, %if.then276.i ], [ %16, %TaintCheck.succeeded280.i ], [ null, %sw.bb ]
  %145 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i131 to i64
  %146 = and i64 %145, 4294967295
  %147 = inttoptr i64 %146 to %Tstruct.json_value_t_t*
  br label %return

sw.bb16:                                          ; preds = %TaintCheck.succeeded13
  %add17 = add i64 %nesting, 1
  %call.i63 = tail call %Tstruct.json_value_t_t* @json_value_init_array() #16
  %148 = ptrtoint %Tstruct.json_value_t_t* %call.i63 to i64
  %149 = and i64 %148, 4294967295
  %150 = inttoptr i64 %149 to %Tstruct.json_value_t_t*
  %151 = trunc i64 %148 to i32
  %cmp.i64 = icmp eq i32 %151, 0
  br i1 %cmp.i64, label %parse_array_value.exit, label %TaintCheck.succeeded.i67

TaintCheck.succeeded.i67:                         ; preds = %sw.bb16
  %152 = load i8*, i8** %string, align 4, !tbaa !15
  %153 = ptrtoint i8* %152 to i64
  %154 = load i64, i64* @sbxHeapRange, align 8
  %155 = and i64 %153, 4294967295
  %SandMem.TaintCheck.i66 = icmp ult i64 %155, %154
  br i1 %SandMem.TaintCheck.i66, label %TaintCheck.succeeded2.i70, label %wasm.trap.fail.i69

wasm.trap.fail.i69:                               ; preds = %TaintCheck.succeeded.i67
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded2.i70:                        ; preds = %TaintCheck.succeeded.i67
  %156 = load i64, i64* @sbxHeap, align 8
  %157 = add i64 %156, %155
  %158 = inttoptr i64 %157 to i8*
  %159 = load i8, i8* %158, align 1, !tbaa !2
  %cmp3.not.i = icmp eq i8 %159, 91
  br i1 %cmp3.not.i, label %cond.true.i.i.i, label %if.then5.i

if.then5.i:                                       ; preds = %TaintCheck.succeeded2.i70
  tail call void @json_value_free(%Tstruct.json_value_t_t* %150) #16
  br label %parse_array_value.exit

cond.true.i.i.i:                                  ; preds = %TaintCheck.succeeded2.i70
  %SandMem.TaintCheck.i.i.i = icmp ult i64 %149, %154
  br i1 %SandMem.TaintCheck.i.i.i, label %json_value_get_type.exit.i.i, label %wasm.trap.fail.i.i.i

wasm.trap.fail.i.i.i:                             ; preds = %cond.true.i.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i.i:                     ; preds = %cond.true.i.i.i
  %160 = add i64 %156, %149
  %161 = inttoptr i64 %160 to %Tstruct.json_value_t_t*
  %type.i.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %161, i64 0, i32 1
  %162 = load i32, i32* %type.i.i.i, align 8, !tbaa !24
  %cmp.i.i = icmp eq i32 %162, 5
  br i1 %cmp.i.i, label %TaintCheck.succeeded.i.i71, label %json_value_get_array.exit.i

TaintCheck.succeeded.i.i71:                       ; preds = %json_value_get_type.exit.i.i
  %value1.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %161, i64 0, i32 2
  %163 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i.i to i64
  %164 = and i64 %163, 4294967295
  %SandMem.TaintCheck2.i.i = icmp ult i64 %164, %154
  br i1 %SandMem.TaintCheck2.i.i, label %TaintCheck.succeeded6.i.i, label %wasm.trap.fail3.i.i

wasm.trap.fail3.i.i:                              ; preds = %TaintCheck.succeeded.i.i71
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i.i:                        ; preds = %TaintCheck.succeeded.i.i71
  %165 = add i64 %164, %156
  %166 = inttoptr i64 %165 to %Tstruct.json_value_value_t_t*
  %array.i.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %166, i64 0, i32 3
  %167 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i.i, align 4, !tbaa !27
  %phi.cast134 = ptrtoint %Tstruct.json_array_t_t* %167 to i64
  %phi.bo = and i64 %phi.cast134, 4294967295
  br label %json_value_get_array.exit.i

json_value_get_array.exit.i:                      ; preds = %TaintCheck.succeeded6.i.i, %json_value_get_type.exit.i.i
  %cond.i.i = phi i64 [ %phi.bo, %TaintCheck.succeeded6.i.i ], [ 0, %json_value_get_type.exit.i.i ]
  %168 = inttoptr i64 %cond.i.i to %Tstruct.json_array_t_t*
  br label %while.cond.i

while.cond.i:                                     ; preds = %TaintCheck.succeeded19.i, %json_value_get_array.exit.i
  %.pn209.i = phi i8* [ %152, %json_value_get_array.exit.i ], [ %169, %TaintCheck.succeeded19.i ]
  %storemerge.in.in.i = getelementptr inbounds i8, i8* %.pn209.i, i64 1
  %storemerge.in.i = ptrtoint i8* %storemerge.in.in.i to i64
  %storemerge.i = and i64 %storemerge.in.i, 4294967295
  store i64 %storemerge.i, i64* %2, align 4, !tbaa !15
  %SandMem.TaintCheck15.i = icmp ult i64 %storemerge.i, %154
  br i1 %SandMem.TaintCheck15.i, label %TaintCheck.succeeded19.i, label %wasm.trap.fail16.i

wasm.trap.fail16.i:                               ; preds = %while.cond.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded19.i:                         ; preds = %while.cond.i
  %169 = inttoptr i64 %storemerge.i to i8*
  %170 = add i64 %156, %storemerge.i
  %171 = inttoptr i64 %170 to i8*
  %172 = load i8, i8* %171, align 1, !tbaa !2
  %conv20.i = zext i8 %172 to i32
  %call21.i = tail call i32 @isspace(i32 %conv20.i) #18
  %tobool.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool.not.i, label %TaintCheck.succeeded33.i, label %while.cond.i, !llvm.loop !40

TaintCheck.succeeded33.i:                         ; preds = %TaintCheck.succeeded19.i
  %173 = inttoptr i64 %storemerge.i to i8*
  %cmp35.i = icmp eq i8 %172, 93
  br i1 %cmp35.i, label %TaintCheck.succeeded40.i, label %while.cond43.i.preheader

while.cond43.i.preheader:                         ; preds = %TaintCheck.succeeded33.i
  %174 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck47.i220 = icmp ult i64 %storemerge.i, %174
  br i1 %SandMem.TaintCheck47.i220, label %TaintCheck.succeeded51.i.lr.ph, label %wasm.trap.fail48.i

TaintCheck.succeeded51.i.lr.ph:                   ; preds = %while.cond43.i.preheader
  %175 = load i64, i64* @sbxHeap, align 8
  %176 = add i64 %175, %storemerge.i
  %177 = inttoptr i64 %176 to i8*
  %178 = load i8, i8* %177, align 1, !tbaa !2
  %cond.i579 = icmp eq i8 %178, 0
  br i1 %cond.i579, label %while.end133.i, label %if.end68.i

TaintCheck.succeeded40.i:                         ; preds = %TaintCheck.succeeded33.i
  %incdec.ptr41.i = getelementptr inbounds i8, i8* %173, i64 1
  %179 = ptrtoint i8* %incdec.ptr41.i to i64
  %180 = and i64 %179, 4294967295
  store i64 %180, i64* %2, align 4, !tbaa !15
  br label %parse_array_value.exit

while.cond43.i.loopexit:                          ; preds = %TaintCheck.succeeded123.i
  %181 = add i64 %175, %storemerge208.i
  %182 = inttoptr i64 %181 to i8*
  %183 = load i8, i8* %182, align 1, !tbaa !2
  %cond.i = icmp eq i8 %183, 0
  br i1 %cond.i, label %TaintCheck.succeeded51.i.while.end133.i_crit_edge, label %if.end68.i

wasm.trap.fail48.i:                               ; preds = %while.cond43.i.preheader
  tail call void @llvm.trap() #16
  unreachable

if.end68.i:                                       ; preds = %TaintCheck.succeeded51.i.lr.ph, %while.cond43.i.loopexit
  %call69.i = tail call %Tstruct.json_value_t_t* @parse_value(i8** nonnull %string, i64 %add17) #16
  %184 = ptrtoint %Tstruct.json_value_t_t* %call69.i to i64
  %185 = trunc i64 %184 to i32
  %cmp71.i = icmp eq i32 %185, 0
  br i1 %cmp71.i, label %if.then73.i, label %if.end74.i

if.then73.i:                                      ; preds = %if.end68.i
  tail call void @json_value_free(%Tstruct.json_value_t_t* %150) #16
  br label %parse_array_value.exit

if.end74.i:                                       ; preds = %if.end68.i
  %186 = and i64 %184, 4294967295
  %187 = inttoptr i64 %186 to %Tstruct.json_value_t_t*
  %call75.i = tail call fastcc i32 @json_array_add(%Tstruct.json_array_t_t* %168, %Tstruct.json_value_t_t* %187) #16
  %cmp76.i = icmp eq i32 %call75.i, -1
  br i1 %cmp76.i, label %if.then78.i, label %while.cond80.i.preheader

while.cond80.i.preheader:                         ; preds = %if.end74.i
  %188 = load i8*, i8** %string, align 4, !tbaa !15
  %189 = ptrtoint i8* %188 to i64
  %190 = and i64 %189, 4294967295
  %SandMem.TaintCheck84.i219 = icmp ult i64 %190, %174
  br i1 %SandMem.TaintCheck84.i219, label %TaintCheck.succeeded88.i, label %wasm.trap.fail85.i

if.then78.i:                                      ; preds = %if.end74.i
  %191 = inttoptr i64 %186 to %Tstruct.json_value_t_t*
  tail call void @json_value_free(%Tstruct.json_value_t_t* %191) #16
  tail call void @json_value_free(%Tstruct.json_value_t_t* %150) #16
  br label %parse_array_value.exit

wasm.trap.fail85.i:                               ; preds = %while.cond80.i.preheader, %TaintCheck.succeeded95.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded88.i:                         ; preds = %while.cond80.i.preheader, %TaintCheck.succeeded95.i
  %192 = phi i64 [ %198, %TaintCheck.succeeded95.i ], [ %190, %while.cond80.i.preheader ]
  %193 = phi i8* [ %.cast232, %TaintCheck.succeeded95.i ], [ %188, %while.cond80.i.preheader ]
  %194 = add i64 %175, %192
  %195 = inttoptr i64 %194 to i8*
  %196 = load i8, i8* %195, align 1, !tbaa !2
  %conv89.i = zext i8 %196 to i32
  %call90.i = tail call i32 @isspace(i32 %conv89.i) #18
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %TaintCheck.succeeded105.i, label %TaintCheck.succeeded95.i

TaintCheck.succeeded95.i:                         ; preds = %TaintCheck.succeeded88.i
  %incdec.ptr96.i = getelementptr inbounds i8, i8* %193, i64 1
  %197 = ptrtoint i8* %incdec.ptr96.i to i64
  %198 = and i64 %197, 4294967295
  store i64 %198, i64* %2, align 4, !tbaa !15
  %.cast232 = inttoptr i64 %198 to i8*
  %SandMem.TaintCheck84.i = icmp ult i64 %198, %174
  br i1 %SandMem.TaintCheck84.i, label %TaintCheck.succeeded88.i, label %wasm.trap.fail85.i, !llvm.loop !41

TaintCheck.succeeded105.i:                        ; preds = %TaintCheck.succeeded88.i
  %cmp107.not.i = icmp eq i8 %196, 44
  br i1 %cmp107.not.i, label %while.cond115.i, label %while.end133.i

while.cond115.i:                                  ; preds = %TaintCheck.succeeded105.i, %TaintCheck.succeeded123.i
  %.pn.i = phi i8* [ %199, %TaintCheck.succeeded123.i ], [ %193, %TaintCheck.succeeded105.i ]
  %storemerge208.in.in.i = getelementptr inbounds i8, i8* %.pn.i, i64 1
  %storemerge208.in.i = ptrtoint i8* %storemerge208.in.in.i to i64
  %storemerge208.i = and i64 %storemerge208.in.i, 4294967295
  store i64 %storemerge208.i, i64* %2, align 4, !tbaa !15
  %SandMem.TaintCheck119.i = icmp ult i64 %storemerge208.i, %174
  br i1 %SandMem.TaintCheck119.i, label %TaintCheck.succeeded123.i, label %wasm.trap.fail120.i

wasm.trap.fail120.i:                              ; preds = %while.cond115.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded123.i:                        ; preds = %while.cond115.i
  %199 = inttoptr i64 %storemerge208.i to i8*
  %200 = add i64 %175, %storemerge208.i
  %201 = inttoptr i64 %200 to i8*
  %202 = load i8, i8* %201, align 1, !tbaa !2
  %conv124.i = zext i8 %202 to i32
  %call125.i = tail call i32 @isspace(i32 %conv124.i) #18
  %tobool126.not.i = icmp eq i32 %call125.i, 0
  br i1 %tobool126.not.i, label %while.cond43.i.loopexit, label %while.cond115.i

TaintCheck.succeeded51.i.while.end133.i_crit_edge: ; preds = %while.cond43.i.loopexit
  %203 = inttoptr i64 %storemerge208.i to i8*
  br label %while.end133.i

while.end133.i:                                   ; preds = %TaintCheck.succeeded105.i, %TaintCheck.succeeded51.i.while.end133.i_crit_edge, %TaintCheck.succeeded51.i.lr.ph
  %204 = phi i8* [ %203, %TaintCheck.succeeded51.i.while.end133.i_crit_edge ], [ %173, %TaintCheck.succeeded51.i.lr.ph ], [ %193, %TaintCheck.succeeded105.i ]
  %205 = ptrtoint i8* %204 to i64
  %206 = load i64, i64* @sbxHeapRange, align 8
  %207 = and i64 %205, 4294967295
  %SandMem.TaintCheck138.i218 = icmp ult i64 %207, %206
  br i1 %SandMem.TaintCheck138.i218, label %TaintCheck.succeeded142.i.lr.ph, label %wasm.trap.fail139.i

TaintCheck.succeeded142.i.lr.ph:                  ; preds = %while.end133.i
  %208 = load i64, i64* @sbxHeap, align 8
  br label %TaintCheck.succeeded142.i

wasm.trap.fail139.i:                              ; preds = %TaintCheck.succeeded149.i, %while.end133.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded142.i:                        ; preds = %TaintCheck.succeeded142.i.lr.ph, %TaintCheck.succeeded149.i
  %209 = phi i64 [ %207, %TaintCheck.succeeded142.i.lr.ph ], [ %215, %TaintCheck.succeeded149.i ]
  %210 = phi i8* [ %204, %TaintCheck.succeeded142.i.lr.ph ], [ %.cast233, %TaintCheck.succeeded149.i ]
  %211 = add i64 %208, %209
  %212 = inttoptr i64 %211 to i8*
  %213 = load i8, i8* %212, align 1, !tbaa !2
  %conv143.i = zext i8 %213 to i32
  %call144.i = tail call i32 @isspace(i32 %conv143.i) #18
  %tobool145.not.i = icmp eq i32 %call144.i, 0
  br i1 %tobool145.not.i, label %TaintCheck.succeeded159.i, label %TaintCheck.succeeded149.i

TaintCheck.succeeded149.i:                        ; preds = %TaintCheck.succeeded142.i
  %incdec.ptr150.i = getelementptr inbounds i8, i8* %210, i64 1
  %214 = ptrtoint i8* %incdec.ptr150.i to i64
  %215 = and i64 %214, 4294967295
  store i64 %215, i64* %2, align 4, !tbaa !15
  %.cast233 = inttoptr i64 %215 to i8*
  %SandMem.TaintCheck138.i = icmp ult i64 %215, %206
  br i1 %SandMem.TaintCheck138.i, label %TaintCheck.succeeded142.i, label %wasm.trap.fail139.i, !llvm.loop !42

TaintCheck.succeeded159.i:                        ; preds = %TaintCheck.succeeded142.i
  %cmp161.not.i = icmp eq i8 %213, 93
  br i1 %cmp161.not.i, label %lor.lhs.false.i, label %if.then167.i

lor.lhs.false.i:                                  ; preds = %TaintCheck.succeeded159.i
  %tobool.not.i.i72 = icmp eq i64 %cond.i.i, 0
  br i1 %tobool.not.i.i72, label %json_array_get_count.exit.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %lor.lhs.false.i
  %SandMem.TaintCheck.i.i73 = icmp ult i64 %cond.i.i, %206
  br i1 %SandMem.TaintCheck.i.i73, label %TaintCheck.succeeded.i210.i, label %wasm.trap.fail.i.i74

wasm.trap.fail.i.i74:                             ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i210.i:                      ; preds = %cond.true.i.i
  %216 = add i64 %208, %cond.i.i
  %217 = inttoptr i64 %216 to %Tstruct.json_array_t_t*
  %count.i.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %217, i64 0, i32 2
  %218 = load i64, i64* %count.i.i, align 8, !tbaa !28
  br label %json_array_get_count.exit.i

json_array_get_count.exit.i:                      ; preds = %TaintCheck.succeeded.i210.i, %lor.lhs.false.i
  %cond.i211.i = phi i64 [ %218, %TaintCheck.succeeded.i210.i ], [ 0, %lor.lhs.false.i ]
  %call164.i = tail call fastcc i32 @json_array_resize(%Tstruct.json_array_t_t* %168, i64 %cond.i211.i) #16
  %cmp165.i = icmp eq i32 %call164.i, -1
  br i1 %cmp165.i, label %if.then167.i, label %TaintCheck.succeeded171.i

if.then167.i:                                     ; preds = %json_array_get_count.exit.i, %TaintCheck.succeeded159.i
  tail call void @json_value_free(%Tstruct.json_value_t_t* %150) #16
  br label %parse_array_value.exit

TaintCheck.succeeded171.i:                        ; preds = %json_array_get_count.exit.i
  %219 = load i8*, i8** %string, align 4, !tbaa !15
  %incdec.ptr172.i = getelementptr inbounds i8, i8* %219, i64 1
  %220 = ptrtoint i8* %incdec.ptr172.i to i64
  %221 = and i64 %220, 4294967295
  store i64 %221, i64* %2, align 4, !tbaa !15
  br label %parse_array_value.exit

parse_array_value.exit:                           ; preds = %sw.bb16, %if.then5.i, %TaintCheck.succeeded40.i, %if.then73.i, %if.then78.i, %if.then167.i, %TaintCheck.succeeded171.i
  %retval.0.i75 = phi %Tstruct.json_value_t_t* [ null, %if.then5.i ], [ %150, %TaintCheck.succeeded40.i ], [ null, %if.then73.i ], [ null, %if.then78.i ], [ null, %if.then167.i ], [ %150, %TaintCheck.succeeded171.i ], [ null, %sw.bb16 ]
  %222 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i75 to i64
  %223 = and i64 %222, 4294967295
  %224 = inttoptr i64 %223 to %Tstruct.json_value_t_t*
  br label %return

sw.bb20:                                          ; preds = %TaintCheck.succeeded13
  %call21 = tail call %Tstruct.json_value_t_t* @parse_string_value(i8** nonnull %string)
  %225 = ptrtoint %Tstruct.json_value_t_t* %call21 to i64
  %226 = and i64 %225, 4294967295
  %227 = inttoptr i64 %226 to %Tstruct.json_value_t_t*
  br label %return

TaintCheck.succeeded2.i49:                        ; preds = %TaintCheck.succeeded13, %TaintCheck.succeeded13
  %call.i47 = tail call i32 @t_strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %13, i64 4) #16
  %cmp.i48 = icmp eq i32 %call.i47, 0
  %228 = load i8*, i8** %string, align 4, !tbaa !15
  br i1 %cmp.i48, label %TaintCheck.succeeded5.i53, label %TaintCheck.succeeded10.i

TaintCheck.succeeded5.i53:                        ; preds = %TaintCheck.succeeded2.i49
  %add.ptr.i50 = getelementptr inbounds i8, i8* %228, i64 4
  %229 = ptrtoint i8* %add.ptr.i50 to i64
  %230 = and i64 %229, 4294967295
  store i64 %230, i64* %2, align 4, !tbaa !15
  %call.i.i51 = tail call i8* @t_malloc(i64 56) #16
  %231 = ptrtoint i8* %call.i.i51 to i64
  %232 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %232, i64* @sbxHeapRange, align 8
  %233 = and i64 %231, 4294967295
  %234 = trunc i64 %231 to i32
  %tobool.not.i.i52 = icmp eq i32 %234, 0
  br i1 %tobool.not.i.i52, label %parse_boolean_value.exit, label %if.end.i.i55

if.end.i.i55:                                     ; preds = %TaintCheck.succeeded5.i53
  %SandMem.TaintCheck.i.i54 = icmp ult i64 %233, %232
  br i1 %SandMem.TaintCheck.i.i54, label %TaintCheck.succeeded.i.i58, label %wasm.trap.fail.i.i56

wasm.trap.fail.i.i56:                             ; preds = %if.end.i.i55
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i.i58:                       ; preds = %if.end.i.i55
  %235 = load i64, i64* @sbxHeap, align 8
  %236 = add i64 %235, %233
  %237 = inttoptr i64 %236 to i64*
  store i64 0, i64* %237, align 4, !tbaa !17
  %238 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i.i57 = icmp ult i64 %233, %238
  br i1 %SandMem.TaintCheck1.i.i57, label %TaintCheck.succeeded11.i.i, label %wasm.trap.fail2.i.i59

wasm.trap.fail2.i.i59:                            ; preds = %TaintCheck.succeeded.i.i58
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded11.i.i:                       ; preds = %TaintCheck.succeeded.i.i58
  %239 = load i64, i64* @sbxHeap, align 8
  %240 = add i64 %239, %233
  %241 = inttoptr i64 %240 to %Tstruct.json_value_t_t*
  %type.i.i60 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %241, i64 0, i32 1
  store i32 6, i32* %type.i.i60, align 8, !tbaa !24
  %value.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %241, i64 0, i32 2
  %242 = ptrtoint %Tstruct.json_value_value_t_t* %value.i.i to i64
  %243 = and i64 %242, 4294967295
  %SandMem.TaintCheck12.i.i = icmp ult i64 %243, %238
  br i1 %SandMem.TaintCheck12.i.i, label %TaintCheck.succeeded16.i.i, label %wasm.trap.fail13.i.i

wasm.trap.fail13.i.i:                             ; preds = %TaintCheck.succeeded11.i.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded16.i.i:                       ; preds = %TaintCheck.succeeded11.i.i
  %244 = add i64 %243, %239
  %245 = inttoptr i64 %244 to %Tstruct.json_value_value_t_t*
  %boolean17.i.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %245, i64 0, i32 4
  store i32 1, i32* %boolean17.i.i, align 8, !tbaa !43
  %phi.cast53.i = inttoptr i64 %233 to %Tstruct.json_value_t_t*
  br label %parse_boolean_value.exit

TaintCheck.succeeded10.i:                         ; preds = %TaintCheck.succeeded2.i49
  %246 = ptrtoint i8* %228 to i64
  %247 = load i64, i64* @sbxHeapRange, align 8
  %248 = and i64 %246, 4294967295
  %SandMem.TaintCheck11.i = icmp ult i64 %248, %247
  br i1 %SandMem.TaintCheck11.i, label %TaintCheck.succeeded15.i, label %wasm.trap.fail12.i

wasm.trap.fail12.i:                               ; preds = %TaintCheck.succeeded10.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded15.i:                         ; preds = %TaintCheck.succeeded10.i
  %249 = load i64, i64* @sbxHeap, align 8
  %250 = add i64 %249, %248
  %251 = inttoptr i64 %250 to i8*
  %call16.i = tail call i32 @t_strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %251, i64 5) #16
  %cmp17.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.i, label %TaintCheck.succeeded21.i, label %parse_boolean_value.exit

TaintCheck.succeeded21.i:                         ; preds = %TaintCheck.succeeded15.i
  %252 = load i8*, i8** %string, align 4, !tbaa !15
  %add.ptr22.i = getelementptr inbounds i8, i8* %252, i64 5
  %253 = ptrtoint i8* %add.ptr22.i to i64
  %254 = and i64 %253, 4294967295
  store i64 %254, i64* %2, align 4, !tbaa !15
  %call.i35.i = tail call i8* @t_malloc(i64 56) #16
  %255 = ptrtoint i8* %call.i35.i to i64
  %256 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %256, i64* @sbxHeapRange, align 8
  %257 = and i64 %255, 4294967295
  %258 = trunc i64 %255 to i32
  %tobool.not.i36.i = icmp eq i32 %258, 0
  br i1 %tobool.not.i36.i, label %parse_boolean_value.exit, label %if.end.i38.i

if.end.i38.i:                                     ; preds = %TaintCheck.succeeded21.i
  %SandMem.TaintCheck.i37.i = icmp ult i64 %257, %256
  br i1 %SandMem.TaintCheck.i37.i, label %TaintCheck.succeeded.i41.i, label %wasm.trap.fail.i39.i

wasm.trap.fail.i39.i:                             ; preds = %if.end.i38.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i41.i:                       ; preds = %if.end.i38.i
  %259 = load i64, i64* @sbxHeap, align 8
  %260 = add i64 %259, %257
  %261 = inttoptr i64 %260 to i64*
  store i64 0, i64* %261, align 4, !tbaa !17
  %262 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i40.i = icmp ult i64 %257, %262
  br i1 %SandMem.TaintCheck1.i40.i, label %TaintCheck.succeeded11.i46.i, label %wasm.trap.fail2.i42.i

wasm.trap.fail2.i42.i:                            ; preds = %TaintCheck.succeeded.i41.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded11.i46.i:                     ; preds = %TaintCheck.succeeded.i41.i
  %263 = load i64, i64* @sbxHeap, align 8
  %264 = add i64 %263, %257
  %265 = inttoptr i64 %264 to %Tstruct.json_value_t_t*
  %type.i43.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %265, i64 0, i32 1
  store i32 6, i32* %type.i43.i, align 8, !tbaa !24
  %value.i44.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %265, i64 0, i32 2
  %266 = ptrtoint %Tstruct.json_value_value_t_t* %value.i44.i to i64
  %267 = and i64 %266, 4294967295
  %SandMem.TaintCheck12.i45.i = icmp ult i64 %267, %262
  br i1 %SandMem.TaintCheck12.i45.i, label %TaintCheck.succeeded16.i49.i, label %wasm.trap.fail13.i47.i

wasm.trap.fail13.i47.i:                           ; preds = %TaintCheck.succeeded11.i46.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded16.i49.i:                     ; preds = %TaintCheck.succeeded11.i46.i
  %268 = add i64 %267, %263
  %269 = inttoptr i64 %268 to %Tstruct.json_value_value_t_t*
  %boolean17.i48.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %269, i64 0, i32 4
  store i32 0, i32* %boolean17.i48.i, align 8, !tbaa !43
  %phi.cast.i61 = inttoptr i64 %257 to %Tstruct.json_value_t_t*
  br label %parse_boolean_value.exit

parse_boolean_value.exit:                         ; preds = %TaintCheck.succeeded5.i53, %TaintCheck.succeeded16.i.i, %TaintCheck.succeeded15.i, %TaintCheck.succeeded21.i, %TaintCheck.succeeded16.i49.i
  %retval.0.i62 = phi %Tstruct.json_value_t_t* [ null, %TaintCheck.succeeded15.i ], [ %phi.cast53.i, %TaintCheck.succeeded16.i.i ], [ null, %TaintCheck.succeeded5.i53 ], [ %phi.cast.i61, %TaintCheck.succeeded16.i49.i ], [ null, %TaintCheck.succeeded21.i ]
  %270 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i62 to i64
  %271 = and i64 %270, 4294967295
  %272 = inttoptr i64 %271 to %Tstruct.json_value_t_t*
  br label %return

sw.bb26:                                          ; preds = %TaintCheck.succeeded13, %TaintCheck.succeeded13, %TaintCheck.succeeded13, %TaintCheck.succeeded13, %TaintCheck.succeeded13, %TaintCheck.succeeded13, %TaintCheck.succeeded13, %TaintCheck.succeeded13, %TaintCheck.succeeded13, %TaintCheck.succeeded13, %TaintCheck.succeeded13
  %call27 = tail call %Tstruct.json_value_t_t* @parse_number_value(i8** nonnull %string)
  %273 = ptrtoint %Tstruct.json_value_t_t* %call27 to i64
  %274 = and i64 %273, 4294967295
  %275 = inttoptr i64 %274 to %Tstruct.json_value_t_t*
  br label %return

TaintCheck.succeeded2.i:                          ; preds = %TaintCheck.succeeded13
  %call.i = tail call i32 @t_strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* nonnull %13, i64 4) #16
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %TaintCheck.succeeded5.i, label %return

TaintCheck.succeeded5.i:                          ; preds = %TaintCheck.succeeded2.i
  %276 = load i8*, i8** %string, align 4, !tbaa !15
  %add.ptr.i = getelementptr inbounds i8, i8* %276, i64 4
  %277 = ptrtoint i8* %add.ptr.i to i64
  %278 = and i64 %277, 4294967295
  store i64 %278, i64* %2, align 4, !tbaa !15
  %call.i.i = tail call i8* @t_malloc(i64 56) #16
  %279 = ptrtoint i8* %call.i.i to i64
  %280 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %280, i64* @sbxHeapRange, align 8
  %281 = and i64 %279, 4294967295
  %282 = trunc i64 %279 to i32
  %tobool.not.i.i = icmp eq i32 %282, 0
  br i1 %tobool.not.i.i, label %return, label %if.end.i.i

if.end.i.i:                                       ; preds = %TaintCheck.succeeded5.i
  %SandMem.TaintCheck.i.i = icmp ult i64 %281, %280
  br i1 %SandMem.TaintCheck.i.i, label %TaintCheck.succeeded.i.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %if.end.i.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i.i:                         ; preds = %if.end.i.i
  %283 = load i64, i64* @sbxHeap, align 8
  %284 = add i64 %283, %281
  %285 = inttoptr i64 %284 to i64*
  store i64 0, i64* %285, align 4, !tbaa !17
  %286 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i.i = icmp ult i64 %281, %286
  br i1 %SandMem.TaintCheck1.i.i, label %TaintCheck.succeeded5.i.i, label %wasm.trap.fail2.i.i

wasm.trap.fail2.i.i:                              ; preds = %TaintCheck.succeeded.i.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded5.i.i:                        ; preds = %TaintCheck.succeeded.i.i
  %287 = load i64, i64* @sbxHeap, align 8
  %288 = add i64 %287, %281
  %289 = inttoptr i64 %288 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %289, i64 0, i32 1
  store i32 1, i32* %type.i.i, align 8, !tbaa !24
  %phi.cast = inttoptr i64 %281 to %Tstruct.json_value_t_t*
  br label %return

return:                                           ; preds = %TaintCheck.succeeded5.i.i, %TaintCheck.succeeded5.i, %TaintCheck.succeeded2.i, %TaintCheck.succeeded13, %entry, %sw.bb26, %parse_boolean_value.exit, %sw.bb20, %parse_array_value.exit, %parse_object_value.exit
  %retval.0 = phi %Tstruct.json_value_t_t* [ %275, %sw.bb26 ], [ %272, %parse_boolean_value.exit ], [ %227, %sw.bb20 ], [ %224, %parse_array_value.exit ], [ %147, %parse_object_value.exit ], [ null, %entry ], [ null, %TaintCheck.succeeded13 ], [ null, %TaintCheck.succeeded2.i ], [ %phi.cast, %TaintCheck.succeeded5.i.i ], [ null, %TaintCheck.succeeded5.i ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @parse_string_value(i8** %str_cpy) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @get_quoted_string(i8** %str_cpy)
  %0 = ptrtoint i8* %call to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to i8*
  %3 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %4 = ptrtoint i8* %call.i to i64
  %5 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %5, i64* @sbxHeapRange, align 8
  %6 = and i64 %4, 4294967295
  %7 = trunc i64 %4 to i32
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %TaintCheck.succeeded, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %SandMem.TaintCheck.i = icmp ult i64 %6, %5
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %6
  %10 = inttoptr i64 %9 to i64*
  store i64 0, i64* %10, align 4, !tbaa !17
  %11 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i = icmp ult i64 %6, %11
  br i1 %SandMem.TaintCheck1.i, label %TaintCheck.succeeded10.i, label %wasm.trap.fail2.i

wasm.trap.fail2.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded10.i:                         ; preds = %TaintCheck.succeeded.i
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = add i64 %12, %6
  %14 = inttoptr i64 %13 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %14, i64 0, i32 1
  store i32 2, i32* %type.i, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %14, i64 0, i32 2
  %15 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %16 = and i64 %15, 4294967295
  %SandMem.TaintCheck11.i = icmp ult i64 %16, %11
  br i1 %SandMem.TaintCheck11.i, label %json_value_init_string_no_copy.exit, label %wasm.trap.fail12.i

wasm.trap.fail12.i:                               ; preds = %TaintCheck.succeeded10.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_string_no_copy.exit:              ; preds = %TaintCheck.succeeded10.i
  %17 = add i64 %16, %12
  %18 = inttoptr i64 %17 to i64*
  store i64 %1, i64* %18, align 4, !tbaa !26
  %cmp3 = icmp eq i64 %6, 0
  br i1 %cmp3, label %TaintCheck.succeeded, label %if.end14

TaintCheck.succeeded:                             ; preds = %if.end, %json_value_init_string_no_copy.exit
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %19 = ptrtoint i8* %add.ptr to i64
  %20 = trunc i64 %19 to i32
  %IsoHeap.upper.not = icmp ugt i32 %3, %20
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed11, label %IsoHeap.success

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded
  %21 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %21
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded13, label %wasm.trap.fail

TaintCheck.failed11:                              ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail:                                   ; preds = %IsoHeap.success
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded13:                           ; preds = %IsoHeap.success
  %22 = load i64, i64* @sbxHeap, align 8
  %23 = add i64 %22, %1
  %24 = inttoptr i64 %23 to i8*
  tail call void @t_free(i8* %24) #16
  %25 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %25, i64* @sbxHeapRange, align 8
  br label %cleanup

if.end14:                                         ; preds = %json_value_init_string_no_copy.exit
  %26 = inttoptr i64 %6 to %Tstruct.json_value_t_t*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14, %TaintCheck.succeeded13
  %retval.0 = phi %Tstruct.json_value_t_t* [ null, %TaintCheck.succeeded13 ], [ %26, %if.end14 ], [ null, %entry ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @parse_number_value(i8** %str_cpy) local_unnamed_addr #0 {
entry:
  %end = alloca i8*, align 8
  %0 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %1 = bitcast i8** %end to i64*
  store i64 0, i64* %1, align 8, !tbaa !15
  %call = tail call i32* @__errno_location() #19
  store i32 0, i32* %call, align 4, !tbaa !5
  %IsoHeap.non_null.not = icmp eq i8** %str_cpy, null
  br i1 %IsoHeap.non_null.not, label %TaintCheck.failed, label %TaintCheck.succeeded

TaintCheck.succeeded:                             ; preds = %entry
  %2 = load i8*, i8** %str_cpy, align 4, !tbaa !15
  %3 = ptrtoint i8* %2 to i64
  %4 = load i64, i64* @sbxHeapRange, align 8
  %5 = and i64 %3, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %5, %4
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded2, label %wasm.trap.fail

TaintCheck.failed:                                ; preds = %entry
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail:                                   ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded2:                            ; preds = %TaintCheck.succeeded
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to i8*
  %call3 = call double @t_strtod(i8* %8, i8** nonnull %end) #16
  %9 = load i32, i32* %call, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %TaintCheck.succeeded7, label %cleanup

TaintCheck.succeeded7:                            ; preds = %TaintCheck.succeeded2
  %10 = load i8*, i8** %str_cpy, align 4, !tbaa !15
  %11 = load i8*, i8** %end, align 8, !tbaa !15
  %12 = ptrtoint i8* %11 to i64
  %sub.ptr.lhs.cast = and i64 %12, 4294967295
  %13 = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = and i64 %13, 4294967295
  %sub.ptr.sub = sub nsw i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call11 = call i32 @is_decimal(i8* %10, i64 %sub.ptr.sub)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %TaintCheck.succeeded15

TaintCheck.succeeded15:                           ; preds = %TaintCheck.succeeded7
  %14 = load i8*, i8** %end, align 8, !tbaa !15
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 4294967295
  %17 = bitcast i8** %str_cpy to i64*
  store i64 %16, i64* %17, align 4, !tbaa !15
  %call.i = call i8* @t_malloc(i64 56) #16
  %18 = ptrtoint i8* %call.i to i64
  %19 = call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %19, i64* @sbxHeapRange, align 8
  %20 = and i64 %18, 4294967295
  %mul.i = fmul double %call3, 0.000000e+00
  %cmp.i = fcmp une double %mul.i, 0.000000e+00
  %21 = trunc i64 %18 to i32
  %cmp1.i = icmp eq i32 %21, 0
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %cleanup, label %if.end3.i

if.end3.i:                                        ; preds = %TaintCheck.succeeded15
  %SandMem.TaintCheck.i = icmp ult i64 %20, %19
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end3.i
  call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end3.i
  %22 = load i64, i64* @sbxHeap, align 8
  %23 = add i64 %22, %20
  %24 = inttoptr i64 %23 to i64*
  store i64 0, i64* %24, align 4, !tbaa !17
  %25 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck4.i = icmp ult i64 %20, %25
  br i1 %SandMem.TaintCheck4.i, label %TaintCheck.succeeded13.i, label %wasm.trap.fail5.i

wasm.trap.fail5.i:                                ; preds = %TaintCheck.succeeded.i
  call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded13.i:                         ; preds = %TaintCheck.succeeded.i
  %26 = load i64, i64* @sbxHeap, align 8
  %27 = add i64 %26, %20
  %28 = inttoptr i64 %27 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %28, i64 0, i32 1
  store i32 3, i32* %type.i, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %28, i64 0, i32 2
  %29 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %30 = and i64 %29, 4294967295
  %SandMem.TaintCheck14.i = icmp ult i64 %30, %25
  br i1 %SandMem.TaintCheck14.i, label %TaintCheck.succeeded18.i, label %wasm.trap.fail15.i

wasm.trap.fail15.i:                               ; preds = %TaintCheck.succeeded13.i
  call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded18.i:                         ; preds = %TaintCheck.succeeded13.i
  %31 = add i64 %30, %26
  %32 = inttoptr i64 %31 to %Tstruct.json_value_value_t_t*
  %number19.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %32, i64 0, i32 1
  store double %call3, double* %number19.i, align 8, !tbaa !44
  %phi.cast = inttoptr i64 %20 to %Tstruct.json_value_t_t*
  br label %cleanup

cleanup:                                          ; preds = %TaintCheck.succeeded18.i, %TaintCheck.succeeded15, %TaintCheck.succeeded2, %TaintCheck.succeeded7
  %retval.0 = phi %Tstruct.json_value_t_t* [ null, %TaintCheck.succeeded7 ], [ null, %TaintCheck.succeeded2 ], [ %phi.cast, %TaintCheck.succeeded18.i ], [ null, %TaintCheck.succeeded15 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() local_unnamed_addr #5

declare dso_local double @t_strtod(i8*, i8**) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_value_init_number(double %number) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %mul = fmul double %number, 0.000000e+00
  %cmp = fcmp une double %mul, 0.000000e+00
  %4 = trunc i64 %0 to i32
  %cmp1 = icmp eq i32 %4, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %SandMem.TaintCheck = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end3
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end3
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to i64*
  store i64 0, i64* %7, align 4, !tbaa !17
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck4 = icmp ult i64 %2, %8
  br i1 %SandMem.TaintCheck4, label %TaintCheck.succeeded13, label %wasm.trap.fail5

wasm.trap.fail5:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded13:                           ; preds = %TaintCheck.succeeded
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %2
  %11 = inttoptr i64 %10 to %Tstruct.json_value_t_t*
  %type = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %11, i64 0, i32 1
  store i32 3, i32* %type, align 8, !tbaa !24
  %value = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %11, i64 0, i32 2
  %12 = ptrtoint %Tstruct.json_value_value_t_t* %value to i64
  %13 = and i64 %12, 4294967295
  %SandMem.TaintCheck14 = icmp ult i64 %13, %8
  br i1 %SandMem.TaintCheck14, label %TaintCheck.succeeded18, label %wasm.trap.fail15

wasm.trap.fail15:                                 ; preds = %TaintCheck.succeeded13
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded18:                           ; preds = %TaintCheck.succeeded13
  %14 = add i64 %13, %9
  %15 = inttoptr i64 %14 to %Tstruct.json_value_value_t_t*
  %number19 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %15, i64 0, i32 1
  store double %number, double* %number19, align 8, !tbaa !44
  br label %cleanup

cleanup:                                          ; preds = %entry, %TaintCheck.succeeded18
  %retval.0 = phi %Tstruct.json_value_t_t* [ %3, %TaintCheck.succeeded18 ], [ null, %entry ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %value, i8* %buf, i32 %level, i32 %is_pretty, i8* %num_buf, i8* %buf_start, i64 %buf_len) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %buf to i64
  %3 = and i64 %2, 4294967295
  %4 = inttoptr i64 %3 to i8*
  %5 = ptrtoint i8* %num_buf to i64
  %6 = and i64 %5, 4294967295
  %7 = inttoptr i64 %6 to i8*
  %8 = ptrtoint i8* %buf_start to i64
  %9 = and i64 %8, 4294967295
  %10 = inttoptr i64 %9 to i8*
  %11 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %cleanup, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %12 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %12
  br i1 %SandMem.TaintCheck.i, label %json_value_get_type.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit:                         ; preds = %cond.true.i
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = add i64 %13, %1
  %15 = inttoptr i64 %14 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %15, i64 0, i32 1
  %16 = load i32, i32* %type.i, align 8, !tbaa !24
  switch i32 %16, label %cleanup [
    i32 5, label %TaintCheck.succeeded.i679
    i32 4, label %TaintCheck.succeeded.i723
    i32 2, label %TaintCheck.succeeded.i756
    i32 6, label %TaintCheck.succeeded.i736
    i32 3, label %TaintCheck.succeeded.i825
    i32 1, label %do.body382
  ]

TaintCheck.succeeded.i679:                        ; preds = %json_value_get_type.exit
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %15, i64 0, i32 2
  %17 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %18 = and i64 %17, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %18, %12
  br i1 %SandMem.TaintCheck2.i, label %json_value_get_array.exit, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i679
  tail call void @llvm.trap() #16
  unreachable

json_value_get_array.exit:                        ; preds = %TaintCheck.succeeded.i679
  %19 = add i64 %18, %13
  %20 = inttoptr i64 %19 to %Tstruct.json_value_value_t_t*
  %array.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %20, i64 0, i32 3
  %21 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i, align 4, !tbaa !27
  %phi.cast879 = ptrtoint %Tstruct.json_array_t_t* %21 to i64
  %phi.bo880 = and i64 %phi.cast879, 4294967295
  %tobool.not.i681 = icmp eq i64 %phi.bo880, 0
  br i1 %tobool.not.i681, label %json_array_get_count.exit, label %cond.true.i683

cond.true.i683:                                   ; preds = %json_value_get_array.exit
  %SandMem.TaintCheck.i682 = icmp ult i64 %phi.bo880, %12
  br i1 %SandMem.TaintCheck.i682, label %TaintCheck.succeeded.i685, label %wasm.trap.fail.i684

wasm.trap.fail.i684:                              ; preds = %cond.true.i683
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i685:                        ; preds = %cond.true.i683
  %22 = add i64 %13, %phi.bo880
  %23 = inttoptr i64 %22 to %Tstruct.json_array_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %23, i64 0, i32 2
  %24 = load i64, i64* %count.i, align 8, !tbaa !28
  br label %json_array_get_count.exit

json_array_get_count.exit:                        ; preds = %json_value_get_array.exit, %TaintCheck.succeeded.i685
  %cond.i686 = phi i64 [ %24, %TaintCheck.succeeded.i685 ], [ 0, %json_value_get_array.exit ]
  %call3 = tail call fastcc i32 @append_string(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %json_array_get_count.exit
  %25 = trunc i64 %2 to i32
  %cmp4.not = icmp eq i32 %25, 0
  %idx.ext856 = zext i32 %call3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext856
  %26 = ptrtoint i8* %add.ptr to i64
  %27 = and i64 %26, 4294967295
  %28 = inttoptr i64 %27 to i8*
  %buf.addr.0 = select i1 %cmp4.not, i8* %4, i8* %28
  %cmp8 = icmp ne i64 %cond.i686, 0
  %tobool = icmp ne i32 %is_pretty, 0
  %or.cond = and i1 %tobool, %cmp8
  br i1 %or.cond, label %do.body10, label %if.end24

do.body10:                                        ; preds = %if.end
  %call11 = tail call fastcc i32 @append_string(i8* %buf.addr.0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %cleanup, label %if.end24.thread

if.end24.thread:                                  ; preds = %do.body10
  %cmp15.not = icmp eq i8* %buf.addr.0, null
  %idx.ext17857 = zext i32 %call11 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %buf.addr.0, i64 %idx.ext17857
  %29 = ptrtoint i8* %add.ptr18 to i64
  %30 = and i64 %29, 4294967295
  %31 = inttoptr i64 %30 to i8*
  %buf.addr.1 = select i1 %cmp15.not, i8* null, i8* %31
  %add21 = add nuw nsw i32 %call11, %call3
  br label %for.body.lr.ph

if.end24:                                         ; preds = %if.end
  %cmp25906.not = icmp eq i64 %cond.i686, 0
  br i1 %cmp25906.not, label %do.body111, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end24.thread, %if.end24
  %buf.addr.2937 = phi i8* [ %buf.addr.1, %if.end24.thread ], [ %buf.addr.0, %if.end24 ]
  %written_total.0936 = phi i32 [ %add21, %if.end24.thread ], [ %call3, %if.end24 ]
  %cmp17.i = icmp sgt i32 %level, -1
  %32 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i688 = icmp ult i64 %phi.bo880, %32
  %33 = load i64, i64* @sbxHeap, align 8
  %34 = add i64 %33, %phi.bo880
  %35 = inttoptr i64 %34 to %Tstruct.json_array_t_t*
  %count.i.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %35, i64 0, i32 2
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %35, i64 0, i32 1
  %add46 = add nsw i32 %level, 1
  %sub = add i64 %cond.i686, -1
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph
  %buf.addr.3910 = phi i8* [ %buf.addr.2937, %for.body.lr.ph ], [ %buf.addr.3910.be, %for.body.backedge ]
  %i.0908 = phi i64 [ 0, %for.body.lr.ph ], [ %i.0908.be, %for.body.backedge ]
  %written_total.1907 = phi i32 [ %written_total.0936, %for.body.lr.ph ], [ %written_total.1907.be, %for.body.backedge ]
  br i1 %tobool, label %do.body28, label %if.end43

do.body28:                                        ; preds = %for.body
  %36 = ptrtoint i8* %buf.addr.3910 to i64
  br i1 %cmp17.i, label %do.body.preheader.i, label %if.end33

do.body.preheader.i:                              ; preds = %do.body28
  %37 = and i64 %36, 4294967295
  %38 = inttoptr i64 %37 to i8*
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i, %do.body.preheader.i
  %written_total.020.i = phi i32 [ %add.i, %if.end.i ], [ 0, %do.body.preheader.i ]
  %i.019.i = phi i32 [ %inc.i, %if.end.i ], [ 0, %do.body.preheader.i ]
  %buf.addr.018.i = phi i8* [ %buf.addr.1.i, %if.end.i ], [ %38, %do.body.preheader.i ]
  %call.i = tail call fastcc i32 @append_string(i8* %buf.addr.018.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* %10, i64 %buf_len) #16
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %39 = ptrtoint i8* %buf.addr.018.i to i64
  %40 = trunc i64 %39 to i32
  %cmp2.not.i = icmp eq i32 %40, 0
  %idx.ext16.i = zext i32 %call.i to i64
  %add.ptr.i = getelementptr inbounds i8, i8* %buf.addr.018.i, i64 %idx.ext16.i
  %41 = ptrtoint i8* %add.ptr.i to i64
  %42 = and i64 %41, 4294967295
  %43 = inttoptr i64 %42 to i8*
  %buf.addr.1.i = select i1 %cmp2.not.i, i8* %buf.addr.018.i, i8* %43
  %add.i = add nsw i32 %call.i, %written_total.020.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %i.019.i, %level
  br i1 %exitcond.not.i, label %append_indent.exit, label %do.body.i, !llvm.loop !45

append_indent.exit:                               ; preds = %if.end.i
  %cmp31 = icmp slt i32 %add.i, 0
  br i1 %cmp31, label %cleanup, label %if.end33

if.end33:                                         ; preds = %do.body28, %append_indent.exit
  %retval.0.i835 = phi i32 [ %add.i, %append_indent.exit ], [ 0, %do.body28 ]
  %44 = trunc i64 %36 to i32
  %cmp34.not = icmp eq i32 %44, 0
  %idx.ext36858 = zext i32 %retval.0.i835 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %buf.addr.3910, i64 %idx.ext36858
  %45 = ptrtoint i8* %add.ptr37 to i64
  %46 = and i64 %45, 4294967295
  %47 = inttoptr i64 %46 to i8*
  %buf.addr.4 = select i1 %cmp34.not, i8* %buf.addr.3910, i8* %47
  %add40 = add nsw i32 %retval.0.i835, %written_total.1907
  br label %if.end43

if.end43:                                         ; preds = %if.end33, %for.body
  %written_total.2 = phi i32 [ %add40, %if.end33 ], [ %written_total.1907, %for.body ]
  %buf.addr.5 = phi i8* [ %buf.addr.4, %if.end33 ], [ %buf.addr.3910, %for.body ]
  br i1 %tobool.not.i681, label %json_array_get_value.exit, label %cond.true.i.i689

cond.true.i.i689:                                 ; preds = %if.end43
  br i1 %SandMem.TaintCheck.i.i688, label %json_array_get_count.exit.i, label %wasm.trap.fail.i.i690

wasm.trap.fail.i.i690:                            ; preds = %cond.true.i.i689
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit.i:                      ; preds = %cond.true.i.i689
  %48 = load i64, i64* %count.i.i, align 8, !tbaa !28
  %cmp1.not.i = icmp ugt i64 %48, %i.0908
  br i1 %cmp1.not.i, label %TaintCheck.succeeded.i692, label %json_array_get_value.exit

TaintCheck.succeeded.i692:                        ; preds = %json_array_get_count.exit.i
  %49 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %50 = ptrtoint %Tstruct.json_value_t_t** %49 to i64
  %51 = and i64 %50, 4294967295
  %SandMem.TaintCheck2.i691 = icmp ult i64 %51, %32
  br i1 %SandMem.TaintCheck2.i691, label %TaintCheck.succeeded6.i694, label %wasm.trap.fail3.i693

wasm.trap.fail3.i693:                             ; preds = %TaintCheck.succeeded.i692
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i694:                       ; preds = %TaintCheck.succeeded.i692
  %52 = add i64 %51, %33
  %53 = inttoptr i64 %52 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %53, i64 %i.0908
  %54 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  br label %json_array_get_value.exit

json_array_get_value.exit:                        ; preds = %if.end43, %json_array_get_count.exit.i, %TaintCheck.succeeded6.i694
  %retval.0.i695 = phi %Tstruct.json_value_t_t* [ %54, %TaintCheck.succeeded6.i694 ], [ null, %json_array_get_count.exit.i ], [ null, %if.end43 ]
  %55 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i695 to i64
  %56 = and i64 %55, 4294967295
  %57 = inttoptr i64 %56 to %Tstruct.json_value_t_t*
  %call47 = tail call i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %57, i8* %buf.addr.5, i32 %add46, i32 %is_pretty, i8* %7, i8* %10, i64 %buf_len)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %cleanup, label %if.end50

if.end50:                                         ; preds = %json_array_get_value.exit
  %58 = ptrtoint i8* %buf.addr.5 to i64
  %59 = trunc i64 %58 to i32
  %cmp51.not = icmp eq i32 %59, 0
  %idx.ext53859 = zext i32 %call47 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %buf.addr.5, i64 %idx.ext53859
  %60 = ptrtoint i8* %add.ptr54 to i64
  %61 = and i64 %60, 4294967295
  %62 = inttoptr i64 %61 to i8*
  %buf.addr.6 = select i1 %cmp51.not, i8* %buf.addr.5, i8* %62
  %add57 = add nsw i32 %call47, %written_total.2
  %cmp58 = icmp ult i64 %i.0908, %sub
  br i1 %cmp58, label %do.body60, label %if.end74

do.body60:                                        ; preds = %if.end50
  %call61 = tail call fastcc i32 @append_string(i8* %buf.addr.6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %cleanup, label %if.end64

if.end64:                                         ; preds = %do.body60
  %63 = ptrtoint i8* %buf.addr.6 to i64
  %64 = trunc i64 %63 to i32
  %cmp65.not = icmp eq i32 %64, 0
  %idx.ext67860 = zext i32 %call61 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %buf.addr.6, i64 %idx.ext67860
  %65 = ptrtoint i8* %add.ptr68 to i64
  %66 = and i64 %65, 4294967295
  %67 = inttoptr i64 %66 to i8*
  %buf.addr.7 = select i1 %cmp65.not, i8* %buf.addr.6, i8* %67
  %add71 = add nsw i32 %call61, %add57
  br label %if.end74

if.end74:                                         ; preds = %if.end64, %if.end50
  %written_total.3 = phi i32 [ %add71, %if.end64 ], [ %add57, %if.end50 ]
  %buf.addr.8 = phi i8* [ %buf.addr.7, %if.end64 ], [ %buf.addr.6, %if.end50 ]
  br i1 %tobool, label %do.body77, label %for.inc.thread

do.body77:                                        ; preds = %if.end74
  %call78 = tail call fastcc i32 @append_string(i8* %buf.addr.8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %cleanup, label %for.inc

for.inc:                                          ; preds = %do.body77
  %68 = ptrtoint i8* %buf.addr.8 to i64
  %69 = trunc i64 %68 to i32
  %cmp82.not = icmp eq i32 %69, 0
  %idx.ext84861 = zext i32 %call78 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %buf.addr.8, i64 %idx.ext84861
  %70 = ptrtoint i8* %add.ptr85 to i64
  %71 = and i64 %70, 4294967295
  %72 = inttoptr i64 %71 to i8*
  %buf.addr.9 = select i1 %cmp82.not, i8* %buf.addr.8, i8* %72
  %add88 = add nsw i32 %call78, %written_total.3
  %inc = add nuw i64 %i.0908, 1
  %exitcond.not = icmp eq i64 %inc, %cond.i686
  br i1 %exitcond.not, label %for.end, label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc, %for.inc.thread
  %buf.addr.3910.be = phi i8* [ %buf.addr.9, %for.inc ], [ %buf.addr.8, %for.inc.thread ]
  %i.0908.be = phi i64 [ %inc, %for.inc ], [ %inc943, %for.inc.thread ]
  %written_total.1907.be = phi i32 [ %add88, %for.inc ], [ %written_total.3, %for.inc.thread ]
  br label %for.body, !llvm.loop !46

for.inc.thread:                                   ; preds = %if.end74
  %inc943 = add nuw i64 %i.0908, 1
  %exitcond.not944 = icmp eq i64 %inc943, %cond.i686
  br i1 %exitcond.not944, label %do.body111, label %for.body.backedge

for.end:                                          ; preds = %for.inc
  br i1 %or.cond, label %do.body96, label %do.body111

do.body96:                                        ; preds = %for.end
  %cmp17.i696 = icmp sgt i32 %level, 0
  %73 = ptrtoint i8* %buf.addr.9 to i64
  br i1 %cmp17.i696, label %do.body.preheader.i697, label %if.end100

do.body.preheader.i697:                           ; preds = %do.body96
  %74 = and i64 %73, 4294967295
  %75 = inttoptr i64 %74 to i8*
  br label %do.body.i703

do.body.i703:                                     ; preds = %if.end.i711, %do.body.preheader.i697
  %written_total.020.i698 = phi i32 [ %add.i708, %if.end.i711 ], [ 0, %do.body.preheader.i697 ]
  %i.019.i699 = phi i32 [ %inc.i709, %if.end.i711 ], [ 0, %do.body.preheader.i697 ]
  %buf.addr.018.i700 = phi i8* [ %buf.addr.1.i707, %if.end.i711 ], [ %75, %do.body.preheader.i697 ]
  %call.i701 = tail call fastcc i32 @append_string(i8* %buf.addr.018.i700, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* %10, i64 %buf_len) #16
  %cmp1.i702 = icmp slt i32 %call.i701, 0
  br i1 %cmp1.i702, label %cleanup, label %if.end.i711

if.end.i711:                                      ; preds = %do.body.i703
  %76 = ptrtoint i8* %buf.addr.018.i700 to i64
  %77 = trunc i64 %76 to i32
  %cmp2.not.i704 = icmp eq i32 %77, 0
  %idx.ext16.i705 = zext i32 %call.i701 to i64
  %add.ptr.i706 = getelementptr inbounds i8, i8* %buf.addr.018.i700, i64 %idx.ext16.i705
  %78 = ptrtoint i8* %add.ptr.i706 to i64
  %79 = and i64 %78, 4294967295
  %80 = inttoptr i64 %79 to i8*
  %buf.addr.1.i707 = select i1 %cmp2.not.i704, i8* %buf.addr.018.i700, i8* %80
  %add.i708 = add nsw i32 %call.i701, %written_total.020.i698
  %inc.i709 = add nuw nsw i32 %i.019.i699, 1
  %exitcond.not.i710 = icmp eq i32 %inc.i709, %level
  br i1 %exitcond.not.i710, label %append_indent.exit713, label %do.body.i703, !llvm.loop !45

append_indent.exit713:                            ; preds = %if.end.i711
  %cmp98 = icmp slt i32 %add.i708, 0
  br i1 %cmp98, label %cleanup, label %if.end100

if.end100:                                        ; preds = %do.body96, %append_indent.exit713
  %retval.0.i712841 = phi i32 [ %add.i708, %append_indent.exit713 ], [ 0, %do.body96 ]
  %81 = trunc i64 %73 to i32
  %cmp101.not = icmp eq i32 %81, 0
  %idx.ext103862 = zext i32 %retval.0.i712841 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %buf.addr.9, i64 %idx.ext103862
  %82 = ptrtoint i8* %add.ptr104 to i64
  %83 = and i64 %82, 4294967295
  %84 = inttoptr i64 %83 to i8*
  %buf.addr.11 = select i1 %cmp101.not, i8* %buf.addr.9, i8* %84
  %add107 = add nsw i32 %retval.0.i712841, %add88
  br label %do.body111

do.body111:                                       ; preds = %for.inc.thread, %if.end24, %for.end, %if.end100
  %written_total.5 = phi i32 [ %add107, %if.end100 ], [ %add88, %for.end ], [ %call3, %if.end24 ], [ %written_total.3, %for.inc.thread ]
  %buf.addr.12 = phi i8* [ %buf.addr.11, %if.end100 ], [ %buf.addr.9, %for.end ], [ %buf.addr.0, %if.end24 ], [ %buf.addr.8, %for.inc.thread ]
  %call112 = tail call fastcc i32 @append_string(i8* %buf.addr.12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %cleanup, label %if.end115

if.end115:                                        ; preds = %do.body111
  %add122 = add nsw i32 %call112, %written_total.5
  br label %cleanup

TaintCheck.succeeded.i723:                        ; preds = %json_value_get_type.exit
  %value1.i721 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %15, i64 0, i32 2
  %85 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i721 to i64
  %86 = and i64 %85, 4294967295
  %SandMem.TaintCheck2.i722 = icmp ult i64 %86, %12
  br i1 %SandMem.TaintCheck2.i722, label %json_value_get_object.exit, label %wasm.trap.fail3.i724

wasm.trap.fail3.i724:                             ; preds = %TaintCheck.succeeded.i723
  tail call void @llvm.trap() #16
  unreachable

json_value_get_object.exit:                       ; preds = %TaintCheck.succeeded.i723
  %87 = add i64 %86, %13
  %88 = inttoptr i64 %87 to %Tstruct.json_value_value_t_t*
  %object.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %88, i64 0, i32 2
  %89 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i, align 4, !tbaa !25
  %phi.cast878 = ptrtoint %Tstruct.json_object_t_t* %89 to i64
  %phi.bo = and i64 %phi.cast878, 4294967295
  %tobool.not.i740 = icmp eq i64 %phi.bo, 0
  br i1 %tobool.not.i740, label %json_object_get_count.exit, label %cond.true.i742

cond.true.i742:                                   ; preds = %json_value_get_object.exit
  %SandMem.TaintCheck.i741 = icmp ult i64 %phi.bo, %12
  br i1 %SandMem.TaintCheck.i741, label %TaintCheck.succeeded.i745, label %wasm.trap.fail.i743

wasm.trap.fail.i743:                              ; preds = %cond.true.i742
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i745:                        ; preds = %cond.true.i742
  %90 = add i64 %13, %phi.bo
  %91 = inttoptr i64 %90 to %Tstruct.json_object_t_t*
  %count.i744 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %91, i64 0, i32 3
  %92 = load i64, i64* %count.i744, align 8, !tbaa !9
  br label %json_object_get_count.exit

json_object_get_count.exit:                       ; preds = %json_value_get_object.exit, %TaintCheck.succeeded.i745
  %cond.i746 = phi i64 [ %92, %TaintCheck.succeeded.i745 ], [ 0, %json_value_get_object.exit ]
  %call130 = tail call fastcc i32 @append_string(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %cleanup, label %if.end133

if.end133:                                        ; preds = %json_object_get_count.exit
  %93 = trunc i64 %2 to i32
  %cmp134.not = icmp eq i32 %93, 0
  %idx.ext136863 = zext i32 %call130 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %4, i64 %idx.ext136863
  %94 = ptrtoint i8* %add.ptr137 to i64
  %95 = and i64 %94, 4294967295
  %96 = inttoptr i64 %95 to i8*
  %buf.addr.13 = select i1 %cmp134.not, i8* %4, i8* %96
  %cmp143 = icmp ne i64 %cond.i746, 0
  %tobool145 = icmp ne i32 %is_pretty, 0
  %or.cond407 = and i1 %tobool145, %cmp143
  br i1 %or.cond407, label %do.body147, label %if.end161

do.body147:                                       ; preds = %if.end133
  %call148 = tail call fastcc i32 @append_string(i8* %buf.addr.13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %cleanup, label %if.end161.thread

if.end161.thread:                                 ; preds = %do.body147
  %cmp152.not = icmp eq i8* %buf.addr.13, null
  %idx.ext154864 = zext i32 %call148 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %buf.addr.13, i64 %idx.ext154864
  %97 = ptrtoint i8* %add.ptr155 to i64
  %98 = and i64 %97, 4294967295
  %99 = inttoptr i64 %98 to i8*
  %buf.addr.14 = select i1 %cmp152.not, i8* null, i8* %99
  %add158 = add nuw nsw i32 %call148, %call130
  br label %for.body164.lr.ph

if.end161:                                        ; preds = %if.end133
  %cmp163913.not = icmp eq i64 %cond.i746, 0
  br i1 %cmp163913.not, label %do.body301, label %for.body164.lr.ph

for.body164.lr.ph:                                ; preds = %if.end161.thread, %if.end161
  %buf.addr.15952 = phi i8* [ %buf.addr.14, %if.end161.thread ], [ %buf.addr.13, %if.end161 ]
  %written_total.6951 = phi i32 [ %add158, %if.end161.thread ], [ %call130, %if.end161 ]
  %100 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i761 = icmp ult i64 %phi.bo, %100
  %101 = load i64, i64* @sbxHeap, align 8
  %102 = add i64 %101, %phi.bo
  %103 = inttoptr i64 %102 to %Tstruct.json_object_t_t*
  %count.i.i764 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %103, i64 0, i32 3
  %names.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %103, i64 0, i32 1
  %cmp17.i790 = icmp sgt i32 %level, -1
  %104 = inttoptr i64 %phi.bo to %Tstruct.json_object_t_t*
  %add232 = add nsw i32 %level, 1
  %sub244 = add i64 %cond.i746, -1
  br label %for.body164

for.body164:                                      ; preds = %for.body164.backedge, %for.body164.lr.ph
  %buf.addr.16917 = phi i8* [ %buf.addr.15952, %for.body164.lr.ph ], [ %buf.addr.16917.be, %for.body164.backedge ]
  %i.1915 = phi i64 [ 0, %for.body164.lr.ph ], [ %i.1915.be, %for.body164.backedge ]
  %written_total.7914 = phi i32 [ %written_total.6951, %for.body164.lr.ph ], [ %written_total.7914.be, %for.body164.backedge ]
  br i1 %tobool.not.i740, label %json_object_get_name.exit, label %cond.true.i.i762

cond.true.i.i762:                                 ; preds = %for.body164
  br i1 %SandMem.TaintCheck.i.i761, label %json_object_get_count.exit.i, label %wasm.trap.fail.i.i763

wasm.trap.fail.i.i763:                            ; preds = %cond.true.i.i762
  tail call void @llvm.trap() #16
  unreachable

json_object_get_count.exit.i:                     ; preds = %cond.true.i.i762
  %105 = load i64, i64* %count.i.i764, align 8, !tbaa !9
  %cmp1.not.i765 = icmp ugt i64 %105, %i.1915
  br i1 %cmp1.not.i765, label %TaintCheck.succeeded.i767, label %json_object_get_name.exit

TaintCheck.succeeded.i767:                        ; preds = %json_object_get_count.exit.i
  %106 = load i8**, i8*** %names.i, align 4, !tbaa !14
  %107 = ptrtoint i8** %106 to i64
  %108 = and i64 %107, 4294967295
  %SandMem.TaintCheck2.i766 = icmp ult i64 %108, %100
  br i1 %SandMem.TaintCheck2.i766, label %TaintCheck.succeeded6.i770, label %wasm.trap.fail3.i768

wasm.trap.fail3.i768:                             ; preds = %TaintCheck.succeeded.i767
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i770:                       ; preds = %TaintCheck.succeeded.i767
  %109 = add i64 %108, %101
  %110 = inttoptr i64 %109 to i8**
  %arrayidx.i769 = getelementptr inbounds i8*, i8** %110, i64 %i.1915
  %111 = load i8*, i8** %arrayidx.i769, align 4, !tbaa !15
  br label %json_object_get_name.exit

json_object_get_name.exit:                        ; preds = %for.body164, %json_object_get_count.exit.i, %TaintCheck.succeeded6.i770
  %retval.0.i771 = phi i8* [ %111, %TaintCheck.succeeded6.i770 ], [ null, %json_object_get_count.exit.i ], [ null, %for.body164 ]
  %112 = ptrtoint i8* %retval.0.i771 to i64
  %113 = and i64 %112, 4294967295
  %114 = inttoptr i64 %113 to i8*
  %115 = trunc i64 %112 to i32
  %cmp167 = icmp eq i32 %115, 0
  br i1 %cmp167, label %cleanup, label %if.end169

if.end169:                                        ; preds = %json_object_get_name.exit
  br i1 %tobool145, label %do.body172, label %if.end187

do.body172:                                       ; preds = %if.end169
  %116 = ptrtoint i8* %buf.addr.16917 to i64
  br i1 %cmp17.i790, label %do.body.preheader.i791, label %if.end177

do.body.preheader.i791:                           ; preds = %do.body172
  %117 = and i64 %116, 4294967295
  %118 = inttoptr i64 %117 to i8*
  br label %do.body.i797

do.body.i797:                                     ; preds = %if.end.i805, %do.body.preheader.i791
  %written_total.020.i792 = phi i32 [ %add.i802, %if.end.i805 ], [ 0, %do.body.preheader.i791 ]
  %i.019.i793 = phi i32 [ %inc.i803, %if.end.i805 ], [ 0, %do.body.preheader.i791 ]
  %buf.addr.018.i794 = phi i8* [ %buf.addr.1.i801, %if.end.i805 ], [ %118, %do.body.preheader.i791 ]
  %call.i795 = tail call fastcc i32 @append_string(i8* %buf.addr.018.i794, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* %10, i64 %buf_len) #16
  %cmp1.i796 = icmp slt i32 %call.i795, 0
  br i1 %cmp1.i796, label %cleanup, label %if.end.i805

if.end.i805:                                      ; preds = %do.body.i797
  %119 = ptrtoint i8* %buf.addr.018.i794 to i64
  %120 = trunc i64 %119 to i32
  %cmp2.not.i798 = icmp eq i32 %120, 0
  %idx.ext16.i799 = zext i32 %call.i795 to i64
  %add.ptr.i800 = getelementptr inbounds i8, i8* %buf.addr.018.i794, i64 %idx.ext16.i799
  %121 = ptrtoint i8* %add.ptr.i800 to i64
  %122 = and i64 %121, 4294967295
  %123 = inttoptr i64 %122 to i8*
  %buf.addr.1.i801 = select i1 %cmp2.not.i798, i8* %buf.addr.018.i794, i8* %123
  %add.i802 = add nsw i32 %call.i795, %written_total.020.i792
  %inc.i803 = add nuw nsw i32 %i.019.i793, 1
  %exitcond.not.i804 = icmp eq i32 %i.019.i793, %level
  br i1 %exitcond.not.i804, label %append_indent.exit807, label %do.body.i797, !llvm.loop !45

append_indent.exit807:                            ; preds = %if.end.i805
  %cmp175 = icmp slt i32 %add.i802, 0
  br i1 %cmp175, label %cleanup, label %if.end177

if.end177:                                        ; preds = %do.body172, %append_indent.exit807
  %retval.0.i806847 = phi i32 [ %add.i802, %append_indent.exit807 ], [ 0, %do.body172 ]
  %124 = trunc i64 %116 to i32
  %cmp178.not = icmp eq i32 %124, 0
  %idx.ext180865 = zext i32 %retval.0.i806847 to i64
  %add.ptr181 = getelementptr inbounds i8, i8* %buf.addr.16917, i64 %idx.ext180865
  %125 = ptrtoint i8* %add.ptr181 to i64
  %126 = and i64 %125, 4294967295
  %127 = inttoptr i64 %126 to i8*
  %buf.addr.17 = select i1 %cmp178.not, i8* %buf.addr.16917, i8* %127
  %add184 = add nsw i32 %retval.0.i806847, %written_total.7914
  br label %if.end187

if.end187:                                        ; preds = %if.end177, %if.end169
  %written_total.8 = phi i32 [ %add184, %if.end177 ], [ %written_total.7914, %if.end169 ]
  %buf.addr.18 = phi i8* [ %buf.addr.17, %if.end177 ], [ %buf.addr.16917, %if.end169 ]
  %call188 = tail call i32 @json_serialize_string(i8* %114, i8* %buf.addr.18, i8* %10, i64 %buf_len)
  %cmp189 = icmp slt i32 %call188, 0
  br i1 %cmp189, label %cleanup, label %if.end191

if.end191:                                        ; preds = %if.end187
  %128 = ptrtoint i8* %buf.addr.18 to i64
  %129 = trunc i64 %128 to i32
  %cmp192.not = icmp eq i32 %129, 0
  %idx.ext194866 = zext i32 %call188 to i64
  %add.ptr195 = getelementptr inbounds i8, i8* %buf.addr.18, i64 %idx.ext194866
  %130 = ptrtoint i8* %add.ptr195 to i64
  %131 = and i64 %130, 4294967295
  %132 = inttoptr i64 %131 to i8*
  %buf.addr.19 = select i1 %cmp192.not, i8* %buf.addr.18, i8* %132
  %call200 = tail call fastcc i32 @append_string(i8* %buf.addr.19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp201 = icmp slt i32 %call200, 0
  br i1 %cmp201, label %cleanup, label %if.end203

if.end203:                                        ; preds = %if.end191
  %add198 = add nsw i32 %call188, %written_total.8
  %133 = ptrtoint i8* %buf.addr.19 to i64
  %134 = trunc i64 %133 to i32
  %cmp204.not = icmp eq i32 %134, 0
  %idx.ext206867 = zext i32 %call200 to i64
  %add.ptr207 = getelementptr inbounds i8, i8* %buf.addr.19, i64 %idx.ext206867
  %135 = ptrtoint i8* %add.ptr207 to i64
  %136 = and i64 %135, 4294967295
  %137 = inttoptr i64 %136 to i8*
  %buf.addr.20 = select i1 %cmp204.not, i8* %buf.addr.19, i8* %137
  %add210 = add nsw i32 %add198, %call200
  br i1 %tobool145, label %do.body215, label %if.end229

do.body215:                                       ; preds = %if.end203
  %call216 = tail call fastcc i32 @append_string(i8* %buf.addr.20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %cleanup, label %if.end219

if.end219:                                        ; preds = %do.body215
  %138 = ptrtoint i8* %buf.addr.20 to i64
  %139 = trunc i64 %138 to i32
  %cmp220.not = icmp eq i32 %139, 0
  %idx.ext222868 = zext i32 %call216 to i64
  %add.ptr223 = getelementptr inbounds i8, i8* %buf.addr.20, i64 %idx.ext222868
  %140 = ptrtoint i8* %add.ptr223 to i64
  %141 = and i64 %140, 4294967295
  %142 = inttoptr i64 %141 to i8*
  %buf.addr.21 = select i1 %cmp220.not, i8* %buf.addr.20, i8* %142
  %add226 = add nsw i32 %call216, %add210
  br label %if.end229

if.end229:                                        ; preds = %if.end219, %if.end203
  %written_total.9 = phi i32 [ %add226, %if.end219 ], [ %add210, %if.end203 ]
  %buf.addr.22 = phi i8* [ %buf.addr.21, %if.end219 ], [ %buf.addr.20, %if.end203 ]
  br i1 %tobool.not.i740, label %json_object_get_value.exit, label %if.end.i811

if.end.i811:                                      ; preds = %if.end229
  %SandMem.TaintCheck.i810 = icmp ult i64 %113, %100
  br i1 %SandMem.TaintCheck.i810, label %TaintCheck.succeeded.i814, label %wasm.trap.fail.i812

wasm.trap.fail.i812:                              ; preds = %if.end.i811
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i814:                        ; preds = %if.end.i811
  %143 = add i64 %101, %113
  %144 = inttoptr i64 %143 to i8*
  %call.i813 = tail call i64 @t_strlen(i8* %144) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* nonnull %104, i8* %114, i64 %call.i813) #16
  %145 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %146 = and i64 %145, 4294967295
  %147 = inttoptr i64 %146 to %Tstruct.json_value_t_t*
  br label %json_object_get_value.exit

json_object_get_value.exit:                       ; preds = %if.end229, %TaintCheck.succeeded.i814
  %retval.0.i815 = phi %Tstruct.json_value_t_t* [ %147, %TaintCheck.succeeded.i814 ], [ null, %if.end229 ]
  %148 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i815 to i64
  %149 = and i64 %148, 4294967295
  %150 = inttoptr i64 %149 to %Tstruct.json_value_t_t*
  %call233 = tail call i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %150, i8* %buf.addr.22, i32 %add232, i32 %is_pretty, i8* %7, i8* %10, i64 %buf_len)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %cleanup, label %if.end236

if.end236:                                        ; preds = %json_object_get_value.exit
  %151 = ptrtoint i8* %buf.addr.22 to i64
  %152 = trunc i64 %151 to i32
  %cmp237.not = icmp eq i32 %152, 0
  %idx.ext239869 = zext i32 %call233 to i64
  %add.ptr240 = getelementptr inbounds i8, i8* %buf.addr.22, i64 %idx.ext239869
  %153 = ptrtoint i8* %add.ptr240 to i64
  %154 = and i64 %153, 4294967295
  %155 = inttoptr i64 %154 to i8*
  %buf.addr.23 = select i1 %cmp237.not, i8* %buf.addr.22, i8* %155
  %add243 = add nsw i32 %call233, %written_total.9
  %cmp245 = icmp ult i64 %i.1915, %sub244
  br i1 %cmp245, label %do.body247, label %if.end261

do.body247:                                       ; preds = %if.end236
  %call248 = tail call fastcc i32 @append_string(i8* %buf.addr.23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp249 = icmp slt i32 %call248, 0
  br i1 %cmp249, label %cleanup, label %if.end251

if.end251:                                        ; preds = %do.body247
  %156 = ptrtoint i8* %buf.addr.23 to i64
  %157 = trunc i64 %156 to i32
  %cmp252.not = icmp eq i32 %157, 0
  %idx.ext254870 = zext i32 %call248 to i64
  %add.ptr255 = getelementptr inbounds i8, i8* %buf.addr.23, i64 %idx.ext254870
  %158 = ptrtoint i8* %add.ptr255 to i64
  %159 = and i64 %158, 4294967295
  %160 = inttoptr i64 %159 to i8*
  %buf.addr.24 = select i1 %cmp252.not, i8* %buf.addr.23, i8* %160
  %add258 = add nsw i32 %call248, %add243
  br label %if.end261

if.end261:                                        ; preds = %if.end251, %if.end236
  %written_total.10 = phi i32 [ %add258, %if.end251 ], [ %add243, %if.end236 ]
  %buf.addr.25 = phi i8* [ %buf.addr.24, %if.end251 ], [ %buf.addr.23, %if.end236 ]
  br i1 %tobool145, label %do.body264, label %for.inc279.thread

do.body264:                                       ; preds = %if.end261
  %call265 = tail call fastcc i32 @append_string(i8* %buf.addr.25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp266 = icmp slt i32 %call265, 0
  br i1 %cmp266, label %cleanup, label %for.inc279

for.inc279:                                       ; preds = %do.body264
  %161 = ptrtoint i8* %buf.addr.25 to i64
  %162 = trunc i64 %161 to i32
  %cmp269.not = icmp eq i32 %162, 0
  %idx.ext271871 = zext i32 %call265 to i64
  %add.ptr272 = getelementptr inbounds i8, i8* %buf.addr.25, i64 %idx.ext271871
  %163 = ptrtoint i8* %add.ptr272 to i64
  %164 = and i64 %163, 4294967295
  %165 = inttoptr i64 %164 to i8*
  %buf.addr.26 = select i1 %cmp269.not, i8* %buf.addr.25, i8* %165
  %add275 = add nsw i32 %call265, %written_total.10
  %inc280 = add nuw i64 %i.1915, 1
  %exitcond926.not = icmp eq i64 %inc280, %cond.i746
  br i1 %exitcond926.not, label %for.end281, label %for.body164.backedge

for.body164.backedge:                             ; preds = %for.inc279, %for.inc279.thread
  %buf.addr.16917.be = phi i8* [ %buf.addr.26, %for.inc279 ], [ %buf.addr.25, %for.inc279.thread ]
  %i.1915.be = phi i64 [ %inc280, %for.inc279 ], [ %inc280958, %for.inc279.thread ]
  %written_total.7914.be = phi i32 [ %add275, %for.inc279 ], [ %written_total.10, %for.inc279.thread ]
  br label %for.body164, !llvm.loop !47

for.inc279.thread:                                ; preds = %if.end261
  %inc280958 = add nuw i64 %i.1915, 1
  %exitcond926.not959 = icmp eq i64 %inc280958, %cond.i746
  br i1 %exitcond926.not959, label %do.body301, label %for.body164.backedge

for.end281:                                       ; preds = %for.inc279
  br i1 %or.cond407, label %do.body286, label %do.body301

do.body286:                                       ; preds = %for.end281
  %cmp17.i772 = icmp sgt i32 %level, 0
  %166 = ptrtoint i8* %buf.addr.26 to i64
  br i1 %cmp17.i772, label %do.body.preheader.i773, label %if.end290

do.body.preheader.i773:                           ; preds = %do.body286
  %167 = and i64 %166, 4294967295
  %168 = inttoptr i64 %167 to i8*
  br label %do.body.i779

do.body.i779:                                     ; preds = %if.end.i787, %do.body.preheader.i773
  %written_total.020.i774 = phi i32 [ %add.i784, %if.end.i787 ], [ 0, %do.body.preheader.i773 ]
  %i.019.i775 = phi i32 [ %inc.i785, %if.end.i787 ], [ 0, %do.body.preheader.i773 ]
  %buf.addr.018.i776 = phi i8* [ %buf.addr.1.i783, %if.end.i787 ], [ %168, %do.body.preheader.i773 ]
  %call.i777 = tail call fastcc i32 @append_string(i8* %buf.addr.018.i776, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* %10, i64 %buf_len) #16
  %cmp1.i778 = icmp slt i32 %call.i777, 0
  br i1 %cmp1.i778, label %cleanup, label %if.end.i787

if.end.i787:                                      ; preds = %do.body.i779
  %169 = ptrtoint i8* %buf.addr.018.i776 to i64
  %170 = trunc i64 %169 to i32
  %cmp2.not.i780 = icmp eq i32 %170, 0
  %idx.ext16.i781 = zext i32 %call.i777 to i64
  %add.ptr.i782 = getelementptr inbounds i8, i8* %buf.addr.018.i776, i64 %idx.ext16.i781
  %171 = ptrtoint i8* %add.ptr.i782 to i64
  %172 = and i64 %171, 4294967295
  %173 = inttoptr i64 %172 to i8*
  %buf.addr.1.i783 = select i1 %cmp2.not.i780, i8* %buf.addr.018.i776, i8* %173
  %add.i784 = add nsw i32 %call.i777, %written_total.020.i774
  %inc.i785 = add nuw nsw i32 %i.019.i775, 1
  %exitcond.not.i786 = icmp eq i32 %inc.i785, %level
  br i1 %exitcond.not.i786, label %append_indent.exit789, label %do.body.i779, !llvm.loop !45

append_indent.exit789:                            ; preds = %if.end.i787
  %cmp288 = icmp slt i32 %add.i784, 0
  br i1 %cmp288, label %cleanup, label %if.end290

if.end290:                                        ; preds = %do.body286, %append_indent.exit789
  %retval.0.i788853 = phi i32 [ %add.i784, %append_indent.exit789 ], [ 0, %do.body286 ]
  %174 = trunc i64 %166 to i32
  %cmp291.not = icmp eq i32 %174, 0
  %idx.ext293872 = zext i32 %retval.0.i788853 to i64
  %add.ptr294 = getelementptr inbounds i8, i8* %buf.addr.26, i64 %idx.ext293872
  %175 = ptrtoint i8* %add.ptr294 to i64
  %176 = and i64 %175, 4294967295
  %177 = inttoptr i64 %176 to i8*
  %buf.addr.28 = select i1 %cmp291.not, i8* %buf.addr.26, i8* %177
  %add297 = add nsw i32 %retval.0.i788853, %add275
  br label %do.body301

do.body301:                                       ; preds = %for.inc279.thread, %if.end161, %for.end281, %if.end290
  %written_total.12 = phi i32 [ %add297, %if.end290 ], [ %add275, %for.end281 ], [ %call130, %if.end161 ], [ %written_total.10, %for.inc279.thread ]
  %buf.addr.29 = phi i8* [ %buf.addr.28, %if.end290 ], [ %buf.addr.26, %for.end281 ], [ %buf.addr.13, %if.end161 ], [ %buf.addr.25, %for.inc279.thread ]
  %call302 = tail call fastcc i32 @append_string(i8* %buf.addr.29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp303 = icmp slt i32 %call302, 0
  br i1 %cmp303, label %cleanup, label %if.end305

if.end305:                                        ; preds = %do.body301
  %add312 = add nsw i32 %call302, %written_total.12
  br label %cleanup

TaintCheck.succeeded.i756:                        ; preds = %json_value_get_type.exit
  %value1.i754 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %15, i64 0, i32 2
  %178 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i754 to i64
  %179 = and i64 %178, 4294967295
  %SandMem.TaintCheck2.i755 = icmp ult i64 %179, %12
  br i1 %SandMem.TaintCheck2.i755, label %json_value_get_string.exit, label %wasm.trap.fail3.i757

wasm.trap.fail3.i757:                             ; preds = %TaintCheck.succeeded.i756
  tail call void @llvm.trap() #16
  unreachable

json_value_get_string.exit:                       ; preds = %TaintCheck.succeeded.i756
  %180 = add i64 %179, %13
  %181 = inttoptr i64 %180 to %Tstruct.json_value_value_t_t*
  %string.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %181, i64 0, i32 0
  %182 = load i8*, i8** %string.i, align 4, !tbaa !26
  %phi.cast = ptrtoint i8* %182 to i64
  %183 = trunc i64 %phi.cast to i32
  %cmp318 = icmp eq i32 %183, 0
  br i1 %cmp318, label %cleanup, label %if.end320

if.end320:                                        ; preds = %json_value_get_string.exit
  %184 = and i64 %phi.cast, 4294967295
  %185 = inttoptr i64 %184 to i8*
  %call321 = tail call i32 @json_serialize_string(i8* %185, i8* %4, i8* %10, i64 %buf_len)
  %cmp322.inv = icmp sgt i32 %call321, -1
  %spec.select874 = select i1 %cmp322.inv, i32 %call321, i32 -1
  ret i32 %spec.select874

TaintCheck.succeeded.i736:                        ; preds = %json_value_get_type.exit
  %value1.i734 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %15, i64 0, i32 2
  %186 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i734 to i64
  %187 = and i64 %186, 4294967295
  %SandMem.TaintCheck2.i735 = icmp ult i64 %187, %12
  br i1 %SandMem.TaintCheck2.i735, label %json_value_get_boolean.exit, label %wasm.trap.fail3.i737

wasm.trap.fail3.i737:                             ; preds = %TaintCheck.succeeded.i736
  tail call void @llvm.trap() #16
  unreachable

json_value_get_boolean.exit:                      ; preds = %TaintCheck.succeeded.i736
  %188 = add i64 %187, %13
  %189 = inttoptr i64 %188 to %Tstruct.json_value_value_t_t*
  %boolean.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %189, i64 0, i32 4
  %190 = load i32, i32* %boolean.i, align 8, !tbaa !43
  %tobool334.not = icmp eq i32 %190, 0
  br i1 %tobool334.not, label %do.body350, label %do.body336

do.body336:                                       ; preds = %json_value_get_boolean.exit
  %call337 = tail call fastcc i32 @append_string(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp338.inv = icmp sgt i32 %call337, -1
  %spec.select875 = select i1 %cmp338.inv, i32 %call337, i32 -1
  br label %cleanup

do.body350:                                       ; preds = %json_value_get_boolean.exit
  %call351 = tail call fastcc i32 @append_string(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp352.inv = icmp sgt i32 %call351, -1
  %spec.select876 = select i1 %cmp352.inv, i32 %call351, i32 -1
  br label %cleanup

TaintCheck.succeeded.i825:                        ; preds = %json_value_get_type.exit
  %value1.i823 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %15, i64 0, i32 2
  %191 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i823 to i64
  %192 = and i64 %191, 4294967295
  %SandMem.TaintCheck2.i824 = icmp ult i64 %192, %12
  br i1 %SandMem.TaintCheck2.i824, label %json_value_get_number.exit, label %wasm.trap.fail3.i826

wasm.trap.fail3.i826:                             ; preds = %TaintCheck.succeeded.i825
  tail call void @llvm.trap() #16
  unreachable

json_value_get_number.exit:                       ; preds = %TaintCheck.succeeded.i825
  %193 = trunc i64 %2 to i32
  %cmp367.not = icmp eq i32 %193, 0
  %num_buf.addr.0 = select i1 %cmp367.not, i8* %7, i8* %4
  %194 = ptrtoint i8* %num_buf.addr.0 to i64
  %SandMem.TaintCheck = icmp ugt i64 %12, %194
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %json_value_get_number.exit
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %json_value_get_number.exit
  %195 = add i64 %192, %13
  %196 = inttoptr i64 %195 to %Tstruct.json_value_value_t_t*
  %number.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %196, i64 0, i32 1
  %197 = load double, double* %number.i, align 8, !tbaa !44
  %198 = add i64 %13, %194
  %199 = inttoptr i64 %198 to i8*
  %call370 = tail call i32 (i8*, i8*, ...) @t_sprintf(i8* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), double %197) #16
  %cmp371.inv = icmp sgt i32 %call370, -1
  %spec.select = select i1 %cmp371.inv, i32 %call370, i32 -1
  ret i32 %spec.select

do.body382:                                       ; preds = %json_value_get_type.exit
  %call383 = tail call fastcc i32 @append_string(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %10, i64 %buf_len)
  %cmp384.inv = icmp sgt i32 %call383, -1
  %spec.select877 = select i1 %cmp384.inv, i32 %call383, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %do.body264, %do.body247, %json_object_get_value.exit, %do.body215, %if.end191, %if.end187, %append_indent.exit807, %json_object_get_name.exit, %do.body.i797, %do.body.i779, %do.body77, %do.body60, %json_array_get_value.exit, %append_indent.exit, %do.body.i, %do.body.i703, %do.body382, %do.body350, %do.body336, %entry, %json_value_get_type.exit, %json_value_get_string.exit, %do.body301, %append_indent.exit789, %do.body147, %json_object_get_count.exit, %do.body111, %append_indent.exit713, %do.body10, %json_array_get_count.exit, %if.end305, %if.end115
  %retval.0 = phi i32 [ %add312, %if.end305 ], [ %add122, %if.end115 ], [ -1, %json_array_get_count.exit ], [ -1, %do.body10 ], [ -1, %append_indent.exit713 ], [ -1, %do.body111 ], [ -1, %json_object_get_count.exit ], [ -1, %do.body147 ], [ -1, %append_indent.exit789 ], [ -1, %do.body301 ], [ -1, %json_value_get_string.exit ], [ -1, %json_value_get_type.exit ], [ -1, %entry ], [ %spec.select875, %do.body336 ], [ %spec.select876, %do.body350 ], [ %spec.select877, %do.body382 ], [ -1, %do.body.i703 ], [ -1, %do.body.i ], [ -1, %append_indent.exit ], [ -1, %json_array_get_value.exit ], [ -1, %do.body60 ], [ -1, %do.body77 ], [ -1, %do.body.i779 ], [ -1, %do.body.i797 ], [ -1, %json_object_get_name.exit ], [ -1, %append_indent.exit807 ], [ -1, %if.end187 ], [ -1, %if.end191 ], [ -1, %do.body215 ], [ -1, %json_object_get_value.exit ], [ -1, %do.body247 ], [ -1, %do.body264 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_array_t_t* @json_value_get_array(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %cond.end, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %json_value_get_type.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit:                         ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i, align 8, !tbaa !24
  %cmp = icmp eq i32 %7, 5
  br i1 %cmp, label %TaintCheck.succeeded, label %cond.end

TaintCheck.succeeded:                             ; preds = %json_value_get_type.exit
  %value1 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1 to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2 = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded6, label %wasm.trap.fail3

wasm.trap.fail3:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %array = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 3
  %12 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4, !tbaa !27
  br label %cond.end

cond.end:                                         ; preds = %entry, %json_value_get_type.exit, %TaintCheck.succeeded6
  %cond = phi %Tstruct.json_array_t_t* [ %12, %TaintCheck.succeeded6 ], [ null, %json_value_get_type.exit ], [ null, %entry ]
  ret %Tstruct.json_array_t_t* %cond
}

; Function Attrs: nounwind uwtable
define dso_local i64 @json_array_get_count(%Tstruct.json_array_t_t* %array) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = trunc i64 %0 to i32
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %2 = and i64 %0, 4294967295
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %2, %3
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %cond.true
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %cond.true
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to %Tstruct.json_array_t_t*
  %count = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 2
  %7 = load i64, i64* %count, align 8, !tbaa !28
  br label %cond.end

cond.end:                                         ; preds = %entry, %TaintCheck.succeeded
  %cond = phi i64 [ %7, %TaintCheck.succeeded ], [ 0, %entry ]
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @append_string(i8* %buf, i8* %string, i8* %buf_start, i64 %buf_len) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %buf to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to i8*
  %3 = ptrtoint i8* %buf_start to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call = tail call i64 @strlen(i8* nonnull dereferenceable(1) %string) #18
  %6 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp.i = icmp eq i64 %call, -1
  br i1 %cmp.i, label %string_tainted_malloc.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %add.i = add nuw i64 %call, 1
  %call.i = tail call i8* @t_malloc(i64 %add.i) #16
  %7 = ptrtoint i8* %call.i to i64
  %8 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %8, i64* @sbxHeapRange, align 8
  %9 = and i64 %7, 4294967295
  %10 = inttoptr i64 %9 to i8*
  %11 = trunc i64 %7 to i32
  %cmp1.not.i = icmp eq i32 %11, 0
  br i1 %cmp1.not.i, label %string_tainted_malloc.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %SandMem.TaintCheck.i = icmp ult i64 %9, %8
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.then2.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.then2.i
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = add i64 %12, %9
  %14 = inttoptr i64 %13 to i8*
  %arrayidx.i = getelementptr inbounds i8, i8* %14, i64 %call
  %15 = ptrtoint i8* %arrayidx.i to i64
  %16 = trunc i64 %15 to i32
  %add.ptr.i = getelementptr inbounds i8, i8* %10, i64 %add.i
  %17 = ptrtoint i8* %add.ptr.i to i64
  %18 = trunc i64 %17 to i32
  %IsoHeap.lower.i = icmp ule i32 %11, %16
  %IsoHeap.upper.i = icmp ult i32 %16, %18
  %IsoHeap.range.i = and i1 %IsoHeap.lower.i, %IsoHeap.upper.i
  br i1 %IsoHeap.range.i, label %TaintCheck.succeeded9.i, label %TaintCheck.failed8.i

TaintCheck.succeeded9.i:                          ; preds = %TaintCheck.succeeded.i
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !2
  br label %string_tainted_malloc.exit

TaintCheck.failed8.i:                             ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #17
  unreachable

string_tainted_malloc.exit:                       ; preds = %if.end, %if.end.i, %TaintCheck.succeeded9.i
  %retval.0.i = phi i8* [ null, %if.end ], [ %10, %TaintCheck.succeeded9.i ], [ %10, %if.end.i ]
  %19 = ptrtoint i8* %retval.0.i to i64
  %20 = and i64 %19, 4294967295
  %21 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %20, %21
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %string_tainted_malloc.exit
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %string_tainted_malloc.exit
  %22 = load i64, i64* @sbxHeap, align 8
  %23 = add i64 %22, %20
  %24 = inttoptr i64 %23 to i8*
  %call2 = tail call i8* @t_strncpy(i8* %24, i8* %string, i64 %call) #16
  %25 = trunc i64 %3 to i32
  %cmp4.not = icmp ult i32 %6, %25
  br i1 %cmp4.not, label %TaintCheck.failed11, label %land.rhs

land.rhs:                                         ; preds = %TaintCheck.succeeded
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call
  %add.ptr7 = getelementptr inbounds i8, i8* %5, i64 %buf_len
  %26 = ptrtoint i8* %add.ptr to i64
  %27 = ptrtoint i8* %add.ptr7 to i64
  %28 = trunc i64 %26 to i32
  %29 = trunc i64 %27 to i32
  %cmp9 = icmp ult i32 %28, %29
  br i1 %cmp9, label %TaintCheck.succeeded12, label %TaintCheck.failed11

TaintCheck.succeeded12:                           ; preds = %land.rhs
  %30 = load i64, i64* @sbxHeap, align 8
  %31 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck13 = icmp ult i64 %1, %31
  br i1 %SandMem.TaintCheck13, label %TaintCheck.succeeded17, label %wasm.trap.fail14

TaintCheck.failed11:                              ; preds = %TaintCheck.succeeded, %land.rhs
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail14:                                 ; preds = %TaintCheck.succeeded12
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded17:                           ; preds = %TaintCheck.succeeded12
  %SandMem.TaintCheck18 = icmp ult i64 %20, %31
  br i1 %SandMem.TaintCheck18, label %TaintCheck.succeeded22, label %wasm.trap.fail19

wasm.trap.fail19:                                 ; preds = %TaintCheck.succeeded17
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded22:                           ; preds = %TaintCheck.succeeded17
  %32 = add i64 %30, %20
  %33 = add i64 %30, %1
  %34 = inttoptr i64 %33 to i8*
  %35 = inttoptr i64 %32 to i8*
  %call23 = tail call i8* @t_memcpy(i8* %34, i8* %35, i64 %call) #16
  %36 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck25 = icmp ult i64 %1, %36
  br i1 %SandMem.TaintCheck25, label %TaintCheck.succeeded29, label %wasm.trap.fail26

wasm.trap.fail26:                                 ; preds = %TaintCheck.succeeded22
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded29:                           ; preds = %TaintCheck.succeeded22
  %37 = load i64, i64* @sbxHeap, align 8
  %38 = add i64 %37, %1
  %39 = inttoptr i64 %38 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 %call
  store i8 0, i8* %arrayidx, align 1, !tbaa !2
  br label %cleanup

cleanup:                                          ; preds = %entry, %TaintCheck.succeeded29
  %retval.0 = trunc i64 %call to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_array_get_value(%Tstruct.json_array_t_t* %array, i64 %index) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %return, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %json_array_get_count.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit:                        ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_array_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 2
  %7 = load i64, i64* %count.i, align 8, !tbaa !28
  %cmp1.not = icmp ugt i64 %7, %index
  br i1 %cmp1.not, label %TaintCheck.succeeded, label %return

TaintCheck.succeeded:                             ; preds = %json_array_get_count.exit
  %items = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 1
  %8 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items, align 4, !tbaa !30
  %9 = ptrtoint %Tstruct.json_value_t_t** %8 to i64
  %10 = and i64 %9, 4294967295
  %SandMem.TaintCheck2 = icmp ult i64 %10, %3
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded6, label %wasm.trap.fail3

wasm.trap.fail3:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %11 = add i64 %10, %4
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t**
  %arrayidx = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %12, i64 %index
  %13 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx, align 4, !tbaa !15
  br label %return

return:                                           ; preds = %entry, %json_array_get_count.exit, %TaintCheck.succeeded6
  %retval.0 = phi %Tstruct.json_value_t_t* [ %13, %TaintCheck.succeeded6 ], [ null, %json_array_get_count.exit ], [ null, %entry ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i8* @json_object_get_name(%Tstruct.json_object_t_t* %object, i64 %index) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %return, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %json_object_get_count.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_object_get_count.exit:                       ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_object_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %6, i64 0, i32 3
  %7 = load i64, i64* %count.i, align 8, !tbaa !9
  %cmp1.not = icmp ugt i64 %7, %index
  br i1 %cmp1.not, label %TaintCheck.succeeded, label %return

TaintCheck.succeeded:                             ; preds = %json_object_get_count.exit
  %names = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %6, i64 0, i32 1
  %8 = load i8**, i8*** %names, align 4, !tbaa !14
  %9 = ptrtoint i8** %8 to i64
  %10 = and i64 %9, 4294967295
  %SandMem.TaintCheck2 = icmp ult i64 %10, %3
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded6, label %wasm.trap.fail3

wasm.trap.fail3:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %11 = add i64 %10, %4
  %12 = inttoptr i64 %11 to i8**
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %index
  %13 = load i8*, i8** %arrayidx, align 4, !tbaa !15
  br label %return

return:                                           ; preds = %entry, %json_object_get_count.exit, %TaintCheck.succeeded6
  %retval.0 = phi i8* [ %13, %TaintCheck.succeeded6 ], [ null, %json_object_get_count.exit ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_serialize_string(i8* %str_unbounded, i8* %buf, i8* %buf_start, i64 %buf_len) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %str_unbounded to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %buf to i64
  %3 = and i64 %2, 4294967295
  %4 = inttoptr i64 %3 to i8*
  %5 = ptrtoint i8* %buf_start to i64
  %6 = and i64 %5, 4294967295
  %7 = inttoptr i64 %6 to i8*
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %8
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %entry
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to i8*
  %call = tail call i64 @t_strlen(i8* %11) #16
  %call1 = tail call fastcc i32 @append_string(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %TaintCheck.succeeded
  %12 = trunc i64 %2 to i32
  %cmp2.not = icmp eq i32 %12, 0
  %idx.ext1008 = zext i32 %call1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext1008
  %13 = ptrtoint i8* %add.ptr to i64
  %14 = and i64 %13, 4294967295
  %15 = inttoptr i64 %14 to i8*
  %buf.addr.0 = select i1 %cmp2.not, i8* %4, i8* %15
  %cmp51051.not = icmp eq i64 %call, 0
  br i1 %cmp51051.not, label %do.body636, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %16 = load i64, i64* @sbxHeapRange, align 8
  %SbxHeapRangePlusMaxIndex = add i64 %1, %call
  %SandMem.TaintCheck1056 = icmp ult i64 %SbxHeapRangePlusMaxIndex, %16
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck1056) #16
  %17 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck6 = icmp ult i64 %1, %17
  %18 = load i64, i64* @sbxHeap, align 8
  %19 = add i64 %18, %1
  %20 = inttoptr i64 %19 to i8*
  br i1 %SandMem.TaintCheck6, label %for.body, label %wasm.trap.fail7.split

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %buf.addr.11054 = phi i8* [ %buf.addr.39, %for.inc ], [ %buf.addr.0, %for.body.lr.ph ]
  %i.01053 = phi i64 [ %inc, %for.inc ], [ 0, %for.body.lr.ph ]
  %written_total.01052 = phi i32 [ %written_total.1, %for.inc ], [ %call1, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %i.01053
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !2
  %conv = sext i8 %21 to i32
  switch i32 %conv, label %sw.default [
    i32 34, label %do.body11
    i32 92, label %do.body28
    i32 8, label %do.body45
    i32 12, label %do.body62
    i32 10, label %do.body79
    i32 13, label %do.body96
    i32 9, label %do.body113
    i32 0, label %do.body130
    i32 1, label %do.body147
    i32 2, label %do.body164
    i32 3, label %do.body181
    i32 4, label %do.body198
    i32 5, label %do.body215
    i32 6, label %do.body232
    i32 7, label %do.body249
    i32 11, label %do.body266
    i32 14, label %do.body283
    i32 15, label %do.body300
    i32 16, label %do.body317
    i32 17, label %do.body334
    i32 18, label %do.body351
    i32 19, label %do.body368
    i32 20, label %do.body385
    i32 21, label %do.body402
    i32 22, label %do.body419
    i32 23, label %do.body436
    i32 24, label %do.body453
    i32 25, label %do.body470
    i32 26, label %do.body487
    i32 27, label %do.body504
    i32 28, label %do.body521
    i32 29, label %do.body538
    i32 30, label %do.body555
    i32 31, label %do.body572
    i32 47, label %sw.bb588
  ]

wasm.trap.fail7.split:                            ; preds = %for.body.lr.ph
  tail call void @llvm.trap()
  unreachable

do.body11:                                        ; preds = %for.body
  %call12 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %cleanup, label %if.end16

if.end16:                                         ; preds = %do.body11
  %22 = ptrtoint i8* %buf.addr.11054 to i64
  %23 = trunc i64 %22 to i32
  %cmp17.not = icmp eq i32 %23, 0
  %idx.ext201009 = zext i32 %call12 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext201009
  %24 = ptrtoint i8* %add.ptr21 to i64
  %25 = and i64 %24, 4294967295
  %26 = inttoptr i64 %25 to i8*
  %buf.addr.2 = select i1 %cmp17.not, i8* %buf.addr.11054, i8* %26
  %add24 = add nsw i32 %call12, %written_total.01052
  br label %for.inc

do.body28:                                        ; preds = %for.body
  %call29 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %cleanup, label %if.end33

if.end33:                                         ; preds = %do.body28
  %27 = ptrtoint i8* %buf.addr.11054 to i64
  %28 = trunc i64 %27 to i32
  %cmp34.not = icmp eq i32 %28, 0
  %idx.ext371010 = zext i32 %call29 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext371010
  %29 = ptrtoint i8* %add.ptr38 to i64
  %30 = and i64 %29, 4294967295
  %31 = inttoptr i64 %30 to i8*
  %buf.addr.3 = select i1 %cmp34.not, i8* %buf.addr.11054, i8* %31
  %add41 = add nsw i32 %call29, %written_total.01052
  br label %for.inc

do.body45:                                        ; preds = %for.body
  %call46 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %cleanup, label %if.end50

if.end50:                                         ; preds = %do.body45
  %32 = ptrtoint i8* %buf.addr.11054 to i64
  %33 = trunc i64 %32 to i32
  %cmp51.not = icmp eq i32 %33, 0
  %idx.ext541011 = zext i32 %call46 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext541011
  %34 = ptrtoint i8* %add.ptr55 to i64
  %35 = and i64 %34, 4294967295
  %36 = inttoptr i64 %35 to i8*
  %buf.addr.4 = select i1 %cmp51.not, i8* %buf.addr.11054, i8* %36
  %add58 = add nsw i32 %call46, %written_total.01052
  br label %for.inc

do.body62:                                        ; preds = %for.body
  %call63 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %cleanup, label %if.end67

if.end67:                                         ; preds = %do.body62
  %37 = ptrtoint i8* %buf.addr.11054 to i64
  %38 = trunc i64 %37 to i32
  %cmp68.not = icmp eq i32 %38, 0
  %idx.ext711012 = zext i32 %call63 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext711012
  %39 = ptrtoint i8* %add.ptr72 to i64
  %40 = and i64 %39, 4294967295
  %41 = inttoptr i64 %40 to i8*
  %buf.addr.5 = select i1 %cmp68.not, i8* %buf.addr.11054, i8* %41
  %add75 = add nsw i32 %call63, %written_total.01052
  br label %for.inc

do.body79:                                        ; preds = %for.body
  %call80 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %cleanup, label %if.end84

if.end84:                                         ; preds = %do.body79
  %42 = ptrtoint i8* %buf.addr.11054 to i64
  %43 = trunc i64 %42 to i32
  %cmp85.not = icmp eq i32 %43, 0
  %idx.ext881013 = zext i32 %call80 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext881013
  %44 = ptrtoint i8* %add.ptr89 to i64
  %45 = and i64 %44, 4294967295
  %46 = inttoptr i64 %45 to i8*
  %buf.addr.6 = select i1 %cmp85.not, i8* %buf.addr.11054, i8* %46
  %add92 = add nsw i32 %call80, %written_total.01052
  br label %for.inc

do.body96:                                        ; preds = %for.body
  %call97 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %cleanup, label %if.end101

if.end101:                                        ; preds = %do.body96
  %47 = ptrtoint i8* %buf.addr.11054 to i64
  %48 = trunc i64 %47 to i32
  %cmp102.not = icmp eq i32 %48, 0
  %idx.ext1051014 = zext i32 %call97 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext1051014
  %49 = ptrtoint i8* %add.ptr106 to i64
  %50 = and i64 %49, 4294967295
  %51 = inttoptr i64 %50 to i8*
  %buf.addr.7 = select i1 %cmp102.not, i8* %buf.addr.11054, i8* %51
  %add109 = add nsw i32 %call97, %written_total.01052
  br label %for.inc

do.body113:                                       ; preds = %for.body
  %call114 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %cleanup, label %if.end118

if.end118:                                        ; preds = %do.body113
  %52 = ptrtoint i8* %buf.addr.11054 to i64
  %53 = trunc i64 %52 to i32
  %cmp119.not = icmp eq i32 %53, 0
  %idx.ext1221015 = zext i32 %call114 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext1221015
  %54 = ptrtoint i8* %add.ptr123 to i64
  %55 = and i64 %54, 4294967295
  %56 = inttoptr i64 %55 to i8*
  %buf.addr.8 = select i1 %cmp119.not, i8* %buf.addr.11054, i8* %56
  %add126 = add nsw i32 %call114, %written_total.01052
  br label %for.inc

do.body130:                                       ; preds = %for.body
  %call131 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %cleanup, label %if.end135

if.end135:                                        ; preds = %do.body130
  %57 = ptrtoint i8* %buf.addr.11054 to i64
  %58 = trunc i64 %57 to i32
  %cmp136.not = icmp eq i32 %58, 0
  %idx.ext1391016 = zext i32 %call131 to i64
  %add.ptr140 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext1391016
  %59 = ptrtoint i8* %add.ptr140 to i64
  %60 = and i64 %59, 4294967295
  %61 = inttoptr i64 %60 to i8*
  %buf.addr.9 = select i1 %cmp136.not, i8* %buf.addr.11054, i8* %61
  %add143 = add nsw i32 %call131, %written_total.01052
  br label %for.inc

do.body147:                                       ; preds = %for.body
  %call148 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %cleanup, label %if.end152

if.end152:                                        ; preds = %do.body147
  %62 = ptrtoint i8* %buf.addr.11054 to i64
  %63 = trunc i64 %62 to i32
  %cmp153.not = icmp eq i32 %63, 0
  %idx.ext1561017 = zext i32 %call148 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext1561017
  %64 = ptrtoint i8* %add.ptr157 to i64
  %65 = and i64 %64, 4294967295
  %66 = inttoptr i64 %65 to i8*
  %buf.addr.10 = select i1 %cmp153.not, i8* %buf.addr.11054, i8* %66
  %add160 = add nsw i32 %call148, %written_total.01052
  br label %for.inc

do.body164:                                       ; preds = %for.body
  %call165 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %cleanup, label %if.end169

if.end169:                                        ; preds = %do.body164
  %67 = ptrtoint i8* %buf.addr.11054 to i64
  %68 = trunc i64 %67 to i32
  %cmp170.not = icmp eq i32 %68, 0
  %idx.ext1731018 = zext i32 %call165 to i64
  %add.ptr174 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext1731018
  %69 = ptrtoint i8* %add.ptr174 to i64
  %70 = and i64 %69, 4294967295
  %71 = inttoptr i64 %70 to i8*
  %buf.addr.11 = select i1 %cmp170.not, i8* %buf.addr.11054, i8* %71
  %add177 = add nsw i32 %call165, %written_total.01052
  br label %for.inc

do.body181:                                       ; preds = %for.body
  %call182 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp183 = icmp slt i32 %call182, 0
  br i1 %cmp183, label %cleanup, label %if.end186

if.end186:                                        ; preds = %do.body181
  %72 = ptrtoint i8* %buf.addr.11054 to i64
  %73 = trunc i64 %72 to i32
  %cmp187.not = icmp eq i32 %73, 0
  %idx.ext1901019 = zext i32 %call182 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext1901019
  %74 = ptrtoint i8* %add.ptr191 to i64
  %75 = and i64 %74, 4294967295
  %76 = inttoptr i64 %75 to i8*
  %buf.addr.12 = select i1 %cmp187.not, i8* %buf.addr.11054, i8* %76
  %add194 = add nsw i32 %call182, %written_total.01052
  br label %for.inc

do.body198:                                       ; preds = %for.body
  %call199 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp200 = icmp slt i32 %call199, 0
  br i1 %cmp200, label %cleanup, label %if.end203

if.end203:                                        ; preds = %do.body198
  %77 = ptrtoint i8* %buf.addr.11054 to i64
  %78 = trunc i64 %77 to i32
  %cmp204.not = icmp eq i32 %78, 0
  %idx.ext2071020 = zext i32 %call199 to i64
  %add.ptr208 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext2071020
  %79 = ptrtoint i8* %add.ptr208 to i64
  %80 = and i64 %79, 4294967295
  %81 = inttoptr i64 %80 to i8*
  %buf.addr.13 = select i1 %cmp204.not, i8* %buf.addr.11054, i8* %81
  %add211 = add nsw i32 %call199, %written_total.01052
  br label %for.inc

do.body215:                                       ; preds = %for.body
  %call216 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %cleanup, label %if.end220

if.end220:                                        ; preds = %do.body215
  %82 = ptrtoint i8* %buf.addr.11054 to i64
  %83 = trunc i64 %82 to i32
  %cmp221.not = icmp eq i32 %83, 0
  %idx.ext2241021 = zext i32 %call216 to i64
  %add.ptr225 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext2241021
  %84 = ptrtoint i8* %add.ptr225 to i64
  %85 = and i64 %84, 4294967295
  %86 = inttoptr i64 %85 to i8*
  %buf.addr.14 = select i1 %cmp221.not, i8* %buf.addr.11054, i8* %86
  %add228 = add nsw i32 %call216, %written_total.01052
  br label %for.inc

do.body232:                                       ; preds = %for.body
  %call233 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %cleanup, label %if.end237

if.end237:                                        ; preds = %do.body232
  %87 = ptrtoint i8* %buf.addr.11054 to i64
  %88 = trunc i64 %87 to i32
  %cmp238.not = icmp eq i32 %88, 0
  %idx.ext2411022 = zext i32 %call233 to i64
  %add.ptr242 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext2411022
  %89 = ptrtoint i8* %add.ptr242 to i64
  %90 = and i64 %89, 4294967295
  %91 = inttoptr i64 %90 to i8*
  %buf.addr.15 = select i1 %cmp238.not, i8* %buf.addr.11054, i8* %91
  %add245 = add nsw i32 %call233, %written_total.01052
  br label %for.inc

do.body249:                                       ; preds = %for.body
  %call250 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp251 = icmp slt i32 %call250, 0
  br i1 %cmp251, label %cleanup, label %if.end254

if.end254:                                        ; preds = %do.body249
  %92 = ptrtoint i8* %buf.addr.11054 to i64
  %93 = trunc i64 %92 to i32
  %cmp255.not = icmp eq i32 %93, 0
  %idx.ext2581023 = zext i32 %call250 to i64
  %add.ptr259 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext2581023
  %94 = ptrtoint i8* %add.ptr259 to i64
  %95 = and i64 %94, 4294967295
  %96 = inttoptr i64 %95 to i8*
  %buf.addr.16 = select i1 %cmp255.not, i8* %buf.addr.11054, i8* %96
  %add262 = add nsw i32 %call250, %written_total.01052
  br label %for.inc

do.body266:                                       ; preds = %for.body
  %call267 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp268 = icmp slt i32 %call267, 0
  br i1 %cmp268, label %cleanup, label %if.end271

if.end271:                                        ; preds = %do.body266
  %97 = ptrtoint i8* %buf.addr.11054 to i64
  %98 = trunc i64 %97 to i32
  %cmp272.not = icmp eq i32 %98, 0
  %idx.ext2751024 = zext i32 %call267 to i64
  %add.ptr276 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext2751024
  %99 = ptrtoint i8* %add.ptr276 to i64
  %100 = and i64 %99, 4294967295
  %101 = inttoptr i64 %100 to i8*
  %buf.addr.17 = select i1 %cmp272.not, i8* %buf.addr.11054, i8* %101
  %add279 = add nsw i32 %call267, %written_total.01052
  br label %for.inc

do.body283:                                       ; preds = %for.body
  %call284 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp285 = icmp slt i32 %call284, 0
  br i1 %cmp285, label %cleanup, label %if.end288

if.end288:                                        ; preds = %do.body283
  %102 = ptrtoint i8* %buf.addr.11054 to i64
  %103 = trunc i64 %102 to i32
  %cmp289.not = icmp eq i32 %103, 0
  %idx.ext2921025 = zext i32 %call284 to i64
  %add.ptr293 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext2921025
  %104 = ptrtoint i8* %add.ptr293 to i64
  %105 = and i64 %104, 4294967295
  %106 = inttoptr i64 %105 to i8*
  %buf.addr.18 = select i1 %cmp289.not, i8* %buf.addr.11054, i8* %106
  %add296 = add nsw i32 %call284, %written_total.01052
  br label %for.inc

do.body300:                                       ; preds = %for.body
  %call301 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp302 = icmp slt i32 %call301, 0
  br i1 %cmp302, label %cleanup, label %if.end305

if.end305:                                        ; preds = %do.body300
  %107 = ptrtoint i8* %buf.addr.11054 to i64
  %108 = trunc i64 %107 to i32
  %cmp306.not = icmp eq i32 %108, 0
  %idx.ext3091026 = zext i32 %call301 to i64
  %add.ptr310 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext3091026
  %109 = ptrtoint i8* %add.ptr310 to i64
  %110 = and i64 %109, 4294967295
  %111 = inttoptr i64 %110 to i8*
  %buf.addr.19 = select i1 %cmp306.not, i8* %buf.addr.11054, i8* %111
  %add313 = add nsw i32 %call301, %written_total.01052
  br label %for.inc

do.body317:                                       ; preds = %for.body
  %call318 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp319 = icmp slt i32 %call318, 0
  br i1 %cmp319, label %cleanup, label %if.end322

if.end322:                                        ; preds = %do.body317
  %112 = ptrtoint i8* %buf.addr.11054 to i64
  %113 = trunc i64 %112 to i32
  %cmp323.not = icmp eq i32 %113, 0
  %idx.ext3261027 = zext i32 %call318 to i64
  %add.ptr327 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext3261027
  %114 = ptrtoint i8* %add.ptr327 to i64
  %115 = and i64 %114, 4294967295
  %116 = inttoptr i64 %115 to i8*
  %buf.addr.20 = select i1 %cmp323.not, i8* %buf.addr.11054, i8* %116
  %add330 = add nsw i32 %call318, %written_total.01052
  br label %for.inc

do.body334:                                       ; preds = %for.body
  %call335 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp336 = icmp slt i32 %call335, 0
  br i1 %cmp336, label %cleanup, label %if.end339

if.end339:                                        ; preds = %do.body334
  %117 = ptrtoint i8* %buf.addr.11054 to i64
  %118 = trunc i64 %117 to i32
  %cmp340.not = icmp eq i32 %118, 0
  %idx.ext3431028 = zext i32 %call335 to i64
  %add.ptr344 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext3431028
  %119 = ptrtoint i8* %add.ptr344 to i64
  %120 = and i64 %119, 4294967295
  %121 = inttoptr i64 %120 to i8*
  %buf.addr.21 = select i1 %cmp340.not, i8* %buf.addr.11054, i8* %121
  %add347 = add nsw i32 %call335, %written_total.01052
  br label %for.inc

do.body351:                                       ; preds = %for.body
  %call352 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp353 = icmp slt i32 %call352, 0
  br i1 %cmp353, label %cleanup, label %if.end356

if.end356:                                        ; preds = %do.body351
  %122 = ptrtoint i8* %buf.addr.11054 to i64
  %123 = trunc i64 %122 to i32
  %cmp357.not = icmp eq i32 %123, 0
  %idx.ext3601029 = zext i32 %call352 to i64
  %add.ptr361 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext3601029
  %124 = ptrtoint i8* %add.ptr361 to i64
  %125 = and i64 %124, 4294967295
  %126 = inttoptr i64 %125 to i8*
  %buf.addr.22 = select i1 %cmp357.not, i8* %buf.addr.11054, i8* %126
  %add364 = add nsw i32 %call352, %written_total.01052
  br label %for.inc

do.body368:                                       ; preds = %for.body
  %call369 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp370 = icmp slt i32 %call369, 0
  br i1 %cmp370, label %cleanup, label %if.end373

if.end373:                                        ; preds = %do.body368
  %127 = ptrtoint i8* %buf.addr.11054 to i64
  %128 = trunc i64 %127 to i32
  %cmp374.not = icmp eq i32 %128, 0
  %idx.ext3771030 = zext i32 %call369 to i64
  %add.ptr378 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext3771030
  %129 = ptrtoint i8* %add.ptr378 to i64
  %130 = and i64 %129, 4294967295
  %131 = inttoptr i64 %130 to i8*
  %buf.addr.23 = select i1 %cmp374.not, i8* %buf.addr.11054, i8* %131
  %add381 = add nsw i32 %call369, %written_total.01052
  br label %for.inc

do.body385:                                       ; preds = %for.body
  %call386 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp387 = icmp slt i32 %call386, 0
  br i1 %cmp387, label %cleanup, label %if.end390

if.end390:                                        ; preds = %do.body385
  %132 = ptrtoint i8* %buf.addr.11054 to i64
  %133 = trunc i64 %132 to i32
  %cmp391.not = icmp eq i32 %133, 0
  %idx.ext3941031 = zext i32 %call386 to i64
  %add.ptr395 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext3941031
  %134 = ptrtoint i8* %add.ptr395 to i64
  %135 = and i64 %134, 4294967295
  %136 = inttoptr i64 %135 to i8*
  %buf.addr.24 = select i1 %cmp391.not, i8* %buf.addr.11054, i8* %136
  %add398 = add nsw i32 %call386, %written_total.01052
  br label %for.inc

do.body402:                                       ; preds = %for.body
  %call403 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp404 = icmp slt i32 %call403, 0
  br i1 %cmp404, label %cleanup, label %if.end407

if.end407:                                        ; preds = %do.body402
  %137 = ptrtoint i8* %buf.addr.11054 to i64
  %138 = trunc i64 %137 to i32
  %cmp408.not = icmp eq i32 %138, 0
  %idx.ext4111032 = zext i32 %call403 to i64
  %add.ptr412 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext4111032
  %139 = ptrtoint i8* %add.ptr412 to i64
  %140 = and i64 %139, 4294967295
  %141 = inttoptr i64 %140 to i8*
  %buf.addr.25 = select i1 %cmp408.not, i8* %buf.addr.11054, i8* %141
  %add415 = add nsw i32 %call403, %written_total.01052
  br label %for.inc

do.body419:                                       ; preds = %for.body
  %call420 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp421 = icmp slt i32 %call420, 0
  br i1 %cmp421, label %cleanup, label %if.end424

if.end424:                                        ; preds = %do.body419
  %142 = ptrtoint i8* %buf.addr.11054 to i64
  %143 = trunc i64 %142 to i32
  %cmp425.not = icmp eq i32 %143, 0
  %idx.ext4281033 = zext i32 %call420 to i64
  %add.ptr429 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext4281033
  %144 = ptrtoint i8* %add.ptr429 to i64
  %145 = and i64 %144, 4294967295
  %146 = inttoptr i64 %145 to i8*
  %buf.addr.26 = select i1 %cmp425.not, i8* %buf.addr.11054, i8* %146
  %add432 = add nsw i32 %call420, %written_total.01052
  br label %for.inc

do.body436:                                       ; preds = %for.body
  %call437 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp438 = icmp slt i32 %call437, 0
  br i1 %cmp438, label %cleanup, label %if.end441

if.end441:                                        ; preds = %do.body436
  %147 = ptrtoint i8* %buf.addr.11054 to i64
  %148 = trunc i64 %147 to i32
  %cmp442.not = icmp eq i32 %148, 0
  %idx.ext4451034 = zext i32 %call437 to i64
  %add.ptr446 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext4451034
  %149 = ptrtoint i8* %add.ptr446 to i64
  %150 = and i64 %149, 4294967295
  %151 = inttoptr i64 %150 to i8*
  %buf.addr.27 = select i1 %cmp442.not, i8* %buf.addr.11054, i8* %151
  %add449 = add nsw i32 %call437, %written_total.01052
  br label %for.inc

do.body453:                                       ; preds = %for.body
  %call454 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp455 = icmp slt i32 %call454, 0
  br i1 %cmp455, label %cleanup, label %if.end458

if.end458:                                        ; preds = %do.body453
  %152 = ptrtoint i8* %buf.addr.11054 to i64
  %153 = trunc i64 %152 to i32
  %cmp459.not = icmp eq i32 %153, 0
  %idx.ext4621035 = zext i32 %call454 to i64
  %add.ptr463 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext4621035
  %154 = ptrtoint i8* %add.ptr463 to i64
  %155 = and i64 %154, 4294967295
  %156 = inttoptr i64 %155 to i8*
  %buf.addr.28 = select i1 %cmp459.not, i8* %buf.addr.11054, i8* %156
  %add466 = add nsw i32 %call454, %written_total.01052
  br label %for.inc

do.body470:                                       ; preds = %for.body
  %call471 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp472 = icmp slt i32 %call471, 0
  br i1 %cmp472, label %cleanup, label %if.end475

if.end475:                                        ; preds = %do.body470
  %157 = ptrtoint i8* %buf.addr.11054 to i64
  %158 = trunc i64 %157 to i32
  %cmp476.not = icmp eq i32 %158, 0
  %idx.ext4791036 = zext i32 %call471 to i64
  %add.ptr480 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext4791036
  %159 = ptrtoint i8* %add.ptr480 to i64
  %160 = and i64 %159, 4294967295
  %161 = inttoptr i64 %160 to i8*
  %buf.addr.29 = select i1 %cmp476.not, i8* %buf.addr.11054, i8* %161
  %add483 = add nsw i32 %call471, %written_total.01052
  br label %for.inc

do.body487:                                       ; preds = %for.body
  %call488 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp489 = icmp slt i32 %call488, 0
  br i1 %cmp489, label %cleanup, label %if.end492

if.end492:                                        ; preds = %do.body487
  %162 = ptrtoint i8* %buf.addr.11054 to i64
  %163 = trunc i64 %162 to i32
  %cmp493.not = icmp eq i32 %163, 0
  %idx.ext4961037 = zext i32 %call488 to i64
  %add.ptr497 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext4961037
  %164 = ptrtoint i8* %add.ptr497 to i64
  %165 = and i64 %164, 4294967295
  %166 = inttoptr i64 %165 to i8*
  %buf.addr.30 = select i1 %cmp493.not, i8* %buf.addr.11054, i8* %166
  %add500 = add nsw i32 %call488, %written_total.01052
  br label %for.inc

do.body504:                                       ; preds = %for.body
  %call505 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp506 = icmp slt i32 %call505, 0
  br i1 %cmp506, label %cleanup, label %if.end509

if.end509:                                        ; preds = %do.body504
  %167 = ptrtoint i8* %buf.addr.11054 to i64
  %168 = trunc i64 %167 to i32
  %cmp510.not = icmp eq i32 %168, 0
  %idx.ext5131038 = zext i32 %call505 to i64
  %add.ptr514 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext5131038
  %169 = ptrtoint i8* %add.ptr514 to i64
  %170 = and i64 %169, 4294967295
  %171 = inttoptr i64 %170 to i8*
  %buf.addr.31 = select i1 %cmp510.not, i8* %buf.addr.11054, i8* %171
  %add517 = add nsw i32 %call505, %written_total.01052
  br label %for.inc

do.body521:                                       ; preds = %for.body
  %call522 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp523 = icmp slt i32 %call522, 0
  br i1 %cmp523, label %cleanup, label %if.end526

if.end526:                                        ; preds = %do.body521
  %172 = ptrtoint i8* %buf.addr.11054 to i64
  %173 = trunc i64 %172 to i32
  %cmp527.not = icmp eq i32 %173, 0
  %idx.ext5301039 = zext i32 %call522 to i64
  %add.ptr531 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext5301039
  %174 = ptrtoint i8* %add.ptr531 to i64
  %175 = and i64 %174, 4294967295
  %176 = inttoptr i64 %175 to i8*
  %buf.addr.32 = select i1 %cmp527.not, i8* %buf.addr.11054, i8* %176
  %add534 = add nsw i32 %call522, %written_total.01052
  br label %for.inc

do.body538:                                       ; preds = %for.body
  %call539 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp540 = icmp slt i32 %call539, 0
  br i1 %cmp540, label %cleanup, label %if.end543

if.end543:                                        ; preds = %do.body538
  %177 = ptrtoint i8* %buf.addr.11054 to i64
  %178 = trunc i64 %177 to i32
  %cmp544.not = icmp eq i32 %178, 0
  %idx.ext5471040 = zext i32 %call539 to i64
  %add.ptr548 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext5471040
  %179 = ptrtoint i8* %add.ptr548 to i64
  %180 = and i64 %179, 4294967295
  %181 = inttoptr i64 %180 to i8*
  %buf.addr.33 = select i1 %cmp544.not, i8* %buf.addr.11054, i8* %181
  %add551 = add nsw i32 %call539, %written_total.01052
  br label %for.inc

do.body555:                                       ; preds = %for.body
  %call556 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp557 = icmp slt i32 %call556, 0
  br i1 %cmp557, label %cleanup, label %if.end560

if.end560:                                        ; preds = %do.body555
  %182 = ptrtoint i8* %buf.addr.11054 to i64
  %183 = trunc i64 %182 to i32
  %cmp561.not = icmp eq i32 %183, 0
  %idx.ext5641041 = zext i32 %call556 to i64
  %add.ptr565 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext5641041
  %184 = ptrtoint i8* %add.ptr565 to i64
  %185 = and i64 %184, 4294967295
  %186 = inttoptr i64 %185 to i8*
  %buf.addr.34 = select i1 %cmp561.not, i8* %buf.addr.11054, i8* %186
  %add568 = add nsw i32 %call556, %written_total.01052
  br label %for.inc

do.body572:                                       ; preds = %for.body
  %call573 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp574 = icmp slt i32 %call573, 0
  br i1 %cmp574, label %cleanup, label %if.end577

if.end577:                                        ; preds = %do.body572
  %187 = ptrtoint i8* %buf.addr.11054 to i64
  %188 = trunc i64 %187 to i32
  %cmp578.not = icmp eq i32 %188, 0
  %idx.ext5811042 = zext i32 %call573 to i64
  %add.ptr582 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext5811042
  %189 = ptrtoint i8* %add.ptr582 to i64
  %190 = and i64 %189, 4294967295
  %191 = inttoptr i64 %190 to i8*
  %buf.addr.35 = select i1 %cmp578.not, i8* %buf.addr.11054, i8* %191
  %add585 = add nsw i32 %call573, %written_total.01052
  br label %for.inc

sw.bb588:                                         ; preds = %for.body
  %192 = load i32, i32* @parson_escape_slashes, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %192, 0
  br i1 %tobool.not, label %do.body606, label %do.body590

do.body590:                                       ; preds = %sw.bb588
  %call591 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp592 = icmp slt i32 %call591, 0
  br i1 %cmp592, label %cleanup, label %if.end595

if.end595:                                        ; preds = %do.body590
  %193 = ptrtoint i8* %buf.addr.11054 to i64
  %194 = trunc i64 %193 to i32
  %cmp596.not = icmp eq i32 %194, 0
  %idx.ext5991044 = zext i32 %call591 to i64
  %add.ptr600 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext5991044
  %195 = ptrtoint i8* %add.ptr600 to i64
  %196 = and i64 %195, 4294967295
  %197 = inttoptr i64 %196 to i8*
  %buf.addr.36 = select i1 %cmp596.not, i8* %buf.addr.11054, i8* %197
  %add603 = add nsw i32 %call591, %written_total.01052
  br label %for.inc

do.body606:                                       ; preds = %sw.bb588
  %call607 = tail call fastcc i32 @append_string(i8* %buf.addr.11054, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), i8* %7, i64 %buf_len)
  %cmp608 = icmp slt i32 %call607, 0
  br i1 %cmp608, label %cleanup, label %if.end611

if.end611:                                        ; preds = %do.body606
  %198 = ptrtoint i8* %buf.addr.11054 to i64
  %199 = trunc i64 %198 to i32
  %cmp612.not = icmp eq i32 %199, 0
  %idx.ext6151043 = zext i32 %call607 to i64
  %add.ptr616 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 %idx.ext6151043
  %200 = ptrtoint i8* %add.ptr616 to i64
  %201 = and i64 %200, 4294967295
  %202 = inttoptr i64 %201 to i8*
  %buf.addr.37 = select i1 %cmp612.not, i8* %buf.addr.11054, i8* %202
  %add619 = add nsw i32 %call607, %written_total.01052
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %203 = ptrtoint i8* %buf.addr.11054 to i64
  %204 = trunc i64 %203 to i32
  %cmp623.not = icmp eq i32 %204, 0
  br i1 %cmp623.not, label %if.end634, label %if.then625

if.then625:                                       ; preds = %sw.default
  %205 = and i64 %203, 4294967295
  %SandMem.TaintCheck626 = icmp ult i64 %205, %17
  br i1 %SandMem.TaintCheck626, label %TaintCheck.succeeded630, label %wasm.trap.fail627

wasm.trap.fail627:                                ; preds = %if.then625
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded630:                          ; preds = %if.then625
  %206 = add i64 %18, %205
  %207 = inttoptr i64 %206 to i8*
  store i8 %21, i8* %207, align 4, !tbaa !2
  %add.ptr632 = getelementptr inbounds i8, i8* %buf.addr.11054, i64 1
  %208 = ptrtoint i8* %add.ptr632 to i64
  %209 = and i64 %208, 4294967295
  %210 = inttoptr i64 %209 to i8*
  br label %if.end634

if.end634:                                        ; preds = %TaintCheck.succeeded630, %sw.default
  %buf.addr.38 = phi i8* [ %210, %TaintCheck.succeeded630 ], [ %buf.addr.11054, %sw.default ]
  %add635 = add nsw i32 %written_total.01052, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %if.end33, %if.end50, %if.end67, %if.end84, %if.end101, %if.end118, %if.end135, %if.end152, %if.end169, %if.end186, %if.end203, %if.end220, %if.end237, %if.end254, %if.end271, %if.end288, %if.end305, %if.end322, %if.end339, %if.end356, %if.end373, %if.end390, %if.end407, %if.end424, %if.end441, %if.end458, %if.end475, %if.end492, %if.end509, %if.end526, %if.end543, %if.end560, %if.end577, %if.end634, %if.end611, %if.end595
  %written_total.1 = phi i32 [ %add635, %if.end634 ], [ %add603, %if.end595 ], [ %add619, %if.end611 ], [ %add585, %if.end577 ], [ %add568, %if.end560 ], [ %add551, %if.end543 ], [ %add534, %if.end526 ], [ %add517, %if.end509 ], [ %add500, %if.end492 ], [ %add483, %if.end475 ], [ %add466, %if.end458 ], [ %add449, %if.end441 ], [ %add432, %if.end424 ], [ %add415, %if.end407 ], [ %add398, %if.end390 ], [ %add381, %if.end373 ], [ %add364, %if.end356 ], [ %add347, %if.end339 ], [ %add330, %if.end322 ], [ %add313, %if.end305 ], [ %add296, %if.end288 ], [ %add279, %if.end271 ], [ %add262, %if.end254 ], [ %add245, %if.end237 ], [ %add228, %if.end220 ], [ %add211, %if.end203 ], [ %add194, %if.end186 ], [ %add177, %if.end169 ], [ %add160, %if.end152 ], [ %add143, %if.end135 ], [ %add126, %if.end118 ], [ %add109, %if.end101 ], [ %add92, %if.end84 ], [ %add75, %if.end67 ], [ %add58, %if.end50 ], [ %add41, %if.end33 ], [ %add24, %if.end16 ]
  %buf.addr.39 = phi i8* [ %buf.addr.38, %if.end634 ], [ %buf.addr.36, %if.end595 ], [ %buf.addr.37, %if.end611 ], [ %buf.addr.35, %if.end577 ], [ %buf.addr.34, %if.end560 ], [ %buf.addr.33, %if.end543 ], [ %buf.addr.32, %if.end526 ], [ %buf.addr.31, %if.end509 ], [ %buf.addr.30, %if.end492 ], [ %buf.addr.29, %if.end475 ], [ %buf.addr.28, %if.end458 ], [ %buf.addr.27, %if.end441 ], [ %buf.addr.26, %if.end424 ], [ %buf.addr.25, %if.end407 ], [ %buf.addr.24, %if.end390 ], [ %buf.addr.23, %if.end373 ], [ %buf.addr.22, %if.end356 ], [ %buf.addr.21, %if.end339 ], [ %buf.addr.20, %if.end322 ], [ %buf.addr.19, %if.end305 ], [ %buf.addr.18, %if.end288 ], [ %buf.addr.17, %if.end271 ], [ %buf.addr.16, %if.end254 ], [ %buf.addr.15, %if.end237 ], [ %buf.addr.14, %if.end220 ], [ %buf.addr.13, %if.end203 ], [ %buf.addr.12, %if.end186 ], [ %buf.addr.11, %if.end169 ], [ %buf.addr.10, %if.end152 ], [ %buf.addr.9, %if.end135 ], [ %buf.addr.8, %if.end118 ], [ %buf.addr.7, %if.end101 ], [ %buf.addr.6, %if.end84 ], [ %buf.addr.5, %if.end67 ], [ %buf.addr.4, %if.end50 ], [ %buf.addr.3, %if.end33 ], [ %buf.addr.2, %if.end16 ]
  %inc = add nuw i64 %i.01053, 1
  %exitcond.not = icmp eq i64 %inc, %call
  br i1 %exitcond.not, label %do.body636, label %for.body, !llvm.loop !48

do.body636:                                       ; preds = %for.inc, %if.end
  %written_total.0.lcssa = phi i32 [ %call1, %if.end ], [ %written_total.1, %for.inc ]
  %buf.addr.1.lcssa = phi i8* [ %buf.addr.0, %if.end ], [ %buf.addr.39, %for.inc ]
  %call637 = tail call fastcc i32 @append_string(i8* %buf.addr.1.lcssa, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* %7, i64 %buf_len)
  %add649 = add nsw i32 %call637, %written_total.0.lcssa
  %cmp638.inv = icmp sgt i32 %call637, -1
  %spec.select = select i1 %cmp638.inv, i32 %add649, i32 -1
  ret i32 %spec.select

cleanup:                                          ; preds = %do.body606, %do.body590, %do.body572, %do.body555, %do.body538, %do.body521, %do.body504, %do.body487, %do.body470, %do.body453, %do.body436, %do.body419, %do.body402, %do.body385, %do.body368, %do.body351, %do.body334, %do.body317, %do.body300, %do.body283, %do.body266, %do.body249, %do.body232, %do.body215, %do.body198, %do.body181, %do.body164, %do.body147, %do.body130, %do.body113, %do.body96, %do.body79, %do.body62, %do.body45, %do.body28, %do.body11, %TaintCheck.succeeded
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local i8* @json_value_get_string(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %cond.end, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %json_value_get_type.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit:                         ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i, align 8, !tbaa !24
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %TaintCheck.succeeded, label %cond.end

TaintCheck.succeeded:                             ; preds = %json_value_get_type.exit
  %value1 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1 to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2 = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded6, label %wasm.trap.fail3

wasm.trap.fail3:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %string = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 0
  %12 = load i8*, i8** %string, align 4, !tbaa !26
  br label %cond.end

cond.end:                                         ; preds = %entry, %json_value_get_type.exit, %TaintCheck.succeeded6
  %cond = phi i8* [ %12, %TaintCheck.succeeded6 ], [ null, %json_value_get_type.exit ], [ null, %entry ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_value_get_boolean(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %cond.end, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %json_value_get_type.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit:                         ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i, align 8, !tbaa !24
  %cmp = icmp eq i32 %7, 6
  br i1 %cmp, label %TaintCheck.succeeded, label %cond.end

TaintCheck.succeeded:                             ; preds = %json_value_get_type.exit
  %value1 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1 to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2 = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded6, label %wasm.trap.fail3

wasm.trap.fail3:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %boolean = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 4
  %12 = load i32, i32* %boolean, align 8, !tbaa !43
  br label %cond.end

cond.end:                                         ; preds = %entry, %json_value_get_type.exit, %TaintCheck.succeeded6
  %cond = phi i32 [ %12, %TaintCheck.succeeded6 ], [ -1, %json_value_get_type.exit ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define dso_local double @json_value_get_number(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %cond.end, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %json_value_get_type.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit:                         ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i, align 8, !tbaa !24
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %TaintCheck.succeeded, label %cond.end

TaintCheck.succeeded:                             ; preds = %json_value_get_type.exit
  %value1 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1 to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2 = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded6, label %wasm.trap.fail3

wasm.trap.fail3:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %number = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 1
  %12 = load double, double* %number, align 8, !tbaa !44
  br label %cond.end

cond.end:                                         ; preds = %entry, %json_value_get_type.exit, %TaintCheck.succeeded6
  %cond = phi double [ %12, %TaintCheck.succeeded6 ], [ 0.000000e+00, %json_value_get_type.exit ], [ 0.000000e+00, %entry ]
  ret double %cond
}

declare dso_local i32 @t_sprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_parse_file(i8* nocapture readonly %filename) local_unnamed_addr #0 {
entry:
  %string.addr.i = alloca i8*, align 8
  %call = tail call fastcc i8* @read_file(i8* %filename)
  %0 = ptrtoint i8* %call to i64
  %1 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %call) #18
  %sext = shl i64 %call1, 32
  %conv2 = ashr exact i64 %sext, 32
  %cmp.i = icmp eq i64 %sext, -4294967296
  br i1 %cmp.i, label %string_tainted_malloc.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %add.i = add nuw nsw i64 %conv2, 1
  %call.i = tail call i8* @t_malloc(i64 %add.i) #16
  %2 = ptrtoint i8* %call.i to i64
  %3 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %3, i64* @sbxHeapRange, align 8
  %4 = and i64 %2, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %6 = trunc i64 %2 to i32
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %string_tainted_malloc.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %SandMem.TaintCheck.i = icmp ult i64 %4, %3
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.then2.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.then2.i
  %7 = load i64, i64* @sbxHeap, align 8
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to i8*
  %arrayidx.i = getelementptr inbounds i8, i8* %9, i64 %conv2
  %10 = ptrtoint i8* %arrayidx.i to i64
  %11 = trunc i64 %10 to i32
  %add.ptr.i = getelementptr inbounds i8, i8* %5, i64 %add.i
  %12 = ptrtoint i8* %add.ptr.i to i64
  %13 = trunc i64 %12 to i32
  %IsoHeap.lower.i = icmp ule i32 %6, %11
  %IsoHeap.upper.i = icmp ult i32 %11, %13
  %IsoHeap.range.i = and i1 %IsoHeap.lower.i, %IsoHeap.upper.i
  br i1 %IsoHeap.range.i, label %TaintCheck.succeeded9.i, label %TaintCheck.failed8.i

TaintCheck.succeeded9.i:                          ; preds = %TaintCheck.succeeded.i
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !2
  br label %string_tainted_malloc.exit

TaintCheck.failed8.i:                             ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #17
  unreachable

string_tainted_malloc.exit:                       ; preds = %if.end, %if.end.i, %TaintCheck.succeeded9.i
  %retval.0.i = phi i8* [ null, %if.end ], [ %5, %TaintCheck.succeeded9.i ], [ %5, %if.end.i ]
  %14 = ptrtoint i8* %retval.0.i to i64
  %15 = and i64 %14, 4294967295
  %16 = inttoptr i64 %15 to i8*
  %17 = trunc i64 %14 to i32
  %18 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %15, %18
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %string_tainted_malloc.exit
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %string_tainted_malloc.exit
  %19 = load i64, i64* @sbxHeap, align 8
  %20 = add i64 %19, %15
  %21 = inttoptr i64 %20 to i8*
  %call4 = tail call i8* @t_strcpy(i8* %21, i8* %call) #16
  %22 = bitcast i8** %string.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22)
  %23 = bitcast i8** %string.addr.i to i64*
  store i64 %15, i64* %23, align 8, !tbaa !15
  %cmp.i57 = icmp eq i32 %17, 0
  br i1 %cmp.i57, label %json_parse_string.exit.thread, label %if.end.i59

json_parse_string.exit.thread:                    ; preds = %TaintCheck.succeeded
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22)
  br label %IsoHeap.success

if.end.i59:                                       ; preds = %TaintCheck.succeeded
  %24 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i58 = icmp ult i64 %15, %24
  br i1 %SandMem.TaintCheck.i58, label %TaintCheck.succeeded.i61, label %wasm.trap.fail.i60

wasm.trap.fail.i60:                               ; preds = %if.end.i59
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i61:                         ; preds = %if.end.i59
  %25 = load i64, i64* @sbxHeap, align 8
  %26 = add i64 %25, %15
  %27 = inttoptr i64 %26 to i8*
  %28 = load i8, i8* %27, align 4, !tbaa !2
  %cmp1.i = icmp eq i8 %28, -17
  br i1 %cmp1.i, label %TaintCheck.succeeded7.i, label %TaintCheck.succeeded10

TaintCheck.succeeded7.i:                          ; preds = %TaintCheck.succeeded.i61
  %arrayidx8.i = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %arrayidx8.i, align 1, !tbaa !2
  %cmp10.i = icmp eq i8 %29, -69
  br i1 %cmp10.i, label %TaintCheck.succeeded17.i, label %TaintCheck.succeeded10

TaintCheck.succeeded17.i:                         ; preds = %TaintCheck.succeeded7.i
  %arrayidx18.i = getelementptr inbounds i8, i8* %27, i64 2
  %30 = load i8, i8* %arrayidx18.i, align 2, !tbaa !2
  %cmp20.i = icmp eq i8 %30, -65
  br i1 %cmp20.i, label %if.then22.i, label %TaintCheck.succeeded10

if.then22.i:                                      ; preds = %TaintCheck.succeeded17.i
  %add.ptr.i62 = getelementptr inbounds i8, i8* %16, i64 3
  %31 = ptrtoint i8* %add.ptr.i62 to i64
  %32 = and i64 %31, 4294967295
  store i64 %32, i64* %23, align 8, !tbaa !15
  br label %TaintCheck.succeeded10

TaintCheck.succeeded10:                           ; preds = %if.then22.i, %TaintCheck.succeeded17.i, %TaintCheck.succeeded7.i, %TaintCheck.succeeded.i61
  %call.i63 = call %Tstruct.json_value_t_t* @parse_value(i8** nonnull %string.addr.i, i64 0) #16
  %33 = ptrtoint %Tstruct.json_value_t_t* %call.i63 to i64
  %34 = and i64 %33, 4294967295
  %phi.cast = inttoptr i64 %34 to %Tstruct.json_value_t_t*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22)
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 1
  %35 = ptrtoint i8* %add.ptr to i64
  %36 = trunc i64 %35 to i32
  %IsoHeap.upper.not = icmp ugt i32 %17, %36
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed16, label %IsoHeap.success

IsoHeap.success:                                  ; preds = %json_parse_string.exit.thread, %TaintCheck.succeeded10
  %retval.0.i6466 = phi %Tstruct.json_value_t_t* [ null, %json_parse_string.exit.thread ], [ %phi.cast, %TaintCheck.succeeded10 ]
  %37 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck17 = icmp ult i64 %15, %37
  br i1 %SandMem.TaintCheck17, label %TaintCheck.succeeded21, label %wasm.trap.fail18

TaintCheck.failed16:                              ; preds = %TaintCheck.succeeded10
  call void @llvm.trap() #17
  unreachable

wasm.trap.fail18:                                 ; preds = %IsoHeap.success
  call void @llvm.trap()
  unreachable

TaintCheck.succeeded21:                           ; preds = %IsoHeap.success
  %38 = load i64, i64* @sbxHeap, align 8
  %39 = add i64 %38, %15
  %40 = inttoptr i64 %39 to i8*
  call void @t_free(i8* %40) #16
  %41 = call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %41, i64* @sbxHeapRange, align 8
  call void @free(i8* %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %TaintCheck.succeeded21
  %retval.0 = phi %Tstruct.json_value_t_t* [ %retval.0.i6466, %TaintCheck.succeeded21 ], [ null, %entry ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @read_file(i8* nocapture readonly %filename) unnamed_addr #0 {
entry:
  %call = tail call noalias %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  %tobool.not = icmp eq %struct._IO_FILE* %call, null
  br i1 %tobool.not, label %cleanup27, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fseek(%struct._IO_FILE* nonnull %call, i64 0, i32 2)
  %call2 = tail call i64 @ftell(%struct._IO_FILE* nonnull %call)
  %cmp = icmp slt i64 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end.i

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call)
  br label %cleanup27

if.end.i:                                         ; preds = %if.end
  tail call void @rewind(%struct._IO_FILE* nonnull %call)
  %add.i = add nuw i64 %call2, 1
  %call.i = tail call noalias i8* @malloc(i64 %add.i) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = trunc i64 %0 to i32
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end.i
  %call9 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call)
  br label %cleanup27

if.end10:                                         ; preds = %if.end.i
  %arrayidx.i = getelementptr inbounds i8, i8* %call.i, i64 %call2
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !2
  %call11 = tail call i64 @fread(i8* %call.i, i64 1, i64 %call2, %struct._IO_FILE* nonnull %call)
  %cmp12 = icmp eq i64 %call11, 0
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %call13 = tail call i32 @ferror(%struct._IO_FILE* nonnull %call) #16
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %lor.lhs.false, %if.end10
  %call16 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call)
  br label %cleanup27

if.end17:                                         ; preds = %lor.lhs.false
  %call18 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call)
  %arrayidx = getelementptr inbounds i8, i8* %call.i, i64 %call11
  %2 = ptrtoint i8* %arrayidx to i64
  %3 = trunc i64 %2 to i32
  %add.ptr = getelementptr inbounds i8, i8* %call.i, i64 %call2
  %4 = ptrtoint i8* %add.ptr to i64
  %5 = trunc i64 %4 to i32
  %IsoHeap.lower = icmp ule i32 %1, %3
  %6 = icmp ule i32 %3, %5
  %or.cond = and i1 %IsoHeap.lower, %6
  br i1 %or.cond, label %TaintCheck.succeeded26, label %TaintCheck.failed25

TaintCheck.succeeded26:                           ; preds = %if.end17
  store i8 0, i8* %arrayidx, align 1, !tbaa !2
  br label %cleanup27

TaintCheck.failed25:                              ; preds = %if.end17
  tail call void @llvm.trap() #17
  unreachable

cleanup27:                                        ; preds = %if.then8, %if.then15, %TaintCheck.succeeded26, %entry, %if.then3
  %retval.1 = phi i8* [ null, %if.then3 ], [ null, %entry ], [ null, %if.then15 ], [ %call.i, %TaintCheck.succeeded26 ], [ null, %if.then8 ]
  ret i8* %retval.1
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #6

declare dso_local i8* @t_strcpy(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_parse_string(i8* %string) local_unnamed_addr #0 {
entry:
  %string.addr = alloca i8*, align 8
  %0 = ptrtoint i8* %string to i64
  %1 = and i64 %0, 4294967295
  %2 = bitcast i8** %string.addr to i64*
  store i64 %1, i64* %2, align 8, !tbaa !15
  %.cast = inttoptr i64 %1 to i8*
  %3 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %4
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %1
  %7 = inttoptr i64 %6 to i8*
  %8 = load i8, i8* %7, align 4, !tbaa !2
  %cmp1 = icmp eq i8 %8, -17
  br i1 %cmp1, label %TaintCheck.succeeded7, label %if.end23

TaintCheck.succeeded7:                            ; preds = %TaintCheck.succeeded
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %arrayidx8, align 1, !tbaa !2
  %cmp10 = icmp eq i8 %9, -69
  br i1 %cmp10, label %TaintCheck.succeeded17, label %if.end23

TaintCheck.succeeded17:                           ; preds = %TaintCheck.succeeded7
  %arrayidx18 = getelementptr inbounds i8, i8* %7, i64 2
  %10 = load i8, i8* %arrayidx18, align 2, !tbaa !2
  %cmp20 = icmp eq i8 %10, -65
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %TaintCheck.succeeded17
  %add.ptr = getelementptr inbounds i8, i8* %.cast, i64 3
  %11 = ptrtoint i8* %add.ptr to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %2, align 8, !tbaa !15
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %TaintCheck.succeeded17, %TaintCheck.succeeded7, %TaintCheck.succeeded
  %call = call %Tstruct.json_value_t_t* @parse_value(i8** nonnull %string.addr, i64 0)
  %13 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %14 = and i64 %13, 4294967295
  %15 = inttoptr i64 %14 to %Tstruct.json_value_t_t*
  br label %return

return:                                           ; preds = %entry, %if.end23
  %retval.0 = phi %Tstruct.json_value_t_t* [ %15, %if.end23 ], [ null, %entry ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8* nocapture readonly %filename) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i8* @read_file(i8* %filename)
  %0 = ptrtoint i8* %call to i64
  %1 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %call) #18
  %sext = shl i64 %call1, 32
  %conv2 = ashr exact i64 %sext, 32
  %cmp.i = icmp eq i64 %sext, -4294967296
  br i1 %cmp.i, label %string_tainted_malloc.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %add.i = add nuw nsw i64 %conv2, 1
  %call.i = tail call i8* @t_malloc(i64 %add.i) #16
  %2 = ptrtoint i8* %call.i to i64
  %3 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %3, i64* @sbxHeapRange, align 8
  %4 = and i64 %2, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %6 = trunc i64 %2 to i32
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %string_tainted_malloc.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %SandMem.TaintCheck.i = icmp ult i64 %4, %3
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.then2.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.then2.i
  %7 = load i64, i64* @sbxHeap, align 8
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to i8*
  %arrayidx.i = getelementptr inbounds i8, i8* %9, i64 %conv2
  %10 = ptrtoint i8* %arrayidx.i to i64
  %11 = trunc i64 %10 to i32
  %add.ptr.i = getelementptr inbounds i8, i8* %5, i64 %add.i
  %12 = ptrtoint i8* %add.ptr.i to i64
  %13 = trunc i64 %12 to i32
  %IsoHeap.lower.i = icmp ule i32 %6, %11
  %IsoHeap.upper.i = icmp ult i32 %11, %13
  %IsoHeap.range.i = and i1 %IsoHeap.lower.i, %IsoHeap.upper.i
  br i1 %IsoHeap.range.i, label %TaintCheck.succeeded9.i, label %TaintCheck.failed8.i

TaintCheck.succeeded9.i:                          ; preds = %TaintCheck.succeeded.i
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !2
  br label %string_tainted_malloc.exit

TaintCheck.failed8.i:                             ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #17
  unreachable

string_tainted_malloc.exit:                       ; preds = %if.end, %if.end.i, %TaintCheck.succeeded9.i
  %retval.0.i = phi i8* [ null, %if.end ], [ %5, %TaintCheck.succeeded9.i ], [ %5, %if.end.i ]
  %14 = ptrtoint i8* %retval.0.i to i64
  %15 = and i64 %14, 4294967295
  %16 = inttoptr i64 %15 to i8*
  %17 = trunc i64 %14 to i32
  %18 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %15, %18
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %string_tainted_malloc.exit
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %string_tainted_malloc.exit
  %19 = load i64, i64* @sbxHeap, align 8
  %20 = add i64 %19, %15
  %21 = inttoptr i64 %20 to i8*
  %call4 = tail call i8* @t_strcpy(i8* %21, i8* %call) #16
  %call6 = tail call %Tstruct.json_value_t_t* @json_parse_string_with_comments(i8* %16)
  %22 = ptrtoint %Tstruct.json_value_t_t* %call6 to i64
  %23 = and i64 %22, 4294967295
  %24 = inttoptr i64 %23 to %Tstruct.json_value_t_t*
  %IsoHeap.is_null = icmp eq i32 %17, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %TaintCheck.succeeded10

TaintCheck.succeeded10:                           ; preds = %TaintCheck.succeeded
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 1
  %25 = ptrtoint i8* %add.ptr to i64
  %26 = trunc i64 %25 to i32
  %IsoHeap.upper.not = icmp ugt i32 %17, %26
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed16, label %IsoHeap.success

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded10, %TaintCheck.succeeded
  %27 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck17 = icmp ult i64 %15, %27
  br i1 %SandMem.TaintCheck17, label %TaintCheck.succeeded21, label %wasm.trap.fail18

TaintCheck.failed16:                              ; preds = %TaintCheck.succeeded10
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail18:                                 ; preds = %IsoHeap.success
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded21:                           ; preds = %IsoHeap.success
  %28 = load i64, i64* @sbxHeap, align 8
  %29 = add i64 %28, %15
  %30 = inttoptr i64 %29 to i8*
  tail call void @t_free(i8* %30) #16
  %31 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %31, i64* @sbxHeapRange, align 8
  tail call void @free(i8* %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %TaintCheck.succeeded21
  %retval.0 = phi %Tstruct.json_value_t_t* [ %24, %TaintCheck.succeeded21 ], [ null, %entry ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_parse_string_with_comments(i8* %string) local_unnamed_addr #0 {
entry:
  %string_mutable_copy_ptr = alloca [1 x i8*], align 8
  %0 = ptrtoint i8* %string to i64
  %1 = and i64 %0, 4294967295
  %2 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %2
  br i1 %SandMem.TaintCheck.i, label %tainted_parson_strdup.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %entry
  tail call void @llvm.trap() #16
  unreachable

tainted_parson_strdup.exit:                       ; preds = %entry
  %3 = load i64, i64* @sbxHeap, align 8
  %4 = add i64 %3, %1
  %5 = inttoptr i64 %4 to i8*
  %call.i = tail call i64 @t_strlen(i8* %5) #16
  %6 = inttoptr i64 %1 to i8*
  %call1.i = tail call i8* @tainted_parson_strndup(i8* %6, i64 %call.i) #16
  %7 = ptrtoint i8* %call1.i to i64
  %8 = and i64 %7, 4294967295
  %9 = inttoptr i64 %8 to i8*
  %10 = trunc i64 %7 to i32
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %cleanup, label %TaintCheck.succeeded

TaintCheck.succeeded:                             ; preds = %tainted_parson_strdup.exit
  tail call fastcc void @remove_comments(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0))
  tail call fastcc void @remove_comments(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %11 = bitcast [1 x i8*]* %string_mutable_copy_ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #16
  %arrayidx = getelementptr inbounds [1 x i8*], [1 x i8*]* %string_mutable_copy_ptr, i64 0, i64 0
  %12 = bitcast [1 x i8*]* %string_mutable_copy_ptr to i64*
  store i64 %8, i64* %12, align 8, !tbaa !15
  %call1 = call %Tstruct.json_value_t_t* @parse_value(i8** nonnull %arrayidx, i64 0)
  %13 = ptrtoint %Tstruct.json_value_t_t* %call1 to i64
  %14 = and i64 %13, 4294967295
  %15 = inttoptr i64 %14 to %Tstruct.json_value_t_t*
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %16 = ptrtoint i8* %add.ptr to i64
  %17 = trunc i64 %16 to i32
  %IsoHeap.upper.not = icmp ugt i32 %10, %17
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed9, label %IsoHeap.success

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded
  %18 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %8, %18
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded11, label %wasm.trap.fail

TaintCheck.failed9:                               ; preds = %TaintCheck.succeeded
  call void @llvm.trap() #17
  unreachable

wasm.trap.fail:                                   ; preds = %IsoHeap.success
  call void @llvm.trap()
  unreachable

TaintCheck.succeeded11:                           ; preds = %IsoHeap.success
  %19 = load i64, i64* @sbxHeap, align 8
  %20 = add i64 %19, %8
  %21 = inttoptr i64 %20 to i8*
  call void @t_free(i8* %21) #16
  %22 = call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %22, i64* @sbxHeapRange, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #16
  br label %cleanup

cleanup:                                          ; preds = %tainted_parson_strdup.exit, %TaintCheck.succeeded11
  %retval.0 = phi %Tstruct.json_value_t_t* [ %15, %TaintCheck.succeeded11 ], [ null, %tainted_parson_strdup.exit ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_comments(i8* %string, i8* %start_token, i8* %end_token) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* nonnull dereferenceable(1) %start_token) #18
  %call1 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %end_token) #18
  %cmp = icmp eq i64 %call, 0
  %cmp2 = icmp eq i64 %call1, 0
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %cleanup69, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %string.addr.0.in.in129140 = ptrtoint i8* %string to i64
  %string.addr.0.in130141 = and i64 %string.addr.0.in.in129140, 4294967295
  %0 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck132143 = icmp ult i64 %string.addr.0.in130141, %0
  br i1 %SandMem.TaintCheck132143, label %TaintCheck.succeeded.lr.ph.lr.ph, label %wasm.trap.fail

TaintCheck.succeeded.lr.ph.lr.ph:                 ; preds = %while.cond.preheader
  %1 = load i64, i64* @sbxHeap, align 8
  %SbxHeapRangePlusMaxIndex = add i64 %string.addr.0.in130141, %call
  %2 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck147 = icmp ult i64 %SbxHeapRangePlusMaxIndex, %2
  br label %TaintCheck.succeeded.lr.ph

TaintCheck.succeeded.lr.ph:                       ; preds = %TaintCheck.succeeded.lr.ph.lr.ph, %if.end67
  %string.addr.0.in130145 = phi i64 [ %string.addr.0.in130141, %TaintCheck.succeeded.lr.ph.lr.ph ], [ %string.addr.0.in130, %if.end67 ]
  %in_string.0.ph144 = phi i32 [ 0, %TaintCheck.succeeded.lr.ph.lr.ph ], [ %in_string.1, %if.end67 ]
  %string.addr.0135 = inttoptr i64 %string.addr.0.in130145 to i8*
  %3 = add i64 %1, %string.addr.0.in130145
  %4 = inttoptr i64 %3 to i8*
  %5 = load i8, i8* %4, align 1, !tbaa !2
  %cmp3.not = icmp eq i8 %5, 0
  br i1 %cmp3.not, label %cleanup69, label %while.body

wasm.trap.fail:                                   ; preds = %if.end67, %if.then8, %while.cond.preheader
  tail call void @llvm.trap()
  unreachable

while.body:                                       ; preds = %TaintCheck.succeeded.lr.ph
  %cmp6.not = icmp eq i8 %5, 92
  br i1 %cmp6.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, i8* %string.addr.0135, i64 1
  %string.addr.0.in.in = ptrtoint i8* %incdec.ptr to i64
  %string.addr.0.in = and i64 %string.addr.0.in.in, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %string.addr.0.in, %0
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded.1, label %wasm.trap.fail, !llvm.loop !49

if.else:                                          ; preds = %TaintCheck.succeeded.1, %while.body
  %string.addr.0.in134.lcssa197 = phi i64 [ %string.addr.0.in130145, %while.body ], [ %string.addr.0.in, %TaintCheck.succeeded.1 ]
  %.lcssa193 = phi i64 [ %3, %while.body ], [ %18, %TaintCheck.succeeded.1 ]
  %.lcssa190 = phi i8 [ %5, %while.body ], [ %20, %TaintCheck.succeeded.1 ]
  %string.addr.0135.le = inttoptr i64 %string.addr.0.in134.lcssa197 to i8*
  %6 = inttoptr i64 %.lcssa193 to i8*
  %cmp10 = icmp ne i8 %.lcssa190, 34
  %or.cond79 = or i1 %cmp6.not, %cmp10
  %tobool17.not = icmp eq i32 %in_string.0.ph144, 0
  br i1 %or.cond79, label %if.else16, label %if.then14

if.then14:                                        ; preds = %if.else
  %lnot.ext = zext i1 %tobool17.not to i32
  br label %if.end67

if.else16:                                        ; preds = %if.else
  br i1 %tobool17.not, label %TaintCheck.succeeded23, label %if.end67

TaintCheck.succeeded23:                           ; preds = %if.else16
  %call24 = tail call i32 @t_strncmp(i8* nonnull %6, i8* %start_token, i64 %call) #16
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %for.body.lr.ph, label %if.end67

for.body.lr.ph:                                   ; preds = %TaintCheck.succeeded23
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck147) #16
  %SandMem.TaintCheck30 = icmp ult i64 %string.addr.0.in134.lcssa197, %0
  br i1 %SandMem.TaintCheck30, label %for.end, label %wasm.trap.fail31.split

wasm.trap.fail31.split:                           ; preds = %for.body.lr.ph
  tail call void @llvm.trap()
  unreachable

for.end:                                          ; preds = %for.body.lr.ph
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %6, i8 32, i64 %call, i1 false)
  %add.ptr = getelementptr inbounds i8, i8* %string.addr.0135.le, i64 %call
  %7 = ptrtoint i8* %add.ptr to i64
  %8 = and i64 %7, 4294967295
  %SandMem.TaintCheck35 = icmp ult i64 %8, %0
  br i1 %SandMem.TaintCheck35, label %TaintCheck.succeeded39, label %wasm.trap.fail36

wasm.trap.fail36:                                 ; preds = %for.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded39:                           ; preds = %for.end
  %9 = add i64 %1, %8
  %10 = inttoptr i64 %9 to i8*
  %call40 = tail call i8* @t_strstr(i8* %10, i8* %end_token) #16
  %11 = ptrtoint i8* %call40 to i64
  %12 = and i64 %11, 4294967295
  %13 = inttoptr i64 %12 to i8*
  %14 = trunc i64 %11 to i32
  %tobool42.not = icmp eq i32 %14, 0
  br i1 %tobool42.not, label %cleanup69, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %TaintCheck.succeeded39
  %sub.ptr.sub = sub i64 %call1, %8
  %add = add i64 %sub.ptr.sub, %12
  %cmp46138.not = icmp eq i64 %add, 0
  br i1 %cmp46138.not, label %cleanup, label %for.body48.preheader

for.body48.preheader:                             ; preds = %for.cond45.preheader
  %SbxHeapRangePlusMaxIndex149 = add i64 %call1, %12
  %SandMem.TaintCheck150 = icmp ult i64 %SbxHeapRangePlusMaxIndex149, %2
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck150) #16
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 32, i64 %add, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %for.body48.preheader, %for.cond45.preheader
  %add.ptr58 = getelementptr inbounds i8, i8* %13, i64 %call1
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr58, i64 -1
  %15 = ptrtoint i8* %add.ptr60 to i64
  %16 = and i64 %15, 4294967295
  %17 = inttoptr i64 %16 to i8*
  br label %if.end67

if.end67:                                         ; preds = %cleanup, %TaintCheck.succeeded23, %if.else16, %if.then14
  %in_string.1 = phi i32 [ %lnot.ext, %if.then14 ], [ %in_string.0.ph144, %if.else16 ], [ 0, %TaintCheck.succeeded23 ], [ 0, %cleanup ]
  %string.addr.4 = phi i8* [ %string.addr.0135.le, %if.then14 ], [ %string.addr.0135.le, %if.else16 ], [ %string.addr.0135.le, %TaintCheck.succeeded23 ], [ %17, %cleanup ]
  %incdec.ptr68 = getelementptr inbounds i8, i8* %string.addr.4, i64 1
  %string.addr.0.in.in129 = ptrtoint i8* %incdec.ptr68 to i64
  %string.addr.0.in130 = and i64 %string.addr.0.in.in129, 4294967295
  %SandMem.TaintCheck132 = icmp ult i64 %string.addr.0.in130, %0
  br i1 %SandMem.TaintCheck132, label %TaintCheck.succeeded.lr.ph, label %wasm.trap.fail, !llvm.loop !49

cleanup69:                                        ; preds = %TaintCheck.succeeded39, %TaintCheck.succeeded.lr.ph, %TaintCheck.succeeded.1, %entry
  ret void

TaintCheck.succeeded.1:                           ; preds = %if.then8
  %18 = add i64 %1, %string.addr.0.in
  %19 = inttoptr i64 %18 to i8*
  %20 = load i8, i8* %19, align 1, !tbaa !2
  %cmp3.not.1 = icmp eq i8 %20, 0
  br i1 %cmp3.not.1, label %cleanup69, label %if.else
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local i8* @json_object_get_string(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %name to i64
  %3 = and i64 %2, 4294967295
  %4 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %5 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %json_value_get_string.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %6 = inttoptr i64 %3 to i8*
  %7 = trunc i64 %2 to i32
  %cmp1.i = icmp eq i32 %7, 0
  br i1 %cmp1.i, label %json_value_get_string.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %3, %8
  br i1 %SandMem.TaintCheck.i, label %json_object_get_value.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

json_object_get_value.exit:                       ; preds = %if.end.i
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to i8*
  %call.i = tail call i64 @t_strlen(i8* %11) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %4, i8* %6, i64 %call.i) #16
  %12 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %13 = and i64 %12, 4294967295
  %tobool.not.i.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i.i, label %json_value_get_string.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %json_object_get_value.exit
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %13, %14
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %13
  %17 = inttoptr i64 %16 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 1
  %18 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i3 = icmp eq i32 %18, 2
  br i1 %cmp.i3, label %TaintCheck.succeeded.i4, label %json_value_get_string.exit

TaintCheck.succeeded.i4:                          ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 2
  %19 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %20 = and i64 %19, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %20, %14
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i4
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i4
  %21 = add i64 %20, %15
  %22 = inttoptr i64 %21 to %Tstruct.json_value_value_t_t*
  %string.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %22, i64 0, i32 0
  %23 = load i8*, i8** %string.i, align 4, !tbaa !26
  %phi.cast = ptrtoint i8* %23 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast5 = inttoptr i64 %phi.bo to i8*
  br label %json_value_get_string.exit

json_value_get_string.exit:                       ; preds = %entry, %lor.lhs.false.i, %json_object_get_value.exit, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi i8* [ %phi.cast5, %TaintCheck.succeeded6.i ], [ null, %json_value_get_type.exit.i ], [ null, %json_object_get_value.exit ], [ null, %lor.lhs.false.i ], [ null, %entry ]
  ret i8* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local double @json_object_get_number(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %name to i64
  %3 = and i64 %2, 4294967295
  %4 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %5 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %json_value_get_number.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %6 = inttoptr i64 %3 to i8*
  %7 = trunc i64 %2 to i32
  %cmp1.i = icmp eq i32 %7, 0
  br i1 %cmp1.i, label %json_value_get_number.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %3, %8
  br i1 %SandMem.TaintCheck.i, label %json_object_get_value.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

json_object_get_value.exit:                       ; preds = %if.end.i
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to i8*
  %call.i = tail call i64 @t_strlen(i8* %11) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %4, i8* %6, i64 %call.i) #16
  %12 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %13 = and i64 %12, 4294967295
  %tobool.not.i.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i.i, label %json_value_get_number.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %json_object_get_value.exit
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %13, %14
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %13
  %17 = inttoptr i64 %16 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 1
  %18 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i2 = icmp eq i32 %18, 3
  br i1 %cmp.i2, label %TaintCheck.succeeded.i3, label %json_value_get_number.exit

TaintCheck.succeeded.i3:                          ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 2
  %19 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %20 = and i64 %19, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %20, %14
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i3
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i3
  %21 = add i64 %20, %15
  %22 = inttoptr i64 %21 to %Tstruct.json_value_value_t_t*
  %number.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %22, i64 0, i32 1
  %23 = load double, double* %number.i, align 8, !tbaa !44
  br label %json_value_get_number.exit

json_value_get_number.exit:                       ; preds = %entry, %lor.lhs.false.i, %json_object_get_value.exit, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi double [ %23, %TaintCheck.succeeded6.i ], [ 0.000000e+00, %json_value_get_type.exit.i ], [ 0.000000e+00, %json_object_get_value.exit ], [ 0.000000e+00, %lor.lhs.false.i ], [ 0.000000e+00, %entry ]
  ret double %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_object_t_t* @json_object_get_object(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %name to i64
  %3 = and i64 %2, 4294967295
  %4 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %5 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %json_value_get_object.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %6 = inttoptr i64 %3 to i8*
  %7 = trunc i64 %2 to i32
  %cmp1.i = icmp eq i32 %7, 0
  br i1 %cmp1.i, label %json_value_get_object.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %3, %8
  br i1 %SandMem.TaintCheck.i, label %json_object_get_value.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

json_object_get_value.exit:                       ; preds = %if.end.i
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to i8*
  %call.i = tail call i64 @t_strlen(i8* %11) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %4, i8* %6, i64 %call.i) #16
  %12 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %13 = and i64 %12, 4294967295
  %tobool.not.i.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i.i, label %json_value_get_object.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %json_object_get_value.exit
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %13, %14
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %13
  %17 = inttoptr i64 %16 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 1
  %18 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i3 = icmp eq i32 %18, 4
  br i1 %cmp.i3, label %TaintCheck.succeeded.i4, label %json_value_get_object.exit

TaintCheck.succeeded.i4:                          ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 2
  %19 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %20 = and i64 %19, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %20, %14
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i4
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i4
  %21 = add i64 %20, %15
  %22 = inttoptr i64 %21 to %Tstruct.json_value_value_t_t*
  %object.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %22, i64 0, i32 2
  %23 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i, align 4, !tbaa !25
  %phi.cast = ptrtoint %Tstruct.json_object_t_t* %23 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast5 = inttoptr i64 %phi.bo to %Tstruct.json_object_t_t*
  br label %json_value_get_object.exit

json_value_get_object.exit:                       ; preds = %entry, %lor.lhs.false.i, %json_object_get_value.exit, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi %Tstruct.json_object_t_t* [ %phi.cast5, %TaintCheck.succeeded6.i ], [ null, %json_value_get_type.exit.i ], [ null, %json_object_get_value.exit ], [ null, %lor.lhs.false.i ], [ null, %entry ]
  ret %Tstruct.json_object_t_t* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %name to i64
  %3 = and i64 %2, 4294967295
  %4 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %5 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %json_value_get_array.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %6 = inttoptr i64 %3 to i8*
  %7 = trunc i64 %2 to i32
  %cmp1.i = icmp eq i32 %7, 0
  br i1 %cmp1.i, label %json_value_get_array.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %3, %8
  br i1 %SandMem.TaintCheck.i, label %json_object_get_value.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

json_object_get_value.exit:                       ; preds = %if.end.i
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to i8*
  %call.i = tail call i64 @t_strlen(i8* %11) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %4, i8* %6, i64 %call.i) #16
  %12 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %13 = and i64 %12, 4294967295
  %tobool.not.i.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i.i, label %json_value_get_array.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %json_object_get_value.exit
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %13, %14
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %13
  %17 = inttoptr i64 %16 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 1
  %18 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i3 = icmp eq i32 %18, 5
  br i1 %cmp.i3, label %TaintCheck.succeeded.i4, label %json_value_get_array.exit

TaintCheck.succeeded.i4:                          ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 2
  %19 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %20 = and i64 %19, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %20, %14
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i4
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i4
  %21 = add i64 %20, %15
  %22 = inttoptr i64 %21 to %Tstruct.json_value_value_t_t*
  %array.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %22, i64 0, i32 3
  %23 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i, align 4, !tbaa !27
  %phi.cast = ptrtoint %Tstruct.json_array_t_t* %23 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast5 = inttoptr i64 %phi.bo to %Tstruct.json_array_t_t*
  br label %json_value_get_array.exit

json_value_get_array.exit:                        ; preds = %entry, %lor.lhs.false.i, %json_object_get_value.exit, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi %Tstruct.json_array_t_t* [ %phi.cast5, %TaintCheck.succeeded6.i ], [ null, %json_value_get_type.exit.i ], [ null, %json_object_get_value.exit ], [ null, %lor.lhs.false.i ], [ null, %entry ]
  ret %Tstruct.json_array_t_t* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_get_boolean(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %name to i64
  %3 = and i64 %2, 4294967295
  %4 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %5 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %json_value_get_boolean.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %6 = inttoptr i64 %3 to i8*
  %7 = trunc i64 %2 to i32
  %cmp1.i = icmp eq i32 %7, 0
  br i1 %cmp1.i, label %json_value_get_boolean.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %3, %8
  br i1 %SandMem.TaintCheck.i, label %json_object_get_value.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

json_object_get_value.exit:                       ; preds = %if.end.i
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to i8*
  %call.i = tail call i64 @t_strlen(i8* %11) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %4, i8* %6, i64 %call.i) #16
  %12 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %13 = and i64 %12, 4294967295
  %tobool.not.i.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i.i, label %json_value_get_boolean.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %json_object_get_value.exit
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %13, %14
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %13
  %17 = inttoptr i64 %16 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 1
  %18 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i2 = icmp eq i32 %18, 6
  br i1 %cmp.i2, label %TaintCheck.succeeded.i3, label %json_value_get_boolean.exit

TaintCheck.succeeded.i3:                          ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 2
  %19 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %20 = and i64 %19, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %20, %14
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i3
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i3
  %21 = add i64 %20, %15
  %22 = inttoptr i64 %21 to %Tstruct.json_value_value_t_t*
  %boolean.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %22, i64 0, i32 4
  %23 = load i32, i32* %boolean.i, align 8, !tbaa !43
  br label %json_value_get_boolean.exit

json_value_get_boolean.exit:                      ; preds = %entry, %lor.lhs.false.i, %json_object_get_value.exit, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi i32 [ %23, %TaintCheck.succeeded6.i ], [ -1, %json_value_get_type.exit.i ], [ -1, %json_object_get_value.exit ], [ -1, %lor.lhs.false.i ], [ -1, %entry ]
  ret i32 %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %4, %5
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %entry
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = add i64 %6, %4
  %8 = inttoptr i64 %7 to i8*
  %call = tail call i8* @t_strchr(i8* %8, i32 46) #16
  %9 = ptrtoint i8* %call to i64
  %10 = trunc i64 %9 to i32
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %TaintCheck.succeeded
  %11 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %cleanup, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then
  %12 = inttoptr i64 %4 to i8*
  %13 = trunc i64 %3 to i32
  %cmp1.i = icmp eq i32 %13, 0
  br i1 %cmp1.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %4, %14
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %4
  %17 = inttoptr i64 %16 to i8*
  %call.i = tail call i64 @t_strlen(i8* %17) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %2, i8* %12, i64 %call.i) #16
  %18 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %19 = and i64 %18, 4294967295
  %20 = inttoptr i64 %19 to %Tstruct.json_value_t_t*
  br label %cleanup

if.end:                                           ; preds = %TaintCheck.succeeded
  %21 = and i64 %9, 4294967295
  %22 = inttoptr i64 %21 to i8*
  %23 = inttoptr i64 %4 to i8*
  %sub.ptr.sub = sub nsw i64 %21, %4
  %call3 = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %2, i8* %23, i64 %sub.ptr.sub)
  %24 = ptrtoint %Tstruct.json_value_t_t* %call3 to i64
  %25 = and i64 %24, 4294967295
  %26 = trunc i64 %24 to i32
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %json_value_get_object.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.end
  %27 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %25, %27
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %28 = load i64, i64* @sbxHeap, align 8
  %29 = add i64 %28, %25
  %30 = inttoptr i64 %29 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %30, i64 0, i32 1
  %31 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i20 = icmp eq i32 %31, 4
  br i1 %cmp.i20, label %TaintCheck.succeeded.i21, label %json_value_get_object.exit

TaintCheck.succeeded.i21:                         ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %30, i64 0, i32 2
  %32 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %33 = and i64 %32, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %33, %27
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i21
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i21
  %34 = add i64 %33, %28
  %35 = inttoptr i64 %34 to %Tstruct.json_value_value_t_t*
  %object.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %35, i64 0, i32 2
  %36 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i, align 4, !tbaa !25
  %phi.cast = ptrtoint %Tstruct.json_object_t_t* %36 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast22 = inttoptr i64 %phi.bo to %Tstruct.json_object_t_t*
  br label %json_value_get_object.exit

json_value_get_object.exit:                       ; preds = %if.end, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi %Tstruct.json_object_t_t* [ %phi.cast22, %TaintCheck.succeeded6.i ], [ null, %json_value_get_type.exit.i ], [ null, %if.end ]
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %37 = ptrtoint i8* %add.ptr to i64
  %38 = and i64 %37, 4294967295
  %39 = inttoptr i64 %38 to i8*
  %call8 = tail call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %cond.i, i8* %39)
  br label %cleanup

cleanup:                                          ; preds = %TaintCheck.succeeded.i, %lor.lhs.false.i, %if.then, %json_value_get_object.exit
  %retval.0.in.in.in = phi %Tstruct.json_value_t_t* [ %call8, %json_value_get_object.exit ], [ %20, %TaintCheck.succeeded.i ], [ null, %lor.lhs.false.i ], [ null, %if.then ]
  %retval.0.in.in = ptrtoint %Tstruct.json_value_t_t* %retval.0.in.in.in to i64
  %retval.0.in = and i64 %retval.0.in.in, 4294967295
  %retval.0 = inttoptr i64 %retval.0.in to %Tstruct.json_value_t_t*
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i8* @json_object_dotget_string(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call = tail call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %2, i8* %5)
  %6 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %7 = and i64 %6, 4294967295
  %8 = trunc i64 %6 to i32
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %json_value_get_string.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %9 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %7, %9
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 1
  %13 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %13, 2
  br i1 %cmp.i, label %TaintCheck.succeeded.i, label %json_value_get_string.exit

TaintCheck.succeeded.i:                           ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 2
  %14 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %15 = and i64 %14, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %15, %9
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i
  %16 = add i64 %15, %10
  %17 = inttoptr i64 %16 to %Tstruct.json_value_value_t_t*
  %string.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %17, i64 0, i32 0
  %18 = load i8*, i8** %string.i, align 4, !tbaa !26
  %phi.cast = ptrtoint i8* %18 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast3 = inttoptr i64 %phi.bo to i8*
  br label %json_value_get_string.exit

json_value_get_string.exit:                       ; preds = %entry, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi i8* [ %phi.cast3, %TaintCheck.succeeded6.i ], [ null, %json_value_get_type.exit.i ], [ null, %entry ]
  ret i8* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local double @json_object_dotget_number(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call = tail call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %2, i8* %5)
  %6 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %7 = and i64 %6, 4294967295
  %8 = trunc i64 %6 to i32
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %json_value_get_number.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %9 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %7, %9
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 1
  %13 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %13, 3
  br i1 %cmp.i, label %TaintCheck.succeeded.i, label %json_value_get_number.exit

TaintCheck.succeeded.i:                           ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 2
  %14 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %15 = and i64 %14, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %15, %9
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i
  %16 = add i64 %15, %10
  %17 = inttoptr i64 %16 to %Tstruct.json_value_value_t_t*
  %number.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %17, i64 0, i32 1
  %18 = load double, double* %number.i, align 8, !tbaa !44
  br label %json_value_get_number.exit

json_value_get_number.exit:                       ; preds = %entry, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi double [ %18, %TaintCheck.succeeded6.i ], [ 0.000000e+00, %json_value_get_type.exit.i ], [ 0.000000e+00, %entry ]
  ret double %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_object_t_t* @json_object_dotget_object(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call = tail call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %2, i8* %5)
  %6 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %7 = and i64 %6, 4294967295
  %8 = trunc i64 %6 to i32
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %json_value_get_object.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %9 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %7, %9
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 1
  %13 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %13, 4
  br i1 %cmp.i, label %TaintCheck.succeeded.i, label %json_value_get_object.exit

TaintCheck.succeeded.i:                           ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 2
  %14 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %15 = and i64 %14, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %15, %9
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i
  %16 = add i64 %15, %10
  %17 = inttoptr i64 %16 to %Tstruct.json_value_value_t_t*
  %object.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %17, i64 0, i32 2
  %18 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i, align 4, !tbaa !25
  %phi.cast = ptrtoint %Tstruct.json_object_t_t* %18 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast3 = inttoptr i64 %phi.bo to %Tstruct.json_object_t_t*
  br label %json_value_get_object.exit

json_value_get_object.exit:                       ; preds = %entry, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi %Tstruct.json_object_t_t* [ %phi.cast3, %TaintCheck.succeeded6.i ], [ null, %json_value_get_type.exit.i ], [ null, %entry ]
  ret %Tstruct.json_object_t_t* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_array_t_t* @json_object_dotget_array(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call = tail call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %2, i8* %5)
  %6 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %7 = and i64 %6, 4294967295
  %8 = trunc i64 %6 to i32
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %json_value_get_array.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %9 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %7, %9
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 1
  %13 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %13, 5
  br i1 %cmp.i, label %TaintCheck.succeeded.i, label %json_value_get_array.exit

TaintCheck.succeeded.i:                           ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 2
  %14 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %15 = and i64 %14, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %15, %9
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i
  %16 = add i64 %15, %10
  %17 = inttoptr i64 %16 to %Tstruct.json_value_value_t_t*
  %array.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %17, i64 0, i32 3
  %18 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i, align 4, !tbaa !27
  %phi.cast = ptrtoint %Tstruct.json_array_t_t* %18 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast3 = inttoptr i64 %phi.bo to %Tstruct.json_array_t_t*
  br label %json_value_get_array.exit

json_value_get_array.exit:                        ; preds = %entry, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi %Tstruct.json_array_t_t* [ %phi.cast3, %TaintCheck.succeeded6.i ], [ null, %json_value_get_type.exit.i ], [ null, %entry ]
  ret %Tstruct.json_array_t_t* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call = tail call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %2, i8* %5)
  %6 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %7 = and i64 %6, 4294967295
  %8 = trunc i64 %6 to i32
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %json_value_get_boolean.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %9 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %7, %9
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 1
  %13 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %13, 6
  br i1 %cmp.i, label %TaintCheck.succeeded.i, label %json_value_get_boolean.exit

TaintCheck.succeeded.i:                           ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 2
  %14 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %15 = and i64 %14, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %15, %9
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i
  %16 = add i64 %15, %10
  %17 = inttoptr i64 %16 to %Tstruct.json_value_value_t_t*
  %boolean.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %17, i64 0, i32 4
  %18 = load i32, i32* %boolean.i, align 8, !tbaa !43
  br label %json_value_get_boolean.exit

json_value_get_boolean.exit:                      ; preds = %entry, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi i32 [ %18, %TaintCheck.succeeded6.i ], [ -1, %json_value_get_type.exit.i ], [ -1, %entry ]
  ret i32 %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_object_get_value_at(%Tstruct.json_object_t_t* %object, i64 %index) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %return, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %json_object_get_count.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_object_get_count.exit:                       ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_object_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %6, i64 0, i32 3
  %7 = load i64, i64* %count.i, align 8, !tbaa !9
  %cmp1.not = icmp ugt i64 %7, %index
  br i1 %cmp1.not, label %TaintCheck.succeeded, label %return

TaintCheck.succeeded:                             ; preds = %json_object_get_count.exit
  %values = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %6, i64 0, i32 2
  %8 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values, align 4, !tbaa !21
  %9 = ptrtoint %Tstruct.json_value_t_t** %8 to i64
  %10 = and i64 %9, 4294967295
  %SandMem.TaintCheck2 = icmp ult i64 %10, %3
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded6, label %wasm.trap.fail3

wasm.trap.fail3:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %11 = add i64 %10, %4
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t**
  %arrayidx = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %12, i64 %index
  %13 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx, align 4, !tbaa !15
  %14 = ptrtoint %Tstruct.json_value_t_t* %13 to i64
  %15 = trunc i64 %14 to i32
  %IsoHeap.is_null = icmp eq i32 %15, 0
  br i1 %IsoHeap.is_null, label %return, label %TaintCheck.succeeded35

TaintCheck.succeeded35:                           ; preds = %TaintCheck.succeeded6
  %add.ptr = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %13, i64 1
  %capacity = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %6, i64 0, i32 4
  %16 = load i64, i64* %capacity, align 8, !tbaa !13
  %add.ptr36 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %13, i64 %16
  %17 = ptrtoint %Tstruct.json_value_t_t* %add.ptr36 to i64
  %18 = trunc i64 %17 to i32
  %19 = ptrtoint %Tstruct.json_value_t_t* %add.ptr to i64
  %20 = trunc i64 %19 to i32
  %IsoHeap.upper.not = icmp ugt i32 %18, %20
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed42, label %return

TaintCheck.failed42:                              ; preds = %TaintCheck.succeeded35
  tail call void @llvm.trap() #17
  unreachable

return:                                           ; preds = %TaintCheck.succeeded6, %TaintCheck.succeeded35, %entry, %json_object_get_count.exit
  %retval.0 = phi %Tstruct.json_value_t_t* [ null, %json_object_get_count.exit ], [ null, %entry ], [ %13, %TaintCheck.succeeded35 ], [ %13, %TaintCheck.succeeded6 ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_has_value(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %name to i64
  %3 = and i64 %2, 4294967295
  %4 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %5 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %json_object_get_value.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %6 = inttoptr i64 %3 to i8*
  %7 = trunc i64 %2 to i32
  %cmp1.i = icmp eq i32 %7, 0
  br i1 %cmp1.i, label %json_object_get_value.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %3, %8
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to i8*
  %call.i = tail call i64 @t_strlen(i8* %11) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %4, i8* %6, i64 %call.i) #16
  %12 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %phi.cast = trunc i64 %12 to i32
  %phi.cmp = icmp ne i32 %phi.cast, 0
  %phi.cast1 = zext i1 %phi.cmp to i32
  br label %json_object_get_value.exit

json_object_get_value.exit:                       ; preds = %entry, %lor.lhs.false.i, %TaintCheck.succeeded.i
  %retval.0.i = phi i32 [ %phi.cast1, %TaintCheck.succeeded.i ], [ 0, %lor.lhs.false.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %object, i8* %name, i32 %type) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %name to i64
  %3 = and i64 %2, 4294967295
  %4 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %5 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %land.end, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %6 = inttoptr i64 %3 to i8*
  %7 = trunc i64 %2 to i32
  %cmp1.i = icmp eq i32 %7, 0
  br i1 %cmp1.i, label %land.end, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %3, %8
  br i1 %SandMem.TaintCheck.i, label %json_object_get_value.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

json_object_get_value.exit:                       ; preds = %if.end.i
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to i8*
  %call.i = tail call i64 @t_strlen(i8* %11) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %4, i8* %6, i64 %call.i) #16
  %12 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %13 = and i64 %12, 4294967295
  %cmp.not = icmp eq i64 %13, 0
  br i1 %cmp.not, label %land.end, label %cond.true.i

cond.true.i:                                      ; preds = %json_object_get_value.exit
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i5 = icmp ult i64 %13, %14
  br i1 %SandMem.TaintCheck.i5, label %TaintCheck.succeeded.i7, label %wasm.trap.fail.i6

wasm.trap.fail.i6:                                ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i7:                          ; preds = %cond.true.i
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %13
  %17 = inttoptr i64 %16 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 1
  %18 = load i32, i32* %type.i, align 8, !tbaa !24
  %cmp2 = icmp eq i32 %18, %type
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %lor.lhs.false.i, %TaintCheck.succeeded.i7, %json_object_get_value.exit
  %19 = phi i32 [ 0, %json_object_get_value.exit ], [ %phi.cast, %TaintCheck.succeeded.i7 ], [ 0, %lor.lhs.false.i ], [ 0, %entry ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_dothas_value(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call = tail call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %2, i8* %5)
  %6 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %7 = trunc i64 %6 to i32
  %cmp = icmp ne i32 %7, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %object, i8* %name, i32 %type) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call = tail call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %2, i8* %5)
  %6 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %7 = trunc i64 %6 to i32
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %land.end, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %8 = and i64 %6, 4294967295
  %9 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %8, %9
  br i1 %SandMem.TaintCheck.i, label %json_value_get_type.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit:                         ; preds = %cond.true.i
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = add i64 %10, %8
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 1
  %13 = load i32, i32* %type.i, align 8, !tbaa !24
  %cmp2 = icmp eq i32 %13, %type
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %json_value_get_type.exit, %entry
  %14 = phi i32 [ 0, %entry ], [ %phi.cast, %json_value_get_type.exit ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i8* @json_array_get_string(%Tstruct.json_array_t_t* %array, i64 %index) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %json_value_get_string.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i.i, label %json_array_get_count.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit.i:                      ; preds = %cond.true.i.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_array_t_t*
  %count.i.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 2
  %7 = load i64, i64* %count.i.i, align 8, !tbaa !28
  %cmp1.not.i = icmp ugt i64 %7, %index
  br i1 %cmp1.not.i, label %TaintCheck.succeeded.i, label %json_value_get_string.exit

TaintCheck.succeeded.i:                           ; preds = %json_array_get_count.exit.i
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 1
  %8 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %9 = ptrtoint %Tstruct.json_value_t_t** %8 to i64
  %10 = and i64 %9, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %10, %3
  br i1 %SandMem.TaintCheck2.i, label %json_array_get_value.exit, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_value.exit:                        ; preds = %TaintCheck.succeeded.i
  %11 = add i64 %10, %4
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %12, i64 %index
  %13 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  %phi.cast = ptrtoint %Tstruct.json_value_t_t* %13 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %tobool.not.i.i = icmp eq i64 %phi.bo, 0
  br i1 %tobool.not.i.i, label %json_value_get_string.exit, label %cond.true.i.i4

cond.true.i.i4:                                   ; preds = %json_array_get_value.exit
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i3 = icmp ult i64 %phi.bo, %14
  br i1 %SandMem.TaintCheck.i.i3, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i5

wasm.trap.fail.i.i5:                              ; preds = %cond.true.i.i4
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i4
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %phi.bo
  %17 = inttoptr i64 %16 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 1
  %18 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i6 = icmp eq i32 %18, 2
  br i1 %cmp.i6, label %TaintCheck.succeeded.i8, label %json_value_get_string.exit

TaintCheck.succeeded.i8:                          ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 2
  %19 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %20 = and i64 %19, 4294967295
  %SandMem.TaintCheck2.i7 = icmp ult i64 %20, %14
  br i1 %SandMem.TaintCheck2.i7, label %TaintCheck.succeeded6.i10, label %wasm.trap.fail3.i9

wasm.trap.fail3.i9:                               ; preds = %TaintCheck.succeeded.i8
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i10:                        ; preds = %TaintCheck.succeeded.i8
  %21 = add i64 %20, %15
  %22 = inttoptr i64 %21 to %Tstruct.json_value_value_t_t*
  %string.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %22, i64 0, i32 0
  %23 = load i8*, i8** %string.i, align 4, !tbaa !26
  %phi.cast11 = ptrtoint i8* %23 to i64
  %phi.bo12 = and i64 %phi.cast11, 4294967295
  %phi.cast13 = inttoptr i64 %phi.bo12 to i8*
  br label %json_value_get_string.exit

json_value_get_string.exit:                       ; preds = %entry, %json_array_get_count.exit.i, %json_array_get_value.exit, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i10
  %cond.i = phi i8* [ %phi.cast13, %TaintCheck.succeeded6.i10 ], [ null, %json_value_get_type.exit.i ], [ null, %json_array_get_value.exit ], [ null, %json_array_get_count.exit.i ], [ null, %entry ]
  ret i8* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local double @json_array_get_number(%Tstruct.json_array_t_t* %array, i64 %index) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %json_value_get_number.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i.i, label %json_array_get_count.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit.i:                      ; preds = %cond.true.i.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_array_t_t*
  %count.i.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 2
  %7 = load i64, i64* %count.i.i, align 8, !tbaa !28
  %cmp1.not.i = icmp ugt i64 %7, %index
  br i1 %cmp1.not.i, label %TaintCheck.succeeded.i, label %json_value_get_number.exit

TaintCheck.succeeded.i:                           ; preds = %json_array_get_count.exit.i
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 1
  %8 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %9 = ptrtoint %Tstruct.json_value_t_t** %8 to i64
  %10 = and i64 %9, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %10, %3
  br i1 %SandMem.TaintCheck2.i, label %json_array_get_value.exit, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_value.exit:                        ; preds = %TaintCheck.succeeded.i
  %11 = add i64 %10, %4
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %12, i64 %index
  %13 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  %phi.cast = ptrtoint %Tstruct.json_value_t_t* %13 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %tobool.not.i.i = icmp eq i64 %phi.bo, 0
  br i1 %tobool.not.i.i, label %json_value_get_number.exit, label %cond.true.i.i3

cond.true.i.i3:                                   ; preds = %json_array_get_value.exit
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i2 = icmp ult i64 %phi.bo, %14
  br i1 %SandMem.TaintCheck.i.i2, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i4

wasm.trap.fail.i.i4:                              ; preds = %cond.true.i.i3
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i3
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %phi.bo
  %17 = inttoptr i64 %16 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 1
  %18 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i5 = icmp eq i32 %18, 3
  br i1 %cmp.i5, label %TaintCheck.succeeded.i7, label %json_value_get_number.exit

TaintCheck.succeeded.i7:                          ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 2
  %19 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %20 = and i64 %19, 4294967295
  %SandMem.TaintCheck2.i6 = icmp ult i64 %20, %14
  br i1 %SandMem.TaintCheck2.i6, label %TaintCheck.succeeded6.i9, label %wasm.trap.fail3.i8

wasm.trap.fail3.i8:                               ; preds = %TaintCheck.succeeded.i7
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i9:                         ; preds = %TaintCheck.succeeded.i7
  %21 = add i64 %20, %15
  %22 = inttoptr i64 %21 to %Tstruct.json_value_value_t_t*
  %number.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %22, i64 0, i32 1
  %23 = load double, double* %number.i, align 8, !tbaa !44
  br label %json_value_get_number.exit

json_value_get_number.exit:                       ; preds = %entry, %json_array_get_count.exit.i, %json_array_get_value.exit, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i9
  %cond.i = phi double [ %23, %TaintCheck.succeeded6.i9 ], [ 0.000000e+00, %json_value_get_type.exit.i ], [ 0.000000e+00, %json_array_get_value.exit ], [ 0.000000e+00, %json_array_get_count.exit.i ], [ 0.000000e+00, %entry ]
  ret double %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_object_t_t* @json_array_get_object(%Tstruct.json_array_t_t* %array, i64 %index) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %json_value_get_object.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i.i, label %json_array_get_count.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit.i:                      ; preds = %cond.true.i.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_array_t_t*
  %count.i.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 2
  %7 = load i64, i64* %count.i.i, align 8, !tbaa !28
  %cmp1.not.i = icmp ugt i64 %7, %index
  br i1 %cmp1.not.i, label %TaintCheck.succeeded.i, label %json_value_get_object.exit

TaintCheck.succeeded.i:                           ; preds = %json_array_get_count.exit.i
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 1
  %8 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %9 = ptrtoint %Tstruct.json_value_t_t** %8 to i64
  %10 = and i64 %9, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %10, %3
  br i1 %SandMem.TaintCheck2.i, label %json_array_get_value.exit, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_value.exit:                        ; preds = %TaintCheck.succeeded.i
  %11 = add i64 %10, %4
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %12, i64 %index
  %13 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  %phi.cast = ptrtoint %Tstruct.json_value_t_t* %13 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %tobool.not.i.i = icmp eq i64 %phi.bo, 0
  br i1 %tobool.not.i.i, label %json_value_get_object.exit, label %cond.true.i.i4

cond.true.i.i4:                                   ; preds = %json_array_get_value.exit
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i3 = icmp ult i64 %phi.bo, %14
  br i1 %SandMem.TaintCheck.i.i3, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i5

wasm.trap.fail.i.i5:                              ; preds = %cond.true.i.i4
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i4
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %phi.bo
  %17 = inttoptr i64 %16 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 1
  %18 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i6 = icmp eq i32 %18, 4
  br i1 %cmp.i6, label %TaintCheck.succeeded.i8, label %json_value_get_object.exit

TaintCheck.succeeded.i8:                          ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 2
  %19 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %20 = and i64 %19, 4294967295
  %SandMem.TaintCheck2.i7 = icmp ult i64 %20, %14
  br i1 %SandMem.TaintCheck2.i7, label %TaintCheck.succeeded6.i10, label %wasm.trap.fail3.i9

wasm.trap.fail3.i9:                               ; preds = %TaintCheck.succeeded.i8
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i10:                        ; preds = %TaintCheck.succeeded.i8
  %21 = add i64 %20, %15
  %22 = inttoptr i64 %21 to %Tstruct.json_value_value_t_t*
  %object.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %22, i64 0, i32 2
  %23 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i, align 4, !tbaa !25
  %phi.cast11 = ptrtoint %Tstruct.json_object_t_t* %23 to i64
  %phi.bo12 = and i64 %phi.cast11, 4294967295
  %phi.cast13 = inttoptr i64 %phi.bo12 to %Tstruct.json_object_t_t*
  br label %json_value_get_object.exit

json_value_get_object.exit:                       ; preds = %entry, %json_array_get_count.exit.i, %json_array_get_value.exit, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i10
  %cond.i = phi %Tstruct.json_object_t_t* [ %phi.cast13, %TaintCheck.succeeded6.i10 ], [ null, %json_value_get_type.exit.i ], [ null, %json_array_get_value.exit ], [ null, %json_array_get_count.exit.i ], [ null, %entry ]
  ret %Tstruct.json_object_t_t* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_array_t_t* @json_array_get_array(%Tstruct.json_array_t_t* %array, i64 %index) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %json_value_get_array.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i.i, label %json_array_get_count.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit.i:                      ; preds = %cond.true.i.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_array_t_t*
  %count.i.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 2
  %7 = load i64, i64* %count.i.i, align 8, !tbaa !28
  %cmp1.not.i = icmp ugt i64 %7, %index
  br i1 %cmp1.not.i, label %TaintCheck.succeeded.i, label %json_value_get_array.exit

TaintCheck.succeeded.i:                           ; preds = %json_array_get_count.exit.i
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 1
  %8 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %9 = ptrtoint %Tstruct.json_value_t_t** %8 to i64
  %10 = and i64 %9, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %10, %3
  br i1 %SandMem.TaintCheck2.i, label %json_array_get_value.exit, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_value.exit:                        ; preds = %TaintCheck.succeeded.i
  %11 = add i64 %10, %4
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %12, i64 %index
  %13 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  %phi.cast = ptrtoint %Tstruct.json_value_t_t* %13 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %tobool.not.i.i = icmp eq i64 %phi.bo, 0
  br i1 %tobool.not.i.i, label %json_value_get_array.exit, label %cond.true.i.i4

cond.true.i.i4:                                   ; preds = %json_array_get_value.exit
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i3 = icmp ult i64 %phi.bo, %14
  br i1 %SandMem.TaintCheck.i.i3, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i5

wasm.trap.fail.i.i5:                              ; preds = %cond.true.i.i4
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i4
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %phi.bo
  %17 = inttoptr i64 %16 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 1
  %18 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i6 = icmp eq i32 %18, 5
  br i1 %cmp.i6, label %TaintCheck.succeeded.i8, label %json_value_get_array.exit

TaintCheck.succeeded.i8:                          ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 2
  %19 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %20 = and i64 %19, 4294967295
  %SandMem.TaintCheck2.i7 = icmp ult i64 %20, %14
  br i1 %SandMem.TaintCheck2.i7, label %TaintCheck.succeeded6.i10, label %wasm.trap.fail3.i9

wasm.trap.fail3.i9:                               ; preds = %TaintCheck.succeeded.i8
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i10:                        ; preds = %TaintCheck.succeeded.i8
  %21 = add i64 %20, %15
  %22 = inttoptr i64 %21 to %Tstruct.json_value_value_t_t*
  %array.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %22, i64 0, i32 3
  %23 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i, align 4, !tbaa !27
  %phi.cast11 = ptrtoint %Tstruct.json_array_t_t* %23 to i64
  %phi.bo12 = and i64 %phi.cast11, 4294967295
  %phi.cast13 = inttoptr i64 %phi.bo12 to %Tstruct.json_array_t_t*
  br label %json_value_get_array.exit

json_value_get_array.exit:                        ; preds = %entry, %json_array_get_count.exit.i, %json_array_get_value.exit, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i10
  %cond.i = phi %Tstruct.json_array_t_t* [ %phi.cast13, %TaintCheck.succeeded6.i10 ], [ null, %json_value_get_type.exit.i ], [ null, %json_array_get_value.exit ], [ null, %json_array_get_count.exit.i ], [ null, %entry ]
  ret %Tstruct.json_array_t_t* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_get_boolean(%Tstruct.json_array_t_t* %array, i64 %index) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %json_value_get_boolean.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i.i, label %json_array_get_count.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit.i:                      ; preds = %cond.true.i.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_array_t_t*
  %count.i.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 2
  %7 = load i64, i64* %count.i.i, align 8, !tbaa !28
  %cmp1.not.i = icmp ugt i64 %7, %index
  br i1 %cmp1.not.i, label %TaintCheck.succeeded.i, label %json_value_get_boolean.exit

TaintCheck.succeeded.i:                           ; preds = %json_array_get_count.exit.i
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 1
  %8 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %9 = ptrtoint %Tstruct.json_value_t_t** %8 to i64
  %10 = and i64 %9, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %10, %3
  br i1 %SandMem.TaintCheck2.i, label %json_array_get_value.exit, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_value.exit:                        ; preds = %TaintCheck.succeeded.i
  %11 = add i64 %10, %4
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %12, i64 %index
  %13 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  %phi.cast = ptrtoint %Tstruct.json_value_t_t* %13 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %tobool.not.i.i = icmp eq i64 %phi.bo, 0
  br i1 %tobool.not.i.i, label %json_value_get_boolean.exit, label %cond.true.i.i3

cond.true.i.i3:                                   ; preds = %json_array_get_value.exit
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i2 = icmp ult i64 %phi.bo, %14
  br i1 %SandMem.TaintCheck.i.i2, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i4

wasm.trap.fail.i.i4:                              ; preds = %cond.true.i.i3
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i3
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %phi.bo
  %17 = inttoptr i64 %16 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 1
  %18 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i5 = icmp eq i32 %18, 6
  br i1 %cmp.i5, label %TaintCheck.succeeded.i7, label %json_value_get_boolean.exit

TaintCheck.succeeded.i7:                          ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %17, i64 0, i32 2
  %19 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %20 = and i64 %19, 4294967295
  %SandMem.TaintCheck2.i6 = icmp ult i64 %20, %14
  br i1 %SandMem.TaintCheck2.i6, label %TaintCheck.succeeded6.i9, label %wasm.trap.fail3.i8

wasm.trap.fail3.i8:                               ; preds = %TaintCheck.succeeded.i7
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i9:                         ; preds = %TaintCheck.succeeded.i7
  %21 = add i64 %20, %15
  %22 = inttoptr i64 %21 to %Tstruct.json_value_value_t_t*
  %boolean.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %22, i64 0, i32 4
  %23 = load i32, i32* %boolean.i, align 8, !tbaa !43
  br label %json_value_get_boolean.exit

json_value_get_boolean.exit:                      ; preds = %entry, %json_array_get_count.exit.i, %json_array_get_value.exit, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i9
  %cond.i = phi i32 [ %23, %TaintCheck.succeeded6.i9 ], [ -1, %json_value_get_type.exit.i ], [ -1, %json_array_get_value.exit ], [ -1, %json_array_get_count.exit.i ], [ -1, %entry ]
  ret i32 %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_array_get_wrapping_value(%Tstruct.json_array_t_t* %array) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %2
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %entry
  %3 = load i64, i64* @sbxHeap, align 8
  %4 = add i64 %3, %1
  %5 = inttoptr i64 %4 to %Tstruct.json_array_t_t*
  %wrapping_value = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %5, i64 0, i32 0
  %6 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %wrapping_value, align 4, !tbaa !50
  ret %Tstruct.json_value_t_t* %6
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = trunc i64 %0 to i32
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %2 = and i64 %0, 4294967295
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %2, %3
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %cond.true
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %cond.true
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 0
  %7 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %parent, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %entry, %TaintCheck.succeeded
  %cond = phi %Tstruct.json_value_t_t* [ %7, %TaintCheck.succeeded ], [ null, %entry ]
  ret %Tstruct.json_value_t_t* %cond
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_object_t_t* @json_object_init(%Tstruct.json_value_t_t* %wrapping_value_ip) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %wrapping_value_ip to i64
  %call = tail call i8* @t_malloc(i64 40) #16
  %1 = ptrtoint i8* %call to i64
  %2 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %2, i64* @sbxHeapRange, align 8
  %3 = and i64 %1, 4294967295
  %4 = inttoptr i64 %3 to %Tstruct.json_object_t_t*
  %call1 = tail call i8* @t_malloc(i64 4) #16
  %5 = ptrtoint i8* %call1 to i64
  %6 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %6, i64* @sbxHeapRange, align 8
  %7 = and i64 %5, 4294967295
  %SandMem.TaintCheck = icmp ult i64 %7, %6
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %entry
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to i32*
  store i32 10, i32* %10, align 4, !tbaa !5
  %11 = trunc i64 %1 to i32
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %TaintCheck.succeeded
  %12 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck3 = icmp ult i64 %3, %12
  br i1 %SandMem.TaintCheck3, label %TaintCheck.succeeded7, label %wasm.trap.fail4

wasm.trap.fail4:                                  ; preds = %if.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded7:                            ; preds = %if.end
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = add i64 %13, %3
  %15 = and i64 %0, 4294967295
  %16 = inttoptr i64 %14 to i64*
  store i64 %15, i64* %16, align 4, !tbaa !16
  %17 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck8 = icmp ult i64 %3, %17
  br i1 %SandMem.TaintCheck8, label %TaintCheck.succeeded27, label %wasm.trap.fail9

wasm.trap.fail9:                                  ; preds = %TaintCheck.succeeded7
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded27:                           ; preds = %TaintCheck.succeeded7
  %18 = load i64, i64* @sbxHeap, align 8
  %19 = add i64 %18, %3
  %20 = inttoptr i64 %19 to %Tstruct.json_object_t_t*
  %names = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %20, i64 0, i32 1
  %21 = bitcast i8*** %names to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(32) %21, i8 0, i64 32, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %TaintCheck.succeeded, %TaintCheck.succeeded27
  %retval.0 = phi %Tstruct.json_object_t_t* [ %4, %TaintCheck.succeeded27 ], [ null, %TaintCheck.succeeded ]
  ret %Tstruct.json_object_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_value_init_object() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %4 = trunc i64 %0 to i32
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %SandMem.TaintCheck = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to i64*
  store i64 0, i64* %7, align 4, !tbaa !17
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1 = icmp ult i64 %2, %8
  br i1 %SandMem.TaintCheck1, label %TaintCheck.succeeded5, label %wasm.trap.fail2

wasm.trap.fail2:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %2
  %11 = inttoptr i64 %10 to %Tstruct.json_value_t_t*
  %type = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %11, i64 0, i32 1
  store i32 4, i32* %type, align 8, !tbaa !24
  %call6 = tail call %Tstruct.json_object_t_t* @json_object_init(%Tstruct.json_value_t_t* %3)
  %12 = ptrtoint %Tstruct.json_object_t_t* %call6 to i64
  %13 = load i64, i64* @sbxHeap, align 8
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck8 = icmp ult i64 %2, %14
  br i1 %SandMem.TaintCheck8, label %TaintCheck.succeeded12, label %wasm.trap.fail9

wasm.trap.fail9:                                  ; preds = %TaintCheck.succeeded5
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded12:                           ; preds = %TaintCheck.succeeded5
  %15 = add i64 %13, %2
  %16 = inttoptr i64 %15 to %Tstruct.json_value_t_t*
  %value = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %16, i64 0, i32 2
  %17 = ptrtoint %Tstruct.json_value_value_t_t* %value to i64
  %18 = and i64 %17, 4294967295
  %SandMem.TaintCheck13 = icmp ult i64 %18, %14
  br i1 %SandMem.TaintCheck13, label %TaintCheck.succeeded28, label %wasm.trap.fail14

wasm.trap.fail14:                                 ; preds = %TaintCheck.succeeded12
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded28:                           ; preds = %TaintCheck.succeeded12
  %19 = add i64 %18, %13
  %20 = inttoptr i64 %19 to %Tstruct.json_value_value_t_t*
  %object = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %20, i64 0, i32 2
  %21 = and i64 %12, 4294967295
  %22 = bitcast %Tstruct.json_object_t_t** %object to i64*
  store i64 %21, i64* %22, align 4, !tbaa !25
  %23 = trunc i64 %12 to i32
  %tobool30.not = icmp eq i32 %23, 0
  br i1 %tobool30.not, label %TaintCheck.succeeded34, label %cleanup

TaintCheck.succeeded34:                           ; preds = %TaintCheck.succeeded28
  %add.ptr = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %3, i64 1
  %24 = ptrtoint %Tstruct.json_value_t_t* %add.ptr to i64
  %25 = trunc i64 %24 to i32
  %IsoHeap.upper.not = icmp ugt i32 %4, %25
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed40, label %TaintCheck.succeeded45

TaintCheck.failed40:                              ; preds = %TaintCheck.succeeded34
  tail call void @llvm.trap() #17
  unreachable

TaintCheck.succeeded45:                           ; preds = %TaintCheck.succeeded34
  %26 = inttoptr i64 %15 to i8*
  tail call void @t_free(i8* %26) #16
  %27 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %27, i64* @sbxHeapRange, align 8
  br label %cleanup

cleanup:                                          ; preds = %TaintCheck.succeeded28, %entry, %TaintCheck.succeeded45
  %retval.0 = phi %Tstruct.json_value_t_t* [ null, %TaintCheck.succeeded45 ], [ null, %entry ], [ %3, %TaintCheck.succeeded28 ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_value_init_array() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %4 = trunc i64 %0 to i32
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %SandMem.TaintCheck = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to i64*
  store i64 0, i64* %7, align 4, !tbaa !17
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1 = icmp ult i64 %2, %8
  br i1 %SandMem.TaintCheck1, label %TaintCheck.succeeded5, label %wasm.trap.fail2

wasm.trap.fail2:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %2
  %11 = inttoptr i64 %10 to %Tstruct.json_value_t_t*
  %type = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %11, i64 0, i32 1
  store i32 5, i32* %type, align 8, !tbaa !24
  %call.i = tail call i8* @t_malloc(i64 32) #16
  %12 = ptrtoint i8* %call.i to i64
  %13 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %13, i64* @sbxHeapRange, align 8
  %14 = and i64 %12, 4294967295
  %15 = trunc i64 %12 to i32
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %TaintCheck.succeeded5.json_array_init.exit_crit_edge, label %if.end.i

TaintCheck.succeeded5.json_array_init.exit_crit_edge: ; preds = %TaintCheck.succeeded5
  %.pre = load i64, i64* @sbxHeap, align 8
  br label %json_array_init.exit

if.end.i:                                         ; preds = %TaintCheck.succeeded5
  %SandMem.TaintCheck.i = icmp ult i64 %14, %13
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %16 = load i64, i64* @sbxHeap, align 8
  %17 = add i64 %16, %14
  %18 = inttoptr i64 %17 to i64*
  store i64 %2, i64* %18, align 4, !tbaa !50
  %19 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck2.i = icmp ult i64 %14, %19
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded16.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded16.i:                         ; preds = %TaintCheck.succeeded.i
  %20 = load i64, i64* @sbxHeap, align 8
  %21 = add i64 %20, %14
  %22 = inttoptr i64 %21 to %Tstruct.json_array_t_t*
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %22, i64 0, i32 1
  %23 = bitcast %Tstruct.json_value_t_t*** %items.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %23, i8 0, i64 24, i1 false) #16
  br label %json_array_init.exit

json_array_init.exit:                             ; preds = %TaintCheck.succeeded5.json_array_init.exit_crit_edge, %TaintCheck.succeeded16.i
  %24 = phi i64 [ %19, %TaintCheck.succeeded16.i ], [ %13, %TaintCheck.succeeded5.json_array_init.exit_crit_edge ]
  %25 = phi i64 [ %20, %TaintCheck.succeeded16.i ], [ %.pre, %TaintCheck.succeeded5.json_array_init.exit_crit_edge ]
  %retval.0.i = phi i64 [ %14, %TaintCheck.succeeded16.i ], [ 0, %TaintCheck.succeeded5.json_array_init.exit_crit_edge ]
  %SandMem.TaintCheck8 = icmp ult i64 %2, %24
  br i1 %SandMem.TaintCheck8, label %TaintCheck.succeeded12, label %wasm.trap.fail9

wasm.trap.fail9:                                  ; preds = %json_array_init.exit
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded12:                           ; preds = %json_array_init.exit
  %26 = add i64 %25, %2
  %27 = inttoptr i64 %26 to %Tstruct.json_value_t_t*
  %value = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %27, i64 0, i32 2
  %28 = ptrtoint %Tstruct.json_value_value_t_t* %value to i64
  %29 = and i64 %28, 4294967295
  %SandMem.TaintCheck13 = icmp ult i64 %29, %24
  br i1 %SandMem.TaintCheck13, label %TaintCheck.succeeded28, label %wasm.trap.fail14

wasm.trap.fail14:                                 ; preds = %TaintCheck.succeeded12
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded28:                           ; preds = %TaintCheck.succeeded12
  %30 = add i64 %29, %25
  %31 = inttoptr i64 %30 to %Tstruct.json_value_value_t_t*
  %array = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %31, i64 0, i32 3
  %32 = bitcast %Tstruct.json_array_t_t** %array to i64*
  store i64 %retval.0.i, i64* %32, align 4, !tbaa !27
  %tobool30.not = icmp eq i64 %retval.0.i, 0
  br i1 %tobool30.not, label %TaintCheck.succeeded34, label %cleanup

TaintCheck.succeeded34:                           ; preds = %TaintCheck.succeeded28
  %add.ptr = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %3, i64 1
  %33 = ptrtoint %Tstruct.json_value_t_t* %add.ptr to i64
  %34 = trunc i64 %33 to i32
  %IsoHeap.upper.not = icmp ugt i32 %4, %34
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed40, label %TaintCheck.succeeded45

TaintCheck.failed40:                              ; preds = %TaintCheck.succeeded34
  tail call void @llvm.trap() #17
  unreachable

TaintCheck.succeeded45:                           ; preds = %TaintCheck.succeeded34
  %35 = inttoptr i64 %26 to i8*
  tail call void @t_free(i8* %35) #16
  %36 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %36, i64* @sbxHeapRange, align 8
  br label %cleanup

cleanup:                                          ; preds = %TaintCheck.succeeded28, %entry, %TaintCheck.succeeded45
  %retval.0 = phi %Tstruct.json_value_t_t* [ null, %TaintCheck.succeeded45 ], [ null, %entry ], [ %3, %TaintCheck.succeeded28 ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_value_init_string(i8* %string) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %string to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to i8*
  %3 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %cleanup27, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %4
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %1
  %7 = inttoptr i64 %6 to i8*
  %call = tail call i64 @t_strlen(i8* %7) #16
  %call.i = tail call i8* @t_malloc(i64 4) #16
  %8 = ptrtoint i8* %call.i to i64
  %9 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %9, i64* @sbxHeapRange, align 8
  %10 = and i64 %8, 4294967295
  %11 = inttoptr i64 %10 to i32*
  %SandMem.TaintCheck.i = icmp ult i64 %10, %9
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %TaintCheck.succeeded
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = add i64 %12, %10
  %14 = inttoptr i64 %13 to i32*
  store i32 0, i32* %14, align 4, !tbaa !5
  %call1.i = tail call i8* @t_malloc(i64 4) #16
  %15 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %15, i64* @sbxHeapRange, align 8
  %add.ptr.i = getelementptr inbounds i8, i8* %2, i64 %call
  %16 = ptrtoint i8* %add.ptr.i to i64
  %17 = trunc i64 %16 to i32
  %cmp22.i = icmp ult i32 %3, %17
  br i1 %cmp22.i, label %while.body.lr.ph.i, label %if.end3

while.body.lr.ph.i:                               ; preds = %TaintCheck.succeeded.i
  %SandMem.TaintCheck5.i = icmp ult i64 %10, %15
  %18 = load i64, i64* @sbxHeap, align 8
  %19 = add i64 %18, %10
  %20 = inttoptr i64 %19 to i32*
  br label %while.body.i

while.body.i:                                     ; preds = %TaintCheck.succeeded9.i, %while.body.lr.ph.i
  %string.addr.023.i = phi i8* [ %2, %while.body.lr.ph.i ], [ %24, %TaintCheck.succeeded9.i ]
  %call4.i = tail call i32 @verify_utf8_sequence(i8* %string.addr.023.i, i32* %11) #16
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %cleanup27, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  br i1 %SandMem.TaintCheck5.i, label %TaintCheck.succeeded9.i, label %wasm.trap.fail6.i

wasm.trap.fail6.i:                                ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded9.i:                          ; preds = %if.end.i
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %idx.ext.i = sext i32 %21 to i64
  %add.ptr10.i = getelementptr inbounds i8, i8* %string.addr.023.i, i64 %idx.ext.i
  %22 = ptrtoint i8* %add.ptr10.i to i64
  %23 = and i64 %22, 4294967295
  %24 = inttoptr i64 %23 to i8*
  %25 = trunc i64 %22 to i32
  %cmp.i = icmp ult i32 %25, %17
  br i1 %cmp.i, label %while.body.i, label %if.end3, !llvm.loop !51

if.end3:                                          ; preds = %TaintCheck.succeeded9.i, %TaintCheck.succeeded.i
  %call4 = tail call i8* @tainted_parson_strndup(i8* %2, i64 %call)
  %26 = ptrtoint i8* %call4 to i64
  %27 = and i64 %26, 4294967295
  %28 = inttoptr i64 %27 to i8*
  %29 = trunc i64 %26 to i32
  %cmp5 = icmp eq i32 %29, 0
  br i1 %cmp5, label %cleanup27, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call.i43 = tail call i8* @t_malloc(i64 56) #16
  %30 = ptrtoint i8* %call.i43 to i64
  %31 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %31, i64* @sbxHeapRange, align 8
  %32 = and i64 %30, 4294967295
  %33 = trunc i64 %30 to i32
  %tobool.not.i44 = icmp eq i32 %33, 0
  br i1 %tobool.not.i44, label %TaintCheck.succeeded14, label %if.end.i46

if.end.i46:                                       ; preds = %if.end7
  %SandMem.TaintCheck.i45 = icmp ult i64 %32, %31
  br i1 %SandMem.TaintCheck.i45, label %TaintCheck.succeeded.i48, label %wasm.trap.fail.i47

wasm.trap.fail.i47:                               ; preds = %if.end.i46
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i48:                         ; preds = %if.end.i46
  %34 = load i64, i64* @sbxHeap, align 8
  %35 = add i64 %34, %32
  %36 = inttoptr i64 %35 to i64*
  store i64 0, i64* %36, align 4, !tbaa !17
  %37 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i = icmp ult i64 %32, %37
  br i1 %SandMem.TaintCheck1.i, label %TaintCheck.succeeded10.i, label %wasm.trap.fail2.i

wasm.trap.fail2.i:                                ; preds = %TaintCheck.succeeded.i48
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded10.i:                         ; preds = %TaintCheck.succeeded.i48
  %38 = load i64, i64* @sbxHeap, align 8
  %39 = add i64 %38, %32
  %40 = inttoptr i64 %39 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %40, i64 0, i32 1
  store i32 2, i32* %type.i, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %40, i64 0, i32 2
  %41 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %42 = and i64 %41, 4294967295
  %SandMem.TaintCheck11.i = icmp ult i64 %42, %37
  br i1 %SandMem.TaintCheck11.i, label %json_value_init_string_no_copy.exit, label %wasm.trap.fail12.i

wasm.trap.fail12.i:                               ; preds = %TaintCheck.succeeded10.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_string_no_copy.exit:              ; preds = %TaintCheck.succeeded10.i
  %43 = add i64 %42, %38
  %44 = inttoptr i64 %43 to i64*
  store i64 %27, i64* %44, align 4, !tbaa !26
  %45 = inttoptr i64 %32 to %Tstruct.json_value_t_t*
  %cmp10 = icmp eq i64 %32, 0
  br i1 %cmp10, label %TaintCheck.succeeded14, label %cleanup27

TaintCheck.succeeded14:                           ; preds = %if.end7, %json_value_init_string_no_copy.exit
  %46 = phi %Tstruct.json_value_t_t* [ %45, %json_value_init_string_no_copy.exit ], [ null, %if.end7 ]
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 1
  %47 = ptrtoint i8* %add.ptr to i64
  %48 = trunc i64 %47 to i32
  %IsoHeap.upper.not = icmp ugt i32 %29, %48
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed20, label %IsoHeap.success

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded14
  %49 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck21 = icmp ult i64 %27, %49
  br i1 %SandMem.TaintCheck21, label %TaintCheck.succeeded25, label %wasm.trap.fail22

TaintCheck.failed20:                              ; preds = %TaintCheck.succeeded14
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail22:                                 ; preds = %IsoHeap.success
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded25:                           ; preds = %IsoHeap.success
  %50 = load i64, i64* @sbxHeap, align 8
  %51 = add i64 %50, %27
  %52 = inttoptr i64 %51 to i8*
  tail call void @t_free(i8* %52) #16
  %53 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %53, i64* @sbxHeapRange, align 8
  br label %cleanup27

cleanup27:                                        ; preds = %while.body.i, %if.end3, %TaintCheck.succeeded25, %json_value_init_string_no_copy.exit, %entry
  %retval.1 = phi %Tstruct.json_value_t_t* [ null, %entry ], [ null, %if.end3 ], [ %46, %TaintCheck.succeeded25 ], [ %45, %json_value_init_string_no_copy.exit ], [ null, %while.body.i ]
  ret %Tstruct.json_value_t_t* %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_value_init_boolean(i32 %boolean) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %4 = trunc i64 %0 to i32
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %SandMem.TaintCheck = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to i64*
  store i64 0, i64* %7, align 4, !tbaa !17
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1 = icmp ult i64 %2, %8
  br i1 %SandMem.TaintCheck1, label %TaintCheck.succeeded11, label %wasm.trap.fail2

wasm.trap.fail2:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded11:                           ; preds = %TaintCheck.succeeded
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %2
  %11 = inttoptr i64 %10 to %Tstruct.json_value_t_t*
  %type = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %11, i64 0, i32 1
  store i32 6, i32* %type, align 8, !tbaa !24
  %value = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %11, i64 0, i32 2
  %12 = ptrtoint %Tstruct.json_value_value_t_t* %value to i64
  %13 = and i64 %12, 4294967295
  %SandMem.TaintCheck12 = icmp ult i64 %13, %8
  br i1 %SandMem.TaintCheck12, label %TaintCheck.succeeded16, label %wasm.trap.fail13

wasm.trap.fail13:                                 ; preds = %TaintCheck.succeeded11
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded16:                           ; preds = %TaintCheck.succeeded11
  %tobool6.not = icmp ne i32 %boolean, 0
  %cond = zext i1 %tobool6.not to i32
  %14 = add i64 %13, %9
  %15 = inttoptr i64 %14 to %Tstruct.json_value_value_t_t*
  %boolean17 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %15, i64 0, i32 4
  store i32 %cond, i32* %boolean17, align 8, !tbaa !43
  br label %cleanup

cleanup:                                          ; preds = %entry, %TaintCheck.succeeded16
  %retval.0 = phi %Tstruct.json_value_t_t* [ %3, %TaintCheck.succeeded16 ], [ null, %entry ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_value_init_null() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %4 = trunc i64 %0 to i32
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %SandMem.TaintCheck = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to i64*
  store i64 0, i64* %7, align 4, !tbaa !17
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1 = icmp ult i64 %2, %8
  br i1 %SandMem.TaintCheck1, label %TaintCheck.succeeded5, label %wasm.trap.fail2

wasm.trap.fail2:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded5:                            ; preds = %TaintCheck.succeeded
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %2
  %11 = inttoptr i64 %10 to %Tstruct.json_value_t_t*
  %type = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %11, i64 0, i32 1
  store i32 1, i32* %type, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %entry, %TaintCheck.succeeded5
  %retval.0 = phi %Tstruct.json_value_t_t* [ %3, %TaintCheck.succeeded5 ], [ null, %entry ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_value_t_t* @json_value_deep_copy(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %cleanup, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %json_value_get_type.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit:                         ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i, align 8, !tbaa !24
  switch i32 %7, label %cleanup [
    i32 5, label %TaintCheck.succeeded.i143
    i32 4, label %TaintCheck.succeeded.i213
    i32 6, label %TaintCheck.succeeded.i312
    i32 3, label %TaintCheck.succeeded.i248
    i32 2, label %TaintCheck.succeeded.i186
    i32 1, label %sw.bb82
  ]

TaintCheck.succeeded.i143:                        ; preds = %json_value_get_type.exit
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2.i, label %json_value_get_array.exit, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i143
  tail call void @llvm.trap() #16
  unreachable

json_value_get_array.exit:                        ; preds = %TaintCheck.succeeded.i143
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %array.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 3
  %12 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i, align 4, !tbaa !27
  %phi.cast334 = ptrtoint %Tstruct.json_array_t_t* %12 to i64
  %phi.bo335 = and i64 %phi.cast334, 4294967295
  %call2 = tail call %Tstruct.json_value_t_t* @json_value_init_array()
  %13 = ptrtoint %Tstruct.json_value_t_t* %call2 to i64
  %14 = and i64 %13, 4294967295
  %15 = inttoptr i64 %14 to %Tstruct.json_value_t_t*
  %16 = trunc i64 %13 to i32
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %cleanup, label %cond.true.i.i147

cond.true.i.i147:                                 ; preds = %json_value_get_array.exit
  %17 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i146 = icmp ult i64 %14, %17
  br i1 %SandMem.TaintCheck.i.i146, label %json_value_get_type.exit.i151, label %wasm.trap.fail.i.i148

wasm.trap.fail.i.i148:                            ; preds = %cond.true.i.i147
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i151:                    ; preds = %cond.true.i.i147
  %18 = load i64, i64* @sbxHeap, align 8
  %19 = add i64 %18, %14
  %20 = inttoptr i64 %19 to %Tstruct.json_value_t_t*
  %type.i.i149 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %20, i64 0, i32 1
  %21 = load i32, i32* %type.i.i149, align 8, !tbaa !24
  %cmp.i150 = icmp eq i32 %21, 5
  br i1 %cmp.i150, label %TaintCheck.succeeded.i154, label %json_value_get_array.exit159

TaintCheck.succeeded.i154:                        ; preds = %json_value_get_type.exit.i151
  %value1.i152 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %20, i64 0, i32 2
  %22 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i152 to i64
  %23 = and i64 %22, 4294967295
  %SandMem.TaintCheck2.i153 = icmp ult i64 %23, %17
  br i1 %SandMem.TaintCheck2.i153, label %TaintCheck.succeeded6.i157, label %wasm.trap.fail3.i155

wasm.trap.fail3.i155:                             ; preds = %TaintCheck.succeeded.i154
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i157:                       ; preds = %TaintCheck.succeeded.i154
  %24 = add i64 %23, %18
  %25 = inttoptr i64 %24 to %Tstruct.json_value_value_t_t*
  %array.i156 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %25, i64 0, i32 3
  %26 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i156, align 4, !tbaa !27
  %phi.cast336 = ptrtoint %Tstruct.json_array_t_t* %26 to i64
  %phi.bo337 = and i64 %phi.cast336, 4294967295
  %phi.cast338 = inttoptr i64 %phi.bo337 to %Tstruct.json_array_t_t*
  br label %json_value_get_array.exit159

json_value_get_array.exit159:                     ; preds = %json_value_get_type.exit.i151, %TaintCheck.succeeded6.i157
  %cond.i158 = phi %Tstruct.json_array_t_t* [ %phi.cast338, %TaintCheck.succeeded6.i157 ], [ null, %json_value_get_type.exit.i151 ]
  %tobool.not.i163 = icmp eq i64 %phi.bo335, 0
  br i1 %tobool.not.i163, label %cleanup, label %cond.true.i165.lr.ph

cond.true.i165.lr.ph:                             ; preds = %json_value_get_array.exit159
  %27 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i164 = icmp ult i64 %phi.bo335, %27
  %28 = load i64, i64* @sbxHeap, align 8
  %29 = add i64 %28, %phi.bo335
  %30 = inttoptr i64 %29 to %Tstruct.json_array_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %30, i64 0, i32 2
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %30, i64 0, i32 1
  br i1 %SandMem.TaintCheck.i164, label %cond.true.i165.preheader, label %wasm.trap.fail.i166.split

cond.true.i165.preheader:                         ; preds = %cond.true.i165.lr.ph
  %31 = load i64, i64* %count.i, align 8, !tbaa !28
  %cmp7318363.not = icmp eq i64 %31, 0
  br i1 %cmp7318363.not, label %cleanup, label %TaintCheck.succeeded.i174

cond.true.i165:                                   ; preds = %if.end14
  %32 = load i64, i64* %count.i, align 8, !tbaa !28
  %cmp7318 = icmp ult i64 %inc, %32
  br i1 %cmp7318, label %TaintCheck.succeeded.i174, label %cleanup

wasm.trap.fail.i166.split:                        ; preds = %cond.true.i165.lr.ph
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i174:                        ; preds = %cond.true.i165.preheader, %cond.true.i165
  %i.0343364 = phi i64 [ %inc, %cond.true.i165 ], [ 0, %cond.true.i165.preheader ]
  %33 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %34 = ptrtoint %Tstruct.json_value_t_t** %33 to i64
  %35 = and i64 %34, 4294967295
  %SandMem.TaintCheck2.i173 = icmp ult i64 %35, %27
  br i1 %SandMem.TaintCheck2.i173, label %json_array_get_value.exit, label %wasm.trap.fail3.i175

wasm.trap.fail3.i175:                             ; preds = %TaintCheck.succeeded.i174
  tail call void @llvm.trap() #16
  unreachable

json_array_get_value.exit:                        ; preds = %TaintCheck.succeeded.i174
  %36 = add i64 %35, %28
  %37 = inttoptr i64 %36 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %37, i64 %i.0343364
  %38 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  %39 = ptrtoint %Tstruct.json_value_t_t* %38 to i64
  %40 = and i64 %39, 4294967295
  %41 = inttoptr i64 %40 to %Tstruct.json_value_t_t*
  %call10 = tail call %Tstruct.json_value_t_t* @json_value_deep_copy(%Tstruct.json_value_t_t* %41)
  %42 = ptrtoint %Tstruct.json_value_t_t* %call10 to i64
  %43 = trunc i64 %42 to i32
  %cmp12 = icmp eq i32 %43, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %json_array_get_value.exit
  tail call void @json_value_free(%Tstruct.json_value_t_t* %15)
  br label %cleanup

if.end14:                                         ; preds = %json_array_get_value.exit
  %44 = and i64 %42, 4294967295
  %45 = inttoptr i64 %44 to %Tstruct.json_value_t_t*
  %call15 = tail call fastcc i32 @json_array_add(%Tstruct.json_array_t_t* %cond.i158, %Tstruct.json_value_t_t* %45)
  %cmp16 = icmp eq i32 %call15, -1
  %inc = add nuw i64 %i.0343364, 1
  br i1 %cmp16, label %if.then17, label %cond.true.i165

if.then17:                                        ; preds = %if.end14
  %46 = inttoptr i64 %44 to %Tstruct.json_value_t_t*
  tail call void @json_value_free(%Tstruct.json_value_t_t* %15)
  tail call void @json_value_free(%Tstruct.json_value_t_t* %46)
  br label %cleanup

TaintCheck.succeeded.i213:                        ; preds = %json_value_get_type.exit
  %value1.i211 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %47 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i211 to i64
  %48 = and i64 %47, 4294967295
  %SandMem.TaintCheck2.i212 = icmp ult i64 %48, %3
  br i1 %SandMem.TaintCheck2.i212, label %json_value_get_object.exit, label %wasm.trap.fail3.i214

wasm.trap.fail3.i214:                             ; preds = %TaintCheck.succeeded.i213
  tail call void @llvm.trap() #16
  unreachable

json_value_get_object.exit:                       ; preds = %TaintCheck.succeeded.i213
  %49 = add i64 %48, %4
  %50 = inttoptr i64 %49 to %Tstruct.json_value_value_t_t*
  %object.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %50, i64 0, i32 2
  %51 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i, align 4, !tbaa !25
  %phi.cast330 = ptrtoint %Tstruct.json_object_t_t* %51 to i64
  %phi.bo = and i64 %phi.cast330, 4294967295
  %call22 = tail call %Tstruct.json_value_t_t* @json_value_init_object()
  %52 = ptrtoint %Tstruct.json_value_t_t* %call22 to i64
  %53 = and i64 %52, 4294967295
  %54 = inttoptr i64 %53 to %Tstruct.json_value_t_t*
  %55 = trunc i64 %52 to i32
  %cmp24 = icmp eq i32 %55, 0
  br i1 %cmp24, label %cleanup, label %cond.true.i.i219

cond.true.i.i219:                                 ; preds = %json_value_get_object.exit
  %56 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i218 = icmp ult i64 %53, %56
  br i1 %SandMem.TaintCheck.i.i218, label %json_value_get_type.exit.i223, label %wasm.trap.fail.i.i220

wasm.trap.fail.i.i220:                            ; preds = %cond.true.i.i219
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i223:                    ; preds = %cond.true.i.i219
  %57 = load i64, i64* @sbxHeap, align 8
  %58 = add i64 %57, %53
  %59 = inttoptr i64 %58 to %Tstruct.json_value_t_t*
  %type.i.i221 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %59, i64 0, i32 1
  %60 = load i32, i32* %type.i.i221, align 8, !tbaa !24
  %cmp.i222 = icmp eq i32 %60, 4
  br i1 %cmp.i222, label %TaintCheck.succeeded.i226, label %json_value_get_object.exit231

TaintCheck.succeeded.i226:                        ; preds = %json_value_get_type.exit.i223
  %value1.i224 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %59, i64 0, i32 2
  %61 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i224 to i64
  %62 = and i64 %61, 4294967295
  %SandMem.TaintCheck2.i225 = icmp ult i64 %62, %56
  br i1 %SandMem.TaintCheck2.i225, label %TaintCheck.succeeded6.i229, label %wasm.trap.fail3.i227

wasm.trap.fail3.i227:                             ; preds = %TaintCheck.succeeded.i226
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i229:                       ; preds = %TaintCheck.succeeded.i226
  %63 = add i64 %62, %57
  %64 = inttoptr i64 %63 to %Tstruct.json_value_value_t_t*
  %object.i228 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %64, i64 0, i32 2
  %65 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i228, align 4, !tbaa !25
  %phi.cast331 = ptrtoint %Tstruct.json_object_t_t* %65 to i64
  %phi.bo332 = and i64 %phi.cast331, 4294967295
  %phi.cast333 = inttoptr i64 %phi.bo332 to %Tstruct.json_object_t_t*
  br label %json_value_get_object.exit231

json_value_get_object.exit231:                    ; preds = %json_value_get_type.exit.i223, %TaintCheck.succeeded6.i229
  %cond.i230 = phi %Tstruct.json_object_t_t* [ %phi.cast333, %TaintCheck.succeeded6.i229 ], [ null, %json_value_get_type.exit.i223 ]
  %tobool.not.i232 = icmp eq i64 %phi.bo, 0
  br i1 %tobool.not.i232, label %cleanup, label %cond.true.i234.lr.ph

cond.true.i234.lr.ph:                             ; preds = %json_value_get_object.exit231
  %66 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i233 = icmp ult i64 %phi.bo, %66
  %67 = load i64, i64* @sbxHeap, align 8
  %68 = add i64 %67, %phi.bo
  %69 = inttoptr i64 %68 to %Tstruct.json_object_t_t*
  %count.i236 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %69, i64 0, i32 3
  %names.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %69, i64 0, i32 1
  %70 = inttoptr i64 %phi.bo to %Tstruct.json_object_t_t*
  br i1 %SandMem.TaintCheck.i233, label %cond.true.i234.preheader, label %wasm.trap.fail.i235.split

cond.true.i234.preheader:                         ; preds = %cond.true.i234.lr.ph
  %71 = load i64, i64* %count.i236, align 8, !tbaa !9
  %cmp31320365.not = icmp eq i64 %71, 0
  br i1 %cmp31320365.not, label %cleanup, label %TaintCheck.succeeded.i271

cond.true.i234:                                   ; preds = %json_object_add.exit
  %72 = load i64, i64* %count.i236, align 8, !tbaa !9
  %cmp31320 = icmp ult i64 %inc47, %72
  br i1 %cmp31320, label %TaintCheck.succeeded.i271, label %cleanup

wasm.trap.fail.i235.split:                        ; preds = %cond.true.i234.lr.ph
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i271:                        ; preds = %cond.true.i234.preheader, %cond.true.i234
  %i.1345366 = phi i64 [ %inc47, %cond.true.i234 ], [ 0, %cond.true.i234.preheader ]
  %73 = load i8**, i8*** %names.i, align 4, !tbaa !14
  %74 = ptrtoint i8** %73 to i64
  %75 = and i64 %74, 4294967295
  %SandMem.TaintCheck2.i270 = icmp ult i64 %75, %66
  br i1 %SandMem.TaintCheck2.i270, label %lor.lhs.false.i, label %wasm.trap.fail3.i272

wasm.trap.fail3.i272:                             ; preds = %TaintCheck.succeeded.i271
  tail call void @llvm.trap() #16
  unreachable

lor.lhs.false.i:                                  ; preds = %TaintCheck.succeeded.i271
  %76 = add i64 %75, %67
  %77 = inttoptr i64 %76 to i8**
  %arrayidx.i273 = getelementptr inbounds i8*, i8** %77, i64 %i.1345366
  %78 = load i8*, i8** %arrayidx.i273, align 4, !tbaa !15
  %79 = ptrtoint i8* %78 to i64
  %80 = and i64 %79, 4294967295
  %81 = inttoptr i64 %80 to i8*
  %82 = trunc i64 %79 to i32
  %cmp1.i277 = icmp eq i32 %82, 0
  br i1 %cmp1.i277, label %json_object_get_value.exit, label %if.end.i279

if.end.i279:                                      ; preds = %lor.lhs.false.i
  %SandMem.TaintCheck.i278 = icmp ult i64 %80, %66
  br i1 %SandMem.TaintCheck.i278, label %TaintCheck.succeeded.i282, label %wasm.trap.fail.i280

wasm.trap.fail.i280:                              ; preds = %if.end.i279
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i282:                        ; preds = %if.end.i279
  %83 = add i64 %67, %80
  %84 = inttoptr i64 %83 to i8*
  %call.i281 = tail call i64 @t_strlen(i8* %84) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* nonnull %70, i8* %81, i64 %call.i281) #16
  %85 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %86 = and i64 %85, 4294967295
  %87 = inttoptr i64 %86 to %Tstruct.json_value_t_t*
  br label %json_object_get_value.exit

json_object_get_value.exit:                       ; preds = %lor.lhs.false.i, %TaintCheck.succeeded.i282
  %retval.0.i283 = phi %Tstruct.json_value_t_t* [ %87, %TaintCheck.succeeded.i282 ], [ null, %lor.lhs.false.i ]
  %88 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i283 to i64
  %89 = and i64 %88, 4294967295
  %90 = inttoptr i64 %89 to %Tstruct.json_value_t_t*
  %call37 = tail call %Tstruct.json_value_t_t* @json_value_deep_copy(%Tstruct.json_value_t_t* %90)
  %91 = ptrtoint %Tstruct.json_value_t_t* %call37 to i64
  %92 = and i64 %91, 4294967295
  %93 = inttoptr i64 %92 to %Tstruct.json_value_t_t*
  %94 = trunc i64 %91 to i32
  %cmp39 = icmp eq i32 %94, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %json_object_get_value.exit
  tail call void @json_value_free(%Tstruct.json_value_t_t* %54)
  br label %cleanup

if.end41:                                         ; preds = %json_object_get_value.exit
  br i1 %cmp1.i277, label %if.then44, label %if.end.i297

if.end.i297:                                      ; preds = %if.end41
  %SandMem.TaintCheck.i296 = icmp ult i64 %80, %66
  br i1 %SandMem.TaintCheck.i296, label %json_object_add.exit, label %wasm.trap.fail.i298

wasm.trap.fail.i298:                              ; preds = %if.end.i297
  tail call void @llvm.trap() #16
  unreachable

json_object_add.exit:                             ; preds = %if.end.i297
  %95 = add i64 %67, %80
  %96 = inttoptr i64 %95 to i8*
  %call.i299 = tail call i64 @t_strlen(i8* %96) #16
  %call1.i300 = tail call i32 @json_object_addn(%Tstruct.json_object_t_t* %cond.i230, i8* %81, i64 %call.i299, %Tstruct.json_value_t_t* %93) #16
  %cmp43 = icmp eq i32 %call1.i300, -1
  %inc47 = add nuw i64 %i.1345366, 1
  br i1 %cmp43, label %if.then44, label %cond.true.i234

if.then44:                                        ; preds = %if.end41, %json_object_add.exit
  %97 = inttoptr i64 %92 to %Tstruct.json_value_t_t*
  tail call void @json_value_free(%Tstruct.json_value_t_t* %54)
  tail call void @json_value_free(%Tstruct.json_value_t_t* %97)
  br label %cleanup

TaintCheck.succeeded.i312:                        ; preds = %json_value_get_type.exit
  %value1.i310 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %98 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i310 to i64
  %99 = and i64 %98, 4294967295
  %SandMem.TaintCheck2.i311 = icmp ult i64 %99, %3
  br i1 %SandMem.TaintCheck2.i311, label %json_value_get_boolean.exit, label %wasm.trap.fail3.i313

wasm.trap.fail3.i313:                             ; preds = %TaintCheck.succeeded.i312
  tail call void @llvm.trap() #16
  unreachable

json_value_get_boolean.exit:                      ; preds = %TaintCheck.succeeded.i312
  %100 = add i64 %99, %4
  %101 = inttoptr i64 %100 to %Tstruct.json_value_value_t_t*
  %boolean.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %101, i64 0, i32 4
  %102 = load i32, i32* %boolean.i, align 8, !tbaa !43
  %call.i252 = tail call i8* @t_malloc(i64 56) #16
  %103 = ptrtoint i8* %call.i252 to i64
  %104 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %104, i64* @sbxHeapRange, align 8
  %105 = and i64 %103, 4294967295
  %106 = trunc i64 %103 to i32
  %tobool.not.i253 = icmp eq i32 %106, 0
  br i1 %tobool.not.i253, label %cleanup, label %if.end.i255

if.end.i255:                                      ; preds = %json_value_get_boolean.exit
  %SandMem.TaintCheck.i254 = icmp ult i64 %105, %104
  br i1 %SandMem.TaintCheck.i254, label %TaintCheck.succeeded.i258, label %wasm.trap.fail.i256

wasm.trap.fail.i256:                              ; preds = %if.end.i255
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i258:                        ; preds = %if.end.i255
  %107 = load i64, i64* @sbxHeap, align 8
  %108 = add i64 %107, %105
  %109 = inttoptr i64 %108 to i64*
  store i64 0, i64* %109, align 4, !tbaa !17
  %110 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i257 = icmp ult i64 %105, %110
  br i1 %SandMem.TaintCheck1.i257, label %TaintCheck.succeeded11.i, label %wasm.trap.fail2.i259

wasm.trap.fail2.i259:                             ; preds = %TaintCheck.succeeded.i258
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded11.i:                         ; preds = %TaintCheck.succeeded.i258
  %111 = load i64, i64* @sbxHeap, align 8
  %112 = add i64 %111, %105
  %113 = inttoptr i64 %112 to %Tstruct.json_value_t_t*
  %type.i260 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %113, i64 0, i32 1
  store i32 6, i32* %type.i260, align 8, !tbaa !24
  %value.i261 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %113, i64 0, i32 2
  %114 = ptrtoint %Tstruct.json_value_value_t_t* %value.i261 to i64
  %115 = and i64 %114, 4294967295
  %SandMem.TaintCheck12.i = icmp ult i64 %115, %110
  br i1 %SandMem.TaintCheck12.i, label %TaintCheck.succeeded16.i, label %wasm.trap.fail13.i

wasm.trap.fail13.i:                               ; preds = %TaintCheck.succeeded11.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded16.i:                         ; preds = %TaintCheck.succeeded11.i
  %tobool6.not.i = icmp ne i32 %102, 0
  %cond.i262 = zext i1 %tobool6.not.i to i32
  %116 = add i64 %115, %111
  %117 = inttoptr i64 %116 to %Tstruct.json_value_value_t_t*
  %boolean17.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %117, i64 0, i32 4
  store i32 %cond.i262, i32* %boolean17.i, align 8, !tbaa !43
  %phi.cast329 = inttoptr i64 %105 to %Tstruct.json_value_t_t*
  br label %cleanup

TaintCheck.succeeded.i248:                        ; preds = %json_value_get_type.exit
  %value1.i246 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %118 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i246 to i64
  %119 = and i64 %118, 4294967295
  %SandMem.TaintCheck2.i247 = icmp ult i64 %119, %3
  br i1 %SandMem.TaintCheck2.i247, label %json_value_get_number.exit, label %wasm.trap.fail3.i249

wasm.trap.fail3.i249:                             ; preds = %TaintCheck.succeeded.i248
  tail call void @llvm.trap() #16
  unreachable

json_value_get_number.exit:                       ; preds = %TaintCheck.succeeded.i248
  %120 = add i64 %119, %4
  %121 = inttoptr i64 %120 to %Tstruct.json_value_value_t_t*
  %number.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %121, i64 0, i32 1
  %122 = load double, double* %number.i, align 8, !tbaa !44
  %call.i190 = tail call i8* @t_malloc(i64 56) #16
  %123 = ptrtoint i8* %call.i190 to i64
  %124 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %124, i64* @sbxHeapRange, align 8
  %125 = and i64 %123, 4294967295
  %mul.i = fmul double %122, 0.000000e+00
  %cmp.i191 = fcmp une double %mul.i, 0.000000e+00
  %126 = trunc i64 %123 to i32
  %cmp1.i = icmp eq i32 %126, 0
  %or.cond.i = or i1 %cmp.i191, %cmp1.i
  br i1 %or.cond.i, label %cleanup, label %if.end3.i

if.end3.i:                                        ; preds = %json_value_get_number.exit
  %SandMem.TaintCheck.i192 = icmp ult i64 %125, %124
  br i1 %SandMem.TaintCheck.i192, label %TaintCheck.succeeded.i194, label %wasm.trap.fail.i193

wasm.trap.fail.i193:                              ; preds = %if.end3.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i194:                        ; preds = %if.end3.i
  %127 = load i64, i64* @sbxHeap, align 8
  %128 = add i64 %127, %125
  %129 = inttoptr i64 %128 to i64*
  store i64 0, i64* %129, align 4, !tbaa !17
  %130 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck4.i = icmp ult i64 %125, %130
  br i1 %SandMem.TaintCheck4.i, label %TaintCheck.succeeded13.i, label %wasm.trap.fail5.i

wasm.trap.fail5.i:                                ; preds = %TaintCheck.succeeded.i194
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded13.i:                         ; preds = %TaintCheck.succeeded.i194
  %131 = load i64, i64* @sbxHeap, align 8
  %132 = add i64 %131, %125
  %133 = inttoptr i64 %132 to %Tstruct.json_value_t_t*
  %type.i195 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %133, i64 0, i32 1
  store i32 3, i32* %type.i195, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %133, i64 0, i32 2
  %134 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %135 = and i64 %134, 4294967295
  %SandMem.TaintCheck14.i = icmp ult i64 %135, %130
  br i1 %SandMem.TaintCheck14.i, label %TaintCheck.succeeded18.i, label %wasm.trap.fail15.i

wasm.trap.fail15.i:                               ; preds = %TaintCheck.succeeded13.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded18.i:                         ; preds = %TaintCheck.succeeded13.i
  %136 = add i64 %135, %131
  %137 = inttoptr i64 %136 to %Tstruct.json_value_value_t_t*
  %number19.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %137, i64 0, i32 1
  store double %122, double* %number19.i, align 8, !tbaa !44
  %phi.cast327 = inttoptr i64 %125 to %Tstruct.json_value_t_t*
  br label %cleanup

TaintCheck.succeeded.i186:                        ; preds = %json_value_get_type.exit
  %value1.i184 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %138 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i184 to i64
  %139 = and i64 %138, 4294967295
  %SandMem.TaintCheck2.i185 = icmp ult i64 %139, %3
  br i1 %SandMem.TaintCheck2.i185, label %json_value_get_string.exit, label %wasm.trap.fail3.i187

wasm.trap.fail3.i187:                             ; preds = %TaintCheck.succeeded.i186
  tail call void @llvm.trap() #16
  unreachable

json_value_get_string.exit:                       ; preds = %TaintCheck.succeeded.i186
  %140 = add i64 %139, %4
  %141 = inttoptr i64 %140 to %Tstruct.json_value_value_t_t*
  %string.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %141, i64 0, i32 0
  %142 = load i8*, i8** %string.i, align 4, !tbaa !26
  %phi.cast324 = ptrtoint i8* %142 to i64
  %143 = trunc i64 %phi.cast324 to i32
  %cmp60 = icmp eq i32 %143, 0
  br i1 %cmp60, label %cleanup, label %if.end62

if.end62:                                         ; preds = %json_value_get_string.exit
  %144 = and i64 %phi.cast324, 4294967295
  %SandMem.TaintCheck.i160 = icmp ult i64 %144, %3
  br i1 %SandMem.TaintCheck.i160, label %tainted_parson_strdup.exit, label %wasm.trap.fail.i161

wasm.trap.fail.i161:                              ; preds = %if.end62
  tail call void @llvm.trap() #16
  unreachable

tainted_parson_strdup.exit:                       ; preds = %if.end62
  %145 = add i64 %4, %144
  %146 = inttoptr i64 %145 to i8*
  %call.i = tail call i64 @t_strlen(i8* %146) #16
  %147 = inttoptr i64 %144 to i8*
  %call1.i = tail call i8* @tainted_parson_strndup(i8* %147, i64 %call.i) #16
  %148 = ptrtoint i8* %call1.i to i64
  %149 = and i64 %148, 4294967295
  %150 = inttoptr i64 %149 to i8*
  %151 = trunc i64 %148 to i32
  %cmp65 = icmp eq i32 %151, 0
  br i1 %cmp65, label %cleanup, label %if.end67

if.end67:                                         ; preds = %tainted_parson_strdup.exit
  %call.i284 = tail call i8* @t_malloc(i64 56) #16
  %152 = ptrtoint i8* %call.i284 to i64
  %153 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %153, i64* @sbxHeapRange, align 8
  %154 = and i64 %152, 4294967295
  %155 = trunc i64 %152 to i32
  %tobool.not.i285 = icmp eq i32 %155, 0
  br i1 %tobool.not.i285, label %TaintCheck.succeeded, label %if.end.i287

if.end.i287:                                      ; preds = %if.end67
  %SandMem.TaintCheck.i286 = icmp ult i64 %154, %153
  br i1 %SandMem.TaintCheck.i286, label %TaintCheck.succeeded.i290, label %wasm.trap.fail.i288

wasm.trap.fail.i288:                              ; preds = %if.end.i287
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i290:                        ; preds = %if.end.i287
  %156 = load i64, i64* @sbxHeap, align 8
  %157 = add i64 %156, %154
  %158 = inttoptr i64 %157 to i64*
  store i64 0, i64* %158, align 4, !tbaa !17
  %159 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i289 = icmp ult i64 %154, %159
  br i1 %SandMem.TaintCheck1.i289, label %TaintCheck.succeeded10.i, label %wasm.trap.fail2.i291

wasm.trap.fail2.i291:                             ; preds = %TaintCheck.succeeded.i290
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded10.i:                         ; preds = %TaintCheck.succeeded.i290
  %160 = load i64, i64* @sbxHeap, align 8
  %161 = add i64 %160, %154
  %162 = inttoptr i64 %161 to %Tstruct.json_value_t_t*
  %type.i292 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %162, i64 0, i32 1
  store i32 2, i32* %type.i292, align 8, !tbaa !24
  %value.i293 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %162, i64 0, i32 2
  %163 = ptrtoint %Tstruct.json_value_value_t_t* %value.i293 to i64
  %164 = and i64 %163, 4294967295
  %SandMem.TaintCheck11.i = icmp ult i64 %164, %159
  br i1 %SandMem.TaintCheck11.i, label %json_value_init_string_no_copy.exit, label %wasm.trap.fail12.i

wasm.trap.fail12.i:                               ; preds = %TaintCheck.succeeded10.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_string_no_copy.exit:              ; preds = %TaintCheck.succeeded10.i
  %165 = add i64 %164, %160
  %166 = inttoptr i64 %165 to i64*
  store i64 %149, i64* %166, align 4, !tbaa !26
  %167 = inttoptr i64 %154 to %Tstruct.json_value_t_t*
  %cmp70 = icmp eq i64 %154, 0
  br i1 %cmp70, label %TaintCheck.succeeded, label %cleanup

TaintCheck.succeeded:                             ; preds = %if.end67, %json_value_init_string_no_copy.exit
  %168 = phi %Tstruct.json_value_t_t* [ %167, %json_value_init_string_no_copy.exit ], [ null, %if.end67 ]
  %add.ptr = getelementptr inbounds i8, i8* %150, i64 1
  %169 = ptrtoint i8* %add.ptr to i64
  %170 = trunc i64 %169 to i32
  %IsoHeap.upper.not = icmp ugt i32 %151, %170
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed78, label %IsoHeap.success

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded
  %171 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %149, %171
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded80, label %wasm.trap.fail

TaintCheck.failed78:                              ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail:                                   ; preds = %IsoHeap.success
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded80:                           ; preds = %IsoHeap.success
  %172 = load i64, i64* @sbxHeap, align 8
  %173 = add i64 %172, %149
  %174 = inttoptr i64 %173 to i8*
  tail call void @t_free(i8* %174) #16
  %175 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %175, i64* @sbxHeapRange, align 8
  br label %cleanup

sw.bb82:                                          ; preds = %json_value_get_type.exit
  %call.i197 = tail call i8* @t_malloc(i64 56) #16
  %176 = ptrtoint i8* %call.i197 to i64
  %177 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %177, i64* @sbxHeapRange, align 8
  %178 = and i64 %176, 4294967295
  %179 = trunc i64 %176 to i32
  %tobool.not.i198 = icmp eq i32 %179, 0
  br i1 %tobool.not.i198, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %sw.bb82
  %SandMem.TaintCheck.i199 = icmp ult i64 %178, %177
  br i1 %SandMem.TaintCheck.i199, label %TaintCheck.succeeded.i201, label %wasm.trap.fail.i200

wasm.trap.fail.i200:                              ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i201:                        ; preds = %if.end.i
  %180 = load i64, i64* @sbxHeap, align 8
  %181 = add i64 %180, %178
  %182 = inttoptr i64 %181 to i64*
  store i64 0, i64* %182, align 4, !tbaa !17
  %183 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i = icmp ult i64 %178, %183
  br i1 %SandMem.TaintCheck1.i, label %TaintCheck.succeeded5.i, label %wasm.trap.fail2.i

wasm.trap.fail2.i:                                ; preds = %TaintCheck.succeeded.i201
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded5.i:                          ; preds = %TaintCheck.succeeded.i201
  %184 = load i64, i64* @sbxHeap, align 8
  %185 = add i64 %184, %178
  %186 = inttoptr i64 %185 to %Tstruct.json_value_t_t*
  %type.i202 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %186, i64 0, i32 1
  store i32 1, i32* %type.i202, align 8, !tbaa !24
  %phi.cast = inttoptr i64 %178 to %Tstruct.json_value_t_t*
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i234, %cond.true.i165, %cond.true.i234.preheader, %cond.true.i165.preheader, %json_value_get_object.exit231, %json_value_get_array.exit159, %TaintCheck.succeeded5.i, %sw.bb82, %TaintCheck.succeeded18.i, %json_value_get_number.exit, %TaintCheck.succeeded16.i, %json_value_get_boolean.exit, %entry, %json_value_get_type.exit, %json_value_init_string_no_copy.exit, %TaintCheck.succeeded80, %tainted_parson_strdup.exit, %json_value_get_string.exit, %json_value_get_object.exit, %json_value_get_array.exit, %if.then44, %if.then40, %if.then17, %if.then13
  %retval.0 = phi %Tstruct.json_value_t_t* [ null, %if.then40 ], [ null, %if.then44 ], [ null, %if.then13 ], [ null, %if.then17 ], [ null, %json_value_get_array.exit ], [ null, %json_value_get_object.exit ], [ null, %json_value_get_string.exit ], [ null, %tainted_parson_strdup.exit ], [ %168, %TaintCheck.succeeded80 ], [ %167, %json_value_init_string_no_copy.exit ], [ null, %json_value_get_type.exit ], [ null, %entry ], [ %phi.cast329, %TaintCheck.succeeded16.i ], [ null, %json_value_get_boolean.exit ], [ %phi.cast327, %TaintCheck.succeeded18.i ], [ null, %json_value_get_number.exit ], [ %phi.cast, %TaintCheck.succeeded5.i ], [ null, %sw.bb82 ], [ %15, %json_value_get_array.exit159 ], [ %54, %json_value_get_object.exit231 ], [ %15, %cond.true.i165.preheader ], [ %54, %cond.true.i234.preheader ], [ %15, %cond.true.i165 ], [ %54, %cond.true.i234 ]
  ret %Tstruct.json_value_t_t* %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @json_array_add(%Tstruct.json_array_t_t* %array, %Tstruct.json_value_t_t* %value) unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_array_t_t*
  %3 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %4 = and i64 %3, 4294967295
  %5 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %5
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %entry
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = add i64 %6, %1
  %8 = inttoptr i64 %7 to %Tstruct.json_array_t_t*
  %count = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %8, i64 0, i32 2
  %9 = load i64, i64* %count, align 8, !tbaa !28
  %capacity = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %8, i64 0, i32 3
  %10 = load i64, i64* %capacity, align 8, !tbaa !52
  %cmp.not = icmp ult i64 %9, %10
  br i1 %cmp.not, label %if.end22, label %TaintCheck.succeeded10

TaintCheck.succeeded10:                           ; preds = %TaintCheck.succeeded
  %mul = shl i64 %10, 1
  %cmp12 = icmp ugt i64 %mul, 16
  %cond = select i1 %cmp12, i64 %mul, i64 16
  %call = tail call fastcc i32 @json_array_resize(%Tstruct.json_array_t_t* %2, i64 %cond)
  %cmp20 = icmp eq i32 %call, -1
  br i1 %cmp20, label %return, label %TaintCheck.succeeded10.if.end22_crit_edge

TaintCheck.succeeded10.if.end22_crit_edge:        ; preds = %TaintCheck.succeeded10
  %.pre = load i64, i64* @sbxHeapRange, align 8
  br label %if.end22

if.end22:                                         ; preds = %TaintCheck.succeeded10.if.end22_crit_edge, %TaintCheck.succeeded
  %11 = phi i64 [ %.pre, %TaintCheck.succeeded10.if.end22_crit_edge ], [ %5, %TaintCheck.succeeded ]
  %SandMem.TaintCheck.i = icmp ult i64 %1, %11
  br i1 %SandMem.TaintCheck.i, label %json_array_get_wrapping_value.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end22
  tail call void @llvm.trap() #16
  unreachable

json_array_get_wrapping_value.exit:               ; preds = %if.end22
  %12 = load i64, i64* @sbxHeap, align 8
  %SandMem.TaintCheck24 = icmp ult i64 %4, %11
  br i1 %SandMem.TaintCheck24, label %TaintCheck.succeeded28, label %wasm.trap.fail25

wasm.trap.fail25:                                 ; preds = %json_array_get_wrapping_value.exit
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded28:                           ; preds = %json_array_get_wrapping_value.exit
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to %Tstruct.json_array_t_t*
  %wrapping_value.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %14, i64 0, i32 0
  %15 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %wrapping_value.i, align 4, !tbaa !50
  %16 = add i64 %12, %4
  %17 = ptrtoint %Tstruct.json_value_t_t* %15 to i64
  %18 = and i64 %17, 4294967295
  %19 = inttoptr i64 %16 to i64*
  store i64 %18, i64* %19, align 4, !tbaa !17
  %20 = load i64, i64* @sbxHeap, align 8
  %21 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck29 = icmp ult i64 %1, %21
  br i1 %SandMem.TaintCheck29, label %TaintCheck.succeeded33, label %wasm.trap.fail30

wasm.trap.fail30:                                 ; preds = %TaintCheck.succeeded28
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded33:                           ; preds = %TaintCheck.succeeded28
  %22 = add i64 %20, %1
  %23 = inttoptr i64 %22 to %Tstruct.json_array_t_t*
  %items = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %23, i64 0, i32 1
  %24 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items, align 4, !tbaa !30
  %25 = ptrtoint %Tstruct.json_value_t_t** %24 to i64
  %26 = and i64 %25, 4294967295
  %SandMem.TaintCheck40 = icmp ult i64 %26, %21
  br i1 %SandMem.TaintCheck40, label %TaintCheck.succeeded44, label %wasm.trap.fail41

wasm.trap.fail41:                                 ; preds = %TaintCheck.succeeded33
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded44:                           ; preds = %TaintCheck.succeeded33
  %27 = add i64 %26, %20
  %count39 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %23, i64 0, i32 2
  %28 = load i64, i64* %count39, align 8, !tbaa !28
  %29 = inttoptr i64 %27 to %Tstruct.json_value_t_t**
  %arrayidx = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %29, i64 %28
  %30 = bitcast %Tstruct.json_value_t_t** %arrayidx to i64*
  store i64 %4, i64* %30, align 4, !tbaa !15
  %31 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck45 = icmp ult i64 %1, %31
  br i1 %SandMem.TaintCheck45, label %TaintCheck.succeeded49, label %wasm.trap.fail46

wasm.trap.fail46:                                 ; preds = %TaintCheck.succeeded44
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded49:                           ; preds = %TaintCheck.succeeded44
  %32 = load i64, i64* @sbxHeap, align 8
  %33 = add i64 %32, %1
  %34 = inttoptr i64 %33 to %Tstruct.json_array_t_t*
  %count50 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %34, i64 0, i32 2
  %35 = load i64, i64* %count50, align 8, !tbaa !28
  %inc = add i64 %35, 1
  store i64 %inc, i64* %count50, align 8, !tbaa !28
  br label %return

return:                                           ; preds = %TaintCheck.succeeded10, %TaintCheck.succeeded49
  %retval.1 = phi i32 [ 0, %TaintCheck.succeeded49 ], [ -1, %TaintCheck.succeeded10 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local i64 @json_serialization_size(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 65) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = inttoptr i64 %2 to i8*
  %4 = trunc i64 %0 to i32
  %cmp1.not.i = icmp eq i32 %4, 0
  br i1 %cmp1.not.i, label %string_tainted_malloc.exit, label %if.then2.i

if.then2.i:                                       ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.then2.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.then2.i
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to i8*
  %arrayidx.i = getelementptr inbounds i8, i8* %7, i64 64
  %8 = ptrtoint i8* %arrayidx.i to i64
  %9 = trunc i64 %8 to i32
  %add.ptr.i = getelementptr inbounds i8, i8* %3, i64 65
  %10 = ptrtoint i8* %add.ptr.i to i64
  %11 = trunc i64 %10 to i32
  %IsoHeap.lower.i = icmp ule i32 %4, %9
  %IsoHeap.upper.i = icmp ult i32 %9, %11
  %IsoHeap.range.i = and i1 %IsoHeap.lower.i, %IsoHeap.upper.i
  br i1 %IsoHeap.range.i, label %TaintCheck.succeeded9.i, label %TaintCheck.failed8.i

TaintCheck.succeeded9.i:                          ; preds = %TaintCheck.succeeded.i
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !2
  br label %string_tainted_malloc.exit

TaintCheck.failed8.i:                             ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #17
  unreachable

string_tainted_malloc.exit:                       ; preds = %entry, %TaintCheck.succeeded9.i
  %12 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %13 = and i64 %12, 4294967295
  %14 = inttoptr i64 %13 to %Tstruct.json_value_t_t*
  %call1 = tail call i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %14, i8* null, i32 0, i32 0, i8* %3, i8* null, i64 0)
  %cmp = icmp slt i32 %call1, 0
  %add = add nsw i32 %call1, 1
  %narrow = select i1 %cmp, i32 0, i32 %add
  %cond = sext i32 %narrow to i64
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_serialize_to_buffer(%Tstruct.json_value_t_t* %value, i8* %buf, i64 %buf_size_in_bytes) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_value_t_t*
  %3 = ptrtoint i8* %buf to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call.i.i = tail call i8* @t_malloc(i64 65) #16
  %6 = ptrtoint i8* %call.i.i to i64
  %7 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %7, i64* @sbxHeapRange, align 8
  %8 = and i64 %6, 4294967295
  %9 = inttoptr i64 %8 to i8*
  %10 = trunc i64 %6 to i32
  %cmp1.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp1.not.i.i, label %json_serialization_size.exit, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %entry
  %SandMem.TaintCheck.i.i = icmp ult i64 %8, %7
  br i1 %SandMem.TaintCheck.i.i, label %TaintCheck.succeeded.i.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %if.then2.i.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i.i:                         ; preds = %if.then2.i.i
  %11 = load i64, i64* @sbxHeap, align 8
  %12 = add i64 %11, %8
  %13 = inttoptr i64 %12 to i8*
  %arrayidx.i.i = getelementptr inbounds i8, i8* %13, i64 64
  %14 = ptrtoint i8* %arrayidx.i.i to i64
  %15 = trunc i64 %14 to i32
  %add.ptr.i.i = getelementptr inbounds i8, i8* %9, i64 65
  %16 = ptrtoint i8* %add.ptr.i.i to i64
  %17 = trunc i64 %16 to i32
  %IsoHeap.lower.i.i = icmp ule i32 %10, %15
  %IsoHeap.upper.i.i = icmp ult i32 %15, %17
  %IsoHeap.range.i.i = and i1 %IsoHeap.lower.i.i, %IsoHeap.upper.i.i
  br i1 %IsoHeap.range.i.i, label %TaintCheck.succeeded9.i.i, label %TaintCheck.failed8.i.i

TaintCheck.succeeded9.i.i:                        ; preds = %TaintCheck.succeeded.i.i
  store i8 0, i8* %arrayidx.i.i, align 1, !tbaa !2
  br label %json_serialization_size.exit

TaintCheck.failed8.i.i:                           ; preds = %TaintCheck.succeeded.i.i
  tail call void @llvm.trap() #17
  unreachable

json_serialization_size.exit:                     ; preds = %entry, %TaintCheck.succeeded9.i.i
  %call1.i = tail call i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %2, i8* null, i32 0, i32 0, i8* %9, i8* null, i64 0) #16
  %cmp.i = icmp slt i32 %call1.i, 0
  %add.i = add nsw i32 %call1.i, 1
  %narrow.i = select i1 %cmp.i, i32 0, i32 %add.i
  %cond.i = sext i32 %narrow.i to i64
  %cmp = icmp eq i32 %narrow.i, 0
  %cmp1 = icmp ugt i64 %cond.i, %buf_size_in_bytes
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %json_serialization_size.exit
  %call2 = tail call i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %2, i8* %5, i32 0, i32 0, i8* null, i8* %5, i64 %buf_size_in_bytes)
  %cmp3 = icmp slt i32 %call2, 0
  %18 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %4, %18
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.then4
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.then4
  %19 = load i64, i64* @sbxHeap, align 8
  %20 = add i64 %19, %4
  %21 = inttoptr i64 %20 to i8*
  store i8 0, i8* %21, align 4, !tbaa !2
  br label %cleanup

if.end5:                                          ; preds = %if.end
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded10, label %wasm.trap.fail7

wasm.trap.fail7:                                  ; preds = %if.end5
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded10:                           ; preds = %if.end5
  %22 = load i64, i64* @sbxHeap, align 8
  %23 = add i64 %22, %4
  %idxprom22 = zext i32 %call2 to i64
  %24 = inttoptr i64 %23 to i8*
  %arrayidx11 = getelementptr inbounds i8, i8* %24, i64 %idxprom22
  store i8 0, i8* %arrayidx11, align 1, !tbaa !2
  br label %cleanup

cleanup:                                          ; preds = %json_serialization_size.exit, %TaintCheck.succeeded10, %TaintCheck.succeeded
  %retval.0 = phi i32 [ -1, %TaintCheck.succeeded ], [ 0, %TaintCheck.succeeded10 ], [ -1, %json_serialization_size.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_serialize_to_buffer_pretty(%Tstruct.json_value_t_t* %value, i8* %buf, i64 %buf_size_in_bytes) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_value_t_t*
  %3 = ptrtoint i8* %buf to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call.i.i = tail call i8* @t_malloc(i64 65) #16
  %6 = ptrtoint i8* %call.i.i to i64
  %7 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %7, i64* @sbxHeapRange, align 8
  %8 = and i64 %6, 4294967295
  %9 = inttoptr i64 %8 to i8*
  %10 = trunc i64 %6 to i32
  %cmp1.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp1.not.i.i, label %json_serialization_size_pretty.exit, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %entry
  %SandMem.TaintCheck.i.i = icmp ult i64 %8, %7
  br i1 %SandMem.TaintCheck.i.i, label %TaintCheck.succeeded.i.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %if.then2.i.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i.i:                         ; preds = %if.then2.i.i
  %11 = load i64, i64* @sbxHeap, align 8
  %12 = add i64 %11, %8
  %13 = inttoptr i64 %12 to i8*
  %arrayidx.i.i = getelementptr inbounds i8, i8* %13, i64 64
  %14 = ptrtoint i8* %arrayidx.i.i to i64
  %15 = trunc i64 %14 to i32
  %add.ptr.i.i = getelementptr inbounds i8, i8* %9, i64 65
  %16 = ptrtoint i8* %add.ptr.i.i to i64
  %17 = trunc i64 %16 to i32
  %IsoHeap.lower.i.i = icmp ule i32 %10, %15
  %IsoHeap.upper.i.i = icmp ult i32 %15, %17
  %IsoHeap.range.i.i = and i1 %IsoHeap.lower.i.i, %IsoHeap.upper.i.i
  br i1 %IsoHeap.range.i.i, label %TaintCheck.succeeded9.i.i, label %TaintCheck.failed8.i.i

TaintCheck.succeeded9.i.i:                        ; preds = %TaintCheck.succeeded.i.i
  store i8 0, i8* %arrayidx.i.i, align 1, !tbaa !2
  br label %json_serialization_size_pretty.exit

TaintCheck.failed8.i.i:                           ; preds = %TaintCheck.succeeded.i.i
  tail call void @llvm.trap() #17
  unreachable

json_serialization_size_pretty.exit:              ; preds = %entry, %TaintCheck.succeeded9.i.i
  %call1.i = tail call i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %2, i8* null, i32 0, i32 1, i8* %9, i8* null, i64 0) #16
  %cmp.i = icmp slt i32 %call1.i, 0
  %add.i = add nsw i32 %call1.i, 1
  %narrow.i = select i1 %cmp.i, i32 0, i32 %add.i
  %cond.i = sext i32 %narrow.i to i64
  %cmp = icmp eq i32 %narrow.i, 0
  %cmp1 = icmp ugt i64 %cond.i, %buf_size_in_bytes
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %json_serialization_size_pretty.exit
  %call2 = tail call i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %2, i8* %5, i32 0, i32 1, i8* null, i8* %5, i64 %buf_size_in_bytes)
  %cmp3 = icmp slt i32 %call2, 0
  %18 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %4, %18
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.then4
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.then4
  %19 = load i64, i64* @sbxHeap, align 8
  %20 = add i64 %19, %4
  %21 = inttoptr i64 %20 to i8*
  store i8 0, i8* %21, align 4, !tbaa !2
  br label %cleanup

if.end5:                                          ; preds = %if.end
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded10, label %wasm.trap.fail7

wasm.trap.fail7:                                  ; preds = %if.end5
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded10:                           ; preds = %if.end5
  %22 = load i64, i64* @sbxHeap, align 8
  %23 = add i64 %22, %4
  %idxprom22 = zext i32 %call2 to i64
  %24 = inttoptr i64 %23 to i8*
  %arrayidx11 = getelementptr inbounds i8, i8* %24, i64 %idxprom22
  store i8 0, i8* %arrayidx11, align 1, !tbaa !2
  br label %cleanup

cleanup:                                          ; preds = %json_serialization_size_pretty.exit, %TaintCheck.succeeded10, %TaintCheck.succeeded
  %retval.0 = phi i32 [ -1, %TaintCheck.succeeded ], [ 0, %TaintCheck.succeeded10 ], [ -1, %json_serialization_size_pretty.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @json_serialization_size_pretty(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 65) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = inttoptr i64 %2 to i8*
  %4 = trunc i64 %0 to i32
  %cmp1.not.i = icmp eq i32 %4, 0
  br i1 %cmp1.not.i, label %string_tainted_malloc.exit, label %if.then2.i

if.then2.i:                                       ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.then2.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.then2.i
  %5 = load i64, i64* @sbxHeap, align 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to i8*
  %arrayidx.i = getelementptr inbounds i8, i8* %7, i64 64
  %8 = ptrtoint i8* %arrayidx.i to i64
  %9 = trunc i64 %8 to i32
  %add.ptr.i = getelementptr inbounds i8, i8* %3, i64 65
  %10 = ptrtoint i8* %add.ptr.i to i64
  %11 = trunc i64 %10 to i32
  %IsoHeap.lower.i = icmp ule i32 %4, %9
  %IsoHeap.upper.i = icmp ult i32 %9, %11
  %IsoHeap.range.i = and i1 %IsoHeap.lower.i, %IsoHeap.upper.i
  br i1 %IsoHeap.range.i, label %TaintCheck.succeeded9.i, label %TaintCheck.failed8.i

TaintCheck.succeeded9.i:                          ; preds = %TaintCheck.succeeded.i
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !2
  br label %string_tainted_malloc.exit

TaintCheck.failed8.i:                             ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #17
  unreachable

string_tainted_malloc.exit:                       ; preds = %entry, %TaintCheck.succeeded9.i
  %12 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %13 = and i64 %12, 4294967295
  %14 = inttoptr i64 %13 to %Tstruct.json_value_t_t*
  %call1 = tail call i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %14, i8* null, i32 0, i32 1, i8* %3, i8* null, i64 0)
  %cmp = icmp slt i32 %call1, 0
  %add = add nsw i32 %call1, 1
  %narrow = select i1 %cmp, i32 0, i32 %add
  %cond = sext i32 %narrow to i64
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define dso_local i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_value_t_t*
  %call.i.i = tail call i8* @t_malloc(i64 65) #16
  %3 = ptrtoint i8* %call.i.i to i64
  %4 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %4, i64* @sbxHeapRange, align 8
  %5 = and i64 %3, 4294967295
  %6 = inttoptr i64 %5 to i8*
  %7 = trunc i64 %3 to i32
  %cmp1.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp1.not.i.i, label %json_serialization_size.exit, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %entry
  %SandMem.TaintCheck.i.i = icmp ult i64 %5, %4
  br i1 %SandMem.TaintCheck.i.i, label %TaintCheck.succeeded.i.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %if.then2.i.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i.i:                         ; preds = %if.then2.i.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to i8*
  %arrayidx.i.i = getelementptr inbounds i8, i8* %10, i64 64
  %11 = ptrtoint i8* %arrayidx.i.i to i64
  %12 = trunc i64 %11 to i32
  %add.ptr.i.i = getelementptr inbounds i8, i8* %6, i64 65
  %13 = ptrtoint i8* %add.ptr.i.i to i64
  %14 = trunc i64 %13 to i32
  %IsoHeap.lower.i.i = icmp ule i32 %7, %12
  %IsoHeap.upper.i.i = icmp ult i32 %12, %14
  %IsoHeap.range.i.i = and i1 %IsoHeap.lower.i.i, %IsoHeap.upper.i.i
  br i1 %IsoHeap.range.i.i, label %TaintCheck.succeeded9.i.i, label %TaintCheck.failed8.i.i

TaintCheck.succeeded9.i.i:                        ; preds = %TaintCheck.succeeded.i.i
  store i8 0, i8* %arrayidx.i.i, align 1, !tbaa !2
  br label %json_serialization_size.exit

TaintCheck.failed8.i.i:                           ; preds = %TaintCheck.succeeded.i.i
  tail call void @llvm.trap() #17
  unreachable

json_serialization_size.exit:                     ; preds = %entry, %TaintCheck.succeeded9.i.i
  %call1.i = tail call i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %2, i8* null, i32 0, i32 0, i8* %6, i8* null, i64 0) #16
  %cmp.i = icmp slt i32 %call1.i, 0
  %add.i = add nsw i32 %call1.i, 1
  %narrow.i = select i1 %cmp.i, i32 0, i32 %add.i
  %cond.i = sext i32 %narrow.i to i64
  switch i64 %cond.i, label %if.end.i [
    i64 0, label %cleanup
    i64 -1, label %string_tainted_malloc.exit
  ]

if.end.i:                                         ; preds = %json_serialization_size.exit
  %add.i21 = add nuw nsw i64 %cond.i, 1
  %call.i = tail call i8* @t_malloc(i64 %add.i21) #16
  %15 = ptrtoint i8* %call.i to i64
  %16 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %16, i64* @sbxHeapRange, align 8
  %17 = and i64 %15, 4294967295
  %18 = inttoptr i64 %17 to i8*
  %19 = trunc i64 %15 to i32
  %cmp1.not.i = icmp eq i32 %19, 0
  br i1 %cmp1.not.i, label %string_tainted_malloc.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %SandMem.TaintCheck.i = icmp ult i64 %17, %16
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.then2.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.then2.i
  %20 = load i64, i64* @sbxHeap, align 8
  %21 = add i64 %20, %17
  %22 = inttoptr i64 %21 to i8*
  %arrayidx.i = getelementptr inbounds i8, i8* %22, i64 %cond.i
  %23 = ptrtoint i8* %arrayidx.i to i64
  %24 = trunc i64 %23 to i32
  %add.ptr.i = getelementptr inbounds i8, i8* %18, i64 %add.i21
  %25 = ptrtoint i8* %add.ptr.i to i64
  %26 = trunc i64 %25 to i32
  %IsoHeap.lower.i = icmp ule i32 %19, %24
  %IsoHeap.upper.i = icmp ult i32 %24, %26
  %IsoHeap.range.i = and i1 %IsoHeap.lower.i, %IsoHeap.upper.i
  br i1 %IsoHeap.range.i, label %TaintCheck.succeeded9.i, label %TaintCheck.failed8.i

TaintCheck.succeeded9.i:                          ; preds = %TaintCheck.succeeded.i
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !2
  br label %string_tainted_malloc.exit

TaintCheck.failed8.i:                             ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #17
  unreachable

string_tainted_malloc.exit:                       ; preds = %json_serialization_size.exit, %if.end.i, %TaintCheck.succeeded9.i
  %retval.0.i = phi i8* [ %18, %TaintCheck.succeeded9.i ], [ %18, %if.end.i ], [ null, %json_serialization_size.exit ]
  %27 = ptrtoint i8* %retval.0.i to i64
  %28 = and i64 %27, 4294967295
  %29 = inttoptr i64 %28 to i8*
  %30 = trunc i64 %27 to i32
  %cmp2 = icmp eq i32 %30, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %string_tainted_malloc.exit
  %call5 = tail call i32 @json_serialize_to_buffer(%Tstruct.json_value_t_t* %2, i8* %29, i64 %cond.i)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %TaintCheck.succeeded.i23, label %cleanup

TaintCheck.succeeded.i23:                         ; preds = %if.end4
  %add.ptr.i22 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = ptrtoint i8* %add.ptr.i22 to i64
  %32 = trunc i64 %31 to i32
  %IsoHeap.upper.not.i = icmp ugt i32 %30, %32
  br i1 %IsoHeap.upper.not.i, label %TaintCheck.failed6.i, label %IsoHeap.success.i

IsoHeap.success.i:                                ; preds = %TaintCheck.succeeded.i23
  %33 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i24 = icmp ult i64 %28, %33
  br i1 %SandMem.TaintCheck.i24, label %json_free_serialized_string.exit, label %wasm.trap.fail.i25

TaintCheck.failed6.i:                             ; preds = %TaintCheck.succeeded.i23
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail.i25:                               ; preds = %IsoHeap.success.i
  tail call void @llvm.trap() #16
  unreachable

json_free_serialized_string.exit:                 ; preds = %IsoHeap.success.i
  %34 = load i64, i64* @sbxHeap, align 8
  %35 = add i64 %34, %28
  %36 = inttoptr i64 %35 to i8*
  tail call void @t_free(i8* %36) #16
  %37 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %37, i64* @sbxHeapRange, align 8
  br label %cleanup

cleanup:                                          ; preds = %json_serialization_size.exit, %if.end4, %string_tainted_malloc.exit, %json_free_serialized_string.exit
  %retval.0 = phi i8* [ null, %json_free_serialized_string.exit ], [ null, %json_serialization_size.exit ], [ null, %string_tainted_malloc.exit ], [ %29, %if.end4 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @json_free_serialized_string(i8* %string) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %string to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %IsoHeap.is_null = icmp eq i32 %2, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %TaintCheck.succeeded

TaintCheck.succeeded:                             ; preds = %entry
  %3 = inttoptr i64 %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %4 = ptrtoint i8* %add.ptr to i64
  %5 = trunc i64 %4 to i32
  %IsoHeap.upper.not = icmp ugt i32 %2, %5
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed6, label %IsoHeap.success

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded, %entry
  %6 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %6
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded8, label %wasm.trap.fail

TaintCheck.failed6:                               ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail:                                   ; preds = %IsoHeap.success
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded8:                            ; preds = %IsoHeap.success
  %7 = load i64, i64* @sbxHeap, align 8
  %8 = add i64 %7, %1
  %9 = inttoptr i64 %8 to i8*
  tail call void @t_free(i8* %9) #16
  %10 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %10, i64* @sbxHeapRange, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_serialize_to_file_pretty(%Tstruct.json_value_t_t* %value, i8* nocapture readonly %filename) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_value_t_t*
  %call = tail call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %2)
  %3 = ptrtoint i8* %call to i64
  %4 = and i64 %3, 4294967295
  %5 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %4, %5
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %entry
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %entry
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = add i64 %6, %4
  %8 = inttoptr i64 %7 to i8*
  %call1 = tail call i64 @t_strlen(i8* %8) #16
  %sext = shl i64 %call1, 32
  %conv2 = ashr exact i64 %sext, 32
  %cmp.i = icmp eq i64 %sext, -4294967296
  br i1 %cmp.i, label %parson_string_malloc.exit, label %if.end.i

if.end.i:                                         ; preds = %TaintCheck.succeeded
  %add.i = add nuw nsw i64 %conv2, 1
  %call.i = tail call noalias i8* @malloc(i64 %add.i) #16
  %9 = ptrtoint i8* %call.i to i64
  %10 = trunc i64 %9 to i32
  %cmp1.not.i = icmp eq i32 %10, 0
  br i1 %cmp1.not.i, label %parson_string_malloc.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr inbounds i8, i8* %call.i, i64 %conv2
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !2
  br label %parson_string_malloc.exit

parson_string_malloc.exit:                        ; preds = %TaintCheck.succeeded, %if.end.i, %if.then2.i
  %retval.0.i = phi i8* [ null, %TaintCheck.succeeded ], [ %call.i, %if.then2.i ], [ %call.i, %if.end.i ]
  %11 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck4 = icmp ult i64 %4, %11
  br i1 %SandMem.TaintCheck4, label %TaintCheck.succeeded8, label %wasm.trap.fail5

wasm.trap.fail5:                                  ; preds = %parson_string_malloc.exit
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded8:                            ; preds = %parson_string_malloc.exit
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = add i64 %12, %4
  %14 = inttoptr i64 %13 to i8*
  %call9 = tail call i8* @t_strcpy(i8* %retval.0.i, i8* %14) #16
  %15 = trunc i64 %3 to i32
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %TaintCheck.succeeded8
  %call12 = tail call noalias %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0))
  %16 = ptrtoint %struct._IO_FILE* %call12 to i64
  %17 = trunc i64 %16 to i32
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %TaintCheck.succeeded.i, label %TaintCheck.succeeded.i84

TaintCheck.succeeded.i:                           ; preds = %if.end
  %18 = inttoptr i64 %4 to i8*
  %add.ptr.i = getelementptr inbounds i8, i8* %18, i64 1
  %19 = ptrtoint i8* %add.ptr.i to i64
  %20 = trunc i64 %19 to i32
  %IsoHeap.upper.not.i = icmp ugt i32 %15, %20
  br i1 %IsoHeap.upper.not.i, label %TaintCheck.failed6.i, label %IsoHeap.success.i

IsoHeap.success.i:                                ; preds = %TaintCheck.succeeded.i
  %21 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %4, %21
  br i1 %SandMem.TaintCheck.i, label %cleanup.sink.split, label %wasm.trap.fail.i

TaintCheck.failed6.i:                             ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail.i:                                 ; preds = %IsoHeap.success.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i84:                         ; preds = %if.end
  %call28 = tail call i32 @fputs(i8* %retval.0.i, %struct._IO_FILE* %call12)
  %call33 = tail call i32 @fclose(%struct._IO_FILE* %call12)
  %22 = inttoptr i64 %4 to i8*
  %add.ptr.i82 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = ptrtoint i8* %add.ptr.i82 to i64
  %24 = trunc i64 %23 to i32
  %IsoHeap.upper.not.i83 = icmp ugt i32 %15, %24
  br i1 %IsoHeap.upper.not.i83, label %TaintCheck.failed6.i87, label %IsoHeap.success.i86

IsoHeap.success.i86:                              ; preds = %TaintCheck.succeeded.i84
  %cmp29 = icmp eq i32 %call28, -1
  %cmp34 = icmp eq i32 %call33, -1
  %narrow = or i1 %cmp29, %cmp34
  %return_code.1 = sext i1 %narrow to i32
  %25 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i85 = icmp ult i64 %4, %25
  br i1 %SandMem.TaintCheck.i85, label %cleanup.sink.split, label %wasm.trap.fail.i88

TaintCheck.failed6.i87:                           ; preds = %TaintCheck.succeeded.i84
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail.i88:                               ; preds = %IsoHeap.success.i86
  tail call void @llvm.trap() #16
  unreachable

cleanup.sink.split:                               ; preds = %IsoHeap.success.i86, %IsoHeap.success.i
  %retval.0.ph = phi i32 [ -1, %IsoHeap.success.i ], [ %return_code.1, %IsoHeap.success.i86 ]
  %26 = load i64, i64* @sbxHeap, align 8
  %27 = add i64 %26, %4
  %28 = inttoptr i64 %27 to i8*
  tail call void @t_free(i8* %28) #16
  %29 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %29, i64* @sbxHeapRange, align 8
  tail call void @free(i8* %retval.0.i) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %TaintCheck.succeeded8
  %retval.0 = phi i32 [ -1, %TaintCheck.succeeded8 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_value_t_t*
  %call.i.i = tail call i8* @t_malloc(i64 65) #16
  %3 = ptrtoint i8* %call.i.i to i64
  %4 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %4, i64* @sbxHeapRange, align 8
  %5 = and i64 %3, 4294967295
  %6 = inttoptr i64 %5 to i8*
  %7 = trunc i64 %3 to i32
  %cmp1.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp1.not.i.i, label %json_serialization_size_pretty.exit, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %entry
  %SandMem.TaintCheck.i.i = icmp ult i64 %5, %4
  br i1 %SandMem.TaintCheck.i.i, label %TaintCheck.succeeded.i.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %if.then2.i.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i.i:                         ; preds = %if.then2.i.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to i8*
  %arrayidx.i.i = getelementptr inbounds i8, i8* %10, i64 64
  %11 = ptrtoint i8* %arrayidx.i.i to i64
  %12 = trunc i64 %11 to i32
  %add.ptr.i.i = getelementptr inbounds i8, i8* %6, i64 65
  %13 = ptrtoint i8* %add.ptr.i.i to i64
  %14 = trunc i64 %13 to i32
  %IsoHeap.lower.i.i = icmp ule i32 %7, %12
  %IsoHeap.upper.i.i = icmp ult i32 %12, %14
  %IsoHeap.range.i.i = and i1 %IsoHeap.lower.i.i, %IsoHeap.upper.i.i
  br i1 %IsoHeap.range.i.i, label %TaintCheck.succeeded9.i.i, label %TaintCheck.failed8.i.i

TaintCheck.succeeded9.i.i:                        ; preds = %TaintCheck.succeeded.i.i
  store i8 0, i8* %arrayidx.i.i, align 1, !tbaa !2
  br label %json_serialization_size_pretty.exit

TaintCheck.failed8.i.i:                           ; preds = %TaintCheck.succeeded.i.i
  tail call void @llvm.trap() #17
  unreachable

json_serialization_size_pretty.exit:              ; preds = %entry, %TaintCheck.succeeded9.i.i
  %call1.i = tail call i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %2, i8* null, i32 0, i32 1, i8* %6, i8* null, i64 0) #16
  %cmp.i = icmp slt i32 %call1.i, 0
  %add.i = add nsw i32 %call1.i, 1
  %narrow.i = select i1 %cmp.i, i32 0, i32 %add.i
  %cond.i = sext i32 %narrow.i to i64
  switch i64 %cond.i, label %if.end.i [
    i64 0, label %cleanup
    i64 -1, label %string_tainted_malloc.exit
  ]

if.end.i:                                         ; preds = %json_serialization_size_pretty.exit
  %add.i21 = add nuw nsw i64 %cond.i, 1
  %call.i = tail call i8* @t_malloc(i64 %add.i21) #16
  %15 = ptrtoint i8* %call.i to i64
  %16 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %16, i64* @sbxHeapRange, align 8
  %17 = and i64 %15, 4294967295
  %18 = inttoptr i64 %17 to i8*
  %19 = trunc i64 %15 to i32
  %cmp1.not.i = icmp eq i32 %19, 0
  br i1 %cmp1.not.i, label %string_tainted_malloc.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %SandMem.TaintCheck.i = icmp ult i64 %17, %16
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.then2.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.then2.i
  %20 = load i64, i64* @sbxHeap, align 8
  %21 = add i64 %20, %17
  %22 = inttoptr i64 %21 to i8*
  %arrayidx.i = getelementptr inbounds i8, i8* %22, i64 %cond.i
  %23 = ptrtoint i8* %arrayidx.i to i64
  %24 = trunc i64 %23 to i32
  %add.ptr.i = getelementptr inbounds i8, i8* %18, i64 %add.i21
  %25 = ptrtoint i8* %add.ptr.i to i64
  %26 = trunc i64 %25 to i32
  %IsoHeap.lower.i = icmp ule i32 %19, %24
  %IsoHeap.upper.i = icmp ult i32 %24, %26
  %IsoHeap.range.i = and i1 %IsoHeap.lower.i, %IsoHeap.upper.i
  br i1 %IsoHeap.range.i, label %TaintCheck.succeeded9.i, label %TaintCheck.failed8.i

TaintCheck.succeeded9.i:                          ; preds = %TaintCheck.succeeded.i
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !2
  br label %string_tainted_malloc.exit

TaintCheck.failed8.i:                             ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #17
  unreachable

string_tainted_malloc.exit:                       ; preds = %json_serialization_size_pretty.exit, %if.end.i, %TaintCheck.succeeded9.i
  %retval.0.i = phi i8* [ %18, %TaintCheck.succeeded9.i ], [ %18, %if.end.i ], [ null, %json_serialization_size_pretty.exit ]
  %27 = ptrtoint i8* %retval.0.i to i64
  %28 = and i64 %27, 4294967295
  %29 = inttoptr i64 %28 to i8*
  %30 = trunc i64 %27 to i32
  %cmp2 = icmp eq i32 %30, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %string_tainted_malloc.exit
  %call5 = tail call i32 @json_serialize_to_buffer_pretty(%Tstruct.json_value_t_t* %2, i8* %29, i64 %cond.i)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %TaintCheck.succeeded.i23, label %cleanup

TaintCheck.succeeded.i23:                         ; preds = %if.end4
  %add.ptr.i22 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = ptrtoint i8* %add.ptr.i22 to i64
  %32 = trunc i64 %31 to i32
  %IsoHeap.upper.not.i = icmp ugt i32 %30, %32
  br i1 %IsoHeap.upper.not.i, label %TaintCheck.failed6.i, label %IsoHeap.success.i

IsoHeap.success.i:                                ; preds = %TaintCheck.succeeded.i23
  %33 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i24 = icmp ult i64 %28, %33
  br i1 %SandMem.TaintCheck.i24, label %json_free_serialized_string.exit, label %wasm.trap.fail.i25

TaintCheck.failed6.i:                             ; preds = %TaintCheck.succeeded.i23
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail.i25:                               ; preds = %IsoHeap.success.i
  tail call void @llvm.trap() #16
  unreachable

json_free_serialized_string.exit:                 ; preds = %IsoHeap.success.i
  %34 = load i64, i64* @sbxHeap, align 8
  %35 = add i64 %34, %28
  %36 = inttoptr i64 %35 to i8*
  tail call void @t_free(i8* %36) #16
  %37 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %37, i64* @sbxHeapRange, align 8
  br label %cleanup

cleanup:                                          ; preds = %json_serialization_size_pretty.exit, %if.end4, %string_tainted_malloc.exit, %json_free_serialized_string.exit
  %retval.0 = phi i8* [ null, %json_free_serialized_string.exit ], [ null, %json_serialization_size_pretty.exit ], [ null, %string_tainted_malloc.exit ], [ %29, %if.end4 ]
  ret i8* %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_remove(%Tstruct.json_array_t_t* %array, i64 %ix) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cleanup, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %json_array_get_count.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit:                        ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_array_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 2
  %7 = load i64, i64* %count.i, align 8, !tbaa !28
  %cmp1.not = icmp ugt i64 %7, %ix
  br i1 %cmp1.not, label %TaintCheck.succeeded.i54, label %cleanup

TaintCheck.succeeded.i54:                         ; preds = %json_array_get_count.exit
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 1
  %8 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %9 = ptrtoint %Tstruct.json_value_t_t** %8 to i64
  %10 = and i64 %9, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %10, %3
  br i1 %SandMem.TaintCheck2.i, label %cond.true.i48, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i54
  tail call void @llvm.trap() #16
  unreachable

cond.true.i48:                                    ; preds = %TaintCheck.succeeded.i54
  %11 = add i64 %10, %4
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %12, i64 %ix
  %13 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  %phi.cast = ptrtoint %Tstruct.json_value_t_t* %13 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast57 = inttoptr i64 %phi.bo to %Tstruct.json_value_t_t*
  tail call void @json_value_free(%Tstruct.json_value_t_t* %phi.cast57)
  %14 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i47 = icmp ult i64 %1, %14
  br i1 %SandMem.TaintCheck.i47, label %TaintCheck.succeeded, label %wasm.trap.fail.i49

wasm.trap.fail.i49:                               ; preds = %cond.true.i48
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded:                             ; preds = %cond.true.i48
  %15 = load i64, i64* @sbxHeap, align 8
  %16 = add i64 %15, %1
  %17 = inttoptr i64 %16 to %Tstruct.json_array_t_t*
  %count.i50 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %17, i64 0, i32 2
  %18 = load i64, i64* %count.i50, align 8, !tbaa !28
  %19 = xor i64 %ix, -1
  %sub4 = add i64 %18, %19
  %mul = shl i64 %sub4, 3
  %items = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %17, i64 0, i32 1
  %20 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items, align 4, !tbaa !30
  %add.ptr = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %20, i64 %ix
  %21 = ptrtoint %Tstruct.json_value_t_t** %add.ptr to i64
  %22 = and i64 %21, 4294967295
  %SandMem.TaintCheck16 = icmp ult i64 %22, %14
  br i1 %SandMem.TaintCheck16, label %TaintCheck.succeeded20, label %wasm.trap.fail17

wasm.trap.fail17:                                 ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded20:                           ; preds = %TaintCheck.succeeded
  %add.ptr14 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %add.ptr, i64 1
  %23 = ptrtoint %Tstruct.json_value_t_t** %add.ptr14 to i64
  %24 = and i64 %23, 4294967295
  %SandMem.TaintCheck21 = icmp ult i64 %24, %14
  br i1 %SandMem.TaintCheck21, label %TaintCheck.succeeded25, label %wasm.trap.fail22

wasm.trap.fail22:                                 ; preds = %TaintCheck.succeeded20
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded25:                           ; preds = %TaintCheck.succeeded20
  %25 = add i64 %24, %15
  %26 = add i64 %22, %15
  %27 = inttoptr i64 %26 to i8*
  %28 = inttoptr i64 %25 to i8*
  %call26 = tail call i8* @t_memmove(i8* %27, i8* %28, i64 %mul) #16
  %29 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck28 = icmp ult i64 %1, %29
  br i1 %SandMem.TaintCheck28, label %TaintCheck.succeeded32, label %wasm.trap.fail29

wasm.trap.fail29:                                 ; preds = %TaintCheck.succeeded25
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded32:                           ; preds = %TaintCheck.succeeded25
  %30 = load i64, i64* @sbxHeap, align 8
  %31 = add i64 %30, %1
  %32 = inttoptr i64 %31 to %Tstruct.json_array_t_t*
  %count = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %32, i64 0, i32 2
  %33 = load i64, i64* %count, align 8, !tbaa !28
  %sub33 = add i64 %33, -1
  store i64 %sub33, i64* %count, align 8, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %entry, %json_array_get_count.exit, %TaintCheck.succeeded32
  %retval.0 = phi i32 [ 0, %TaintCheck.succeeded32 ], [ -1, %json_array_get_count.exit ], [ -1, %entry ]
  ret i32 %retval.0
}

declare dso_local i8* @t_memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_replace_value(%Tstruct.json_array_t_t* %array, i64 %ix, %Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %3 = and i64 %2, 4294967295
  %4 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %4, 0
  %5 = trunc i64 %2 to i32
  %cmp1 = icmp eq i32 %5, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %6 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %3, %6
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %lor.lhs.false2
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %lor.lhs.false2
  %7 = load i64, i64* @sbxHeap, align 8
  %8 = add i64 %7, %3
  %9 = inttoptr i64 %8 to %Tstruct.json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %9, i64 0, i32 0
  %10 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %parent, align 4, !tbaa !17
  %11 = ptrtoint %Tstruct.json_value_t_t* %10 to i64
  %12 = trunc i64 %11 to i32
  %cmp3.not.not = icmp eq i32 %12, 0
  br i1 %cmp3.not.not, label %cond.true.i, label %return

cond.true.i:                                      ; preds = %TaintCheck.succeeded
  %SandMem.TaintCheck.i = icmp ult i64 %1, %6
  br i1 %SandMem.TaintCheck.i, label %json_array_get_count.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit:                        ; preds = %cond.true.i
  %13 = add i64 %7, %1
  %14 = inttoptr i64 %13 to %Tstruct.json_array_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %14, i64 0, i32 2
  %15 = load i64, i64* %count.i, align 8, !tbaa !28
  %cmp5.not = icmp ugt i64 %15, %ix
  br i1 %cmp5.not, label %TaintCheck.succeeded.i38, label %return

TaintCheck.succeeded.i38:                         ; preds = %json_array_get_count.exit
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %14, i64 0, i32 1
  %16 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %17 = ptrtoint %Tstruct.json_value_t_t** %16 to i64
  %18 = and i64 %17, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %18, %6
  br i1 %SandMem.TaintCheck2.i, label %json_array_get_value.exit, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i38
  tail call void @llvm.trap() #16
  unreachable

json_array_get_value.exit:                        ; preds = %TaintCheck.succeeded.i38
  %19 = add i64 %18, %7
  %20 = inttoptr i64 %19 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %20, i64 %ix
  %21 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  %phi.cast = ptrtoint %Tstruct.json_value_t_t* %21 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast42 = inttoptr i64 %phi.bo to %Tstruct.json_value_t_t*
  tail call void @json_value_free(%Tstruct.json_value_t_t* %phi.cast42)
  %22 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i35 = icmp ult i64 %1, %22
  br i1 %SandMem.TaintCheck.i35, label %json_array_get_wrapping_value.exit, label %wasm.trap.fail.i36

wasm.trap.fail.i36:                               ; preds = %json_array_get_value.exit
  tail call void @llvm.trap() #16
  unreachable

json_array_get_wrapping_value.exit:               ; preds = %json_array_get_value.exit
  %23 = load i64, i64* @sbxHeap, align 8
  %SandMem.TaintCheck9 = icmp ult i64 %3, %22
  br i1 %SandMem.TaintCheck9, label %TaintCheck.succeeded13, label %wasm.trap.fail10

wasm.trap.fail10:                                 ; preds = %json_array_get_wrapping_value.exit
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded13:                           ; preds = %json_array_get_wrapping_value.exit
  %24 = add i64 %23, %1
  %25 = inttoptr i64 %24 to %Tstruct.json_array_t_t*
  %wrapping_value.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %25, i64 0, i32 0
  %26 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %wrapping_value.i, align 4, !tbaa !50
  %27 = add i64 %23, %3
  %28 = ptrtoint %Tstruct.json_value_t_t* %26 to i64
  %29 = and i64 %28, 4294967295
  %30 = inttoptr i64 %27 to i64*
  store i64 %29, i64* %30, align 4, !tbaa !17
  %31 = load i64, i64* @sbxHeap, align 8
  %32 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck15 = icmp ult i64 %1, %32
  br i1 %SandMem.TaintCheck15, label %TaintCheck.succeeded19, label %wasm.trap.fail16

wasm.trap.fail16:                                 ; preds = %TaintCheck.succeeded13
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded19:                           ; preds = %TaintCheck.succeeded13
  %33 = add i64 %31, %1
  %34 = inttoptr i64 %33 to %Tstruct.json_array_t_t*
  %items = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %34, i64 0, i32 1
  %35 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items, align 4, !tbaa !30
  %36 = ptrtoint %Tstruct.json_value_t_t** %35 to i64
  %37 = and i64 %36, 4294967295
  %SandMem.TaintCheck20 = icmp ult i64 %37, %32
  br i1 %SandMem.TaintCheck20, label %TaintCheck.succeeded24, label %wasm.trap.fail21

wasm.trap.fail21:                                 ; preds = %TaintCheck.succeeded19
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded24:                           ; preds = %TaintCheck.succeeded19
  %38 = add i64 %37, %31
  %39 = inttoptr i64 %38 to %Tstruct.json_value_t_t**
  %arrayidx = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %39, i64 %ix
  %40 = bitcast %Tstruct.json_value_t_t** %arrayidx to i64*
  store i64 %3, i64* %40, align 4, !tbaa !15
  br label %return

return:                                           ; preds = %entry, %TaintCheck.succeeded, %json_array_get_count.exit, %TaintCheck.succeeded24
  %retval.0 = phi i32 [ 0, %TaintCheck.succeeded24 ], [ -1, %json_array_get_count.exit ], [ -1, %TaintCheck.succeeded ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_replace_string(%Tstruct.json_array_t_t* %array, i64 %i, i8* %string) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %string to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to i8*
  %call = tail call %Tstruct.json_value_t_t* @json_value_init_string(i8* %2)
  %3 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to %Tstruct.json_value_t_t*
  %6 = trunc i64 %3 to i32
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %7 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %8 = and i64 %7, 4294967295
  %9 = inttoptr i64 %8 to %Tstruct.json_array_t_t*
  %call1 = tail call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %9, i64 %i, %Tstruct.json_value_t_t* %5)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @json_value_free(%Tstruct.json_value_t_t* %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_replace_number(%Tstruct.json_array_t_t* %array, i64 %i, double %number) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %mul.i = fmul double %number, 0.000000e+00
  %cmp.i = fcmp une double %mul.i, 0.000000e+00
  %3 = trunc i64 %0 to i32
  %cmp1.i = icmp eq i32 %3, 0
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %cleanup, label %if.end3.i

if.end3.i:                                        ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end3.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end3.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck4.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck4.i, label %TaintCheck.succeeded13.i, label %wasm.trap.fail5.i

wasm.trap.fail5.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded13.i:                         ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 3, i32* %type.i, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 2
  %11 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %12 = and i64 %11, 4294967295
  %SandMem.TaintCheck14.i = icmp ult i64 %12, %7
  br i1 %SandMem.TaintCheck14.i, label %json_value_init_number.exit, label %wasm.trap.fail15.i

wasm.trap.fail15.i:                               ; preds = %TaintCheck.succeeded13.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_number.exit:                      ; preds = %TaintCheck.succeeded13.i
  %13 = add i64 %12, %8
  %14 = inttoptr i64 %13 to %Tstruct.json_value_value_t_t*
  %number19.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %14, i64 0, i32 1
  store double %number, double* %number19.i, align 8, !tbaa !44
  %15 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %json_value_init_number.exit
  %16 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %17 = and i64 %16, 4294967295
  %18 = inttoptr i64 %17 to %Tstruct.json_array_t_t*
  %call1 = tail call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %18, i64 %i, %Tstruct.json_value_t_t* nonnull %15)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @json_value_free(%Tstruct.json_value_t_t* nonnull %15)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %json_value_init_number.exit, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %json_value_init_number.exit ], [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_replace_boolean(%Tstruct.json_array_t_t* %array, i64 %i, i32 %boolean) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck1.i, label %TaintCheck.succeeded11.i, label %wasm.trap.fail2.i

wasm.trap.fail2.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded11.i:                         ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 6, i32* %type.i, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 2
  %11 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %12 = and i64 %11, 4294967295
  %SandMem.TaintCheck12.i = icmp ult i64 %12, %7
  br i1 %SandMem.TaintCheck12.i, label %json_value_init_boolean.exit, label %wasm.trap.fail13.i

wasm.trap.fail13.i:                               ; preds = %TaintCheck.succeeded11.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_boolean.exit:                     ; preds = %TaintCheck.succeeded11.i
  %tobool6.not.i = icmp ne i32 %boolean, 0
  %cond.i = zext i1 %tobool6.not.i to i32
  %13 = add i64 %12, %8
  %14 = inttoptr i64 %13 to %Tstruct.json_value_value_t_t*
  %boolean17.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %14, i64 0, i32 4
  store i32 %cond.i, i32* %boolean17.i, align 8, !tbaa !43
  %15 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %json_value_init_boolean.exit
  %16 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %17 = and i64 %16, 4294967295
  %18 = inttoptr i64 %17 to %Tstruct.json_array_t_t*
  %call1 = tail call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %18, i64 %i, %Tstruct.json_value_t_t* nonnull %15)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @json_value_free(%Tstruct.json_value_t_t* nonnull %15)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %json_value_init_boolean.exit, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %json_value_init_boolean.exit ], [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_replace_null(%Tstruct.json_array_t_t* %array, i64 %i) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck1.i, label %json_value_init_null.exit, label %wasm.trap.fail2.i

wasm.trap.fail2.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_null.exit:                        ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 1, i32* %type.i, align 8, !tbaa !24
  %11 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %json_value_init_null.exit
  %12 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %13 = and i64 %12, 4294967295
  %14 = inttoptr i64 %13 to %Tstruct.json_array_t_t*
  %call1 = tail call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %14, i64 %i, %Tstruct.json_value_t_t* nonnull %11)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @json_value_free(%Tstruct.json_value_t_t* nonnull %11)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %json_value_init_null.exit, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %json_value_init_null.exit ], [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_clear(%Tstruct.json_array_t_t* %array) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cleanup, label %cond.true.i.lr.ph

cond.true.i.lr.ph:                                ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_array_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 2
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %6, i64 0, i32 1
  br i1 %SandMem.TaintCheck.i, label %cond.true.i.preheader, label %wasm.trap.fail.i.split

cond.true.i.preheader:                            ; preds = %cond.true.i.lr.ph
  %7 = load i64, i64* %count.i, align 8, !tbaa !28
  %cmp11114.not = icmp eq i64 %7, 0
  br i1 %cmp11114.not, label %for.end, label %TaintCheck.succeeded.i9

wasm.trap.fail.i.split:                           ; preds = %cond.true.i.lr.ph
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i9:                          ; preds = %cond.true.i.preheader, %json_array_get_value.exit
  %i.01215 = phi i64 [ %inc, %json_array_get_value.exit ], [ 0, %cond.true.i.preheader ]
  %8 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %9 = ptrtoint %Tstruct.json_value_t_t** %8 to i64
  %10 = and i64 %9, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %10, %3
  br i1 %SandMem.TaintCheck2.i, label %json_array_get_value.exit, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i9
  tail call void @llvm.trap() #16
  unreachable

json_array_get_value.exit:                        ; preds = %TaintCheck.succeeded.i9
  %11 = add i64 %10, %4
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %12, i64 %i.01215
  %13 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  %14 = ptrtoint %Tstruct.json_value_t_t* %13 to i64
  %15 = and i64 %14, 4294967295
  %16 = inttoptr i64 %15 to %Tstruct.json_value_t_t*
  tail call void @json_value_free(%Tstruct.json_value_t_t* %16)
  %inc = add nuw i64 %i.01215, 1
  %17 = load i64, i64* %count.i, align 8, !tbaa !28
  %cmp111 = icmp ult i64 %inc, %17
  br i1 %cmp111, label %TaintCheck.succeeded.i9, label %for.end

for.end:                                          ; preds = %json_array_get_value.exit, %cond.true.i.preheader
  %18 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %18
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %for.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %for.end
  %19 = load i64, i64* @sbxHeap, align 8
  %20 = add i64 %19, %1
  %21 = inttoptr i64 %20 to %Tstruct.json_array_t_t*
  %count = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %21, i64 0, i32 2
  store i64 0, i64* %count, align 8, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %entry, %TaintCheck.succeeded
  %retval.0 = phi i32 [ 0, %TaintCheck.succeeded ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_append_value(%Tstruct.json_array_t_t* %array, %Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_array_t_t*
  %3 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to %Tstruct.json_value_t_t*
  %6 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %6, 0
  %7 = trunc i64 %3 to i32
  %cmp1 = icmp eq i32 %7, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %4, %8
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %lor.lhs.false2
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %lor.lhs.false2
  %9 = load i64, i64* @sbxHeap, align 8
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %11, i64 0, i32 0
  %12 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %parent, align 4, !tbaa !17
  %13 = ptrtoint %Tstruct.json_value_t_t* %12 to i64
  %14 = trunc i64 %13 to i32
  %cmp3.not = icmp eq i32 %14, 0
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %TaintCheck.succeeded
  %call = tail call fastcc i32 @json_array_add(%Tstruct.json_array_t_t* %2, %Tstruct.json_value_t_t* %5)
  br label %return

return:                                           ; preds = %entry, %TaintCheck.succeeded, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %TaintCheck.succeeded ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_append_string(%Tstruct.json_array_t_t* %array, i8* %string) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %string to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to i8*
  %call = tail call %Tstruct.json_value_t_t* @json_value_init_string(i8* %2)
  %3 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to %Tstruct.json_value_t_t*
  %6 = trunc i64 %3 to i32
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %7 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %8 = and i64 %7, 4294967295
  %9 = inttoptr i64 %8 to %Tstruct.json_array_t_t*
  %10 = trunc i64 %7 to i32
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then3, label %lor.lhs.false2.i

lor.lhs.false2.i:                                 ; preds = %if.end
  %11 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %4, %11
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %lor.lhs.false2.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %lor.lhs.false2.i
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = add i64 %12, %4
  %14 = inttoptr i64 %13 to %Tstruct.json_value_t_t*
  %parent.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %14, i64 0, i32 0
  %15 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %parent.i, align 4, !tbaa !17
  %16 = ptrtoint %Tstruct.json_value_t_t* %15 to i64
  %17 = trunc i64 %16 to i32
  %cmp3.not.i = icmp eq i32 %17, 0
  br i1 %cmp3.not.i, label %json_array_append_value.exit, label %if.then3

json_array_append_value.exit:                     ; preds = %TaintCheck.succeeded.i
  %call.i = tail call fastcc i32 @json_array_add(%Tstruct.json_array_t_t* %9, %Tstruct.json_value_t_t* %5) #16
  %cmp2 = icmp eq i32 %call.i, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end, %TaintCheck.succeeded.i, %json_array_append_value.exit
  tail call void @json_value_free(%Tstruct.json_value_t_t* %5)
  br label %cleanup

cleanup:                                          ; preds = %json_array_append_value.exit, %entry, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %entry ], [ 0, %json_array_append_value.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_append_number(%Tstruct.json_array_t_t* %array, double %number) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %mul.i = fmul double %number, 0.000000e+00
  %cmp.i = fcmp une double %mul.i, 0.000000e+00
  %3 = trunc i64 %0 to i32
  %cmp1.i = icmp eq i32 %3, 0
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %cleanup, label %if.end3.i

if.end3.i:                                        ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end3.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end3.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck4.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck4.i, label %TaintCheck.succeeded13.i, label %wasm.trap.fail5.i

wasm.trap.fail5.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded13.i:                         ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 3, i32* %type.i, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 2
  %11 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %12 = and i64 %11, 4294967295
  %SandMem.TaintCheck14.i = icmp ult i64 %12, %7
  br i1 %SandMem.TaintCheck14.i, label %json_value_init_number.exit, label %wasm.trap.fail15.i

wasm.trap.fail15.i:                               ; preds = %TaintCheck.succeeded13.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_number.exit:                      ; preds = %TaintCheck.succeeded13.i
  %13 = add i64 %12, %8
  %14 = inttoptr i64 %13 to %Tstruct.json_value_value_t_t*
  %number19.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %14, i64 0, i32 1
  store double %number, double* %number19.i, align 8, !tbaa !44
  %15 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %json_value_init_number.exit
  %16 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %17 = and i64 %16, 4294967295
  %18 = inttoptr i64 %17 to %Tstruct.json_array_t_t*
  %19 = trunc i64 %16 to i32
  %cmp.i8 = icmp eq i32 %19, 0
  br i1 %cmp.i8, label %if.then3, label %lor.lhs.false2.i

lor.lhs.false2.i:                                 ; preds = %if.end
  %SandMem.TaintCheck.i11 = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck.i11, label %TaintCheck.succeeded.i13, label %wasm.trap.fail.i12

wasm.trap.fail.i12:                               ; preds = %lor.lhs.false2.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i13:                         ; preds = %lor.lhs.false2.i
  %20 = load i64, i64* @sbxHeap, align 8
  %21 = add i64 %20, %2
  %22 = inttoptr i64 %21 to %Tstruct.json_value_t_t*
  %parent.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %22, i64 0, i32 0
  %23 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %parent.i, align 4, !tbaa !17
  %24 = ptrtoint %Tstruct.json_value_t_t* %23 to i64
  %25 = trunc i64 %24 to i32
  %cmp3.not.i = icmp eq i32 %25, 0
  br i1 %cmp3.not.i, label %json_array_append_value.exit, label %if.then3

json_array_append_value.exit:                     ; preds = %TaintCheck.succeeded.i13
  %call.i14 = tail call fastcc i32 @json_array_add(%Tstruct.json_array_t_t* %18, %Tstruct.json_value_t_t* nonnull %15) #16
  %cmp2 = icmp eq i32 %call.i14, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end, %TaintCheck.succeeded.i13, %json_array_append_value.exit
  tail call void @json_value_free(%Tstruct.json_value_t_t* nonnull %15)
  br label %cleanup

cleanup:                                          ; preds = %entry, %json_array_append_value.exit, %json_value_init_number.exit, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %json_value_init_number.exit ], [ 0, %json_array_append_value.exit ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_append_boolean(%Tstruct.json_array_t_t* %array, i32 %boolean) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck1.i, label %TaintCheck.succeeded11.i, label %wasm.trap.fail2.i

wasm.trap.fail2.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded11.i:                         ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 6, i32* %type.i, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 2
  %11 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %12 = and i64 %11, 4294967295
  %SandMem.TaintCheck12.i = icmp ult i64 %12, %7
  br i1 %SandMem.TaintCheck12.i, label %json_value_init_boolean.exit, label %wasm.trap.fail13.i

wasm.trap.fail13.i:                               ; preds = %TaintCheck.succeeded11.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_boolean.exit:                     ; preds = %TaintCheck.succeeded11.i
  %tobool6.not.i = icmp ne i32 %boolean, 0
  %cond.i = zext i1 %tobool6.not.i to i32
  %13 = add i64 %12, %8
  %14 = inttoptr i64 %13 to %Tstruct.json_value_value_t_t*
  %boolean17.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %14, i64 0, i32 4
  store i32 %cond.i, i32* %boolean17.i, align 8, !tbaa !43
  %15 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %json_value_init_boolean.exit
  %16 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %17 = and i64 %16, 4294967295
  %18 = inttoptr i64 %17 to %Tstruct.json_array_t_t*
  %19 = trunc i64 %16 to i32
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %if.then3, label %lor.lhs.false2.i

lor.lhs.false2.i:                                 ; preds = %if.end
  %SandMem.TaintCheck.i8 = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck.i8, label %TaintCheck.succeeded.i10, label %wasm.trap.fail.i9

wasm.trap.fail.i9:                                ; preds = %lor.lhs.false2.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i10:                         ; preds = %lor.lhs.false2.i
  %20 = load i64, i64* @sbxHeap, align 8
  %21 = add i64 %20, %2
  %22 = inttoptr i64 %21 to %Tstruct.json_value_t_t*
  %parent.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %22, i64 0, i32 0
  %23 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %parent.i, align 4, !tbaa !17
  %24 = ptrtoint %Tstruct.json_value_t_t* %23 to i64
  %25 = trunc i64 %24 to i32
  %cmp3.not.i = icmp eq i32 %25, 0
  br i1 %cmp3.not.i, label %json_array_append_value.exit, label %if.then3

json_array_append_value.exit:                     ; preds = %TaintCheck.succeeded.i10
  %call.i11 = tail call fastcc i32 @json_array_add(%Tstruct.json_array_t_t* %18, %Tstruct.json_value_t_t* nonnull %15) #16
  %cmp2 = icmp eq i32 %call.i11, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end, %TaintCheck.succeeded.i10, %json_array_append_value.exit
  tail call void @json_value_free(%Tstruct.json_value_t_t* nonnull %15)
  br label %cleanup

cleanup:                                          ; preds = %entry, %json_array_append_value.exit, %json_value_init_boolean.exit, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %json_value_init_boolean.exit ], [ 0, %json_array_append_value.exit ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_array_append_null(%Tstruct.json_array_t_t* %array) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck1.i, label %json_value_init_null.exit, label %wasm.trap.fail2.i

wasm.trap.fail2.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_null.exit:                        ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 1, i32* %type.i, align 8, !tbaa !24
  %11 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %json_value_init_null.exit
  %12 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %13 = and i64 %12, 4294967295
  %14 = inttoptr i64 %13 to %Tstruct.json_array_t_t*
  %15 = trunc i64 %12 to i32
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.then3, label %TaintCheck.succeeded.i10

TaintCheck.succeeded.i10:                         ; preds = %if.end
  %16 = load i64, i64* @sbxHeap, align 8
  %17 = add i64 %16, %2
  %18 = inttoptr i64 %17 to %Tstruct.json_value_t_t*
  %parent.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %18, i64 0, i32 0
  %19 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %parent.i, align 4, !tbaa !17
  %20 = ptrtoint %Tstruct.json_value_t_t* %19 to i64
  %21 = trunc i64 %20 to i32
  %cmp3.not.i = icmp eq i32 %21, 0
  br i1 %cmp3.not.i, label %json_array_append_value.exit, label %if.then3

json_array_append_value.exit:                     ; preds = %TaintCheck.succeeded.i10
  %call.i11 = tail call fastcc i32 @json_array_add(%Tstruct.json_array_t_t* %14, %Tstruct.json_value_t_t* nonnull %11) #16
  %cmp2 = icmp eq i32 %call.i11, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end, %TaintCheck.succeeded.i10, %json_array_append_value.exit
  tail call void @json_value_free(%Tstruct.json_value_t_t* nonnull %11)
  br label %cleanup

cleanup:                                          ; preds = %entry, %json_array_append_value.exit, %json_value_init_null.exit, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %json_value_init_null.exit ], [ 0, %json_array_append_value.exit ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_set_value(%Tstruct.json_object_t_t* %object, i8* %name, %Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint i8* %name to i64
  %3 = and i64 %2, 4294967295
  %4 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %5 = and i64 %4, 4294967295
  %6 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %6, 0
  %7 = trunc i64 %2 to i32
  %cmp1 = icmp eq i32 %7, 0
  %or.cond = or i1 %cmp, %cmp1
  %8 = trunc i64 %4 to i32
  %cmp3 = icmp eq i32 %8, 0
  %or.cond90 = or i1 %or.cond, %cmp3
  br i1 %or.cond90, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %9 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %5, %9
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %lor.lhs.false4
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %lor.lhs.false4
  %10 = load i64, i64* @sbxHeap, align 8
  %11 = add i64 %10, %5
  %12 = inttoptr i64 %11 to %Tstruct.json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %12, i64 0, i32 0
  %13 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %parent, align 4, !tbaa !17
  %14 = ptrtoint %Tstruct.json_value_t_t* %13 to i64
  %15 = trunc i64 %14 to i32
  %cmp5.not = icmp eq i32 %15, 0
  br i1 %cmp5.not, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %TaintCheck.succeeded
  %16 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %SandMem.TaintCheck.i = icmp ult i64 %3, %9
  br i1 %SandMem.TaintCheck.i, label %json_object_get_value.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

json_object_get_value.exit:                       ; preds = %if.end.i
  %17 = inttoptr i64 %3 to i8*
  %18 = add i64 %10, %3
  %19 = inttoptr i64 %18 to i8*
  %call.i = tail call i64 @t_strlen(i8* %19) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %16, i8* %17, i64 %call.i) #16
  %20 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %21 = and i64 %20, 4294967295
  %cmp6.not = icmp eq i64 %21, 0
  br i1 %cmp6.not, label %if.end.i85, label %if.then7

if.then7:                                         ; preds = %json_object_get_value.exit
  %22 = inttoptr i64 %21 to %Tstruct.json_value_t_t*
  tail call void @json_value_free(%Tstruct.json_value_t_t* nonnull %22)
  %23 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i77 = icmp ult i64 %1, %23
  %24 = load i64, i64* @sbxHeap, align 8
  %25 = add i64 %24, %1
  %26 = inttoptr i64 %25 to %Tstruct.json_object_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %26, i64 0, i32 3
  %names = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %26, i64 0, i32 1
  %SandMem.TaintCheck25 = icmp ult i64 %3, %23
  %27 = add i64 %24, %3
  %28 = inttoptr i64 %27 to i8*
  %29 = load i64, i64* @sbxHeapRange, align 8
  br i1 %SandMem.TaintCheck.i77, label %json_object_get_count.exit, label %wasm.trap.fail.i78

wasm.trap.fail.i78:                               ; preds = %for.inc, %if.then7
  tail call void @llvm.trap() #16
  unreachable

json_object_get_count.exit:                       ; preds = %if.then7, %for.inc
  %i.0114 = phi i64 [ %inc, %for.inc ], [ 0, %if.then7 ]
  %30 = load i64, i64* %count.i, align 8, !tbaa !9
  %cmp9 = icmp ult i64 %i.0114, %30
  br i1 %cmp9, label %TaintCheck.succeeded14, label %if.end.i85

TaintCheck.succeeded14:                           ; preds = %json_object_get_count.exit
  %31 = load i8**, i8*** %names, align 4, !tbaa !14
  %32 = ptrtoint i8** %31 to i64
  %33 = and i64 %32, 4294967295
  %SbxHeapRangePlusMaxIndex = add i64 %33, %i.0114
  %SandMem.TaintCheck97 = icmp ult i64 %SbxHeapRangePlusMaxIndex, %29
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck97) #16
  %SandMem.TaintCheck15 = icmp ult i64 %33, %23
  br i1 %SandMem.TaintCheck15, label %TaintCheck.succeeded19, label %wasm.trap.fail16

wasm.trap.fail16:                                 ; preds = %TaintCheck.succeeded14
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded19:                           ; preds = %TaintCheck.succeeded14
  %34 = add i64 %24, %33
  %35 = inttoptr i64 %34 to i8**
  %arrayidx = getelementptr inbounds i8*, i8** %35, i64 %i.0114
  %36 = load i8*, i8** %arrayidx, align 4, !tbaa !15
  %37 = ptrtoint i8* %36 to i64
  %38 = and i64 %37, 4294967295
  %SandMem.TaintCheck20 = icmp ult i64 %38, %23
  br i1 %SandMem.TaintCheck20, label %TaintCheck.succeeded24, label %wasm.trap.fail21

wasm.trap.fail21:                                 ; preds = %TaintCheck.succeeded19
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded24:                           ; preds = %TaintCheck.succeeded19
  br i1 %SandMem.TaintCheck25, label %TaintCheck.succeeded29, label %wasm.trap.fail26

wasm.trap.fail26:                                 ; preds = %TaintCheck.succeeded24
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded29:                           ; preds = %TaintCheck.succeeded24
  %39 = add i64 %38, %24
  %40 = inttoptr i64 %39 to i8*
  %call30 = tail call i32 @t_strcmp(i8* %40, i8* %28) #16
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %for.inc

if.then32:                                        ; preds = %TaintCheck.succeeded29
  %41 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i80 = icmp ult i64 %1, %41
  br i1 %SandMem.TaintCheck.i80, label %json_object_get_wrapping_value.exit, label %wasm.trap.fail.i81

wasm.trap.fail.i81:                               ; preds = %if.then32
  tail call void @llvm.trap() #16
  unreachable

json_object_get_wrapping_value.exit:              ; preds = %if.then32
  %42 = load i64, i64* @sbxHeap, align 8
  %SandMem.TaintCheck35 = icmp ult i64 %5, %41
  br i1 %SandMem.TaintCheck35, label %TaintCheck.succeeded39, label %wasm.trap.fail36

wasm.trap.fail36:                                 ; preds = %json_object_get_wrapping_value.exit
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded39:                           ; preds = %json_object_get_wrapping_value.exit
  %43 = add i64 %42, %1
  %44 = inttoptr i64 %43 to %Tstruct.json_object_t_t*
  %wrapping_value.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %44, i64 0, i32 0
  %45 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %wrapping_value.i, align 4, !tbaa !16
  %46 = add i64 %42, %5
  %47 = ptrtoint %Tstruct.json_value_t_t* %45 to i64
  %48 = and i64 %47, 4294967295
  %49 = inttoptr i64 %46 to i64*
  store i64 %48, i64* %49, align 4, !tbaa !17
  %50 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck41 = icmp ult i64 %1, %50
  br i1 %SandMem.TaintCheck41, label %TaintCheck.succeeded45, label %wasm.trap.fail42

wasm.trap.fail42:                                 ; preds = %TaintCheck.succeeded39
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded45:                           ; preds = %TaintCheck.succeeded39
  %51 = load i64, i64* @sbxHeap, align 8
  %52 = add i64 %51, %1
  %53 = inttoptr i64 %52 to %Tstruct.json_object_t_t*
  %values = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %53, i64 0, i32 2
  %54 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values, align 4, !tbaa !21
  %55 = ptrtoint %Tstruct.json_value_t_t** %54 to i64
  tail call void @c_licm_verify_addr(i64 %55, i64 %i.0114, i64 8) #16
  %56 = load i64, i64* @sbxHeapRange, align 8
  %57 = and i64 %55, 4294967295
  %SandMem.TaintCheck46 = icmp ult i64 %57, %56
  br i1 %SandMem.TaintCheck46, label %TaintCheck.succeeded50, label %wasm.trap.fail47

wasm.trap.fail47:                                 ; preds = %TaintCheck.succeeded45
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded50:                           ; preds = %TaintCheck.succeeded45
  %58 = load i64, i64* @sbxHeap, align 8
  %59 = add i64 %58, %57
  %60 = inttoptr i64 %59 to %Tstruct.json_value_t_t**
  %arrayidx51 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %60, i64 %i.0114
  %61 = bitcast %Tstruct.json_value_t_t** %arrayidx51 to i64*
  store i64 %5, i64* %61, align 4, !tbaa !15
  br label %cleanup

for.inc:                                          ; preds = %TaintCheck.succeeded29
  %inc = add nuw i64 %i.0114, 1
  br i1 %SandMem.TaintCheck.i77, label %json_object_get_count.exit, label %wasm.trap.fail.i78, !llvm.loop !53

if.end.i85:                                       ; preds = %json_object_get_count.exit, %json_object_get_value.exit
  %62 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i84 = icmp ult i64 %3, %62
  br i1 %SandMem.TaintCheck.i84, label %TaintCheck.succeeded.i88, label %wasm.trap.fail.i86

wasm.trap.fail.i86:                               ; preds = %if.end.i85
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i88:                         ; preds = %if.end.i85
  %63 = inttoptr i64 %3 to i8*
  %64 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %65 = load i64, i64* @sbxHeap, align 8
  %66 = add i64 %65, %3
  %67 = inttoptr i64 %66 to i8*
  %call.i87 = tail call i64 @t_strlen(i8* %67) #16
  %call1.i = tail call i32 @json_object_addn(%Tstruct.json_object_t_t* %16, i8* %63, i64 %call.i87, %Tstruct.json_value_t_t* %64) #16
  br label %cleanup

cleanup:                                          ; preds = %TaintCheck.succeeded.i88, %entry, %TaintCheck.succeeded, %TaintCheck.succeeded50
  %retval.0 = phi i32 [ 0, %TaintCheck.succeeded50 ], [ -1, %TaintCheck.succeeded ], [ -1, %entry ], [ %call1.i, %TaintCheck.succeeded.i88 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_set_string(%Tstruct.json_object_t_t* %object, i8* %name, i8* %string) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %6 = ptrtoint i8* %string to i64
  %7 = and i64 %6, 4294967295
  %8 = inttoptr i64 %7 to i8*
  %call = tail call %Tstruct.json_value_t_t* @json_value_init_string(i8* %8)
  %9 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %10 = and i64 %9, 4294967295
  %11 = inttoptr i64 %10 to %Tstruct.json_value_t_t*
  %call1 = tail call i32 @json_object_set_value(%Tstruct.json_object_t_t* %2, i8* %5, %Tstruct.json_value_t_t* %11)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_set_number(%Tstruct.json_object_t_t* %object, i8* %name, double %number) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %mul.i = fmul double %number, 0.000000e+00
  %cmp.i = fcmp une double %mul.i, 0.000000e+00
  %3 = trunc i64 %0 to i32
  %cmp1.i = icmp eq i32 %3, 0
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %json_value_init_number.exit, label %if.end3.i

if.end3.i:                                        ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end3.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end3.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck4.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck4.i, label %TaintCheck.succeeded13.i, label %wasm.trap.fail5.i

wasm.trap.fail5.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded13.i:                         ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 3, i32* %type.i, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 2
  %11 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %12 = and i64 %11, 4294967295
  %SandMem.TaintCheck14.i = icmp ult i64 %12, %7
  br i1 %SandMem.TaintCheck14.i, label %TaintCheck.succeeded18.i, label %wasm.trap.fail15.i

wasm.trap.fail15.i:                               ; preds = %TaintCheck.succeeded13.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded18.i:                         ; preds = %TaintCheck.succeeded13.i
  %13 = add i64 %12, %8
  %14 = inttoptr i64 %13 to %Tstruct.json_value_value_t_t*
  %number19.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %14, i64 0, i32 1
  store double %number, double* %number19.i, align 8, !tbaa !44
  %phi.cast = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  br label %json_value_init_number.exit

json_value_init_number.exit:                      ; preds = %entry, %TaintCheck.succeeded18.i
  %retval.0.i = phi %Tstruct.json_value_t_t* [ %phi.cast, %TaintCheck.succeeded18.i ], [ null, %entry ]
  %15 = ptrtoint i8* %name to i64
  %16 = and i64 %15, 4294967295
  %17 = inttoptr i64 %16 to i8*
  %18 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %19 = and i64 %18, 4294967295
  %20 = inttoptr i64 %19 to %Tstruct.json_object_t_t*
  %call1 = tail call i32 @json_object_set_value(%Tstruct.json_object_t_t* %20, i8* %17, %Tstruct.json_value_t_t* %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_set_boolean(%Tstruct.json_object_t_t* %object, i8* %name, i32 %boolean) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %json_value_init_boolean.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck1.i, label %TaintCheck.succeeded11.i, label %wasm.trap.fail2.i

wasm.trap.fail2.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded11.i:                         ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 6, i32* %type.i, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 2
  %11 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %12 = and i64 %11, 4294967295
  %SandMem.TaintCheck12.i = icmp ult i64 %12, %7
  br i1 %SandMem.TaintCheck12.i, label %TaintCheck.succeeded16.i, label %wasm.trap.fail13.i

wasm.trap.fail13.i:                               ; preds = %TaintCheck.succeeded11.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded16.i:                         ; preds = %TaintCheck.succeeded11.i
  %tobool6.not.i = icmp ne i32 %boolean, 0
  %cond.i = zext i1 %tobool6.not.i to i32
  %13 = add i64 %12, %8
  %14 = inttoptr i64 %13 to %Tstruct.json_value_value_t_t*
  %boolean17.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %14, i64 0, i32 4
  store i32 %cond.i, i32* %boolean17.i, align 8, !tbaa !43
  %phi.cast = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  br label %json_value_init_boolean.exit

json_value_init_boolean.exit:                     ; preds = %entry, %TaintCheck.succeeded16.i
  %retval.0.i = phi %Tstruct.json_value_t_t* [ %phi.cast, %TaintCheck.succeeded16.i ], [ null, %entry ]
  %15 = ptrtoint i8* %name to i64
  %16 = and i64 %15, 4294967295
  %17 = inttoptr i64 %16 to i8*
  %18 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %19 = and i64 %18, 4294967295
  %20 = inttoptr i64 %19 to %Tstruct.json_object_t_t*
  %call1 = tail call i32 @json_object_set_value(%Tstruct.json_object_t_t* %20, i8* %17, %Tstruct.json_value_t_t* %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_set_null(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %json_value_init_null.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck1.i, label %TaintCheck.succeeded5.i, label %wasm.trap.fail2.i

wasm.trap.fail2.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded5.i:                          ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 1, i32* %type.i, align 8, !tbaa !24
  %phi.cast = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  br label %json_value_init_null.exit

json_value_init_null.exit:                        ; preds = %entry, %TaintCheck.succeeded5.i
  %retval.0.i = phi %Tstruct.json_value_t_t* [ %phi.cast, %TaintCheck.succeeded5.i ], [ null, %entry ]
  %11 = ptrtoint i8* %name to i64
  %12 = and i64 %11, 4294967295
  %13 = inttoptr i64 %12 to i8*
  %14 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %15 = and i64 %14, 4294967295
  %16 = inttoptr i64 %15 to %Tstruct.json_object_t_t*
  %call1 = tail call i32 @json_object_set_value(%Tstruct.json_object_t_t* %16, i8* %13, %Tstruct.json_value_t_t* %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_dotset_value(%Tstruct.json_object_t_t* %object, i8* %name, %Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = trunc i64 %0 to i32
  %cmp127 = icmp eq i32 %1, 0
  br i1 %cmp127, label %cleanup37, label %lor.lhs.false.lr.ph

lor.lhs.false.lr.ph:                              ; preds = %entry
  %2 = load i64, i64* @sbxHeapRange, align 8
  %3 = load i64, i64* @sbxHeap, align 8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.false.lr.ph, %json_value_get_object.exit
  %.in128 = phi %Tstruct.json_value_t_t* [ %value, %lor.lhs.false.lr.ph ], [ %9, %json_value_get_object.exit ]
  %.in131 = phi i8* [ %name, %lor.lhs.false.lr.ph ], [ %23, %json_value_get_object.exit ]
  %.in132.in = phi i64 [ %0, %lor.lhs.false.lr.ph ], [ %phi.bo, %json_value_get_object.exit ]
  %.in132 = and i64 %.in132.in, 4294967295
  %4 = inttoptr i64 %.in132 to %Tstruct.json_object_t_t*
  %5 = ptrtoint i8* %.in131 to i64
  %6 = and i64 %5, 4294967295
  %7 = inttoptr i64 %6 to i8*
  %8 = ptrtoint %Tstruct.json_value_t_t* %.in128 to i64
  %.in = and i64 %8, 4294967295
  %9 = inttoptr i64 %.in to %Tstruct.json_value_t_t*
  %10 = trunc i64 %5 to i32
  %cmp1 = icmp eq i32 %10, 0
  %11 = trunc i64 %8 to i32
  %cmp3 = icmp eq i32 %11, 0
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %cleanup37, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %SandMem.TaintCheck = icmp ult i64 %6, %2
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end
  %12 = add i64 %3, %6
  %13 = inttoptr i64 %12 to i8*
  %call = tail call i8* @t_strchr(i8* %13, i32 46) #16
  %14 = ptrtoint i8* %call to i64
  %15 = trunc i64 %14 to i32
  %cmp4 = icmp eq i32 %15, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %TaintCheck.succeeded
  %16 = inttoptr i64 %.in132 to %Tstruct.json_object_t_t*
  %17 = inttoptr i64 %6 to i8*
  %18 = inttoptr i64 %.in to %Tstruct.json_value_t_t*
  %call6 = tail call i32 @json_object_set_value(%Tstruct.json_object_t_t* %16, i8* %17, %Tstruct.json_value_t_t* %18)
  br label %cleanup37

if.end7:                                          ; preds = %TaintCheck.succeeded
  %19 = and i64 %14, 4294967295
  %20 = inttoptr i64 %19 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1
  %21 = ptrtoint i8* %add.ptr to i64
  %22 = and i64 %21, 4294967295
  %23 = inttoptr i64 %22 to i8*
  %sub.ptr.sub = sub nsw i64 %19, %6
  %call9 = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %4, i8* %7, i64 %sub.ptr.sub)
  %24 = ptrtoint %Tstruct.json_value_t_t* %call9 to i64
  %25 = and i64 %24, 4294967295
  %26 = trunc i64 %24 to i32
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %if.end19, label %cond.true.i

cond.true.i:                                      ; preds = %if.end7
  %SandMem.TaintCheck.i = icmp ult i64 %25, %2
  br i1 %SandMem.TaintCheck.i, label %json_value_get_type.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit:                         ; preds = %cond.true.i
  %27 = add i64 %3, %25
  %28 = inttoptr i64 %27 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %28, i64 0, i32 1
  %29 = load i32, i32* %type.i, align 8, !tbaa !24
  %cmp13.not = icmp eq i32 %29, 4
  br i1 %cmp13.not, label %TaintCheck.succeeded.i77, label %cleanup37

TaintCheck.succeeded.i77:                         ; preds = %json_value_get_type.exit
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %28, i64 0, i32 2
  %30 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %31 = and i64 %30, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %31, %2
  br i1 %SandMem.TaintCheck2.i, label %json_value_get_object.exit, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i77
  tail call void @llvm.trap() #16
  unreachable

json_value_get_object.exit:                       ; preds = %TaintCheck.succeeded.i77
  %32 = add i64 %31, %3
  %33 = inttoptr i64 %32 to %Tstruct.json_value_value_t_t*
  %object.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %33, i64 0, i32 2
  %34 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i, align 4, !tbaa !25
  %phi.cast = ptrtoint %Tstruct.json_object_t_t* %34 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %35 = trunc i64 %phi.cast to i32
  %cmp = icmp eq i32 %35, 0
  br i1 %cmp, label %cleanup37, label %lor.lhs.false

if.end19:                                         ; preds = %if.end7
  %36 = inttoptr i64 %.in132 to %Tstruct.json_object_t_t*
  %37 = inttoptr i64 %6 to i8*
  %38 = inttoptr i64 %.in to %Tstruct.json_value_t_t*
  %39 = inttoptr i64 %22 to i8*
  %call20 = tail call %Tstruct.json_value_t_t* @json_value_init_object()
  %40 = ptrtoint %Tstruct.json_value_t_t* %call20 to i64
  %41 = and i64 %40, 4294967295
  %42 = inttoptr i64 %41 to %Tstruct.json_value_t_t*
  %43 = trunc i64 %40 to i32
  %cmp22 = icmp eq i32 %43, 0
  br i1 %cmp22, label %cleanup37, label %cond.true.i.i81

cond.true.i.i81:                                  ; preds = %if.end19
  %44 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i80 = icmp ult i64 %41, %44
  br i1 %SandMem.TaintCheck.i.i80, label %json_value_get_type.exit.i85, label %wasm.trap.fail.i.i82

wasm.trap.fail.i.i82:                             ; preds = %cond.true.i.i81
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i85:                     ; preds = %cond.true.i.i81
  %45 = load i64, i64* @sbxHeap, align 8
  %46 = add i64 %45, %41
  %47 = inttoptr i64 %46 to %Tstruct.json_value_t_t*
  %type.i.i83 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %47, i64 0, i32 1
  %48 = load i32, i32* %type.i.i83, align 8, !tbaa !24
  %cmp.i84 = icmp eq i32 %48, 4
  br i1 %cmp.i84, label %TaintCheck.succeeded.i88, label %json_value_get_object.exit93

TaintCheck.succeeded.i88:                         ; preds = %json_value_get_type.exit.i85
  %value1.i86 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %47, i64 0, i32 2
  %49 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i86 to i64
  %50 = and i64 %49, 4294967295
  %SandMem.TaintCheck2.i87 = icmp ult i64 %50, %44
  br i1 %SandMem.TaintCheck2.i87, label %TaintCheck.succeeded6.i91, label %wasm.trap.fail3.i89

wasm.trap.fail3.i89:                              ; preds = %TaintCheck.succeeded.i88
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i91:                        ; preds = %TaintCheck.succeeded.i88
  %51 = add i64 %50, %45
  %52 = inttoptr i64 %51 to %Tstruct.json_value_value_t_t*
  %object.i90 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %52, i64 0, i32 2
  %53 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i90, align 4, !tbaa !25
  %phi.cast97 = ptrtoint %Tstruct.json_object_t_t* %53 to i64
  %phi.bo98 = and i64 %phi.cast97, 4294967295
  %phi.cast99 = inttoptr i64 %phi.bo98 to %Tstruct.json_object_t_t*
  br label %json_value_get_object.exit93

json_value_get_object.exit93:                     ; preds = %json_value_get_type.exit.i85, %TaintCheck.succeeded6.i91
  %cond.i92 = phi %Tstruct.json_object_t_t* [ %phi.cast99, %TaintCheck.succeeded6.i91 ], [ null, %json_value_get_type.exit.i85 ]
  %call27 = tail call i32 @json_object_dotset_value(%Tstruct.json_object_t_t* %cond.i92, i8* %39, %Tstruct.json_value_t_t* %38)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %json_value_get_object.exit93
  tail call void @json_value_free(%Tstruct.json_value_t_t* %42)
  br label %cleanup37

if.end30:                                         ; preds = %json_value_get_object.exit93
  %call31 = tail call i32 @json_object_addn(%Tstruct.json_object_t_t* %36, i8* %37, i64 %sub.ptr.sub, %Tstruct.json_value_t_t* %42)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %cleanup37, label %if.then33

if.then33:                                        ; preds = %if.end30
  %call34 = tail call i32 @json_object_dotremove_internal(%Tstruct.json_object_t_t* %cond.i92, i8* %39, i32 0)
  tail call void @json_value_free(%Tstruct.json_value_t_t* %42)
  br label %cleanup37

cleanup37:                                        ; preds = %lor.lhs.false, %json_value_get_object.exit, %json_value_get_type.exit, %entry, %if.then29, %if.then33, %if.end19, %if.end30, %if.then5
  %retval.1 = phi i32 [ %call6, %if.then5 ], [ -1, %if.then29 ], [ -1, %if.then33 ], [ -1, %if.end19 ], [ 0, %if.end30 ], [ -1, %entry ], [ -1, %json_value_get_type.exit ], [ -1, %json_value_get_object.exit ], [ -1, %lor.lhs.false ]
  ret i32 %retval.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %object, i8* %name, i8* %string) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %string to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to i8*
  %call = tail call %Tstruct.json_value_t_t* @json_value_init_string(i8* %2)
  %3 = ptrtoint %Tstruct.json_value_t_t* %call to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to %Tstruct.json_value_t_t*
  %6 = trunc i64 %3 to i32
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %7 = ptrtoint i8* %name to i64
  %8 = and i64 %7, 4294967295
  %9 = inttoptr i64 %8 to i8*
  %10 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %11 = and i64 %10, 4294967295
  %12 = inttoptr i64 %11 to %Tstruct.json_object_t_t*
  %call1 = tail call i32 @json_object_dotset_value(%Tstruct.json_object_t_t* %12, i8* %9, %Tstruct.json_value_t_t* %5)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @json_value_free(%Tstruct.json_value_t_t* %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_dotset_number(%Tstruct.json_object_t_t* %object, i8* %name, double %number) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %mul.i = fmul double %number, 0.000000e+00
  %cmp.i = fcmp une double %mul.i, 0.000000e+00
  %3 = trunc i64 %0 to i32
  %cmp1.i = icmp eq i32 %3, 0
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %cleanup, label %if.end3.i

if.end3.i:                                        ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end3.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end3.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck4.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck4.i, label %TaintCheck.succeeded13.i, label %wasm.trap.fail5.i

wasm.trap.fail5.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded13.i:                         ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 3, i32* %type.i, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 2
  %11 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %12 = and i64 %11, 4294967295
  %SandMem.TaintCheck14.i = icmp ult i64 %12, %7
  br i1 %SandMem.TaintCheck14.i, label %json_value_init_number.exit, label %wasm.trap.fail15.i

wasm.trap.fail15.i:                               ; preds = %TaintCheck.succeeded13.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_number.exit:                      ; preds = %TaintCheck.succeeded13.i
  %13 = add i64 %12, %8
  %14 = inttoptr i64 %13 to %Tstruct.json_value_value_t_t*
  %number19.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %14, i64 0, i32 1
  store double %number, double* %number19.i, align 8, !tbaa !44
  %15 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %json_value_init_number.exit
  %16 = ptrtoint i8* %name to i64
  %17 = and i64 %16, 4294967295
  %18 = inttoptr i64 %17 to i8*
  %19 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %20 = and i64 %19, 4294967295
  %21 = inttoptr i64 %20 to %Tstruct.json_object_t_t*
  %call1 = tail call i32 @json_object_dotset_value(%Tstruct.json_object_t_t* %21, i8* %18, %Tstruct.json_value_t_t* nonnull %15)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @json_value_free(%Tstruct.json_value_t_t* nonnull %15)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %json_value_init_number.exit, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %json_value_init_number.exit ], [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_dotset_boolean(%Tstruct.json_object_t_t* %object, i8* %name, i32 %boolean) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck1.i, label %TaintCheck.succeeded11.i, label %wasm.trap.fail2.i

wasm.trap.fail2.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded11.i:                         ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 6, i32* %type.i, align 8, !tbaa !24
  %value.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 2
  %11 = ptrtoint %Tstruct.json_value_value_t_t* %value.i to i64
  %12 = and i64 %11, 4294967295
  %SandMem.TaintCheck12.i = icmp ult i64 %12, %7
  br i1 %SandMem.TaintCheck12.i, label %json_value_init_boolean.exit, label %wasm.trap.fail13.i

wasm.trap.fail13.i:                               ; preds = %TaintCheck.succeeded11.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_boolean.exit:                     ; preds = %TaintCheck.succeeded11.i
  %tobool6.not.i = icmp ne i32 %boolean, 0
  %cond.i = zext i1 %tobool6.not.i to i32
  %13 = add i64 %12, %8
  %14 = inttoptr i64 %13 to %Tstruct.json_value_value_t_t*
  %boolean17.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %14, i64 0, i32 4
  store i32 %cond.i, i32* %boolean17.i, align 8, !tbaa !43
  %15 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %json_value_init_boolean.exit
  %16 = ptrtoint i8* %name to i64
  %17 = and i64 %16, 4294967295
  %18 = inttoptr i64 %17 to i8*
  %19 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %20 = and i64 %19, 4294967295
  %21 = inttoptr i64 %20 to %Tstruct.json_object_t_t*
  %call1 = tail call i32 @json_object_dotset_value(%Tstruct.json_object_t_t* %21, i8* %18, %Tstruct.json_value_t_t* nonnull %15)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @json_value_free(%Tstruct.json_value_t_t* nonnull %15)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %json_value_init_boolean.exit, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %json_value_init_boolean.exit ], [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_dotset_null(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %call.i = tail call i8* @t_malloc(i64 56) #16
  %0 = ptrtoint i8* %call.i to i64
  %1 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %1, i64* @sbxHeapRange, align 8
  %2 = and i64 %0, 4294967295
  %3 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %entry
  %SandMem.TaintCheck.i = icmp ult i64 %2, %1
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %if.end.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to i64*
  store i64 0, i64* %6, align 4, !tbaa !17
  %7 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck1.i = icmp ult i64 %2, %7
  br i1 %SandMem.TaintCheck1.i, label %json_value_init_null.exit, label %wasm.trap.fail2.i

wasm.trap.fail2.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

json_value_init_null.exit:                        ; preds = %TaintCheck.succeeded.i
  %8 = load i64, i64* @sbxHeap, align 8
  %9 = add i64 %8, %2
  %10 = inttoptr i64 %9 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %10, i64 0, i32 1
  store i32 1, i32* %type.i, align 8, !tbaa !24
  %11 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %json_value_init_null.exit
  %12 = ptrtoint i8* %name to i64
  %13 = and i64 %12, 4294967295
  %14 = inttoptr i64 %13 to i8*
  %15 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %16 = and i64 %15, 4294967295
  %17 = inttoptr i64 %16 to %Tstruct.json_object_t_t*
  %call1 = tail call i32 @json_object_dotset_value(%Tstruct.json_object_t_t* %17, i8* %14, %Tstruct.json_value_t_t* nonnull %11)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @json_value_free(%Tstruct.json_value_t_t* nonnull %11)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %json_value_init_null.exit, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %json_value_init_null.exit ], [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_remove(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call = tail call i32 @json_object_remove_internal(%Tstruct.json_object_t_t* %2, i8* %5, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_dotremove(%Tstruct.json_object_t_t* %object, i8* %name) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_object_t_t*
  %3 = ptrtoint i8* %name to i64
  %4 = and i64 %3, 4294967295
  %5 = inttoptr i64 %4 to i8*
  %call = tail call i32 @json_object_dotremove_internal(%Tstruct.json_object_t_t* %2, i8* %5, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_object_clear(%Tstruct.json_object_t_t* %object) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_object_t_t* %object to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %3 = load i64, i64* @sbxHeap, align 8
  %4 = add i64 %3, %1
  %5 = inttoptr i64 %4 to %Tstruct.json_object_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %5, i64 0, i32 3
  %names = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %5, i64 0, i32 1
  %values = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %5, i64 0, i32 2
  %6 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i82 = icmp ult i64 %1, %6
  br i1 %SandMem.TaintCheck.i82, label %json_object_get_count.exit, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %TaintCheck.succeeded53, %for.cond.preheader
  tail call void @llvm.trap() #16
  unreachable

json_object_get_count.exit:                       ; preds = %for.cond.preheader, %TaintCheck.succeeded53
  %i.083 = phi i64 [ %inc, %TaintCheck.succeeded53 ], [ 0, %for.cond.preheader ]
  %7 = load i64, i64* %count.i, align 8, !tbaa !9
  %cmp1 = icmp ult i64 %i.083, %7
  %8 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %json_object_get_count.exit
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %for.body
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %for.body
  %9 = load i8**, i8*** %names, align 4, !tbaa !14
  %10 = ptrtoint i8** %9 to i64
  %11 = and i64 %10, 4294967295
  %SbxHeapRangePlusMaxIndex = add i64 %11, %i.083
  %SandMem.TaintCheck75 = icmp ult i64 %SbxHeapRangePlusMaxIndex, %8
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck75) #16
  %12 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck2 = icmp ult i64 %11, %12
  br i1 %SandMem.TaintCheck2, label %TaintCheck.succeeded6, label %wasm.trap.fail3

wasm.trap.fail3:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded6:                            ; preds = %TaintCheck.succeeded
  %13 = add i64 %3, %11
  %14 = inttoptr i64 %13 to i8**
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %i.083
  %15 = load i8*, i8** %arrayidx, align 4, !tbaa !15
  %16 = ptrtoint i8* %15 to i64
  %17 = trunc i64 %16 to i32
  %IsoHeap.is_null = icmp eq i32 %17, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %IsoHeap.subsumption

IsoHeap.subsumption:                              ; preds = %TaintCheck.succeeded6
  %SandMem.TaintCheck7 = icmp ult i64 %1, %12
  br i1 %SandMem.TaintCheck7, label %TaintCheck.succeeded11, label %wasm.trap.fail8

wasm.trap.fail8:                                  ; preds = %IsoHeap.subsumption
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded11:                           ; preds = %IsoHeap.subsumption
  %18 = load i8**, i8*** %names, align 4, !tbaa !14
  %19 = ptrtoint i8** %18 to i64
  %20 = and i64 %19, 4294967295
  %SbxHeapRangePlusMaxIndex76 = add i64 %20, %i.083
  %SandMem.TaintCheck77 = icmp ult i64 %SbxHeapRangePlusMaxIndex76, %12
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck77) #16
  %21 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck13 = icmp ult i64 %20, %21
  br i1 %SandMem.TaintCheck13, label %TaintCheck.succeeded17, label %wasm.trap.fail14

wasm.trap.fail14:                                 ; preds = %TaintCheck.succeeded11
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded17:                           ; preds = %TaintCheck.succeeded11
  %22 = add i64 %3, %20
  %23 = inttoptr i64 %22 to i8**
  %arrayidx18 = getelementptr inbounds i8*, i8** %23, i64 %i.083
  %24 = load i8*, i8** %arrayidx18, align 4, !tbaa !15
  %SandMem.TaintCheck19 = icmp ult i64 %1, %21
  br i1 %SandMem.TaintCheck19, label %TaintCheck.succeeded23, label %wasm.trap.fail20

wasm.trap.fail20:                                 ; preds = %TaintCheck.succeeded17
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded23:                           ; preds = %TaintCheck.succeeded17
  %25 = load i8**, i8*** %names, align 4, !tbaa !14
  %26 = ptrtoint i8** %25 to i64
  %27 = and i64 %26, 4294967295
  %SbxHeapRangePlusMaxIndex78 = add i64 %27, %i.083
  %SandMem.TaintCheck79 = icmp ult i64 %SbxHeapRangePlusMaxIndex78, %21
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck79) #16
  %28 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck25 = icmp ult i64 %27, %28
  br i1 %SandMem.TaintCheck25, label %TaintCheck.succeeded32, label %wasm.trap.fail26

wasm.trap.fail26:                                 ; preds = %TaintCheck.succeeded23
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded32:                           ; preds = %TaintCheck.succeeded23
  %29 = add i64 %3, %27
  %30 = inttoptr i64 %29 to i8**
  %arrayidx30 = getelementptr inbounds i8*, i8** %30, i64 %i.083
  %31 = load i8*, i8** %arrayidx30, align 4, !tbaa !15
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 1
  %32 = ptrtoint i8* %24 to i64
  %33 = trunc i64 %32 to i32
  %IsoHeap.lower = icmp ule i32 %33, %17
  %34 = ptrtoint i8* %add.ptr to i64
  %35 = trunc i64 %34 to i32
  %IsoHeap.upper = icmp ule i32 %17, %35
  %IsoHeap.cast = and i1 %IsoHeap.lower, %IsoHeap.upper
  br i1 %IsoHeap.cast, label %IsoHeap.success, label %TaintCheck.failed38

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded32, %TaintCheck.succeeded6
  %36 = phi i64 [ %28, %TaintCheck.succeeded32 ], [ %12, %TaintCheck.succeeded6 ]
  %37 = and i64 %16, 4294967295
  %SandMem.TaintCheck39 = icmp ult i64 %37, %36
  br i1 %SandMem.TaintCheck39, label %TaintCheck.succeeded43, label %wasm.trap.fail40

TaintCheck.failed38:                              ; preds = %TaintCheck.succeeded32
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail40:                                 ; preds = %IsoHeap.success
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded43:                           ; preds = %IsoHeap.success
  %38 = add i64 %3, %37
  %39 = inttoptr i64 %38 to i8*
  tail call void @t_free(i8* %39) #16
  %40 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %40, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck44 = icmp ult i64 %1, %40
  br i1 %SandMem.TaintCheck44, label %TaintCheck.succeeded48, label %wasm.trap.fail45

wasm.trap.fail45:                                 ; preds = %TaintCheck.succeeded43
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded48:                           ; preds = %TaintCheck.succeeded43
  %41 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %values, align 4, !tbaa !21
  %42 = ptrtoint %Tstruct.json_value_t_t** %41 to i64
  %43 = and i64 %42, 4294967295
  %SbxHeapRangePlusMaxIndex80 = add i64 %43, %i.083
  %SandMem.TaintCheck81 = icmp ult i64 %SbxHeapRangePlusMaxIndex80, %40
  call fastcc void @sand_mem_check_and_trap(i1 %SandMem.TaintCheck81) #16
  %44 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck49 = icmp ult i64 %43, %44
  br i1 %SandMem.TaintCheck49, label %TaintCheck.succeeded53, label %wasm.trap.fail50

wasm.trap.fail50:                                 ; preds = %TaintCheck.succeeded48
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded53:                           ; preds = %TaintCheck.succeeded48
  %45 = add i64 %3, %43
  %46 = inttoptr i64 %45 to %Tstruct.json_value_t_t**
  %arrayidx54 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %46, i64 %i.083
  %47 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx54, align 4, !tbaa !15
  tail call void @json_value_free(%Tstruct.json_value_t_t* %47)
  %inc = add nuw i64 %i.083, 1
  %48 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %48
  br i1 %SandMem.TaintCheck.i, label %json_object_get_count.exit, label %wasm.trap.fail.i, !llvm.loop !54

for.end:                                          ; preds = %json_object_get_count.exit
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded59, label %wasm.trap.fail56

wasm.trap.fail56:                                 ; preds = %for.end
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded59:                           ; preds = %for.end
  %49 = load i64, i64* @sbxHeap, align 8
  %50 = add i64 %49, %1
  %51 = inttoptr i64 %50 to %Tstruct.json_object_t_t*
  %count = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %51, i64 0, i32 3
  store i64 0, i64* %count, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %entry, %TaintCheck.succeeded59
  %retval.0 = phi i32 [ 0, %TaintCheck.succeeded59 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_validate(%Tstruct.json_value_t_t* %schema, %Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %schema to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %3 = and i64 %2, 4294967295
  %4 = trunc i64 %0 to i32
  %cmp = icmp eq i32 %4, 0
  %5 = trunc i64 %2 to i32
  %cmp1 = icmp eq i32 %5, 0
  %or.cond104 = or i1 %cmp, %cmp1
  br i1 %or.cond104, label %cleanup, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %6 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %6
  br i1 %SandMem.TaintCheck.i, label %cond.true.i107, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

cond.true.i107:                                   ; preds = %cond.true.i
  %7 = load i64, i64* @sbxHeap, align 8
  %8 = add i64 %7, %1
  %9 = inttoptr i64 %8 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %9, i64 0, i32 1
  %10 = load i32, i32* %type.i, align 8, !tbaa !24
  %11 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i106 = icmp ult i64 %3, %11
  br i1 %SandMem.TaintCheck.i106, label %json_value_get_type.exit112, label %wasm.trap.fail.i108

wasm.trap.fail.i108:                              ; preds = %cond.true.i107
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit112:                      ; preds = %cond.true.i107
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to %Tstruct.json_value_t_t*
  %type.i109 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %14, i64 0, i32 1
  %15 = load i32, i32* %type.i109, align 8, !tbaa !24
  %cmp3 = icmp ne i32 %10, %15
  %cmp4 = icmp ne i32 %10, 1
  %or.cond = and i1 %cmp4, %cmp3
  br i1 %or.cond, label %cleanup, label %if.end6

if.end6:                                          ; preds = %json_value_get_type.exit112
  switch i32 %10, label %sw.default [
    i32 5, label %cond.true.i.i
    i32 4, label %cond.true.i.i179
    i32 2, label %cleanup
    i32 3, label %cleanup
    i32 6, label %cleanup
    i32 1, label %cleanup
  ]

cond.true.i.i:                                    ; preds = %if.end6
  %16 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %16
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = add i64 %17, %1
  %19 = inttoptr i64 %18 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %19, i64 0, i32 1
  %20 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %20, 5
  br i1 %cmp.i, label %TaintCheck.succeeded.i113, label %cond.true.i.i121

TaintCheck.succeeded.i113:                        ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %19, i64 0, i32 2
  %21 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %22 = and i64 %21, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %22, %16
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i113
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i113
  %23 = add i64 %22, %17
  %24 = inttoptr i64 %23 to %Tstruct.json_value_value_t_t*
  %array.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %24, i64 0, i32 3
  %25 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i, align 4, !tbaa !27
  %phi.cast246 = ptrtoint %Tstruct.json_array_t_t* %25 to i64
  %phi.bo247 = and i64 %phi.cast246, 4294967295
  br label %cond.true.i.i121

cond.true.i.i121:                                 ; preds = %TaintCheck.succeeded6.i, %json_value_get_type.exit.i
  %cond.i114 = phi i64 [ %phi.bo247, %TaintCheck.succeeded6.i ], [ 0, %json_value_get_type.exit.i ]
  %26 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i120 = icmp ult i64 %3, %26
  br i1 %SandMem.TaintCheck.i.i120, label %json_value_get_type.exit.i125, label %wasm.trap.fail.i.i122

wasm.trap.fail.i.i122:                            ; preds = %cond.true.i.i121
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i125:                    ; preds = %cond.true.i.i121
  %27 = load i64, i64* @sbxHeap, align 8
  %28 = add i64 %27, %3
  %29 = inttoptr i64 %28 to %Tstruct.json_value_t_t*
  %type.i.i123 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %29, i64 0, i32 1
  %30 = load i32, i32* %type.i.i123, align 8, !tbaa !24
  %cmp.i124 = icmp eq i32 %30, 5
  br i1 %cmp.i124, label %TaintCheck.succeeded.i128, label %json_value_get_array.exit133

TaintCheck.succeeded.i128:                        ; preds = %json_value_get_type.exit.i125
  %value1.i126 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %29, i64 0, i32 2
  %31 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i126 to i64
  %32 = and i64 %31, 4294967295
  %SandMem.TaintCheck2.i127 = icmp ult i64 %32, %26
  br i1 %SandMem.TaintCheck2.i127, label %TaintCheck.succeeded6.i131, label %wasm.trap.fail3.i129

wasm.trap.fail3.i129:                             ; preds = %TaintCheck.succeeded.i128
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i131:                       ; preds = %TaintCheck.succeeded.i128
  %33 = add i64 %32, %27
  %34 = inttoptr i64 %33 to %Tstruct.json_value_value_t_t*
  %array.i130 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %34, i64 0, i32 3
  %35 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i130, align 4, !tbaa !27
  %phi.cast248 = ptrtoint %Tstruct.json_array_t_t* %35 to i64
  %phi.bo249 = and i64 %phi.cast248, 4294967295
  br label %json_value_get_array.exit133

json_value_get_array.exit133:                     ; preds = %json_value_get_type.exit.i125, %TaintCheck.succeeded6.i131
  %cond.i132 = phi i64 [ %phi.bo249, %TaintCheck.succeeded6.i131 ], [ 0, %json_value_get_type.exit.i125 ]
  %tobool.not.i134 = icmp eq i64 %cond.i114, 0
  br i1 %tobool.not.i134, label %cleanup, label %cond.true.i136

cond.true.i136:                                   ; preds = %json_value_get_array.exit133
  %36 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i135 = icmp ult i64 %cond.i114, %36
  br i1 %SandMem.TaintCheck.i135, label %json_array_get_count.exit, label %wasm.trap.fail.i137

wasm.trap.fail.i137:                              ; preds = %cond.true.i136
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit:                        ; preds = %cond.true.i136
  %37 = load i64, i64* @sbxHeap, align 8
  %38 = add i64 %37, %cond.i114
  %39 = inttoptr i64 %38 to %Tstruct.json_array_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %39, i64 0, i32 2
  %40 = load i64, i64* %count.i, align 8, !tbaa !28
  %cmp11 = icmp eq i64 %40, 0
  br i1 %cmp11, label %cleanup, label %TaintCheck.succeeded.i210

TaintCheck.succeeded.i210:                        ; preds = %json_array_get_count.exit
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %39, i64 0, i32 1
  %41 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %42 = ptrtoint %Tstruct.json_value_t_t** %41 to i64
  %43 = and i64 %42, 4294967295
  %SandMem.TaintCheck2.i209 = icmp ult i64 %43, %36
  br i1 %SandMem.TaintCheck2.i209, label %json_array_get_value.exit, label %wasm.trap.fail3.i211

wasm.trap.fail3.i211:                             ; preds = %TaintCheck.succeeded.i210
  tail call void @llvm.trap() #16
  unreachable

json_array_get_value.exit:                        ; preds = %TaintCheck.succeeded.i210
  %44 = add i64 %43, %37
  %45 = inttoptr i64 %44 to %Tstruct.json_value_t_t**
  %46 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %45, align 4, !tbaa !15
  %phi.cast250 = ptrtoint %Tstruct.json_value_t_t* %46 to i64
  %phi.bo251 = and i64 %phi.cast250, 4294967295
  %phi.cast252 = inttoptr i64 %phi.bo251 to %Tstruct.json_value_t_t*
  %tobool.not.i214 = icmp eq i64 %cond.i132, 0
  br i1 %tobool.not.i214, label %cleanup, label %cond.true.i216.lr.ph

cond.true.i216.lr.ph:                             ; preds = %json_array_get_value.exit
  %SandMem.TaintCheck.i215 = icmp ult i64 %cond.i132, %36
  %47 = add i64 %37, %cond.i132
  %48 = inttoptr i64 %47 to %Tstruct.json_array_t_t*
  %count.i218 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %48, i64 0, i32 2
  %items.i229 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %48, i64 0, i32 1
  br i1 %SandMem.TaintCheck.i215, label %cond.true.i216.preheader, label %wasm.trap.fail.i217.split

cond.true.i216.preheader:                         ; preds = %cond.true.i216.lr.ph
  %49 = load i64, i64* %count.i218, align 8, !tbaa !28
  %cmp17240273.not = icmp eq i64 %49, 0
  br i1 %cmp17240273.not, label %cleanup, label %TaintCheck.succeeded.i231

cond.true.i216:                                   ; preds = %json_array_get_value.exit236
  %50 = load i64, i64* %count.i218, align 8, !tbaa !28
  %cmp17240 = icmp ult i64 %inc, %50
  br i1 %cmp17240, label %TaintCheck.succeeded.i231, label %cleanup

wasm.trap.fail.i217.split:                        ; preds = %cond.true.i216.lr.ph
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i231:                        ; preds = %cond.true.i216.preheader, %cond.true.i216
  %i.0256274 = phi i64 [ %inc, %cond.true.i216 ], [ 0, %cond.true.i216.preheader ]
  %51 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i229, align 4, !tbaa !30
  %52 = ptrtoint %Tstruct.json_value_t_t** %51 to i64
  %53 = and i64 %52, 4294967295
  %SandMem.TaintCheck2.i230 = icmp ult i64 %53, %36
  br i1 %SandMem.TaintCheck2.i230, label %json_array_get_value.exit236, label %wasm.trap.fail3.i232

wasm.trap.fail3.i232:                             ; preds = %TaintCheck.succeeded.i231
  tail call void @llvm.trap() #16
  unreachable

json_array_get_value.exit236:                     ; preds = %TaintCheck.succeeded.i231
  %54 = add i64 %53, %37
  %55 = inttoptr i64 %54 to %Tstruct.json_value_t_t**
  %arrayidx.i233 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %55, i64 %i.0256274
  %56 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i233, align 4, !tbaa !15
  %57 = ptrtoint %Tstruct.json_value_t_t* %56 to i64
  %58 = and i64 %57, 4294967295
  %59 = inttoptr i64 %58 to %Tstruct.json_value_t_t*
  %call20 = tail call i32 @json_validate(%Tstruct.json_value_t_t* %phi.cast252, %Tstruct.json_value_t_t* %59)
  %cmp21 = icmp eq i32 %call20, -1
  %inc = add nuw i64 %i.0256274, 1
  br i1 %cmp21, label %cleanup, label %cond.true.i216

cond.true.i.i179:                                 ; preds = %if.end6
  %60 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i178 = icmp ult i64 %1, %60
  br i1 %SandMem.TaintCheck.i.i178, label %json_value_get_type.exit.i183, label %wasm.trap.fail.i.i180

wasm.trap.fail.i.i180:                            ; preds = %cond.true.i.i179
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i183:                    ; preds = %cond.true.i.i179
  %61 = load i64, i64* @sbxHeap, align 8
  %62 = add i64 %61, %1
  %63 = inttoptr i64 %62 to %Tstruct.json_value_t_t*
  %type.i.i181 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %63, i64 0, i32 1
  %64 = load i32, i32* %type.i.i181, align 8, !tbaa !24
  %cmp.i182 = icmp eq i32 %64, 4
  br i1 %cmp.i182, label %TaintCheck.succeeded.i186, label %cond.true.i.i166

TaintCheck.succeeded.i186:                        ; preds = %json_value_get_type.exit.i183
  %value1.i184 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %63, i64 0, i32 2
  %65 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i184 to i64
  %66 = and i64 %65, 4294967295
  %SandMem.TaintCheck2.i185 = icmp ult i64 %66, %60
  br i1 %SandMem.TaintCheck2.i185, label %TaintCheck.succeeded6.i189, label %wasm.trap.fail3.i187

wasm.trap.fail3.i187:                             ; preds = %TaintCheck.succeeded.i186
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i189:                       ; preds = %TaintCheck.succeeded.i186
  %67 = add i64 %66, %61
  %68 = inttoptr i64 %67 to %Tstruct.json_value_value_t_t*
  %object.i188 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %68, i64 0, i32 2
  %69 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i188, align 4, !tbaa !25
  %phi.cast = ptrtoint %Tstruct.json_object_t_t* %69 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  br label %cond.true.i.i166

cond.true.i.i166:                                 ; preds = %TaintCheck.succeeded6.i189, %json_value_get_type.exit.i183
  %cond.i190 = phi i64 [ %phi.bo, %TaintCheck.succeeded6.i189 ], [ 0, %json_value_get_type.exit.i183 ]
  %70 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i165 = icmp ult i64 %3, %70
  br i1 %SandMem.TaintCheck.i.i165, label %json_value_get_type.exit.i170, label %wasm.trap.fail.i.i167

wasm.trap.fail.i.i167:                            ; preds = %cond.true.i.i166
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i170:                    ; preds = %cond.true.i.i166
  %71 = load i64, i64* @sbxHeap, align 8
  %72 = add i64 %71, %3
  %73 = inttoptr i64 %72 to %Tstruct.json_value_t_t*
  %type.i.i168 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %73, i64 0, i32 1
  %74 = load i32, i32* %type.i.i168, align 8, !tbaa !24
  %cmp.i169 = icmp eq i32 %74, 4
  br i1 %cmp.i169, label %TaintCheck.succeeded.i173, label %json_value_get_object.exit

TaintCheck.succeeded.i173:                        ; preds = %json_value_get_type.exit.i170
  %value1.i171 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %73, i64 0, i32 2
  %75 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i171 to i64
  %76 = and i64 %75, 4294967295
  %SandMem.TaintCheck2.i172 = icmp ult i64 %76, %70
  br i1 %SandMem.TaintCheck2.i172, label %TaintCheck.succeeded6.i175, label %wasm.trap.fail3.i174

wasm.trap.fail3.i174:                             ; preds = %TaintCheck.succeeded.i173
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i175:                       ; preds = %TaintCheck.succeeded.i173
  %77 = add i64 %76, %71
  %78 = inttoptr i64 %77 to %Tstruct.json_value_value_t_t*
  %object.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %78, i64 0, i32 2
  %79 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i, align 4, !tbaa !25
  %phi.cast244 = ptrtoint %Tstruct.json_object_t_t* %79 to i64
  %phi.bo245 = and i64 %phi.cast244, 4294967295
  br label %json_value_get_object.exit

json_value_get_object.exit:                       ; preds = %json_value_get_type.exit.i170, %TaintCheck.succeeded6.i175
  %cond.i176 = phi i64 [ %phi.bo245, %TaintCheck.succeeded6.i175 ], [ 0, %json_value_get_type.exit.i170 ]
  %tobool.not.i156 = icmp eq i64 %cond.i190, 0
  br i1 %tobool.not.i156, label %cleanup, label %cond.true.i158

cond.true.i158:                                   ; preds = %json_value_get_object.exit
  %80 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i157 = icmp ult i64 %cond.i190, %80
  br i1 %SandMem.TaintCheck.i157, label %json_object_get_count.exit163, label %wasm.trap.fail.i159

wasm.trap.fail.i159:                              ; preds = %cond.true.i158
  tail call void @llvm.trap() #16
  unreachable

json_object_get_count.exit163:                    ; preds = %cond.true.i158
  %81 = load i64, i64* @sbxHeap, align 8
  %82 = add i64 %81, %cond.i190
  %83 = inttoptr i64 %82 to %Tstruct.json_object_t_t*
  %count.i160 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %83, i64 0, i32 3
  %84 = load i64, i64* %count.i160, align 8, !tbaa !9
  %cmp30 = icmp eq i64 %84, 0
  br i1 %cmp30, label %cleanup, label %if.else

if.else:                                          ; preds = %json_object_get_count.exit163
  %tobool.not.i149 = icmp eq i64 %cond.i176, 0
  br i1 %tobool.not.i149, label %json_object_get_count.exit, label %cond.true.i151

cond.true.i151:                                   ; preds = %if.else
  %SandMem.TaintCheck.i150 = icmp ult i64 %cond.i176, %80
  br i1 %SandMem.TaintCheck.i150, label %TaintCheck.succeeded.i154, label %wasm.trap.fail.i152

wasm.trap.fail.i152:                              ; preds = %cond.true.i151
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i154:                        ; preds = %cond.true.i151
  %85 = add i64 %81, %cond.i176
  %86 = inttoptr i64 %85 to %Tstruct.json_object_t_t*
  %count.i153 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %86, i64 0, i32 3
  %87 = load i64, i64* %count.i153, align 8, !tbaa !9
  br label %json_object_get_count.exit

json_object_get_count.exit:                       ; preds = %if.else, %TaintCheck.succeeded.i154
  %cond.i155 = phi i64 [ %87, %TaintCheck.succeeded.i154 ], [ 0, %if.else ]
  %cmp33 = icmp ult i64 %cond.i155, %84
  br i1 %cmp33, label %cleanup, label %for.body39.lr.ph

for.body39.lr.ph:                                 ; preds = %json_object_get_count.exit
  %names.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %83, i64 0, i32 1
  %88 = inttoptr i64 %cond.i190 to %Tstruct.json_object_t_t*
  %89 = inttoptr i64 %cond.i176 to %Tstruct.json_object_t_t*
  %90 = icmp ugt i64 %84, 1
  %umax = select i1 %90, i64 %84, i64 1
  br label %json_object_get_count.exit.i

for.cond37:                                       ; preds = %if.end48
  %exitcond.not = icmp eq i64 %inc54, %umax
  br i1 %exitcond.not, label %cleanup, label %json_object_get_count.exit.i, !llvm.loop !55

json_object_get_count.exit.i:                     ; preds = %for.body39.lr.ph, %for.cond37
  %i.1261 = phi i64 [ 0, %for.body39.lr.ph ], [ %inc54, %for.cond37 ]
  %91 = load i64, i64* %count.i160, align 8, !tbaa !9
  %cmp1.not.i = icmp ugt i64 %91, %i.1261
  br i1 %cmp1.not.i, label %TaintCheck.succeeded.i145, label %lor.lhs.false.i

TaintCheck.succeeded.i145:                        ; preds = %json_object_get_count.exit.i
  %92 = load i8**, i8*** %names.i, align 4, !tbaa !14
  %93 = ptrtoint i8** %92 to i64
  %94 = and i64 %93, 4294967295
  %SandMem.TaintCheck2.i144 = icmp ult i64 %94, %80
  br i1 %SandMem.TaintCheck2.i144, label %TaintCheck.succeeded6.i147, label %wasm.trap.fail3.i146

wasm.trap.fail3.i146:                             ; preds = %TaintCheck.succeeded.i145
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i147:                       ; preds = %TaintCheck.succeeded.i145
  %95 = add i64 %94, %81
  %96 = inttoptr i64 %95 to i8**
  %arrayidx.i = getelementptr inbounds i8*, i8** %96, i64 %i.1261
  %97 = load i8*, i8** %arrayidx.i, align 4, !tbaa !15
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %json_object_get_count.exit.i, %TaintCheck.succeeded6.i147
  %retval.0.i148.ph = phi i8* [ null, %json_object_get_count.exit.i ], [ %97, %TaintCheck.succeeded6.i147 ]
  %98 = ptrtoint i8* %retval.0.i148.ph to i64
  %99 = and i64 %98, 4294967295
  %100 = inttoptr i64 %99 to i8*
  %101 = trunc i64 %98 to i32
  %cmp1.i = icmp eq i32 %101, 0
  br i1 %cmp1.i, label %json_object_get_value.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %SandMem.TaintCheck.i116 = icmp ult i64 %99, %80
  br i1 %SandMem.TaintCheck.i116, label %TaintCheck.succeeded.i118, label %wasm.trap.fail.i117

wasm.trap.fail.i117:                              ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i118:                        ; preds = %if.end.i
  %102 = add i64 %81, %99
  %103 = inttoptr i64 %102 to i8*
  %call.i = tail call i64 @t_strlen(i8* %103) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* nonnull %88, i8* %100, i64 %call.i) #16
  %104 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %105 = and i64 %104, 4294967295
  %106 = inttoptr i64 %105 to %Tstruct.json_value_t_t*
  br label %json_object_get_value.exit

json_object_get_value.exit:                       ; preds = %lor.lhs.false.i, %TaintCheck.succeeded.i118
  %retval.0.i = phi %Tstruct.json_value_t_t* [ %106, %TaintCheck.succeeded.i118 ], [ null, %lor.lhs.false.i ]
  %107 = inttoptr i64 %99 to i8*
  %cmp1.i193 = icmp eq i64 %99, 0
  %or.cond253 = or i1 %tobool.not.i149, %cmp1.i193
  br i1 %or.cond253, label %json_object_get_value.exit202, label %if.end.i196

if.end.i196:                                      ; preds = %json_object_get_value.exit
  %SandMem.TaintCheck.i195 = icmp ult i64 %99, %80
  br i1 %SandMem.TaintCheck.i195, label %TaintCheck.succeeded.i200, label %wasm.trap.fail.i197

wasm.trap.fail.i197:                              ; preds = %if.end.i196
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i200:                        ; preds = %if.end.i196
  %108 = add i64 %81, %99
  %109 = inttoptr i64 %108 to i8*
  %call.i198 = tail call i64 @t_strlen(i8* %109) #16
  %call2.i199 = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* nonnull %89, i8* nonnull %107, i64 %call.i198) #16
  %110 = ptrtoint %Tstruct.json_value_t_t* %call2.i199 to i64
  %111 = and i64 %110, 4294967295
  %112 = inttoptr i64 %111 to %Tstruct.json_value_t_t*
  br label %json_object_get_value.exit202

json_object_get_value.exit202:                    ; preds = %json_object_get_value.exit, %TaintCheck.succeeded.i200
  %retval.0.i201 = phi %Tstruct.json_value_t_t* [ %112, %TaintCheck.succeeded.i200 ], [ null, %json_object_get_value.exit ]
  %113 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i201 to i64
  %114 = trunc i64 %113 to i32
  %cmp46 = icmp eq i32 %114, 0
  br i1 %cmp46, label %cleanup, label %if.end48

if.end48:                                         ; preds = %json_object_get_value.exit202
  %115 = and i64 %113, 4294967295
  %116 = inttoptr i64 %115 to %Tstruct.json_value_t_t*
  %117 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i to i64
  %118 = and i64 %117, 4294967295
  %119 = inttoptr i64 %118 to %Tstruct.json_value_t_t*
  %call49 = tail call i32 @json_validate(%Tstruct.json_value_t_t* %119, %Tstruct.json_value_t_t* %116)
  %cmp50 = icmp eq i32 %call49, -1
  %inc54 = add nuw i64 %i.1261, 1
  br i1 %cmp50, label %cleanup, label %for.cond37

sw.default:                                       ; preds = %if.end6
  br label %cleanup

cleanup:                                          ; preds = %json_object_get_value.exit202, %if.end48, %for.cond37, %cond.true.i216, %json_array_get_value.exit236, %cond.true.i216.preheader, %json_array_get_value.exit, %json_value_get_object.exit, %json_value_get_array.exit133, %if.end6, %if.end6, %if.end6, %if.end6, %json_object_get_count.exit, %json_object_get_count.exit163, %json_array_get_count.exit, %json_value_get_type.exit112, %entry, %sw.default
  %retval.0 = phi i32 [ -1, %sw.default ], [ -1, %entry ], [ -1, %json_value_get_type.exit112 ], [ 0, %json_array_get_count.exit ], [ 0, %json_object_get_count.exit163 ], [ -1, %json_object_get_count.exit ], [ 0, %if.end6 ], [ 0, %if.end6 ], [ 0, %if.end6 ], [ 0, %if.end6 ], [ 0, %json_value_get_array.exit133 ], [ 0, %json_value_get_object.exit ], [ 0, %json_array_get_value.exit ], [ 0, %cond.true.i216.preheader ], [ -1, %json_array_get_value.exit236 ], [ 0, %cond.true.i216 ], [ -1, %json_object_get_value.exit202 ], [ -1, %if.end48 ], [ 0, %for.cond37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_value_equals(%Tstruct.json_value_t_t* %a, %Tstruct.json_value_t_t* %b) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %a to i64
  %1 = and i64 %0, 4294967295
  %2 = ptrtoint %Tstruct.json_value_t_t* %b to i64
  %3 = and i64 %2, 4294967295
  %4 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %json_value_get_type.exit, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %5 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %5
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %cond.true.i
  %6 = load i64, i64* @sbxHeap, align 8
  %7 = add i64 %6, %1
  %8 = inttoptr i64 %7 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %8, i64 0, i32 1
  %9 = load i32, i32* %type.i, align 8, !tbaa !24
  br label %json_value_get_type.exit

json_value_get_type.exit:                         ; preds = %entry, %TaintCheck.succeeded.i
  %cond.i = phi i32 [ %9, %TaintCheck.succeeded.i ], [ -1, %entry ]
  %10 = trunc i64 %2 to i32
  %tobool.not.i124 = icmp eq i32 %10, 0
  br i1 %tobool.not.i124, label %json_value_get_type.exit131, label %cond.true.i126

cond.true.i126:                                   ; preds = %json_value_get_type.exit
  %11 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i125 = icmp ult i64 %3, %11
  br i1 %SandMem.TaintCheck.i125, label %TaintCheck.succeeded.i129, label %wasm.trap.fail.i127

wasm.trap.fail.i127:                              ; preds = %cond.true.i126
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i129:                        ; preds = %cond.true.i126
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to %Tstruct.json_value_t_t*
  %type.i128 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %14, i64 0, i32 1
  %15 = load i32, i32* %type.i128, align 8, !tbaa !24
  br label %json_value_get_type.exit131

json_value_get_type.exit131:                      ; preds = %json_value_get_type.exit, %TaintCheck.succeeded.i129
  %cond.i130 = phi i32 [ %15, %TaintCheck.succeeded.i129 ], [ -1, %json_value_get_type.exit ]
  %cmp.not = icmp eq i32 %cond.i, %cond.i130
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %json_value_get_type.exit131
  switch i32 %cond.i, label %cleanup [
    i32 5, label %sw.bb
    i32 4, label %sw.bb18
    i32 2, label %sw.bb44
    i32 6, label %sw.bb60
    i32 3, label %sw.bb65
  ]

sw.bb:                                            ; preds = %if.end
  br i1 %tobool.not.i, label %json_value_get_array.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %sw.bb
  %16 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %16
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = add i64 %17, %1
  %19 = inttoptr i64 %18 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %19, i64 0, i32 1
  %20 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %20, 5
  br i1 %cmp.i, label %TaintCheck.succeeded.i132, label %json_value_get_array.exit

TaintCheck.succeeded.i132:                        ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %19, i64 0, i32 2
  %21 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %22 = and i64 %21, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %22, %16
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i132
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i132
  %23 = add i64 %22, %17
  %24 = inttoptr i64 %23 to %Tstruct.json_value_value_t_t*
  %array.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %24, i64 0, i32 3
  %25 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i, align 4, !tbaa !27
  %phi.cast346 = ptrtoint %Tstruct.json_array_t_t* %25 to i64
  %phi.bo347 = and i64 %phi.cast346, 4294967295
  br label %json_value_get_array.exit

json_value_get_array.exit:                        ; preds = %sw.bb, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i133 = phi i64 [ %phi.bo347, %TaintCheck.succeeded6.i ], [ 0, %json_value_get_type.exit.i ], [ 0, %sw.bb ]
  br i1 %tobool.not.i124, label %json_value_get_array.exit221, label %cond.true.i.i209

cond.true.i.i209:                                 ; preds = %json_value_get_array.exit
  %26 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i208 = icmp ult i64 %3, %26
  br i1 %SandMem.TaintCheck.i.i208, label %json_value_get_type.exit.i213, label %wasm.trap.fail.i.i210

wasm.trap.fail.i.i210:                            ; preds = %cond.true.i.i209
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i213:                    ; preds = %cond.true.i.i209
  %27 = load i64, i64* @sbxHeap, align 8
  %28 = add i64 %27, %3
  %29 = inttoptr i64 %28 to %Tstruct.json_value_t_t*
  %type.i.i211 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %29, i64 0, i32 1
  %30 = load i32, i32* %type.i.i211, align 8, !tbaa !24
  %cmp.i212 = icmp eq i32 %30, 5
  br i1 %cmp.i212, label %TaintCheck.succeeded.i216, label %json_value_get_array.exit221

TaintCheck.succeeded.i216:                        ; preds = %json_value_get_type.exit.i213
  %value1.i214 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %29, i64 0, i32 2
  %31 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i214 to i64
  %32 = and i64 %31, 4294967295
  %SandMem.TaintCheck2.i215 = icmp ult i64 %32, %26
  br i1 %SandMem.TaintCheck2.i215, label %TaintCheck.succeeded6.i219, label %wasm.trap.fail3.i217

wasm.trap.fail3.i217:                             ; preds = %TaintCheck.succeeded.i216
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i219:                       ; preds = %TaintCheck.succeeded.i216
  %33 = add i64 %32, %27
  %34 = inttoptr i64 %33 to %Tstruct.json_value_value_t_t*
  %array.i218 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %34, i64 0, i32 3
  %35 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i218, align 4, !tbaa !27
  %phi.cast348 = ptrtoint %Tstruct.json_array_t_t* %35 to i64
  %phi.bo349 = and i64 %phi.cast348, 4294967295
  br label %json_value_get_array.exit221

json_value_get_array.exit221:                     ; preds = %json_value_get_array.exit, %json_value_get_type.exit.i213, %TaintCheck.succeeded6.i219
  %cond.i220 = phi i64 [ %phi.bo349, %TaintCheck.succeeded6.i219 ], [ 0, %json_value_get_type.exit.i213 ], [ 0, %json_value_get_array.exit ]
  %tobool.not.i222 = icmp eq i64 %cond.i133, 0
  br i1 %tobool.not.i222, label %json_array_get_count.exit, label %cond.true.i224

cond.true.i224:                                   ; preds = %json_value_get_array.exit221
  %36 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i223 = icmp ult i64 %cond.i133, %36
  br i1 %SandMem.TaintCheck.i223, label %TaintCheck.succeeded.i226, label %wasm.trap.fail.i225

wasm.trap.fail.i225:                              ; preds = %cond.true.i224
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i226:                        ; preds = %cond.true.i224
  %37 = load i64, i64* @sbxHeap, align 8
  %38 = add i64 %37, %cond.i133
  %39 = inttoptr i64 %38 to %Tstruct.json_array_t_t*
  %count.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %39, i64 0, i32 2
  %40 = load i64, i64* %count.i, align 8, !tbaa !28
  br label %json_array_get_count.exit

json_array_get_count.exit:                        ; preds = %json_value_get_array.exit221, %TaintCheck.succeeded.i226
  %cond.i227 = phi i64 [ %40, %TaintCheck.succeeded.i226 ], [ 0, %json_value_get_array.exit221 ]
  %tobool.not.i239 = icmp eq i64 %cond.i220, 0
  br i1 %tobool.not.i239, label %json_array_get_count.exit246, label %cond.true.i241

cond.true.i241:                                   ; preds = %json_array_get_count.exit
  %41 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i240 = icmp ult i64 %cond.i220, %41
  br i1 %SandMem.TaintCheck.i240, label %TaintCheck.succeeded.i244, label %wasm.trap.fail.i242

wasm.trap.fail.i242:                              ; preds = %cond.true.i241
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i244:                        ; preds = %cond.true.i241
  %42 = load i64, i64* @sbxHeap, align 8
  %43 = add i64 %42, %cond.i220
  %44 = inttoptr i64 %43 to %Tstruct.json_array_t_t*
  %count.i243 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %44, i64 0, i32 2
  %45 = load i64, i64* %count.i243, align 8, !tbaa !28
  br label %json_array_get_count.exit246

json_array_get_count.exit246:                     ; preds = %json_array_get_count.exit, %TaintCheck.succeeded.i244
  %cond.i245 = phi i64 [ %45, %TaintCheck.succeeded.i244 ], [ 0, %json_array_get_count.exit ]
  %cmp7.not = icmp eq i64 %cond.i227, %cond.i245
  br i1 %cmp7.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %json_array_get_count.exit246
  %cmp10353.not = icmp eq i64 %cond.i227, 0
  br i1 %cmp10353.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %46 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i248 = icmp ult i64 %cond.i133, %46
  %47 = load i64, i64* @sbxHeap, align 8
  %48 = add i64 %47, %cond.i133
  %49 = inttoptr i64 %48 to %Tstruct.json_array_t_t*
  %count.i.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %49, i64 0, i32 2
  %items.i = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %49, i64 0, i32 1
  %SandMem.TaintCheck.i.i327 = icmp ult i64 %cond.i220, %46
  %50 = add i64 %47, %cond.i220
  %51 = inttoptr i64 %50 to %Tstruct.json_array_t_t*
  %count.i.i330 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %51, i64 0, i32 2
  %items.i333 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %51, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %json_array_get_value.exit340, %for.body.lr.ph
  %i.0354 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %json_array_get_value.exit340 ]
  br i1 %tobool.not.i222, label %json_array_get_value.exit, label %cond.true.i.i249

cond.true.i.i249:                                 ; preds = %for.body
  br i1 %SandMem.TaintCheck.i.i248, label %json_array_get_count.exit.i, label %wasm.trap.fail.i.i250

wasm.trap.fail.i.i250:                            ; preds = %cond.true.i.i249
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit.i:                      ; preds = %cond.true.i.i249
  %52 = load i64, i64* %count.i.i, align 8, !tbaa !28
  %cmp1.not.i = icmp ugt i64 %52, %i.0354
  br i1 %cmp1.not.i, label %TaintCheck.succeeded.i252, label %json_array_get_value.exit

TaintCheck.succeeded.i252:                        ; preds = %json_array_get_count.exit.i
  %53 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i, align 4, !tbaa !30
  %54 = ptrtoint %Tstruct.json_value_t_t** %53 to i64
  %55 = and i64 %54, 4294967295
  %SandMem.TaintCheck2.i251 = icmp ult i64 %55, %46
  br i1 %SandMem.TaintCheck2.i251, label %TaintCheck.succeeded6.i254, label %wasm.trap.fail3.i253

wasm.trap.fail3.i253:                             ; preds = %TaintCheck.succeeded.i252
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i254:                       ; preds = %TaintCheck.succeeded.i252
  %56 = add i64 %55, %47
  %57 = inttoptr i64 %56 to %Tstruct.json_value_t_t**
  %arrayidx.i = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %57, i64 %i.0354
  %58 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i, align 4, !tbaa !15
  br label %json_array_get_value.exit

json_array_get_value.exit:                        ; preds = %for.body, %json_array_get_count.exit.i, %TaintCheck.succeeded6.i254
  %retval.0.i255 = phi %Tstruct.json_value_t_t* [ %58, %TaintCheck.succeeded6.i254 ], [ null, %json_array_get_count.exit.i ], [ null, %for.body ]
  %59 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i255 to i64
  %60 = and i64 %59, 4294967295
  %61 = inttoptr i64 %60 to %Tstruct.json_value_t_t*
  br i1 %tobool.not.i239, label %json_array_get_value.exit340, label %cond.true.i.i328

cond.true.i.i328:                                 ; preds = %json_array_get_value.exit
  br i1 %SandMem.TaintCheck.i.i327, label %json_array_get_count.exit.i332, label %wasm.trap.fail.i.i329

wasm.trap.fail.i.i329:                            ; preds = %cond.true.i.i328
  tail call void @llvm.trap() #16
  unreachable

json_array_get_count.exit.i332:                   ; preds = %cond.true.i.i328
  %62 = load i64, i64* %count.i.i330, align 8, !tbaa !28
  %cmp1.not.i331 = icmp ugt i64 %62, %i.0354
  br i1 %cmp1.not.i331, label %TaintCheck.succeeded.i335, label %json_array_get_value.exit340

TaintCheck.succeeded.i335:                        ; preds = %json_array_get_count.exit.i332
  %63 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items.i333, align 4, !tbaa !30
  %64 = ptrtoint %Tstruct.json_value_t_t** %63 to i64
  %65 = and i64 %64, 4294967295
  %SandMem.TaintCheck2.i334 = icmp ult i64 %65, %46
  br i1 %SandMem.TaintCheck2.i334, label %TaintCheck.succeeded6.i338, label %wasm.trap.fail3.i336

wasm.trap.fail3.i336:                             ; preds = %TaintCheck.succeeded.i335
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i338:                       ; preds = %TaintCheck.succeeded.i335
  %66 = add i64 %65, %47
  %67 = inttoptr i64 %66 to %Tstruct.json_value_t_t**
  %arrayidx.i337 = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %67, i64 %i.0354
  %68 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %arrayidx.i337, align 4, !tbaa !15
  br label %json_array_get_value.exit340

json_array_get_value.exit340:                     ; preds = %json_array_get_value.exit, %json_array_get_count.exit.i332, %TaintCheck.succeeded6.i338
  %retval.0.i339 = phi %Tstruct.json_value_t_t* [ %68, %TaintCheck.succeeded6.i338 ], [ null, %json_array_get_count.exit.i332 ], [ null, %json_array_get_value.exit ]
  %69 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i339 to i64
  %70 = and i64 %69, 4294967295
  %71 = inttoptr i64 %70 to %Tstruct.json_value_t_t*
  %call15 = tail call i32 @json_value_equals(%Tstruct.json_value_t_t* %61, %Tstruct.json_value_t_t* %71)
  %tobool.not = icmp eq i32 %call15, 0
  %inc = add nuw i64 %i.0354, 1
  %exitcond.not = icmp eq i64 %inc, %cond.i227
  %or.cond373 = or i1 %tobool.not, %exitcond.not
  br i1 %or.cond373, label %cleanup.loopexit, label %for.body, !llvm.loop !56

sw.bb18:                                          ; preds = %if.end
  br i1 %tobool.not.i, label %json_value_get_object.exit310, label %cond.true.i.i298

cond.true.i.i298:                                 ; preds = %sw.bb18
  %72 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i297 = icmp ult i64 %1, %72
  br i1 %SandMem.TaintCheck.i.i297, label %json_value_get_type.exit.i302, label %wasm.trap.fail.i.i299

wasm.trap.fail.i.i299:                            ; preds = %cond.true.i.i298
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i302:                    ; preds = %cond.true.i.i298
  %73 = load i64, i64* @sbxHeap, align 8
  %74 = add i64 %73, %1
  %75 = inttoptr i64 %74 to %Tstruct.json_value_t_t*
  %type.i.i300 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %75, i64 0, i32 1
  %76 = load i32, i32* %type.i.i300, align 8, !tbaa !24
  %cmp.i301 = icmp eq i32 %76, 4
  br i1 %cmp.i301, label %TaintCheck.succeeded.i305, label %json_value_get_object.exit310

TaintCheck.succeeded.i305:                        ; preds = %json_value_get_type.exit.i302
  %value1.i303 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %75, i64 0, i32 2
  %77 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i303 to i64
  %78 = and i64 %77, 4294967295
  %SandMem.TaintCheck2.i304 = icmp ult i64 %78, %72
  br i1 %SandMem.TaintCheck2.i304, label %TaintCheck.succeeded6.i308, label %wasm.trap.fail3.i306

wasm.trap.fail3.i306:                             ; preds = %TaintCheck.succeeded.i305
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i308:                       ; preds = %TaintCheck.succeeded.i305
  %79 = add i64 %78, %73
  %80 = inttoptr i64 %79 to %Tstruct.json_value_value_t_t*
  %object.i307 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %80, i64 0, i32 2
  %81 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i307, align 4, !tbaa !25
  %phi.cast343 = ptrtoint %Tstruct.json_object_t_t* %81 to i64
  %phi.bo = and i64 %phi.cast343, 4294967295
  br label %json_value_get_object.exit310

json_value_get_object.exit310:                    ; preds = %sw.bb18, %json_value_get_type.exit.i302, %TaintCheck.succeeded6.i308
  %cond.i309 = phi i64 [ %phi.bo, %TaintCheck.succeeded6.i308 ], [ 0, %json_value_get_type.exit.i302 ], [ 0, %sw.bb18 ]
  br i1 %tobool.not.i124, label %json_value_get_object.exit, label %cond.true.i.i285

cond.true.i.i285:                                 ; preds = %json_value_get_object.exit310
  %82 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i284 = icmp ult i64 %3, %82
  br i1 %SandMem.TaintCheck.i.i284, label %json_value_get_type.exit.i289, label %wasm.trap.fail.i.i286

wasm.trap.fail.i.i286:                            ; preds = %cond.true.i.i285
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i289:                    ; preds = %cond.true.i.i285
  %83 = load i64, i64* @sbxHeap, align 8
  %84 = add i64 %83, %3
  %85 = inttoptr i64 %84 to %Tstruct.json_value_t_t*
  %type.i.i287 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %85, i64 0, i32 1
  %86 = load i32, i32* %type.i.i287, align 8, !tbaa !24
  %cmp.i288 = icmp eq i32 %86, 4
  br i1 %cmp.i288, label %TaintCheck.succeeded.i292, label %json_value_get_object.exit

TaintCheck.succeeded.i292:                        ; preds = %json_value_get_type.exit.i289
  %value1.i290 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %85, i64 0, i32 2
  %87 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i290 to i64
  %88 = and i64 %87, 4294967295
  %SandMem.TaintCheck2.i291 = icmp ult i64 %88, %82
  br i1 %SandMem.TaintCheck2.i291, label %TaintCheck.succeeded6.i294, label %wasm.trap.fail3.i293

wasm.trap.fail3.i293:                             ; preds = %TaintCheck.succeeded.i292
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i294:                       ; preds = %TaintCheck.succeeded.i292
  %89 = add i64 %88, %83
  %90 = inttoptr i64 %89 to %Tstruct.json_value_value_t_t*
  %object.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %90, i64 0, i32 2
  %91 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i, align 4, !tbaa !25
  %phi.cast344 = ptrtoint %Tstruct.json_object_t_t* %91 to i64
  %phi.bo345 = and i64 %phi.cast344, 4294967295
  br label %json_value_get_object.exit

json_value_get_object.exit:                       ; preds = %json_value_get_object.exit310, %json_value_get_type.exit.i289, %TaintCheck.succeeded6.i294
  %cond.i295 = phi i64 [ %phi.bo345, %TaintCheck.succeeded6.i294 ], [ 0, %json_value_get_type.exit.i289 ], [ 0, %json_value_get_object.exit310 ]
  %tobool.not.i275 = icmp eq i64 %cond.i309, 0
  br i1 %tobool.not.i275, label %json_object_get_count.exit282, label %cond.true.i277

cond.true.i277:                                   ; preds = %json_value_get_object.exit
  %92 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i276 = icmp ult i64 %cond.i309, %92
  br i1 %SandMem.TaintCheck.i276, label %TaintCheck.succeeded.i280, label %wasm.trap.fail.i278

wasm.trap.fail.i278:                              ; preds = %cond.true.i277
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i280:                        ; preds = %cond.true.i277
  %93 = load i64, i64* @sbxHeap, align 8
  %94 = add i64 %93, %cond.i309
  %95 = inttoptr i64 %94 to %Tstruct.json_object_t_t*
  %count.i279 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %95, i64 0, i32 3
  %96 = load i64, i64* %count.i279, align 8, !tbaa !9
  br label %json_object_get_count.exit282

json_object_get_count.exit282:                    ; preds = %json_value_get_object.exit, %TaintCheck.succeeded.i280
  %cond.i281 = phi i64 [ %96, %TaintCheck.succeeded.i280 ], [ 0, %json_value_get_object.exit ]
  %tobool.not.i268 = icmp eq i64 %cond.i295, 0
  br i1 %tobool.not.i268, label %json_object_get_count.exit, label %cond.true.i270

cond.true.i270:                                   ; preds = %json_object_get_count.exit282
  %97 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i269 = icmp ult i64 %cond.i295, %97
  br i1 %SandMem.TaintCheck.i269, label %TaintCheck.succeeded.i273, label %wasm.trap.fail.i271

wasm.trap.fail.i271:                              ; preds = %cond.true.i270
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i273:                        ; preds = %cond.true.i270
  %98 = load i64, i64* @sbxHeap, align 8
  %99 = add i64 %98, %cond.i295
  %100 = inttoptr i64 %99 to %Tstruct.json_object_t_t*
  %count.i272 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %100, i64 0, i32 3
  %101 = load i64, i64* %count.i272, align 8, !tbaa !9
  br label %json_object_get_count.exit

json_object_get_count.exit:                       ; preds = %json_object_get_count.exit282, %TaintCheck.succeeded.i273
  %cond.i274 = phi i64 [ %101, %TaintCheck.succeeded.i273 ], [ 0, %json_object_get_count.exit282 ]
  %cmp25.not = icmp eq i64 %cond.i281, %cond.i274
  br i1 %cmp25.not, label %for.cond28.preheader, label %cleanup

for.cond28.preheader:                             ; preds = %json_object_get_count.exit
  %cmp29357.not = icmp eq i64 %cond.i281, 0
  br i1 %cmp29357.not, label %cleanup, label %for.body30.lr.ph

for.body30.lr.ph:                                 ; preds = %for.cond28.preheader
  %102 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i257 = icmp ult i64 %cond.i309, %102
  %103 = load i64, i64* @sbxHeap, align 8
  %104 = add i64 %103, %cond.i309
  %105 = inttoptr i64 %104 to %Tstruct.json_object_t_t*
  %count.i.i260 = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %105, i64 0, i32 3
  %names.i = getelementptr inbounds %Tstruct.json_object_t_t, %Tstruct.json_object_t_t* %105, i64 0, i32 1
  %106 = inttoptr i64 %cond.i309 to %Tstruct.json_object_t_t*
  %107 = inttoptr i64 %cond.i295 to %Tstruct.json_object_t_t*
  br label %for.body30

for.body30:                                       ; preds = %json_object_get_value.exit, %for.body30.lr.ph
  %i.1358 = phi i64 [ 0, %for.body30.lr.ph ], [ %inc42, %json_object_get_value.exit ]
  br i1 %tobool.not.i275, label %json_object_get_value.exit, label %cond.true.i.i258

cond.true.i.i258:                                 ; preds = %for.body30
  br i1 %SandMem.TaintCheck.i.i257, label %json_object_get_count.exit.i, label %wasm.trap.fail.i.i259

wasm.trap.fail.i.i259:                            ; preds = %cond.true.i.i258
  tail call void @llvm.trap() #16
  unreachable

json_object_get_count.exit.i:                     ; preds = %cond.true.i.i258
  %108 = load i64, i64* %count.i.i260, align 8, !tbaa !9
  %cmp1.not.i261 = icmp ugt i64 %108, %i.1358
  br i1 %cmp1.not.i261, label %TaintCheck.succeeded.i263, label %lor.lhs.false.i230

TaintCheck.succeeded.i263:                        ; preds = %json_object_get_count.exit.i
  %109 = load i8**, i8*** %names.i, align 4, !tbaa !14
  %110 = ptrtoint i8** %109 to i64
  %111 = and i64 %110, 4294967295
  %SandMem.TaintCheck2.i262 = icmp ult i64 %111, %102
  br i1 %SandMem.TaintCheck2.i262, label %TaintCheck.succeeded6.i266, label %wasm.trap.fail3.i264

wasm.trap.fail3.i264:                             ; preds = %TaintCheck.succeeded.i263
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i266:                       ; preds = %TaintCheck.succeeded.i263
  %112 = add i64 %111, %103
  %113 = inttoptr i64 %112 to i8**
  %arrayidx.i265 = getelementptr inbounds i8*, i8** %113, i64 %i.1358
  %114 = load i8*, i8** %arrayidx.i265, align 4, !tbaa !15
  br label %lor.lhs.false.i230

lor.lhs.false.i230:                               ; preds = %json_object_get_count.exit.i, %TaintCheck.succeeded6.i266
  %retval.0.i267.ph = phi i8* [ null, %json_object_get_count.exit.i ], [ %114, %TaintCheck.succeeded6.i266 ]
  %115 = ptrtoint i8* %retval.0.i267.ph to i64
  %116 = and i64 %115, 4294967295
  %117 = inttoptr i64 %116 to i8*
  %118 = trunc i64 %115 to i32
  %cmp1.i229 = icmp eq i32 %118, 0
  br i1 %cmp1.i229, label %json_object_get_value.exit238, label %if.end.i232

if.end.i232:                                      ; preds = %lor.lhs.false.i230
  %SandMem.TaintCheck.i231 = icmp ult i64 %116, %102
  br i1 %SandMem.TaintCheck.i231, label %TaintCheck.succeeded.i236, label %wasm.trap.fail.i233

wasm.trap.fail.i233:                              ; preds = %if.end.i232
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i236:                        ; preds = %if.end.i232
  %119 = add i64 %103, %116
  %120 = inttoptr i64 %119 to i8*
  %call.i234 = tail call i64 @t_strlen(i8* %120) #16
  %call2.i235 = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* nonnull %106, i8* %117, i64 %call.i234) #16
  %121 = ptrtoint %Tstruct.json_value_t_t* %call2.i235 to i64
  %122 = and i64 %121, 4294967295
  %123 = inttoptr i64 %122 to %Tstruct.json_value_t_t*
  br label %json_object_get_value.exit238

json_object_get_value.exit238:                    ; preds = %lor.lhs.false.i230, %TaintCheck.succeeded.i236
  %retval.0.i237 = phi %Tstruct.json_value_t_t* [ %123, %TaintCheck.succeeded.i236 ], [ null, %lor.lhs.false.i230 ]
  %124 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i237 to i64
  %125 = and i64 %124, 4294967295
  %126 = inttoptr i64 %125 to %Tstruct.json_value_t_t*
  %127 = inttoptr i64 %116 to i8*
  %cmp1.i = icmp eq i64 %116, 0
  %or.cond350 = or i1 %tobool.not.i268, %cmp1.i
  br i1 %or.cond350, label %json_object_get_value.exit, label %if.end.i

if.end.i:                                         ; preds = %json_object_get_value.exit238
  %SandMem.TaintCheck.i204 = icmp ult i64 %116, %102
  br i1 %SandMem.TaintCheck.i204, label %TaintCheck.succeeded.i206, label %wasm.trap.fail.i205

wasm.trap.fail.i205:                              ; preds = %if.end.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i206:                        ; preds = %if.end.i
  %128 = add i64 %103, %116
  %129 = inttoptr i64 %128 to i8*
  %call.i = tail call i64 @t_strlen(i8* %129) #16
  %call2.i = tail call fastcc %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* nonnull %107, i8* nonnull %127, i64 %call.i) #16
  %130 = ptrtoint %Tstruct.json_value_t_t* %call2.i to i64
  %131 = and i64 %130, 4294967295
  %132 = inttoptr i64 %131 to %Tstruct.json_value_t_t*
  br label %json_object_get_value.exit

json_object_get_value.exit:                       ; preds = %for.body30, %json_object_get_value.exit238, %TaintCheck.succeeded.i206
  %133 = phi %Tstruct.json_value_t_t* [ %126, %TaintCheck.succeeded.i206 ], [ %126, %json_object_get_value.exit238 ], [ null, %for.body30 ]
  %retval.0.i = phi %Tstruct.json_value_t_t* [ %132, %TaintCheck.succeeded.i206 ], [ null, %json_object_get_value.exit238 ], [ null, %for.body30 ]
  %134 = ptrtoint %Tstruct.json_value_t_t* %retval.0.i to i64
  %135 = and i64 %134, 4294967295
  %136 = inttoptr i64 %135 to %Tstruct.json_value_t_t*
  %call37 = tail call i32 @json_value_equals(%Tstruct.json_value_t_t* %133, %Tstruct.json_value_t_t* %136)
  %tobool38.not = icmp eq i32 %call37, 0
  %inc42 = add nuw i64 %i.1358, 1
  %exitcond365.not = icmp eq i64 %inc42, %cond.i281
  %or.cond374 = or i1 %tobool38.not, %exitcond365.not
  br i1 %or.cond374, label %cleanup.loopexit363, label %for.body30, !llvm.loop !57

sw.bb44:                                          ; preds = %if.end
  br i1 %tobool.not.i, label %json_value_get_string.exit189, label %cond.true.i.i177

cond.true.i.i177:                                 ; preds = %sw.bb44
  %137 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i176 = icmp ult i64 %1, %137
  br i1 %SandMem.TaintCheck.i.i176, label %json_value_get_type.exit.i181, label %wasm.trap.fail.i.i178

wasm.trap.fail.i.i178:                            ; preds = %cond.true.i.i177
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i181:                    ; preds = %cond.true.i.i177
  %138 = load i64, i64* @sbxHeap, align 8
  %139 = add i64 %138, %1
  %140 = inttoptr i64 %139 to %Tstruct.json_value_t_t*
  %type.i.i179 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %140, i64 0, i32 1
  %141 = load i32, i32* %type.i.i179, align 8, !tbaa !24
  %cmp.i180 = icmp eq i32 %141, 2
  br i1 %cmp.i180, label %TaintCheck.succeeded.i184, label %json_value_get_string.exit189

TaintCheck.succeeded.i184:                        ; preds = %json_value_get_type.exit.i181
  %value1.i182 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %140, i64 0, i32 2
  %142 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i182 to i64
  %143 = and i64 %142, 4294967295
  %SandMem.TaintCheck2.i183 = icmp ult i64 %143, %137
  br i1 %SandMem.TaintCheck2.i183, label %TaintCheck.succeeded6.i187, label %wasm.trap.fail3.i185

wasm.trap.fail3.i185:                             ; preds = %TaintCheck.succeeded.i184
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i187:                       ; preds = %TaintCheck.succeeded.i184
  %144 = add i64 %143, %138
  %145 = inttoptr i64 %144 to %Tstruct.json_value_value_t_t*
  %string.i186 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %145, i64 0, i32 0
  %146 = load i8*, i8** %string.i186, align 4, !tbaa !26
  %phi.cast = ptrtoint i8* %146 to i64
  br label %json_value_get_string.exit189

json_value_get_string.exit189:                    ; preds = %sw.bb44, %json_value_get_type.exit.i181, %TaintCheck.succeeded6.i187
  %cond.i188 = phi i64 [ %phi.cast, %TaintCheck.succeeded6.i187 ], [ 0, %json_value_get_type.exit.i181 ], [ 0, %sw.bb44 ]
  %147 = and i64 %cond.i188, 4294967295
  br i1 %tobool.not.i124, label %cleanup, label %cond.true.i.i164

cond.true.i.i164:                                 ; preds = %json_value_get_string.exit189
  %148 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i163 = icmp ult i64 %3, %148
  br i1 %SandMem.TaintCheck.i.i163, label %json_value_get_type.exit.i168, label %wasm.trap.fail.i.i165

wasm.trap.fail.i.i165:                            ; preds = %cond.true.i.i164
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i168:                    ; preds = %cond.true.i.i164
  %149 = load i64, i64* @sbxHeap, align 8
  %150 = add i64 %149, %3
  %151 = inttoptr i64 %150 to %Tstruct.json_value_t_t*
  %type.i.i166 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %151, i64 0, i32 1
  %152 = load i32, i32* %type.i.i166, align 8, !tbaa !24
  %cmp.i167 = icmp eq i32 %152, 2
  br i1 %cmp.i167, label %TaintCheck.succeeded.i171, label %cleanup

TaintCheck.succeeded.i171:                        ; preds = %json_value_get_type.exit.i168
  %value1.i169 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %151, i64 0, i32 2
  %153 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i169 to i64
  %154 = and i64 %153, 4294967295
  %SandMem.TaintCheck2.i170 = icmp ult i64 %154, %148
  br i1 %SandMem.TaintCheck2.i170, label %json_value_get_string.exit, label %wasm.trap.fail3.i172

wasm.trap.fail3.i172:                             ; preds = %TaintCheck.succeeded.i171
  tail call void @llvm.trap() #16
  unreachable

json_value_get_string.exit:                       ; preds = %TaintCheck.succeeded.i171
  %155 = add i64 %154, %149
  %156 = inttoptr i64 %155 to %Tstruct.json_value_value_t_t*
  %string.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %156, i64 0, i32 0
  %157 = load i8*, i8** %string.i, align 4, !tbaa !26
  %phi.cast342 = ptrtoint i8* %157 to i64
  %158 = and i64 %phi.cast342, 4294967295
  %159 = trunc i64 %cond.i188 to i32
  %cmp49 = icmp eq i32 %159, 0
  %160 = trunc i64 %phi.cast342 to i32
  %cmp50 = icmp eq i32 %160, 0
  %or.cond = or i1 %cmp49, %cmp50
  br i1 %or.cond, label %cleanup, label %if.end52

if.end52:                                         ; preds = %json_value_get_string.exit
  %161 = load i64, i64* @sbxHeap, align 8
  %162 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %147, %162
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end52
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end52
  %SandMem.TaintCheck53 = icmp ult i64 %158, %162
  br i1 %SandMem.TaintCheck53, label %TaintCheck.succeeded57, label %wasm.trap.fail54

wasm.trap.fail54:                                 ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded57:                           ; preds = %TaintCheck.succeeded
  %163 = add i64 %161, %158
  %164 = add i64 %161, %147
  %165 = inttoptr i64 %164 to i8*
  %166 = inttoptr i64 %163 to i8*
  %call58 = tail call i32 @t_strcmp(i8* %165, i8* %166) #16
  %cmp59 = icmp eq i32 %call58, 0
  br label %cleanup

sw.bb60:                                          ; preds = %if.end
  br i1 %tobool.not.i, label %json_value_get_boolean.exit161, label %cond.true.i.i149

cond.true.i.i149:                                 ; preds = %sw.bb60
  %167 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i148 = icmp ult i64 %1, %167
  br i1 %SandMem.TaintCheck.i.i148, label %json_value_get_type.exit.i153, label %wasm.trap.fail.i.i150

wasm.trap.fail.i.i150:                            ; preds = %cond.true.i.i149
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i153:                    ; preds = %cond.true.i.i149
  %168 = load i64, i64* @sbxHeap, align 8
  %169 = add i64 %168, %1
  %170 = inttoptr i64 %169 to %Tstruct.json_value_t_t*
  %type.i.i151 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %170, i64 0, i32 1
  %171 = load i32, i32* %type.i.i151, align 8, !tbaa !24
  %cmp.i152 = icmp eq i32 %171, 6
  br i1 %cmp.i152, label %TaintCheck.succeeded.i156, label %json_value_get_boolean.exit161

TaintCheck.succeeded.i156:                        ; preds = %json_value_get_type.exit.i153
  %value1.i154 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %170, i64 0, i32 2
  %172 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i154 to i64
  %173 = and i64 %172, 4294967295
  %SandMem.TaintCheck2.i155 = icmp ult i64 %173, %167
  br i1 %SandMem.TaintCheck2.i155, label %TaintCheck.succeeded6.i159, label %wasm.trap.fail3.i157

wasm.trap.fail3.i157:                             ; preds = %TaintCheck.succeeded.i156
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i159:                       ; preds = %TaintCheck.succeeded.i156
  %174 = add i64 %173, %168
  %175 = inttoptr i64 %174 to %Tstruct.json_value_value_t_t*
  %boolean.i158 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %175, i64 0, i32 4
  %176 = load i32, i32* %boolean.i158, align 8, !tbaa !43
  br label %json_value_get_boolean.exit161

json_value_get_boolean.exit161:                   ; preds = %sw.bb60, %json_value_get_type.exit.i153, %TaintCheck.succeeded6.i159
  %cond.i160 = phi i32 [ %176, %TaintCheck.succeeded6.i159 ], [ -1, %json_value_get_type.exit.i153 ], [ -1, %sw.bb60 ]
  br i1 %tobool.not.i124, label %json_value_get_boolean.exit, label %cond.true.i.i136

cond.true.i.i136:                                 ; preds = %json_value_get_boolean.exit161
  %177 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i135 = icmp ult i64 %3, %177
  br i1 %SandMem.TaintCheck.i.i135, label %json_value_get_type.exit.i140, label %wasm.trap.fail.i.i137

wasm.trap.fail.i.i137:                            ; preds = %cond.true.i.i136
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i140:                    ; preds = %cond.true.i.i136
  %178 = load i64, i64* @sbxHeap, align 8
  %179 = add i64 %178, %3
  %180 = inttoptr i64 %179 to %Tstruct.json_value_t_t*
  %type.i.i138 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %180, i64 0, i32 1
  %181 = load i32, i32* %type.i.i138, align 8, !tbaa !24
  %cmp.i139 = icmp eq i32 %181, 6
  br i1 %cmp.i139, label %TaintCheck.succeeded.i143, label %json_value_get_boolean.exit

TaintCheck.succeeded.i143:                        ; preds = %json_value_get_type.exit.i140
  %value1.i141 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %180, i64 0, i32 2
  %182 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i141 to i64
  %183 = and i64 %182, 4294967295
  %SandMem.TaintCheck2.i142 = icmp ult i64 %183, %177
  br i1 %SandMem.TaintCheck2.i142, label %TaintCheck.succeeded6.i145, label %wasm.trap.fail3.i144

wasm.trap.fail3.i144:                             ; preds = %TaintCheck.succeeded.i143
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i145:                       ; preds = %TaintCheck.succeeded.i143
  %184 = add i64 %183, %178
  %185 = inttoptr i64 %184 to %Tstruct.json_value_value_t_t*
  %boolean.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %185, i64 0, i32 4
  %186 = load i32, i32* %boolean.i, align 8, !tbaa !43
  br label %json_value_get_boolean.exit

json_value_get_boolean.exit:                      ; preds = %json_value_get_boolean.exit161, %json_value_get_type.exit.i140, %TaintCheck.succeeded6.i145
  %cond.i146 = phi i32 [ %186, %TaintCheck.succeeded6.i145 ], [ -1, %json_value_get_type.exit.i140 ], [ -1, %json_value_get_boolean.exit161 ]
  %cmp63 = icmp eq i32 %cond.i160, %cond.i146
  br label %cleanup

sw.bb65:                                          ; preds = %if.end
  br i1 %tobool.not.i, label %json_value_get_number.exit, label %cond.true.i.i192

cond.true.i.i192:                                 ; preds = %sw.bb65
  %187 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i191 = icmp ult i64 %1, %187
  br i1 %SandMem.TaintCheck.i.i191, label %json_value_get_type.exit.i196, label %wasm.trap.fail.i.i193

wasm.trap.fail.i.i193:                            ; preds = %cond.true.i.i192
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i196:                    ; preds = %cond.true.i.i192
  %188 = load i64, i64* @sbxHeap, align 8
  %189 = add i64 %188, %1
  %190 = inttoptr i64 %189 to %Tstruct.json_value_t_t*
  %type.i.i194 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %190, i64 0, i32 1
  %191 = load i32, i32* %type.i.i194, align 8, !tbaa !24
  %cmp.i195 = icmp eq i32 %191, 3
  br i1 %cmp.i195, label %TaintCheck.succeeded.i199, label %json_value_get_number.exit

TaintCheck.succeeded.i199:                        ; preds = %json_value_get_type.exit.i196
  %value1.i197 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %190, i64 0, i32 2
  %192 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i197 to i64
  %193 = and i64 %192, 4294967295
  %SandMem.TaintCheck2.i198 = icmp ult i64 %193, %187
  br i1 %SandMem.TaintCheck2.i198, label %TaintCheck.succeeded6.i201, label %wasm.trap.fail3.i200

wasm.trap.fail3.i200:                             ; preds = %TaintCheck.succeeded.i199
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i201:                       ; preds = %TaintCheck.succeeded.i199
  %194 = add i64 %193, %188
  %195 = inttoptr i64 %194 to %Tstruct.json_value_value_t_t*
  %number.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %195, i64 0, i32 1
  %196 = load double, double* %number.i, align 8, !tbaa !44
  br label %json_value_get_number.exit

json_value_get_number.exit:                       ; preds = %sw.bb65, %json_value_get_type.exit.i196, %TaintCheck.succeeded6.i201
  %cond.i202 = phi double [ %196, %TaintCheck.succeeded6.i201 ], [ 0.000000e+00, %json_value_get_type.exit.i196 ], [ 0.000000e+00, %sw.bb65 ]
  br i1 %tobool.not.i124, label %json_value_get_number.exit325, label %cond.true.i.i313

cond.true.i.i313:                                 ; preds = %json_value_get_number.exit
  %197 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i312 = icmp ult i64 %3, %197
  br i1 %SandMem.TaintCheck.i.i312, label %json_value_get_type.exit.i317, label %wasm.trap.fail.i.i314

wasm.trap.fail.i.i314:                            ; preds = %cond.true.i.i313
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i317:                    ; preds = %cond.true.i.i313
  %198 = load i64, i64* @sbxHeap, align 8
  %199 = add i64 %198, %3
  %200 = inttoptr i64 %199 to %Tstruct.json_value_t_t*
  %type.i.i315 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %200, i64 0, i32 1
  %201 = load i32, i32* %type.i.i315, align 8, !tbaa !24
  %cmp.i316 = icmp eq i32 %201, 3
  br i1 %cmp.i316, label %TaintCheck.succeeded.i320, label %json_value_get_number.exit325

TaintCheck.succeeded.i320:                        ; preds = %json_value_get_type.exit.i317
  %value1.i318 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %200, i64 0, i32 2
  %202 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i318 to i64
  %203 = and i64 %202, 4294967295
  %SandMem.TaintCheck2.i319 = icmp ult i64 %203, %197
  br i1 %SandMem.TaintCheck2.i319, label %TaintCheck.succeeded6.i323, label %wasm.trap.fail3.i321

wasm.trap.fail3.i321:                             ; preds = %TaintCheck.succeeded.i320
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i323:                       ; preds = %TaintCheck.succeeded.i320
  %204 = add i64 %203, %198
  %205 = inttoptr i64 %204 to %Tstruct.json_value_value_t_t*
  %number.i322 = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %205, i64 0, i32 1
  %206 = load double, double* %number.i322, align 8, !tbaa !44
  br label %json_value_get_number.exit325

json_value_get_number.exit325:                    ; preds = %json_value_get_number.exit, %json_value_get_type.exit.i317, %TaintCheck.succeeded6.i323
  %cond.i324 = phi double [ %206, %TaintCheck.succeeded6.i323 ], [ 0.000000e+00, %json_value_get_type.exit.i317 ], [ 0.000000e+00, %json_value_get_number.exit ]
  %sub = fsub double %cond.i202, %cond.i324
  %207 = tail call double @llvm.fabs.f64(double %sub)
  %cmp68 = fcmp olt double %207, 0x3EB0C6F7A0B5ED8D
  br label %cleanup

cleanup.loopexit:                                 ; preds = %json_array_get_value.exit340
  %208 = xor i1 %tobool.not, true
  br label %cleanup

cleanup.loopexit363:                              ; preds = %json_object_get_value.exit
  %209 = xor i1 %tobool38.not, true
  br label %cleanup

cleanup:                                          ; preds = %json_value_get_string.exit189, %json_value_get_type.exit.i168, %cleanup.loopexit363, %cleanup.loopexit, %for.cond28.preheader, %for.cond.preheader, %if.end, %json_value_get_string.exit, %json_object_get_count.exit, %json_array_get_count.exit246, %json_value_get_type.exit131, %json_value_get_number.exit325, %json_value_get_boolean.exit, %TaintCheck.succeeded57
  %retval.0.shrunk = phi i1 [ %cmp68, %json_value_get_number.exit325 ], [ %cmp63, %json_value_get_boolean.exit ], [ %cmp59, %TaintCheck.succeeded57 ], [ false, %json_value_get_type.exit131 ], [ false, %json_array_get_count.exit246 ], [ false, %json_object_get_count.exit ], [ false, %json_value_get_string.exit ], [ true, %if.end ], [ true, %for.cond.preheader ], [ true, %for.cond28.preheader ], [ %208, %cleanup.loopexit ], [ %209, %cleanup.loopexit363 ], [ false, %json_value_get_type.exit.i168 ], [ false, %json_value_get_string.exit189 ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #10

; Function Attrs: nounwind uwtable
define dso_local i32 @json_type(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %json_value_get_type.exit, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i, label %TaintCheck.succeeded.i, label %wasm.trap.fail.i

wasm.trap.fail.i:                                 ; preds = %cond.true.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded.i:                           ; preds = %cond.true.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i, align 8, !tbaa !24
  br label %json_value_get_type.exit

json_value_get_type.exit:                         ; preds = %entry, %TaintCheck.succeeded.i
  %cond.i = phi i32 [ %7, %TaintCheck.succeeded.i ], [ -1, %entry ]
  ret i32 %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_object_t_t* @json_object(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %json_value_get_object.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %7, 4
  br i1 %cmp.i, label %TaintCheck.succeeded.i, label %json_value_get_object.exit

TaintCheck.succeeded.i:                           ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %object.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 2
  %12 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %object.i, align 4, !tbaa !25
  %phi.cast = ptrtoint %Tstruct.json_object_t_t* %12 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast1 = inttoptr i64 %phi.bo to %Tstruct.json_object_t_t*
  br label %json_value_get_object.exit

json_value_get_object.exit:                       ; preds = %entry, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi %Tstruct.json_object_t_t* [ %phi.cast1, %TaintCheck.succeeded6.i ], [ null, %json_value_get_type.exit.i ], [ null, %entry ]
  ret %Tstruct.json_object_t_t* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local %Tstruct.json_array_t_t* @json_array(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %json_value_get_array.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %7, 5
  br i1 %cmp.i, label %TaintCheck.succeeded.i, label %json_value_get_array.exit

TaintCheck.succeeded.i:                           ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %array.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 3
  %12 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array.i, align 4, !tbaa !27
  %phi.cast = ptrtoint %Tstruct.json_array_t_t* %12 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast1 = inttoptr i64 %phi.bo to %Tstruct.json_array_t_t*
  br label %json_value_get_array.exit

json_value_get_array.exit:                        ; preds = %entry, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi %Tstruct.json_array_t_t* [ %phi.cast1, %TaintCheck.succeeded6.i ], [ null, %json_value_get_type.exit.i ], [ null, %entry ]
  ret %Tstruct.json_array_t_t* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local i8* @json_string(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %json_value_get_string.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %TaintCheck.succeeded.i, label %json_value_get_string.exit

TaintCheck.succeeded.i:                           ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %string.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 0
  %12 = load i8*, i8** %string.i, align 4, !tbaa !26
  %phi.cast = ptrtoint i8* %12 to i64
  %phi.bo = and i64 %phi.cast, 4294967295
  %phi.cast1 = inttoptr i64 %phi.bo to i8*
  br label %json_value_get_string.exit

json_value_get_string.exit:                       ; preds = %entry, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi i8* [ %phi.cast1, %TaintCheck.succeeded6.i ], [ null, %json_value_get_type.exit.i ], [ null, %entry ]
  ret i8* %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local double @json_number(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %json_value_get_number.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %7, 3
  br i1 %cmp.i, label %TaintCheck.succeeded.i, label %json_value_get_number.exit

TaintCheck.succeeded.i:                           ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %number.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 1
  %12 = load double, double* %number.i, align 8, !tbaa !44
  br label %json_value_get_number.exit

json_value_get_number.exit:                       ; preds = %entry, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi double [ %12, %TaintCheck.succeeded6.i ], [ 0.000000e+00, %json_value_get_type.exit.i ], [ 0.000000e+00, %entry ]
  ret double %cond.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_boolean(%Tstruct.json_value_t_t* %value) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = trunc i64 %0 to i32
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %json_value_get_boolean.exit, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  %3 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i.i = icmp ult i64 %1, %3
  br i1 %SandMem.TaintCheck.i.i, label %json_value_get_type.exit.i, label %wasm.trap.fail.i.i

wasm.trap.fail.i.i:                               ; preds = %cond.true.i.i
  tail call void @llvm.trap() #16
  unreachable

json_value_get_type.exit.i:                       ; preds = %cond.true.i.i
  %4 = load i64, i64* @sbxHeap, align 8
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to %Tstruct.json_value_t_t*
  %type.i.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 1
  %7 = load i32, i32* %type.i.i, align 8, !tbaa !24
  %cmp.i = icmp eq i32 %7, 6
  br i1 %cmp.i, label %TaintCheck.succeeded.i, label %json_value_get_boolean.exit

TaintCheck.succeeded.i:                           ; preds = %json_value_get_type.exit.i
  %value1.i = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %6, i64 0, i32 2
  %8 = ptrtoint %Tstruct.json_value_value_t_t* %value1.i to i64
  %9 = and i64 %8, 4294967295
  %SandMem.TaintCheck2.i = icmp ult i64 %9, %3
  br i1 %SandMem.TaintCheck2.i, label %TaintCheck.succeeded6.i, label %wasm.trap.fail3.i

wasm.trap.fail3.i:                                ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #16
  unreachable

TaintCheck.succeeded6.i:                          ; preds = %TaintCheck.succeeded.i
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to %Tstruct.json_value_value_t_t*
  %boolean.i = getelementptr inbounds %Tstruct.json_value_value_t_t, %Tstruct.json_value_value_t_t* %11, i64 0, i32 4
  %12 = load i32, i32* %boolean.i, align 8, !tbaa !43
  br label %json_value_get_boolean.exit

json_value_get_boolean.exit:                      ; preds = %entry, %json_value_get_type.exit.i, %TaintCheck.succeeded6.i
  %cond.i = phi i32 [ %12, %TaintCheck.succeeded6.i ], [ -1, %json_value_get_type.exit.i ], [ -1, %entry ]
  ret i32 %cond.i
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define dso_local void @json_set_escape_slashes(i32 %escape_slashes) local_unnamed_addr #11 {
entry:
  store i32 %escape_slashes, i32* @parson_escape_slashes, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @json_serialize_to_file(%Tstruct.json_value_t_t* %value, i8* nocapture readonly %filename) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint %Tstruct.json_value_t_t* %value to i64
  %1 = and i64 %0, 4294967295
  %2 = inttoptr i64 %1 to %Tstruct.json_value_t_t*
  %call = tail call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %2)
  %3 = ptrtoint i8* %call to i64
  %4 = and i64 %3, 4294967295
  %5 = trunc i64 %3 to i32
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call noalias %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0))
  %6 = ptrtoint %struct._IO_FILE* %call1 to i64
  %7 = trunc i64 %6 to i32
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %TaintCheck.succeeded.i, label %if.end4

TaintCheck.succeeded.i:                           ; preds = %if.end
  %8 = inttoptr i64 %4 to i8*
  %add.ptr.i = getelementptr inbounds i8, i8* %8, i64 1
  %9 = ptrtoint i8* %add.ptr.i to i64
  %10 = trunc i64 %9 to i32
  %IsoHeap.upper.not.i = icmp ugt i32 %5, %10
  br i1 %IsoHeap.upper.not.i, label %TaintCheck.failed6.i, label %IsoHeap.success.i

IsoHeap.success.i:                                ; preds = %TaintCheck.succeeded.i
  %11 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i = icmp ult i64 %4, %11
  br i1 %SandMem.TaintCheck.i, label %json_free_serialized_string.exit, label %wasm.trap.fail.i

TaintCheck.failed6.i:                             ; preds = %TaintCheck.succeeded.i
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail.i:                                 ; preds = %IsoHeap.success.i
  tail call void @llvm.trap() #16
  unreachable

json_free_serialized_string.exit:                 ; preds = %IsoHeap.success.i
  %12 = load i64, i64* @sbxHeap, align 8
  %13 = add i64 %12, %4
  %14 = inttoptr i64 %13 to i8*
  tail call void @t_free(i8* %14) #16
  %15 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %15, i64* @sbxHeapRange, align 8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %16 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %4, %16
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %if.end4
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %if.end4
  %17 = load i64, i64* @sbxHeap, align 8
  %18 = add i64 %17, %4
  %19 = inttoptr i64 %18 to i8*
  %call5 = tail call i64 @t_strlen(i8* %19) #16
  %20 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck6 = icmp ult i64 %4, %20
  br i1 %SandMem.TaintCheck6, label %TaintCheck.succeeded10, label %wasm.trap.fail7

wasm.trap.fail7:                                  ; preds = %TaintCheck.succeeded
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded10:                           ; preds = %TaintCheck.succeeded
  %21 = load i64, i64* @sbxHeap, align 8
  %22 = add i64 %21, %4
  %23 = inttoptr i64 %22 to i8*
  %call11 = tail call i64 @t_strlen(i8* %23) #16
  %call12 = tail call noalias i8* @malloc(i64 %call11) #16
  %24 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck13 = icmp ult i64 %4, %24
  br i1 %SandMem.TaintCheck13, label %TaintCheck.succeeded.i49, label %wasm.trap.fail14

wasm.trap.fail14:                                 ; preds = %TaintCheck.succeeded10
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded.i49:                         ; preds = %TaintCheck.succeeded10
  %25 = load i64, i64* @sbxHeap, align 8
  %26 = add i64 %25, %4
  %27 = inttoptr i64 %26 to i8*
  %call18 = tail call i8* @t_strcpy(i8* %call12, i8* %27) #16
  %call20 = tail call i32 @fputs(i8* %call12, %struct._IO_FILE* %call1)
  %cmp21 = icmp eq i32 %call20, -1
  %call25 = tail call i32 @fclose(%struct._IO_FILE* %call1)
  %cmp26 = icmp eq i32 %call25, -1
  %narrow = or i1 %cmp21, %cmp26
  %return_code.1 = sext i1 %narrow to i32
  %28 = inttoptr i64 %4 to i8*
  %add.ptr.i47 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = ptrtoint i8* %add.ptr.i47 to i64
  %30 = trunc i64 %29 to i32
  %IsoHeap.upper.not.i48 = icmp ugt i32 %5, %30
  br i1 %IsoHeap.upper.not.i48, label %TaintCheck.failed6.i52, label %IsoHeap.success.i51

IsoHeap.success.i51:                              ; preds = %TaintCheck.succeeded.i49
  %31 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck.i50 = icmp ult i64 %4, %31
  br i1 %SandMem.TaintCheck.i50, label %json_free_serialized_string.exit54, label %wasm.trap.fail.i53

TaintCheck.failed6.i52:                           ; preds = %TaintCheck.succeeded.i49
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail.i53:                               ; preds = %IsoHeap.success.i51
  tail call void @llvm.trap() #16
  unreachable

json_free_serialized_string.exit54:               ; preds = %IsoHeap.success.i51
  %32 = load i64, i64* @sbxHeap, align 8
  %33 = add i64 %32, %4
  %34 = inttoptr i64 %33 to i8*
  tail call void @t_free(i8* %34) #16
  %35 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %35, i64* @sbxHeapRange, align 8
  tail call void @free(i8* %call12) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %json_free_serialized_string.exit54, %json_free_serialized_string.exit
  %retval.0 = phi i32 [ -1, %json_free_serialized_string.exit ], [ %return_code.1, %json_free_serialized_string.exit54 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc i32 @json_array_resize(%Tstruct.json_array_t_t* %array, i64 %new_capacity) unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %new_capacity, 0
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint %Tstruct.json_array_t_t* %array to i64
  %1 = and i64 %0, 4294967295
  %2 = load i64, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck = icmp ult i64 %1, %2
  br i1 %SandMem.TaintCheck, label %TaintCheck.succeeded, label %wasm.trap.fail

wasm.trap.fail:                                   ; preds = %lor.lhs.false
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded:                             ; preds = %lor.lhs.false
  %3 = load i64, i64* @sbxHeap, align 8
  %4 = add i64 %3, %1
  %5 = inttoptr i64 %4 to %Tstruct.json_array_t_t*
  %count = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %5, i64 0, i32 2
  %6 = load i64, i64* %count, align 8, !tbaa !28
  %cmp1 = icmp ugt i64 %6, %new_capacity
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %TaintCheck.succeeded
  %mul = shl i64 %new_capacity, 3
  %call = tail call i8* @t_malloc(i64 %mul) #16
  %7 = ptrtoint i8* %call to i64
  %8 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %8, i64* @sbxHeapRange, align 8
  %9 = and i64 %7, 4294967295
  %10 = trunc i64 %7 to i32
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %11 = load i64, i64* @sbxHeap, align 8
  %SandMem.TaintCheck5 = icmp ult i64 %1, %8
  br i1 %SandMem.TaintCheck5, label %TaintCheck.succeeded9, label %wasm.trap.fail6

wasm.trap.fail6:                                  ; preds = %if.end4
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded9:                            ; preds = %if.end4
  %12 = add i64 %11, %1
  %13 = inttoptr i64 %12 to %Tstruct.json_array_t_t*
  %items = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %13, i64 0, i32 1
  %14 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items, align 4, !tbaa !30
  %15 = ptrtoint %Tstruct.json_value_t_t** %14 to i64
  %16 = and i64 %15, 4294967295
  %17 = trunc i64 %15 to i32
  %cmp10.not = icmp eq i32 %17, 0
  br i1 %cmp10.not, label %if.end44, label %TaintCheck.succeeded15

TaintCheck.succeeded15:                           ; preds = %TaintCheck.succeeded9
  %count16 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %13, i64 0, i32 2
  %18 = load i64, i64* %count16, align 8, !tbaa !28
  %cmp17.not = icmp eq i64 %18, 0
  br i1 %cmp17.not, label %if.end44, label %TaintCheck.succeeded29

TaintCheck.succeeded29:                           ; preds = %TaintCheck.succeeded15
  %mul31 = shl i64 %18, 3
  %SandMem.TaintCheck32 = icmp ult i64 %9, %8
  br i1 %SandMem.TaintCheck32, label %TaintCheck.succeeded36, label %wasm.trap.fail33

wasm.trap.fail33:                                 ; preds = %TaintCheck.succeeded29
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded36:                           ; preds = %TaintCheck.succeeded29
  %SandMem.TaintCheck37 = icmp ult i64 %16, %8
  br i1 %SandMem.TaintCheck37, label %TaintCheck.succeeded41, label %wasm.trap.fail38

wasm.trap.fail38:                                 ; preds = %TaintCheck.succeeded36
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded41:                           ; preds = %TaintCheck.succeeded36
  %19 = add i64 %16, %11
  %20 = add i64 %11, %9
  %21 = inttoptr i64 %20 to i8*
  %22 = inttoptr i64 %19 to i8*
  %call42 = tail call i8* @t_memcpy(i8* %21, i8* %22, i64 %mul31) #16
  %.pre = load i64, i64* @sbxHeapRange, align 8
  br label %if.end44

if.end44:                                         ; preds = %TaintCheck.succeeded41, %TaintCheck.succeeded15, %TaintCheck.succeeded9
  %23 = phi i64 [ %.pre, %TaintCheck.succeeded41 ], [ %8, %TaintCheck.succeeded15 ], [ %8, %TaintCheck.succeeded9 ]
  %SandMem.TaintCheck45 = icmp ult i64 %1, %23
  br i1 %SandMem.TaintCheck45, label %TaintCheck.succeeded49, label %wasm.trap.fail46

wasm.trap.fail46:                                 ; preds = %if.end44
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded49:                           ; preds = %if.end44
  %24 = load i64, i64* @sbxHeap, align 8
  %25 = add i64 %24, %1
  %26 = inttoptr i64 %25 to %Tstruct.json_array_t_t*
  %items50 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %26, i64 0, i32 1
  %27 = load %Tstruct.json_value_t_t**, %Tstruct.json_value_t_t*** %items50, align 4, !tbaa !30
  %28 = ptrtoint %Tstruct.json_value_t_t** %27 to i64
  %29 = trunc i64 %28 to i32
  %IsoHeap.is_null = icmp eq i32 %29, 0
  br i1 %IsoHeap.is_null, label %IsoHeap.success, label %TaintCheck.succeeded65

TaintCheck.succeeded65:                           ; preds = %TaintCheck.succeeded49
  %add.ptr = getelementptr inbounds %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %27, i64 1
  %30 = ptrtoint %Tstruct.json_value_t_t** %add.ptr to i64
  %31 = trunc i64 %30 to i32
  %IsoHeap.upper.not = icmp ugt i32 %29, %31
  br i1 %IsoHeap.upper.not, label %TaintCheck.failed71, label %IsoHeap.success

IsoHeap.success:                                  ; preds = %TaintCheck.succeeded65, %TaintCheck.succeeded49
  %32 = and i64 %28, 4294967295
  %SandMem.TaintCheck72 = icmp ult i64 %32, %23
  br i1 %SandMem.TaintCheck72, label %TaintCheck.succeeded76, label %wasm.trap.fail73

TaintCheck.failed71:                              ; preds = %TaintCheck.succeeded65
  tail call void @llvm.trap() #17
  unreachable

wasm.trap.fail73:                                 ; preds = %IsoHeap.success
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded76:                           ; preds = %IsoHeap.success
  %33 = add i64 %32, %24
  %34 = inttoptr i64 %33 to i8*
  tail call void @t_free(i8* %34) #16
  %35 = tail call i64 @c_fetch_sandbox_heap_bound() #16
  store i64 %35, i64* @sbxHeapRange, align 8
  %SandMem.TaintCheck77 = icmp ult i64 %1, %35
  br i1 %SandMem.TaintCheck77, label %TaintCheck.succeeded86, label %wasm.trap.fail78

wasm.trap.fail78:                                 ; preds = %TaintCheck.succeeded76
  tail call void @llvm.trap()
  unreachable

TaintCheck.succeeded86:                           ; preds = %TaintCheck.succeeded76
  %36 = load i64, i64* @sbxHeap, align 8
  %37 = add i64 %36, %1
  %38 = inttoptr i64 %37 to %Tstruct.json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %38, i64 0, i32 3
  store i64 %new_capacity, i64* %capacity, align 8, !tbaa !52
  %items87 = getelementptr inbounds %Tstruct.json_array_t_t, %Tstruct.json_array_t_t* %38, i64 0, i32 1
  %39 = bitcast %Tstruct.json_value_t_t*** %items87 to i64*
  store i64 %9, i64* %39, align 4, !tbaa !30
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %TaintCheck.succeeded, %TaintCheck.succeeded86
  %retval.0 = phi i32 [ 0, %TaintCheck.succeeded86 ], [ -1, %TaintCheck.succeeded ], [ -1, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fseek(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @ftell(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local void @rewind(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare dso_local noundef i32 @ferror(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

declare dso_local i8* @t_strstr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #14

; Function Attrs: alwaysinline
define internal fastcc void @sand_mem_check_and_trap(i1 %0) unnamed_addr #15 {
entry:
  br i1 %0, label %end, label %trap

trap:                                             ; preds = %entry
  call void @llvm.trap()
  unreachable

end:                                              ; preds = %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #9 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree norecurse nounwind uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { alwaysinline }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind readonly }
attributes #19 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (git@github.com:TypeFlexer/TypeFlexer-Clang.git 1ff1c030905ca01d91c47de79da9743dae2b5ed9)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !12, i64 24}
!10 = !{!"json_object_t_t", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 32}
!11 = !{!"any pointer", !3, i64 0}
!12 = !{!"long", !3, i64 0}
!13 = !{!10, !12, i64 32}
!14 = !{!10, !11, i64 8}
!15 = !{!11, !11, i64 0}
!16 = !{!10, !11, i64 0}
!17 = !{!18, !11, i64 0}
!18 = !{!"json_value_t_t", !11, i64 0, !6, i64 8, !19, i64 16}
!19 = !{!"json_value_value_t_t", !11, i64 0, !20, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36}
!20 = !{!"double", !3, i64 0}
!21 = !{!10, !11, i64 16}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = !{!18, !6, i64 8}
!25 = !{!18, !11, i64 32}
!26 = !{!18, !11, i64 16}
!27 = !{!18, !11, i64 40}
!28 = !{!29, !12, i64 16}
!29 = !{!"json_array_t_t", !11, i64 0, !11, i64 8, !12, i64 16, !12, i64 24}
!30 = !{!29, !11, i64 8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = !{!18, !6, i64 48}
!44 = !{!18, !20, i64 24}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
!50 = !{!29, !11, i64 0}
!51 = distinct !{!51, !8}
!52 = !{!29, !12, i64 24}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
