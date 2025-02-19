; ModuleID = 'png2pnm.c'
source_filename = "png2pnm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.png_struct_def = type opaque
%struct.png_info_def = type opaque
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@lowerbound_1 = common global i64 0
@upperbound_1 = common global i64 0
@lowerbound_2 = common global i64 0
@upperbound_2 = common global i64 0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"PNM2PNG\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Error:  cannot create alpha-channel file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"PNG2PNM\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Error:  unknown option %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Error:  file %s does not exist\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Error:  cannot create file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Error:  too many parameters\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Error:  unsuccessful conversion of PNG-image\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"   by Willem van Schaik, 1999\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Usage:  png2pnm [options] <file>.png [<file>.pnm]\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"   or:  ... | png2pnm [options]\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.14 = private unnamed_addr constant [66 x i8] c"   -r[aw]   write pnm-file in binary format (P4/P5/P6) (default)\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"   -n[oraw] write pnm-file in ascii format (P1/P2/P3)\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"   -a[lpha] <file>.pgm write PNG alpha channel as pgm-file\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"   -h | -?  print this help-information\0A\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"Error:  PNG-file doesn't contain alpha channel\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"P5\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"P2\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"P6\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"P3\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"png2pnm took %f seconds to execute \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fp_rd = alloca %struct._IO_FILE*, align 8
  %fp_wr = alloca %struct._IO_FILE*, align 8
  %fp_al = alloca %struct._IO_FILE*, align 8
  %raw = alloca i8, align 1
  %alpha = alloca i8, align 1
  %argi = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %fp_rd, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %fp_wr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp_al, align 8
  store i8 1, i8* %raw, align 1
  store i8 0, i8* %alpha, align 1
  store i32 1, i32* %argi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %argi, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %argv.addr, align 8
  %5 = load i32, i32* %argi, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 45
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i8**, i8*** %argv.addr, align 8
  %9 = load i32, i32* %argi, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 %idxprom4
  %10 = load i8*, i8** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %11 to i32
  switch i32 %conv7, label %sw.default [
    i32 110, label %sw.bb
    i32 114, label %sw.bb8
    i32 97, label %sw.bb9
    i32 104, label %sw.bb19
    i32 63, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.then
  store i8 0, i8* %raw, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then
  store i8 1, i8* %raw, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then
  store i8 1, i8* %alpha, align 1
  %12 = load i32, i32* %argi, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %argi, align 4
  %13 = load i8**, i8*** %argv.addr, align 8
  %14 = load i32, i32* %argi, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i8*, i8** %13, i64 %idxprom10
  %15 = load i8*, i8** %arrayidx11, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp_al, align 8
  %cmp12 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %sw.bb9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8**, i8*** %argv.addr, align 8
  %19 = load i32, i32* %argi, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds i8*, i8** %18, i64 %idxprom16
  %20 = load i8*, i8** %arrayidx17, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %sw.bb9
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then, %if.then
  call void @usage()
  call void @exit(i32 0) #5
  unreachable

sw.default:                                       ; preds = %if.then
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i8**, i8*** %argv.addr, align 8
  %24 = load i32, i32* %argi, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds i8*, i8** %23, i64 %idxprom21
  %25 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %25)
  call void @usage()
  call void @exit(i32 1) #5
  unreachable

sw.epilog:                                        ; preds = %if.end, %sw.bb8, %sw.bb
  br label %if.end58

if.else:                                          ; preds = %for.body
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_rd, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp24 = icmp eq %struct._IO_FILE* %26, %27
  br i1 %cmp24, label %if.then26, label %if.else38

if.then26:                                        ; preds = %if.else
  %28 = load i8**, i8*** %argv.addr, align 8
  %29 = load i32, i32* %argi, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds i8*, i8** %28, i64 %idxprom27
  %30 = load i8*, i8** %arrayidx28, align 8
  %call29 = call noalias %struct._IO_FILE* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %call29, %struct._IO_FILE** %fp_rd, align 8
  %cmp30 = icmp eq %struct._IO_FILE* %call29, null
  br i1 %cmp30, label %if.then32, label %if.end37

if.then32:                                        ; preds = %if.then26
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i8**, i8*** %argv.addr, align 8
  %34 = load i32, i32* %argi, align 4
  %idxprom34 = sext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds i8*, i8** %33, i64 %idxprom34
  %35 = load i8*, i8** %arrayidx35, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %35)
  call void @exit(i32 1) #5
  unreachable

if.end37:                                         ; preds = %if.then26
  br label %if.end57

if.else38:                                        ; preds = %if.else
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_wr, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp39 = icmp eq %struct._IO_FILE* %36, %37
  br i1 %cmp39, label %if.then41, label %if.else53

if.then41:                                        ; preds = %if.else38
  %38 = load i8**, i8*** %argv.addr, align 8
  %39 = load i32, i32* %argi, align 4
  %idxprom42 = sext i32 %39 to i64
  %arrayidx43 = getelementptr inbounds i8*, i8** %38, i64 %idxprom42
  %40 = load i8*, i8** %arrayidx43, align 8
  %call44 = call noalias %struct._IO_FILE* @fopen(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call44, %struct._IO_FILE** %fp_wr, align 8
  %cmp45 = icmp eq %struct._IO_FILE* %call44, null
  br i1 %cmp45, label %if.then47, label %if.end52

if.then47:                                        ; preds = %if.then41
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i8**, i8*** %argv.addr, align 8
  %44 = load i32, i32* %argi, align 4
  %idxprom49 = sext i32 %44 to i64
  %arrayidx50 = getelementptr inbounds i8*, i8** %43, i64 %idxprom49
  %45 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %45)
  call void @exit(i32 1) #5
  unreachable

if.end52:                                         ; preds = %if.then41
  br label %if.end56

if.else53:                                        ; preds = %if.else38
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  call void @usage()
  call void @exit(i32 1) #5
  unreachable

if.end56:                                         ; preds = %if.end52
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end37
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end58
  %48 = load i32, i32* %argi, align 4
  %inc59 = add nsw i32 %48, 1
  store i32 %inc59, i32* %argi, align 4
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %for.cond
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_rd, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_wr, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_al, align 8
  %52 = load i8, i8* %raw, align 1
  %53 = load i8, i8* %alpha, align 1
  %call60 = call zeroext i8 @png2pnm(%struct._IO_FILE* %49, %struct._IO_FILE* %50, %struct._IO_FILE* %51, i8 zeroext %52, i8 zeroext %53)
  %conv61 = zext i8 %call60 to i32
  %cmp62 = icmp eq i32 %conv61, 0
  br i1 %cmp62, label %if.then64, label %if.end67

if.then64:                                        ; preds = %for.end
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

if.end67:                                         ; preds = %for.end
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_rd, align 8
  %call68 = call i32 @fclose(%struct._IO_FILE* %56)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_wr, align 8
  %call69 = call i32 @fclose(%struct._IO_FILE* %57)
  %58 = load i8, i8* %alpha, align 1
  %tobool = icmp ne i8 %58, 0
  br i1 %tobool, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end67
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp_al, align 8
  %call71 = call i32 @fclose(%struct._IO_FILE* %59)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end67
  ret i32 0
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @png2pnm(%struct._IO_FILE* %png_file, %struct._IO_FILE* %pnm_file, %struct._IO_FILE* %alpha_file, i8 zeroext %raw, i8 zeroext %alpha) #0 {
entry:
  %retval = alloca i8, align 1
  %png_file.addr = alloca %struct._IO_FILE*, align 8
  %pnm_file.addr = alloca %struct._IO_FILE*, align 8
  %alpha_file.addr = alloca %struct._IO_FILE*, align 8
  %raw.addr = alloca i8, align 1
  %alpha.addr = alloca i8, align 1
  %t = alloca i64, align 8
  %png_ptr = alloca %struct.png_struct_def*, align 8
  %info_ptr = alloca %struct.png_info_def*, align 8
  %buf = alloca [8 x i8], align 1
  %png_pixels = alloca i8*, align 4
  %row_pointers = alloca i8**, align 4
  %pix_ptr = alloca i8*, align 4
  %row_bytes = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bit_depth = alloca i32, align 4
  %channels = alloca i32, align 4
  %color_type = alloca i32, align 4
  %alpha_present = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %dep_16 = alloca i64, align 8
  %tmp = alloca i8*, align 4
  %time_taken = alloca double, align 8
  store %struct._IO_FILE* %png_file, %struct._IO_FILE** %png_file.addr, align 8
  store %struct._IO_FILE* %pnm_file, %struct._IO_FILE** %pnm_file.addr, align 8
  store %struct._IO_FILE* %alpha_file, %struct._IO_FILE** %alpha_file.addr, align 8
  store i8 %raw, i8* %raw.addr, align 1
  store i8 %alpha, i8* %alpha.addr, align 1
  %call = call i64 @clock() #6
  store i64 %call, i64* %t, align 8
  store %struct.png_struct_def* null, %struct.png_struct_def** %png_ptr, align 8
  store %struct.png_info_def* null, %struct.png_info_def** %info_ptr, align 8
  store i8* null, i8** %png_pixels, align 4
  store i8** null, i8*** %row_pointers, align 4
  store i8* null, i8** %pix_ptr, align 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %png_file.addr, align 8
  %call1 = call i64 @fread(i8* %arraydecay, i64 1, i64 8, %struct._IO_FILE* %0)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay3 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %call4 = call i32 @png_sig_cmp(i8* %arraydecay3, i64 0, i64 8)
  store i32 %call4, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp5 = icmp ne i32 %2, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i8 0, i8* %retval, align 1
  br label %return

if.end8:                                          ; preds = %if.end
  %call9 = call i8* @png_get_libpng_ver(%struct.png_struct_def* null)
  %call10 = call noalias %struct.png_struct_def* @png_create_read_struct(i8* %call9, i8* null, void (%struct.png_struct_def*, i8*)* null, void (%struct.png_struct_def*, i8*)* null)
  store %struct.png_struct_def* %call10, %struct.png_struct_def** %png_ptr, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %tobool = icmp ne %struct.png_struct_def* %3, null
  br i1 %tobool, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  store i8 0, i8* %retval, align 1
  br label %return

if.end12:                                         ; preds = %if.end8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %call13 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* %4)
  store %struct.png_info_def* %call13, %struct.png_info_def** %info_ptr, align 8
  %5 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %tobool14 = icmp ne %struct.png_info_def* %5, null
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** null, %struct.png_info_def** null)
  store i8 0, i8* %retval, align 1
  br label %return

if.end16:                                         ; preds = %if.end12
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %call17 = call [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def* %6, void (%struct.__jmp_buf_tag*, i32)* @longjmp, i64 200)
  %arraydecay18 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %call17, i64 0, i64 0
  %call19 = call i32 @_setjmp(%struct.__jmp_buf_tag* %arraydecay18) #7
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info_ptr, %struct.png_info_def** null)
  store i8 0, i8* %retval, align 1
  br label %return

if.end22:                                         ; preds = %if.end16
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %png_file.addr, align 8
  call void @png_init_io(%struct.png_struct_def* %7, %struct._IO_FILE* %8)
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_sig_bytes(%struct.png_struct_def* %9, i32 8)
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %11 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_read_info(%struct.png_struct_def* %10, %struct.png_info_def* %11)
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %13 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %call23 = call i32 @png_get_IHDR(%struct.png_struct_def* %12, %struct.png_info_def* %13, i32* %width, i32* %height, i32* %bit_depth, i32* %color_type, i32* null, i32* null, i32* null)
  %14 = load i32, i32* %color_type, align 4
  %cmp24 = icmp eq i32 %14, 3
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_expand(%struct.png_struct_def* %15)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22
  %16 = load i32, i32* %color_type, align 4
  %cmp28 = icmp eq i32 %16, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end27
  %17 = load i32, i32* %bit_depth, align 4
  %cmp30 = icmp slt i32 %17, 8
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_expand(%struct.png_struct_def* %18)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %land.lhs.true, %if.end27
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %20 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %call34 = call i32 @png_get_valid(%struct.png_struct_def* %19, %struct.png_info_def* %20, i32 16)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_expand(%struct.png_struct_def* %21)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %23 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_read_update_info(%struct.png_struct_def* %22, %struct.png_info_def* %23)
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %25 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %call38 = call i32 @png_get_IHDR(%struct.png_struct_def* %24, %struct.png_info_def* %25, i32* %width, i32* %height, i32* %bit_depth, i32* %color_type, i32* null, i32* null, i32* null)
  %26 = load i32, i32* %bit_depth, align 4
  %cmp39 = icmp eq i32 %26, 16
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  store i8 0, i8* %raw.addr, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37
  %27 = load i32, i32* %color_type, align 4
  %cmp43 = icmp eq i32 %27, 0
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end42
  store i32 1, i32* %channels, align 4
  br label %if.end61

if.else:                                          ; preds = %if.end42
  %28 = load i32, i32* %color_type, align 4
  %cmp46 = icmp eq i32 %28, 4
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else
  store i32 2, i32* %channels, align 4
  br label %if.end60

if.else49:                                        ; preds = %if.else
  %29 = load i32, i32* %color_type, align 4
  %cmp50 = icmp eq i32 %29, 2
  br i1 %cmp50, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else49
  store i32 3, i32* %channels, align 4
  br label %if.end59

if.else53:                                        ; preds = %if.else49
  %30 = load i32, i32* %color_type, align 4
  %cmp54 = icmp eq i32 %30, 6
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.else53
  store i32 4, i32* %channels, align 4
  br label %if.end58

if.else57:                                        ; preds = %if.else53
  store i32 0, i32* %channels, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %if.then56
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then52
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then48
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then45
  %31 = load i32, i32* %channels, align 4
  %sub = sub nsw i32 %31, 1
  %rem = srem i32 %sub, 2
  store i32 %rem, i32* %alpha_present, align 4
  %32 = load i8, i8* %alpha.addr, align 1
  %conv62 = zext i8 %32 to i32
  %tobool63 = icmp ne i32 %conv62, 0
  br i1 %tobool63, label %land.lhs.true64, label %if.end69

land.lhs.true64:                                  ; preds = %if.end61
  %33 = load i32, i32* %alpha_present, align 4
  %tobool65 = icmp ne i32 %33, 0
  br i1 %tobool65, label %if.end69, label %if.then66

if.then66:                                        ; preds = %land.lhs.true64
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

if.end69:                                         ; preds = %land.lhs.true64, %if.end61
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %37 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %call70 = call i64 @png_get_rowbytes(%struct.png_struct_def* %36, %struct.png_info_def* %37)
  %conv71 = trunc i64 %call70 to i32
  store i32 %conv71, i32* %row_bytes, align 4
  %38 = load i32, i32* %row_bytes, align 4
  %cmp72 = icmp eq i32 %38, 0
  br i1 %cmp72, label %if.then78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end69
  %39 = load i32, i32* %height, align 4
  %conv74 = zext i32 %39 to i64
  %40 = load i32, i32* %row_bytes, align 4
  %conv75 = zext i32 %40 to i64
  %div = udiv i64 -1, %conv75
  %cmp76 = icmp ugt i64 %conv74, %div
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %lor.lhs.false, %if.end69
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info_ptr, %struct.png_info_def** null)
  store i8 0, i8* %retval, align 1
  br label %return

if.end79:                                         ; preds = %lor.lhs.false
  %41 = load i32, i32* %row_bytes, align 4
  %conv80 = zext i32 %41 to i64
  %42 = load i32, i32* %height, align 4
  %conv81 = zext i32 %42 to i64
  %mul = mul i64 %conv80, %conv81
  %call82 = call i8* @hoard_malloc(i64 %mul)
  store i8* %call82, i8** %png_pixels, align 4
  %43 = ptrtoint i8* %call82 to i32
  %44 = zext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = ptrtoint i8* %45 to i32
  %cmp83 = icmp eq i32 %46, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end79
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info_ptr, %struct.png_info_def** null)
  store i8 0, i8* %retval, align 1
  br label %return

if.end86:                                         ; preds = %if.end79
  %47 = load i32, i32* %height, align 4
  %conv87 = zext i32 %47 to i64
  %mul88 = mul i64 %conv87, 8
  %call89 = call i8* @hoard_malloc(i64 %mul88)
  %48 = bitcast i8* %call89 to i8**
  store i8** %48, i8*** %row_pointers, align 4
  %49 = ptrtoint i8** %48 to i32
  %50 = zext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8**
  %52 = ptrtoint i8** %51 to i32
  %cmp90 = icmp eq i32 %52, 0
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end86
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info_ptr, %struct.png_info_def** null)
  %53 = load i8*, i8** %png_pixels, align 4
  call void @hoard_free(i8* %53)
  store i8 0, i8* %retval, align 1
  br label %return

if.end93:                                         ; preds = %if.end86
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end93
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %height, align 4
  %cmp94 = icmp slt i32 %54, %55
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i8*, i8** %png_pixels, align 4
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %row_bytes, align 4
  %mul96 = mul i32 %57, %58
  %idx.ext = zext i32 %mul96 to i64
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  store i8* %add.ptr, i8** %tmp, align 4
  %59 = load i8*, i8** %tmp, align 4
  %60 = load i8**, i8*** %row_pointers, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom = sext i32 %61 to i64
  %62 = ptrtoint i8** %60 to i64
  %lowerboundVal_1 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck = icmp uge i64 %62, %lowerboundVal_1
  %IsoHeap.UpperCheck = icmp ule i64 %62, %upperboundVal_1
  %IsoHeap.RangeCheck = and i1 %IsoHeap.LowerCheck, %IsoHeap.UpperCheck
  br i1 %IsoHeap.RangeCheck, label %trap.cont, label %trap.fail

trap.fail:                                        ; preds = %for.body
  %addr_to_ptr = inttoptr i64 %62 to i8*
  %63 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr, i64 0)
  br label %trap.cont

trap.cont:                                        ; preds = %trap.fail, %for.body
  br i1 %IsoHeap.RangeCheck, label %IsoHeap_HIT, label %IsoHeap_L1.MISS

IsoHeap_HIT:                                      ; preds = %trap.cont, %IsoHeap_L1.MISS
  %arrayidx = getelementptr inbounds i8*, i8** %60, i64 %idxprom
  store i8* %59, i8** %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %IsoHeap_HIT
  %64 = load i32, i32* %i, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

IsoHeap_L1.MISS:                                  ; preds = %trap.cont
  %65 = inttoptr i64 %62 to i8*
  %66 = call i1 @CacheUpdateandCheck(i8* %65)
  br label %IsoHeap_HIT

for.end:                                          ; preds = %for.cond
  %67 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %68 = load i8**, i8*** %row_pointers, align 4
  call void @t_png_read_image(%struct.png_struct_def* %67, i8** %68)
  %69 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %70 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_read_end(%struct.png_struct_def* %69, %struct.png_info_def* %70)
  call void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** %info_ptr, %struct.png_info_def** null)
  %71 = load i32, i32* %color_type, align 4
  %cmp97 = icmp eq i32 %71, 0
  br i1 %cmp97, label %if.then102, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %for.end
  %72 = load i32, i32* %color_type, align 4
  %cmp100 = icmp eq i32 %72, 4
  br i1 %cmp100, label %if.then102, label %if.else109

if.then102:                                       ; preds = %lor.lhs.false99, %for.end
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %pnm_file.addr, align 8
  %74 = load i8, i8* %raw.addr, align 1
  %conv103 = zext i8 %74 to i32
  %tobool104 = icmp ne i32 %conv103, 0
  %75 = zext i1 %tobool104 to i64
  %cond = select i1 %tobool104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %cond)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %pnm_file.addr, align 8
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %height, align 4
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %77, i32 %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %pnm_file.addr, align 8
  %80 = load i32, i32* %bit_depth, align 4
  %sh_prom = zext i32 %80 to i64
  %shl = shl i64 1, %sh_prom
  %sub107 = sub nsw i64 %shl, 1
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 %sub107)
  br label %if.end126

if.else109:                                       ; preds = %lor.lhs.false99
  %81 = load i32, i32* %color_type, align 4
  %cmp110 = icmp eq i32 %81, 2
  br i1 %cmp110, label %if.then115, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %if.else109
  %82 = load i32, i32* %color_type, align 4
  %cmp113 = icmp eq i32 %82, 6
  br i1 %cmp113, label %if.then115, label %if.end125

if.then115:                                       ; preds = %lor.lhs.false112, %if.else109
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %pnm_file.addr, align 8
  %84 = load i8, i8* %raw.addr, align 1
  %conv116 = zext i8 %84 to i32
  %tobool117 = icmp ne i32 %conv116, 0
  %85 = zext i1 %tobool117 to i64
  %cond118 = select i1 %tobool117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %cond118)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %pnm_file.addr, align 8
  %87 = load i32, i32* %width, align 4
  %88 = load i32, i32* %height, align 4
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %87, i32 %88)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %pnm_file.addr, align 8
  %90 = load i32, i32* %bit_depth, align 4
  %sh_prom121 = zext i32 %90 to i64
  %shl122 = shl i64 1, %sh_prom121
  %sub123 = sub nsw i64 %shl122, 1
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 %sub123)
  br label %if.end125

if.end125:                                        ; preds = %if.then115, %lor.lhs.false112
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then102
  %91 = load i8, i8* %alpha.addr, align 1
  %conv127 = zext i8 %91 to i32
  %tobool128 = icmp ne i32 %conv127, 0
  br i1 %tobool128, label %land.lhs.true129, label %if.end145

land.lhs.true129:                                 ; preds = %if.end126
  %92 = load i32, i32* %color_type, align 4
  %cmp130 = icmp eq i32 %92, 4
  br i1 %cmp130, label %if.then135, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %land.lhs.true129
  %93 = load i32, i32* %color_type, align 4
  %cmp133 = icmp eq i32 %93, 6
  br i1 %cmp133, label %if.then135, label %if.end145

if.then135:                                       ; preds = %lor.lhs.false132, %land.lhs.true129
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %alpha_file.addr, align 8
  %95 = load i8, i8* %raw.addr, align 1
  %conv136 = zext i8 %95 to i32
  %tobool137 = icmp ne i32 %conv136, 0
  %96 = zext i1 %tobool137 to i64
  %cond138 = select i1 %tobool137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)
  %call139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %cond138)
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %alpha_file.addr, align 8
  %98 = load i32, i32* %width, align 4
  %99 = load i32, i32* %height, align 4
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %98, i32 %99)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %alpha_file.addr, align 8
  %101 = load i32, i32* %bit_depth, align 4
  %sh_prom141 = zext i32 %101 to i64
  %shl142 = shl i64 1, %sh_prom141
  %sub143 = sub nsw i64 %shl142, 1
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 %sub143)
  br label %if.end145

if.end145:                                        ; preds = %if.then135, %lor.lhs.false132, %if.end126
  %102 = load i8*, i8** %png_pixels, align 4
  store i8* %102, i8** %pix_ptr, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc318, %if.end145
  %103 = load i32, i32* %row, align 4
  %104 = load i32, i32* %height, align 4
  %cmp147 = icmp slt i32 %103, %104
  br i1 %cmp147, label %for.body149, label %for.end320

for.body149:                                      ; preds = %for.cond146
  store i32 0, i32* %col, align 4
  br label %for.cond150

for.cond150:                                      ; preds = %for.inc306, %for.body149
  %105 = load i32, i32* %col, align 4
  %106 = load i32, i32* %width, align 4
  %cmp151 = icmp slt i32 %105, %106
  br i1 %cmp151, label %for.body153, label %for.end308

for.body153:                                      ; preds = %for.cond150
  store i32 0, i32* %i, align 4
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc219, %for.body153
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* %channels, align 4
  %109 = load i32, i32* %alpha_present, align 4
  %sub155 = sub nsw i32 %108, %109
  %cmp156 = icmp slt i32 %107, %sub155
  br i1 %cmp156, label %for.body158, label %for.end221

for.body158:                                      ; preds = %for.cond154
  %110 = load i8, i8* %raw.addr, align 1
  %tobool159 = icmp ne i8 %110, 0
  br i1 %tobool159, label %if.then160, label %if.else173

if.then160:                                       ; preds = %for.body158
  %111 = load i8*, i8** %pix_ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr, i8** %pix_ptr, align 4
  %112 = ptrtoint i8* %111 to i64
  %lowerboundVal_1161 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1162 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck163 = icmp uge i64 %112, %lowerboundVal_1161
  %IsoHeap.UpperCheck164 = icmp ule i64 %112, %upperboundVal_1162
  %IsoHeap.RangeCheck165 = and i1 %IsoHeap.LowerCheck163, %IsoHeap.UpperCheck164
  br i1 %IsoHeap.RangeCheck165, label %trap.cont167, label %trap.fail166

trap.fail166:                                     ; preds = %if.then160
  %addr_to_ptr168 = inttoptr i64 %112 to i8*
  %113 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr168, i64 0)
  br label %trap.cont167

trap.cont167:                                     ; preds = %trap.fail166, %if.then160
  br i1 %IsoHeap.RangeCheck165, label %IsoHeap_HIT170, label %IsoHeap_L1.MISS169

IsoHeap_HIT170:                                   ; preds = %trap.cont167, %IsoHeap_L1.MISS169
  %114 = load i8, i8* %111, align 1
  %conv171 = zext i8 %114 to i32
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %pnm_file.addr, align 8
  %call172 = call i32 @fputc(i32 %conv171, %struct._IO_FILE* %115)
  br label %if.end218

IsoHeap_L1.MISS169:                               ; preds = %trap.cont167
  %116 = inttoptr i64 %112 to i8*
  %117 = call i1 @CacheUpdateandCheck(i8* %116)
  br label %IsoHeap_HIT170

if.else173:                                       ; preds = %for.body158
  %118 = load i32, i32* %bit_depth, align 4
  %cmp174 = icmp eq i32 %118, 16
  br i1 %cmp174, label %if.then176, label %if.else203

if.then176:                                       ; preds = %if.else173
  %119 = load i8*, i8** %pix_ptr, align 4
  %incdec.ptr177 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr177, i8** %pix_ptr, align 4
  %120 = ptrtoint i8* %119 to i64
  %lowerboundVal_1178 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1179 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck180 = icmp uge i64 %120, %lowerboundVal_1178
  %IsoHeap.UpperCheck181 = icmp ule i64 %120, %upperboundVal_1179
  %IsoHeap.RangeCheck182 = and i1 %IsoHeap.LowerCheck180, %IsoHeap.UpperCheck181
  br i1 %IsoHeap.RangeCheck182, label %trap.cont184, label %trap.fail183

trap.fail183:                                     ; preds = %if.then176
  %addr_to_ptr185 = inttoptr i64 %120 to i8*
  %121 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr185, i64 0)
  br label %trap.cont184

trap.cont184:                                     ; preds = %trap.fail183, %if.then176
  br i1 %IsoHeap.RangeCheck182, label %IsoHeap_HIT187, label %IsoHeap_L1.MISS186

IsoHeap_HIT187:                                   ; preds = %trap.cont184, %IsoHeap_L1.MISS186
  %122 = load i8, i8* %119, align 1
  %conv188 = zext i8 %122 to i64
  store i64 %conv188, i64* %dep_16, align 8
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %pnm_file.addr, align 8
  %124 = load i64, i64* %dep_16, align 8
  %shl189 = shl i64 %124, 8
  %125 = load i8*, i8** %pix_ptr, align 4
  %incdec.ptr190 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr190, i8** %pix_ptr, align 4
  %126 = ptrtoint i8* %125 to i64
  %lowerboundVal_1191 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1192 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck193 = icmp uge i64 %126, %lowerboundVal_1191
  %IsoHeap.UpperCheck194 = icmp ule i64 %126, %upperboundVal_1192
  %IsoHeap.RangeCheck195 = and i1 %IsoHeap.LowerCheck193, %IsoHeap.UpperCheck194
  br i1 %IsoHeap.RangeCheck195, label %trap.cont197, label %trap.fail196

IsoHeap_L1.MISS186:                               ; preds = %trap.cont184
  %127 = inttoptr i64 %120 to i8*
  %128 = call i1 @CacheUpdateandCheck(i8* %127)
  br label %IsoHeap_HIT187

trap.fail196:                                     ; preds = %IsoHeap_HIT187
  %addr_to_ptr198 = inttoptr i64 %126 to i8*
  %129 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr198, i64 0)
  br label %trap.cont197

trap.cont197:                                     ; preds = %trap.fail196, %IsoHeap_HIT187
  br i1 %IsoHeap.RangeCheck195, label %IsoHeap_HIT200, label %IsoHeap_L1.MISS199

IsoHeap_HIT200:                                   ; preds = %trap.cont197, %IsoHeap_L1.MISS199
  %130 = load i8, i8* %125, align 1
  %conv201 = zext i8 %130 to i64
  %add = add nsw i64 %shl189, %conv201
  %call202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i64 %add)
  br label %if.end217

IsoHeap_L1.MISS199:                               ; preds = %trap.cont197
  %131 = inttoptr i64 %126 to i8*
  %132 = call i1 @CacheUpdateandCheck(i8* %131)
  br label %IsoHeap_HIT200

if.else203:                                       ; preds = %if.else173
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %pnm_file.addr, align 8
  %134 = load i8*, i8** %pix_ptr, align 4
  %incdec.ptr204 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr204, i8** %pix_ptr, align 4
  %135 = ptrtoint i8* %134 to i64
  %lowerboundVal_1205 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1206 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck207 = icmp uge i64 %135, %lowerboundVal_1205
  %IsoHeap.UpperCheck208 = icmp ule i64 %135, %upperboundVal_1206
  %IsoHeap.RangeCheck209 = and i1 %IsoHeap.LowerCheck207, %IsoHeap.UpperCheck208
  br i1 %IsoHeap.RangeCheck209, label %trap.cont211, label %trap.fail210

trap.fail210:                                     ; preds = %if.else203
  %addr_to_ptr212 = inttoptr i64 %135 to i8*
  %136 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr212, i64 0)
  br label %trap.cont211

trap.cont211:                                     ; preds = %trap.fail210, %if.else203
  br i1 %IsoHeap.RangeCheck209, label %IsoHeap_HIT214, label %IsoHeap_L1.MISS213

IsoHeap_HIT214:                                   ; preds = %trap.cont211, %IsoHeap_L1.MISS213
  %137 = load i8, i8* %134, align 1
  %conv215 = zext i8 %137 to i64
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i64 %conv215)
  br label %if.end217

IsoHeap_L1.MISS213:                               ; preds = %trap.cont211
  %138 = inttoptr i64 %135 to i8*
  %139 = call i1 @CacheUpdateandCheck(i8* %138)
  br label %IsoHeap_HIT214

if.end217:                                        ; preds = %IsoHeap_HIT214, %IsoHeap_HIT200
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %IsoHeap_HIT170
  br label %for.inc219

for.inc219:                                       ; preds = %if.end218
  %140 = load i32, i32* %i, align 4
  %inc220 = add nsw i32 %140, 1
  store i32 %inc220, i32* %i, align 4
  br label %for.cond154, !llvm.loop !5

for.end221:                                       ; preds = %for.cond154
  %141 = load i32, i32* %alpha_present, align 4
  %tobool222 = icmp ne i32 %141, 0
  br i1 %tobool222, label %if.then223, label %if.end296

if.then223:                                       ; preds = %for.end221
  %142 = load i8, i8* %alpha.addr, align 1
  %tobool224 = icmp ne i8 %142, 0
  br i1 %tobool224, label %if.else232, label %if.then225

if.then225:                                       ; preds = %if.then223
  %143 = load i8*, i8** %pix_ptr, align 4
  %incdec.ptr226 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr226, i8** %pix_ptr, align 4
  %144 = load i32, i32* %bit_depth, align 4
  %cmp227 = icmp eq i32 %144, 16
  br i1 %cmp227, label %if.then229, label %if.end231

if.then229:                                       ; preds = %if.then225
  %145 = load i8*, i8** %pix_ptr, align 4
  %incdec.ptr230 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr230, i8** %pix_ptr, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %if.then225
  br label %if.end295

if.else232:                                       ; preds = %if.then223
  %146 = load i8, i8* %raw.addr, align 1
  %tobool233 = icmp ne i8 %146, 0
  br i1 %tobool233, label %if.then234, label %if.else248

if.then234:                                       ; preds = %if.else232
  %147 = load i8*, i8** %pix_ptr, align 4
  %incdec.ptr235 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr235, i8** %pix_ptr, align 4
  %148 = ptrtoint i8* %147 to i64
  %lowerboundVal_1236 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1237 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck238 = icmp uge i64 %148, %lowerboundVal_1236
  %IsoHeap.UpperCheck239 = icmp ule i64 %148, %upperboundVal_1237
  %IsoHeap.RangeCheck240 = and i1 %IsoHeap.LowerCheck238, %IsoHeap.UpperCheck239
  br i1 %IsoHeap.RangeCheck240, label %trap.cont242, label %trap.fail241

trap.fail241:                                     ; preds = %if.then234
  %addr_to_ptr243 = inttoptr i64 %148 to i8*
  %149 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr243, i64 0)
  br label %trap.cont242

trap.cont242:                                     ; preds = %trap.fail241, %if.then234
  br i1 %IsoHeap.RangeCheck240, label %IsoHeap_HIT245, label %IsoHeap_L1.MISS244

IsoHeap_HIT245:                                   ; preds = %trap.cont242, %IsoHeap_L1.MISS244
  %150 = load i8, i8* %147, align 1
  %conv246 = zext i8 %150 to i32
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %alpha_file.addr, align 8
  %call247 = call i32 @fputc(i32 %conv246, %struct._IO_FILE* %151)
  br label %if.end294

IsoHeap_L1.MISS244:                               ; preds = %trap.cont242
  %152 = inttoptr i64 %148 to i8*
  %153 = call i1 @CacheUpdateandCheck(i8* %152)
  br label %IsoHeap_HIT245

if.else248:                                       ; preds = %if.else232
  %154 = load i32, i32* %bit_depth, align 4
  %cmp249 = icmp eq i32 %154, 16
  br i1 %cmp249, label %if.then251, label %if.else279

if.then251:                                       ; preds = %if.else248
  %155 = load i8*, i8** %pix_ptr, align 4
  %incdec.ptr252 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr252, i8** %pix_ptr, align 4
  %156 = ptrtoint i8* %155 to i64
  %lowerboundVal_1253 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1254 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck255 = icmp uge i64 %156, %lowerboundVal_1253
  %IsoHeap.UpperCheck256 = icmp ule i64 %156, %upperboundVal_1254
  %IsoHeap.RangeCheck257 = and i1 %IsoHeap.LowerCheck255, %IsoHeap.UpperCheck256
  br i1 %IsoHeap.RangeCheck257, label %trap.cont259, label %trap.fail258

trap.fail258:                                     ; preds = %if.then251
  %addr_to_ptr260 = inttoptr i64 %156 to i8*
  %157 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr260, i64 0)
  br label %trap.cont259

trap.cont259:                                     ; preds = %trap.fail258, %if.then251
  br i1 %IsoHeap.RangeCheck257, label %IsoHeap_HIT262, label %IsoHeap_L1.MISS261

IsoHeap_HIT262:                                   ; preds = %trap.cont259, %IsoHeap_L1.MISS261
  %158 = load i8, i8* %155, align 1
  %conv263 = zext i8 %158 to i64
  store i64 %conv263, i64* %dep_16, align 8
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %alpha_file.addr, align 8
  %160 = load i64, i64* %dep_16, align 8
  %shl264 = shl i64 %160, 8
  %161 = load i8*, i8** %pix_ptr, align 4
  %incdec.ptr265 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr265, i8** %pix_ptr, align 4
  %162 = ptrtoint i8* %161 to i64
  %lowerboundVal_1266 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1267 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck268 = icmp uge i64 %162, %lowerboundVal_1266
  %IsoHeap.UpperCheck269 = icmp ule i64 %162, %upperboundVal_1267
  %IsoHeap.RangeCheck270 = and i1 %IsoHeap.LowerCheck268, %IsoHeap.UpperCheck269
  br i1 %IsoHeap.RangeCheck270, label %trap.cont272, label %trap.fail271

IsoHeap_L1.MISS261:                               ; preds = %trap.cont259
  %163 = inttoptr i64 %156 to i8*
  %164 = call i1 @CacheUpdateandCheck(i8* %163)
  br label %IsoHeap_HIT262

trap.fail271:                                     ; preds = %IsoHeap_HIT262
  %addr_to_ptr273 = inttoptr i64 %162 to i8*
  %165 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr273, i64 0)
  br label %trap.cont272

trap.cont272:                                     ; preds = %trap.fail271, %IsoHeap_HIT262
  br i1 %IsoHeap.RangeCheck270, label %IsoHeap_HIT275, label %IsoHeap_L1.MISS274

IsoHeap_HIT275:                                   ; preds = %trap.cont272, %IsoHeap_L1.MISS274
  %166 = load i8, i8* %161, align 1
  %conv276 = zext i8 %166 to i64
  %add277 = add nsw i64 %shl264, %conv276
  %call278 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i64 %add277)
  br label %if.end293

IsoHeap_L1.MISS274:                               ; preds = %trap.cont272
  %167 = inttoptr i64 %162 to i8*
  %168 = call i1 @CacheUpdateandCheck(i8* %167)
  br label %IsoHeap_HIT275

if.else279:                                       ; preds = %if.else248
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %alpha_file.addr, align 8
  %170 = load i8*, i8** %pix_ptr, align 4
  %incdec.ptr280 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %incdec.ptr280, i8** %pix_ptr, align 4
  %171 = ptrtoint i8* %170 to i64
  %lowerboundVal_1281 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1282 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck283 = icmp uge i64 %171, %lowerboundVal_1281
  %IsoHeap.UpperCheck284 = icmp ule i64 %171, %upperboundVal_1282
  %IsoHeap.RangeCheck285 = and i1 %IsoHeap.LowerCheck283, %IsoHeap.UpperCheck284
  br i1 %IsoHeap.RangeCheck285, label %trap.cont287, label %trap.fail286

trap.fail286:                                     ; preds = %if.else279
  %addr_to_ptr288 = inttoptr i64 %171 to i8*
  %172 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr288, i64 0)
  br label %trap.cont287

trap.cont287:                                     ; preds = %trap.fail286, %if.else279
  br i1 %IsoHeap.RangeCheck285, label %IsoHeap_HIT290, label %IsoHeap_L1.MISS289

IsoHeap_HIT290:                                   ; preds = %trap.cont287, %IsoHeap_L1.MISS289
  %173 = load i8, i8* %170, align 1
  %conv291 = zext i8 %173 to i64
  %call292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i64 %conv291)
  br label %if.end293

IsoHeap_L1.MISS289:                               ; preds = %trap.cont287
  %174 = inttoptr i64 %171 to i8*
  %175 = call i1 @CacheUpdateandCheck(i8* %174)
  br label %IsoHeap_HIT290

if.end293:                                        ; preds = %IsoHeap_HIT290, %IsoHeap_HIT275
  br label %if.end294

if.end294:                                        ; preds = %if.end293, %IsoHeap_HIT245
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.end231
  br label %if.end296

if.end296:                                        ; preds = %if.end295, %for.end221
  %176 = load i8, i8* %raw.addr, align 1
  %tobool297 = icmp ne i8 %176, 0
  br i1 %tobool297, label %if.end305, label %if.then298

if.then298:                                       ; preds = %if.end296
  %177 = load i32, i32* %col, align 4
  %rem299 = srem i32 %177, 4
  %cmp300 = icmp eq i32 %rem299, 3
  br i1 %cmp300, label %if.then302, label %if.end304

if.then302:                                       ; preds = %if.then298
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %pnm_file.addr, align 8
  %call303 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  br label %if.end304

if.end304:                                        ; preds = %if.then302, %if.then298
  br label %if.end305

if.end305:                                        ; preds = %if.end304, %if.end296
  br label %for.inc306

for.inc306:                                       ; preds = %if.end305
  %179 = load i32, i32* %col, align 4
  %inc307 = add nsw i32 %179, 1
  store i32 %inc307, i32* %col, align 4
  br label %for.cond150, !llvm.loop !6

for.end308:                                       ; preds = %for.cond150
  %180 = load i8, i8* %raw.addr, align 1
  %tobool309 = icmp ne i8 %180, 0
  br i1 %tobool309, label %if.end317, label %if.then310

if.then310:                                       ; preds = %for.end308
  %181 = load i32, i32* %col, align 4
  %rem311 = srem i32 %181, 4
  %cmp312 = icmp ne i32 %rem311, 0
  br i1 %cmp312, label %if.then314, label %if.end316

if.then314:                                       ; preds = %if.then310
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %pnm_file.addr, align 8
  %call315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  br label %if.end316

if.end316:                                        ; preds = %if.then314, %if.then310
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %for.end308
  br label %for.inc318

for.inc318:                                       ; preds = %if.end317
  %183 = load i32, i32* %row, align 4
  %inc319 = add nsw i32 %183, 1
  store i32 %inc319, i32* %row, align 4
  br label %for.cond146, !llvm.loop !7

for.end320:                                       ; preds = %for.cond146
  %184 = load i8**, i8*** %row_pointers, align 4
  %185 = ptrtoint i8** %184 to i32
  %186 = zext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8**
  %188 = ptrtoint i8** %187 to i32
  %cmp321 = icmp ne i32 %188, 0
  br i1 %cmp321, label %if.then323, label %if.end324

if.then323:                                       ; preds = %for.end320
  %189 = load i8**, i8*** %row_pointers, align 4
  %190 = bitcast i8** %189 to i8*
  call void @hoard_free(i8* %190)
  br label %if.end324

if.end324:                                        ; preds = %if.then323, %for.end320
  %191 = load i8*, i8** %png_pixels, align 4
  %192 = ptrtoint i8* %191 to i32
  %193 = zext i32 %192 to i64
  %194 = inttoptr i64 %193 to i8*
  %195 = ptrtoint i8* %194 to i32
  %cmp325 = icmp ne i32 %195, 0
  br i1 %cmp325, label %if.then327, label %if.end328

if.then327:                                       ; preds = %if.end324
  %196 = load i8*, i8** %png_pixels, align 4
  call void @hoard_free(i8* %196)
  br label %if.end328

if.end328:                                        ; preds = %if.then327, %if.end324
  %call329 = call i64 @clock() #6
  %197 = load i64, i64* %t, align 8
  %sub330 = sub nsw i64 %call329, %197
  store i64 %sub330, i64* %t, align 8
  %198 = load i64, i64* %t, align 8
  %conv331 = sitofp i64 %198 to double
  %div332 = fdiv double %conv331, 1.000000e+06
  store double %div332, double* %time_taken, align 8
  %199 = load double, double* %time_taken, align 8
  %call333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), double %199)
  store i8 1, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end328, %if.then92, %if.then85, %if.then78, %if.then21, %if.then15, %if.then11, %if.then7, %if.then
  %200 = load i8, i8* %retval, align 1
  ret i8 %200
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.14, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #3

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local i32 @png_sig_cmp(i8*, i64, i64) #1

declare dso_local noalias %struct.png_struct_def* @png_create_read_struct(i8*, i8*, void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*) #1

declare dso_local i8* @png_get_libpng_ver(%struct.png_struct_def*) #1

declare dso_local noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def*) #1

declare dso_local void @png_destroy_read_struct(%struct.png_struct_def**, %struct.png_info_def**, %struct.png_info_def**) #1

; Function Attrs: nounwind returns_twice
declare dso_local i32 @_setjmp(%struct.__jmp_buf_tag*) #4

declare dso_local [1 x %struct.__jmp_buf_tag]* @png_set_longjmp_fn(%struct.png_struct_def*, void (%struct.__jmp_buf_tag*, i32)*, i64) #1

; Function Attrs: noreturn nounwind
declare dso_local void @longjmp(%struct.__jmp_buf_tag*, i32) #2

declare dso_local void @png_init_io(%struct.png_struct_def*, %struct._IO_FILE*) #1

declare dso_local void @png_set_sig_bytes(%struct.png_struct_def*, i32) #1

declare dso_local void @png_read_info(%struct.png_struct_def*, %struct.png_info_def*) #1

declare dso_local i32 @png_get_IHDR(%struct.png_struct_def*, %struct.png_info_def*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local void @png_set_expand(%struct.png_struct_def*) #1

declare dso_local i32 @png_get_valid(%struct.png_struct_def*, %struct.png_info_def*, i32) #1

declare dso_local void @png_read_update_info(%struct.png_struct_def*, %struct.png_info_def*) #1

declare dso_local i64 @png_get_rowbytes(%struct.png_struct_def*, %struct.png_info_def*) #1

declare dso_local i8* @hoard_malloc(i64) #1

declare dso_local void @hoard_free(i8*) #1

declare i1 @CacheUpdateandCheck_2(i8*, i64)

declare i1 @CacheUpdateandCheck(i8*)

declare dso_local void @t_png_read_image(%struct.png_struct_def*, i8**) #1

declare dso_local void @png_read_end(%struct.png_struct_def*, %struct.png_info_def*) #1

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind returns_twice "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (git@github.com:TypeFlexer/TypeFlexer-Clang.git cbc9d60f1cbbe83fc3f1fef69a33d323ec5056a8)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
