; ModuleID = 'pngwrite.c'
source_filename = "pngwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], void (%struct.__jmp_buf_tag*, i32)*, [1 x %struct.__jmp_buf_tag]*, i64, void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*, i8*, i64)*, i8*, void (%struct.png_struct_def*, %struct.png_row_info_struct*, i8*)*, void (%struct.png_struct_def*, %struct.png_row_info_struct*, i8*)*, i8*, i8, i8, i32, i32, i32, i32, %struct.z_stream_s, %struct.png_compression_buffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i64, i32, i32, %struct.png_color_struct*, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, void (%struct.png_struct_def*)*, i32, i32, i32, i32, i8*, i16**, i8*, i8*, i16**, i16**, %struct.png_color_8_struct, %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, %struct.png_info_def*)*, void (%struct.png_struct_def*, i8*, i32, i32)*, void (%struct.png_struct_def*, %struct.png_info_def*)*, i8*, i8*, i8*, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i8*, i8*, i32, [29 x i8], i32, i8*, i32 (%struct.png_struct_def*, %struct.png_unknown_chunk_t*)*, i32, i32, i8*, i8, i8, i16, i16, i8*, i32, i8, i8*, i8* (%struct.png_struct_def*, i64)*, i8* (%struct.png_struct_def*, i64)*, void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, i8*, i8*, i8*, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, i8*, i64, i32, i32, i8*, [4 x void (%struct.png_row_info_struct*, i8*, i8*)*], %struct.png_colorspace }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type opaque
%struct.png_compression_buffer = type { %struct.png_compression_buffer*, [1 x i8] }
%struct.png_color_struct = type { i8, i8, i8 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.png_colorspace = type { i32, %struct.png_xy, %struct.png_XYZ, i16, i16 }
%struct.png_xy = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_XYZ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_info_def = type { i32, i32, i32, i64, %struct.png_color_struct*, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], %struct.png_colorspace, i8*, i8*, i32, i32, i32, %struct.png_text_struct*, %struct.png_time_struct, %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, %struct.png_color_16_struct, i32, i32, i8, i32, i32, i8, i32, i8*, i8*, i16*, i8*, i32, i32, i8*, i8**, i8, i8, i32, %struct.png_unknown_chunk_t*, i32, %struct.png_sPLT_struct*, i32, i8, i8*, i8*, i8** }
%struct.png_text_struct = type { i32, i8*, i8*, i64, i64, i8*, i8* }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }
%struct.png_sPLT_struct = type { i8*, i8, %struct.png_sPLT_entry_struct*, i32 }
%struct.png_sPLT_entry_struct = type { i16, i16, i16, i16, i16 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.png_image = type { %struct.png_control*, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.png_control = type { %struct.png_struct_def*, %struct.png_info_def*, i8*, i8*, i64, i8 }
%struct.png_image_write_control = type { %struct.png_image*, i8*, i32, i8*, i32, i8*, i64, i8*, i8*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@lowerbound_1 = common global i64 0
@upperbound_1 = common global i64 0
@lowerbound_2 = common global i64 0
@upperbound_2 = common global i64 0
@.str = private unnamed_addr constant [49 x i8] c"MNG features are not allowed in a PNG datastream\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"profile matches sRGB but writing iCCP instead\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Valid palette required for paletted images\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"No IDATs written into file\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Wrote palette index exceeding num_palette\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"png_write_info was never called before png_write_row\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"internal write transform logic error\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Unknown row filter for method 0\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"png_set_filter: UP/AVG/PAETH cannot be added after start\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Unknown custom filter method\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Only compression windows <= 32k supported by PNG\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Only compression windows >= 256 supported by PNG\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Only compression method 8 is supported by PNG\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"no rows for png_write_image to write\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"PNG_TRANSFORM_STRIP_FILLER: BEFORE+AFTER not supported\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"png_image_write_to_memory: invalid argument\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"png_image_write_to_memory: incorrect PNG_IMAGE_VERSION\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"png_image_write_to_stdio: invalid argument\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"png_image_write_to_stdio: incorrect PNG_IMAGE_VERSION\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"png_image_write_to_file: invalid argument\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"png_image_write_to_file: incorrect PNG_IMAGE_VERSION\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Writing zero-length unknown chunk\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"1.6.39.git\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"png_image_write_: out of memory\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"png_image_write_to_memory: PNG too big\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"memory image too large\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"supplied row stride too small\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"image row stride too large\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"no color-map for color-mapped image\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"png_write_image: unsupported transformation\00", align 1
@png_sRGB_base = external dso_local constant [512 x i16], align 16
@png_sRGB_delta = external dso_local constant [512 x i8], align 16
@.str.31 = private unnamed_addr constant [37 x i8] c"png_write_image: internal call error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_info_before_PLTE(%struct.png_struct_def* noalias %png_ptr, %struct.png_info_def* noalias %info_ptr) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %info_ptr.addr = alloca %struct.png_info_def*, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store %struct.png_info_def* %info_ptr, %struct.png_info_def** %info_ptr.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %cmp1 = icmp eq %struct.png_info_def* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end97

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mode = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i32 0, i32 15
  %3 = load i32, i32* %mode, align 4
  %and = and i32 %3, 1024
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then3, label %if.end97

if.then3:                                         ; preds = %if.end
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_sig(%struct.png_struct_def* %4)
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mode4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 15
  %6 = load i32, i32* %mode4, align 4
  %and5 = and i32 %6, 4096
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.then3
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mng_features_permitted = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 125
  %8 = load i32, i32* %mng_features_permitted, align 8
  %cmp7 = icmp ne i32 %8, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_warning(%struct.png_struct_def* %9, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mng_features_permitted9 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 125
  store i32 0, i32* %mng_features_permitted9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true, %if.then3
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %width = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %12, i32 0, i32 0
  %13 = load i32, i32* %width, align 8
  %14 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %height = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %14, i32 0, i32 1
  %15 = load i32, i32* %height, align 4
  %16 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %bit_depth = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %16, i32 0, i32 7
  %17 = load i8, i8* %bit_depth, align 4
  %conv = zext i8 %17 to i32
  %18 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %color_type = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %18, i32 0, i32 8
  %19 = load i8, i8* %color_type, align 1
  %conv11 = zext i8 %19 to i32
  %20 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %compression_type = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %20, i32 0, i32 9
  %21 = load i8, i8* %compression_type, align 2
  %conv12 = zext i8 %21 to i32
  %22 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %filter_type = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %22, i32 0, i32 10
  %23 = load i8, i8* %filter_type, align 1
  %conv13 = zext i8 %23 to i32
  %24 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %interlace_type = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %24, i32 0, i32 11
  %25 = load i8, i8* %interlace_type, align 8
  %conv14 = zext i8 %25 to i32
  call void @png_write_IHDR(%struct.png_struct_def* %11, i32 %13, i32 %15, i32 %conv, i32 %conv11, i32 %conv12, i32 %conv13, i32 %conv14)
  %26 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %colorspace = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %26, i32 0, i32 16
  %flags = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace, i32 0, i32 4
  %27 = load i16, i16* %flags, align 2
  %conv15 = zext i16 %27 to i32
  %and16 = and i32 %conv15, 32768
  %cmp17 = icmp eq i32 %and16, 0
  br i1 %cmp17, label %land.lhs.true19, label %if.end32

land.lhs.true19:                                  ; preds = %if.end10
  %28 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %colorspace20 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %28, i32 0, i32 16
  %flags21 = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace20, i32 0, i32 4
  %29 = load i16, i16* %flags21, align 2
  %conv22 = zext i16 %29 to i32
  %and23 = and i32 %conv22, 8
  %cmp24 = icmp ne i32 %and23, 0
  br i1 %cmp24, label %land.lhs.true26, label %if.end32

land.lhs.true26:                                  ; preds = %land.lhs.true19
  %30 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %30, i32 0, i32 2
  %31 = load i32, i32* %valid, align 8
  %and27 = and i32 %31, 1
  %cmp28 = icmp ne i32 %and27, 0
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %land.lhs.true26
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %33 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %colorspace31 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %33, i32 0, i32 16
  %gamma = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace31, i32 0, i32 0
  %34 = load i32, i32* %gamma, align 4
  call void @png_write_gAMA_fixed(%struct.png_struct_def* %32, i32 %34)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true26, %land.lhs.true19, %if.end10
  %35 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %colorspace33 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %35, i32 0, i32 16
  %flags34 = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace33, i32 0, i32 4
  %36 = load i16, i16* %flags34, align 2
  %conv35 = zext i16 %36 to i32
  %and36 = and i32 %conv35, 32768
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %land.lhs.true39, label %if.else

land.lhs.true39:                                  ; preds = %if.end32
  %37 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid40 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %37, i32 0, i32 2
  %38 = load i32, i32* %valid40, align 8
  %and41 = and i32 %38, 4096
  %cmp42 = icmp ne i32 %and41, 0
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %land.lhs.true39
  %39 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid45 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %39, i32 0, i32 2
  %40 = load i32, i32* %valid45, align 8
  %and46 = and i32 %40, 2048
  %cmp47 = icmp ne i32 %and46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then44
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_app_warning(%struct.png_struct_def* %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.then44
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %43 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %iccp_name = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %43, i32 0, i32 17
  %44 = load i8*, i8** %iccp_name, align 8
  %45 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %iccp_profile = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %45, i32 0, i32 18
  %46 = load i8*, i8** %iccp_profile, align 8
  call void @png_write_iCCP(%struct.png_struct_def* %42, i8* %44, i8* %46)
  br label %if.end66

if.else:                                          ; preds = %land.lhs.true39, %if.end32
  %47 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %colorspace51 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %47, i32 0, i32 16
  %flags52 = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace51, i32 0, i32 4
  %48 = load i16, i16* %flags52, align 2
  %conv53 = zext i16 %48 to i32
  %and54 = and i32 %conv53, 32768
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %land.lhs.true57, label %if.end65

land.lhs.true57:                                  ; preds = %if.else
  %49 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid58 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %49, i32 0, i32 2
  %50 = load i32, i32* %valid58, align 8
  %and59 = and i32 %50, 2048
  %cmp60 = icmp ne i32 %and59, 0
  br i1 %cmp60, label %if.then62, label %if.end65

if.then62:                                        ; preds = %land.lhs.true57
  %51 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %52 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %colorspace63 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %52, i32 0, i32 16
  %rendering_intent = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace63, i32 0, i32 3
  %53 = load i16, i16* %rendering_intent, align 4
  %conv64 = zext i16 %53 to i32
  call void @png_write_sRGB(%struct.png_struct_def* %51, i32 %conv64)
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %land.lhs.true57, %if.else
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end50
  %54 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid67 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %54, i32 0, i32 2
  %55 = load i32, i32* %valid67, align 8
  %and68 = and i32 %55, 2
  %cmp69 = icmp ne i32 %and68, 0
  br i1 %cmp69, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.end66
  %56 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %57 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %sig_bit = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %57, i32 0, i32 24
  %58 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %color_type72 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %58, i32 0, i32 8
  %59 = load i8, i8* %color_type72, align 1
  %conv73 = zext i8 %59 to i32
  call void @png_write_sBIT(%struct.png_struct_def* %56, %struct.png_color_8_struct* %sig_bit, i32 %conv73)
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end66
  %60 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %colorspace75 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %60, i32 0, i32 16
  %flags76 = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace75, i32 0, i32 4
  %61 = load i16, i16* %flags76, align 2
  %conv77 = zext i16 %61 to i32
  %and78 = and i32 %conv77, 32768
  %cmp79 = icmp eq i32 %and78, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end95

land.lhs.true81:                                  ; preds = %if.end74
  %62 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %colorspace82 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %62, i32 0, i32 16
  %flags83 = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace82, i32 0, i32 4
  %63 = load i16, i16* %flags83, align 2
  %conv84 = zext i16 %63 to i32
  %and85 = and i32 %conv84, 16
  %cmp86 = icmp ne i32 %and85, 0
  br i1 %cmp86, label %land.lhs.true88, label %if.end95

land.lhs.true88:                                  ; preds = %land.lhs.true81
  %64 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid89 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %64, i32 0, i32 2
  %65 = load i32, i32* %valid89, align 8
  %and90 = and i32 %65, 4
  %cmp91 = icmp ne i32 %and90, 0
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %land.lhs.true88
  %66 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %67 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %colorspace94 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %67, i32 0, i32 16
  %end_points_xy = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace94, i32 0, i32 1
  call void @png_write_cHRM_fixed(%struct.png_struct_def* %66, %struct.png_xy* %end_points_xy)
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %land.lhs.true88, %land.lhs.true81, %if.end74
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %69 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  call void @write_unknown_chunks(%struct.png_struct_def* %68, %struct.png_info_def* %69, i32 1)
  %70 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mode96 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %70, i32 0, i32 15
  %71 = load i32, i32* %mode96, align 4
  %or = or i32 %71, 1024
  store i32 %or, i32* %mode96, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then, %if.end95, %if.end
  ret void
}

declare dso_local void @png_write_sig(%struct.png_struct_def*) #1

declare dso_local void @png_warning(%struct.png_struct_def*, i8*) #1

declare dso_local void @png_write_IHDR(%struct.png_struct_def*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local void @png_write_gAMA_fixed(%struct.png_struct_def*, i32) #1

declare dso_local void @png_app_warning(%struct.png_struct_def*, i8*) #1

declare dso_local void @png_write_iCCP(%struct.png_struct_def*, i8*, i8*) #1

declare dso_local void @png_write_sRGB(%struct.png_struct_def*, i32) #1

declare dso_local void @png_write_sBIT(%struct.png_struct_def*, %struct.png_color_8_struct*, i32) #1

declare dso_local void @png_write_cHRM_fixed(%struct.png_struct_def*, %struct.png_xy*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_unknown_chunks(%struct.png_struct_def* noalias %png_ptr, %struct.png_info_def* noalias %info_ptr, i32 %where) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %info_ptr.addr = alloca %struct.png_info_def*, align 8
  %where.addr = alloca i32, align 4
  %up = alloca %struct.png_unknown_chunk_t*, align 8
  %keep = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store %struct.png_info_def* %info_ptr, %struct.png_info_def** %info_ptr.addr, align 8
  store i32 %where, i32* %where.addr, align 4
  %0 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %unknown_chunks_num = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %0, i32 0, i32 47
  %1 = load i32, i32* %unknown_chunks_num, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %2 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %unknown_chunks = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %2, i32 0, i32 46
  %3 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %unknown_chunks, align 8
  store %struct.png_unknown_chunk_t* %3, %struct.png_unknown_chunk_t** %up, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %up, align 8
  %5 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %unknown_chunks1 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %5, i32 0, i32 46
  %6 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %unknown_chunks1, align 8
  %7 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %unknown_chunks_num2 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %7, i32 0, i32 47
  %8 = load i32, i32* %unknown_chunks_num2, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %6, i64 %idx.ext
  %cmp3 = icmp ult %struct.png_unknown_chunk_t* %4, %add.ptr
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %up, align 8
  %location = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %9, i32 0, i32 3
  %10 = load i8, i8* %location, align 8
  %conv = zext i8 %10 to i32
  %11 = load i32, i32* %where.addr, align 4
  %and = and i32 %conv, %11
  %cmp4 = icmp ne i32 %and, 0
  br i1 %cmp4, label %if.then6, label %if.end28

if.then6:                                         ; preds = %for.body
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %13 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %up, align 8
  %name = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %13, i32 0, i32 0
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0
  %call = call i32 @png_handle_as_unknown(%struct.png_struct_def* %12, i8* %arraydecay)
  store i32 %call, i32* %keep, align 4
  %14 = load i32, i32* %keep, align 4
  %cmp7 = icmp ne i32 %14, 1
  br i1 %cmp7, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.then6
  %15 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %up, align 8
  %name9 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %15, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %name9, i64 0, i64 3
  %16 = load i8, i8* %arrayidx, align 1
  %conv10 = zext i8 %16 to i32
  %and11 = and i32 %conv10, 32
  %tobool = icmp ne i32 %and11, 0
  br i1 %tobool, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load i32, i32* %keep, align 4
  %cmp12 = icmp eq i32 %17, 3
  br i1 %cmp12, label %if.then20, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %keep, align 4
  %cmp15 = icmp eq i32 %18, 0
  br i1 %cmp15, label %land.lhs.true17, label %if.end27

land.lhs.true17:                                  ; preds = %lor.lhs.false14
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %unknown_default = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 117
  %20 = load i32, i32* %unknown_default, align 8
  %cmp18 = icmp eq i32 %20, 3
  br i1 %cmp18, label %if.then20, label %if.end27

if.then20:                                        ; preds = %land.lhs.true17, %lor.lhs.false, %land.lhs.true
  %21 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %up, align 8
  %size = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %21, i32 0, i32 2
  %22 = load i64, i64* %size, align 8
  %cmp21 = icmp eq i64 %22, 0
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then20
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_warning(%struct.png_struct_def* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then20
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %25 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %up, align 8
  %name24 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %25, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [5 x i8], [5 x i8]* %name24, i64 0, i64 0
  %26 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %up, align 8
  %data = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %26, i32 0, i32 1
  %27 = load i8*, i8** %data, align 8
  %28 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %up, align 8
  %size26 = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %28, i32 0, i32 2
  %29 = load i64, i64* %size26, align 8
  call void @png_write_chunk(%struct.png_struct_def* %24, i8* %arraydecay25, i8* %27, i64 %29)
  br label %if.end27

if.end27:                                         ; preds = %if.end, %land.lhs.true17, %lor.lhs.false14, %if.then6
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %30 = load %struct.png_unknown_chunk_t*, %struct.png_unknown_chunk_t** %up, align 8
  %incdec.ptr = getelementptr inbounds %struct.png_unknown_chunk_t, %struct.png_unknown_chunk_t* %30, i32 1
  store %struct.png_unknown_chunk_t* %incdec.ptr, %struct.png_unknown_chunk_t** %up, align 8
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %for.cond
  br label %if.end29

if.end29:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_info(%struct.png_struct_def* noalias %png_ptr, %struct.png_info_def* noalias %info_ptr) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %info_ptr.addr = alloca %struct.png_info_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %jend = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store %struct.png_info_def* %info_ptr, %struct.png_info_def** %info_ptr.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %cmp1 = icmp eq %struct.png_info_def* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %3 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  call void @png_write_info_before_PLTE(%struct.png_struct_def* %2, %struct.png_info_def* %3)
  %4 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %4, i32 0, i32 2
  %5 = load i32, i32* %valid, align 8
  %and = and i32 %5, 8
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %7 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %palette = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %7, i32 0, i32 4
  %8 = load %struct.png_color_struct*, %struct.png_color_struct** %palette, align 8
  %9 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %num_palette = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %9, i32 0, i32 5
  %10 = load i16, i16* %num_palette, align 8
  %conv = zext i16 %10 to i32
  call void @png_write_PLTE(%struct.png_struct_def* %6, %struct.png_color_struct* %8, i32 %conv)
  br label %if.end9

if.else:                                          ; preds = %if.end
  %11 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %color_type = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %11, i32 0, i32 8
  %12 = load i8, i8* %color_type, align 1
  %conv4 = zext i8 %12 to i32
  %cmp5 = icmp eq i32 %conv4, 3
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #7
  unreachable

if.end8:                                          ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then3
  %14 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid10 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %14, i32 0, i32 2
  %15 = load i32, i32* %valid10, align 8
  %and11 = and i32 %15, 16
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %if.then14, label %if.end41

if.then14:                                        ; preds = %if.end9
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %transformations = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 17
  %17 = load i32, i32* %transformations, align 4
  %and15 = and i32 %17, 524288
  %cmp16 = icmp ne i32 %and15, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %if.then14
  %18 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %color_type18 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %18, i32 0, i32 8
  %19 = load i8, i8* %color_type18, align 1
  %conv19 = zext i8 %19 to i32
  %cmp20 = icmp eq i32 %conv19, 3
  br i1 %cmp20, label %if.then22, label %if.end35

if.then22:                                        ; preds = %land.lhs.true
  %20 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %num_trans = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %20, i32 0, i32 6
  %21 = load i16, i16* %num_trans, align 2
  %conv23 = zext i16 %21 to i32
  store i32 %conv23, i32* %jend, align 4
  %22 = load i32, i32* %jend, align 4
  %cmp24 = icmp sgt i32 %22, 256
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then22
  store i32 256, i32* %jend, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then22
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end27
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %jend, align 4
  %cmp28 = icmp slt i32 %23, %24
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %trans_alpha = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %25, i32 0, i32 25
  %26 = load i8*, i8** %trans_alpha, align 8
  %27 = load i32, i32* %j, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %28 = load i8, i8* %arrayidx, align 1
  %conv30 = zext i8 %28 to i32
  %sub = sub nsw i32 255, %conv30
  %conv31 = trunc i32 %sub to i8
  %29 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %trans_alpha32 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %29, i32 0, i32 25
  %30 = load i8*, i8** %trans_alpha32, align 8
  %31 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %30, i64 %idxprom33
  store i8 %conv31, i8* %arrayidx34, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end35

if.end35:                                         ; preds = %for.end, %land.lhs.true, %if.then14
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %34 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %trans_alpha36 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %34, i32 0, i32 25
  %35 = load i8*, i8** %trans_alpha36, align 8
  %36 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %trans_color = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %36, i32 0, i32 26
  %37 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %num_trans37 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %37, i32 0, i32 6
  %38 = load i16, i16* %num_trans37, align 2
  %conv38 = zext i16 %38 to i32
  %39 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %color_type39 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %39, i32 0, i32 8
  %40 = load i8, i8* %color_type39, align 1
  %conv40 = zext i8 %40 to i32
  call void @png_write_tRNS(%struct.png_struct_def* %33, i8* %35, %struct.png_color_16_struct* %trans_color, i32 %conv38, i32 %conv40)
  br label %if.end41

if.end41:                                         ; preds = %if.end35, %if.end9
  %41 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid42 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %41, i32 0, i32 2
  %42 = load i32, i32* %valid42, align 8
  %and43 = and i32 %42, 32
  %cmp44 = icmp ne i32 %and43, 0
  br i1 %cmp44, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end41
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %44 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %background = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %44, i32 0, i32 27
  %45 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %color_type47 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %45, i32 0, i32 8
  %46 = load i8, i8* %color_type47, align 1
  %conv48 = zext i8 %46 to i32
  call void @png_write_bKGD(%struct.png_struct_def* %43, %struct.png_color_16_struct* %background, i32 %conv48)
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end41
  %47 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid50 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %47, i32 0, i32 2
  %48 = load i32, i32* %valid50, align 8
  %and51 = and i32 %48, 65536
  %cmp52 = icmp ne i32 %and51, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end49
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %50 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %exif = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %50, i32 0, i32 35
  %51 = load i8*, i8** %exif, align 8
  %52 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %num_exif = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %52, i32 0, i32 34
  %53 = load i32, i32* %num_exif, align 4
  call void @png_write_eXIf(%struct.png_struct_def* %49, i8* %51, i32 %53)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end49
  %54 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid56 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %54, i32 0, i32 2
  %55 = load i32, i32* %valid56, align 8
  %and57 = and i32 %55, 64
  %cmp58 = icmp ne i32 %and57, 0
  br i1 %cmp58, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end55
  %56 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %57 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %hist = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %57, i32 0, i32 37
  %58 = load i16*, i16** %hist, align 8
  %59 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %num_palette61 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %59, i32 0, i32 5
  %60 = load i16, i16* %num_palette61, align 8
  %conv62 = zext i16 %60 to i32
  call void @png_write_hIST(%struct.png_struct_def* %56, i16* %58, i32 %conv62)
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end55
  %61 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid64 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %61, i32 0, i32 2
  %62 = load i32, i32* %valid64, align 8
  %and65 = and i32 %62, 256
  %cmp66 = icmp ne i32 %and65, 0
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end63
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %64 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %x_offset = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %64, i32 0, i32 28
  %65 = load i32, i32* %x_offset, align 4
  %66 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %y_offset = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %66, i32 0, i32 29
  %67 = load i32, i32* %y_offset, align 8
  %68 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %offset_unit_type = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %68, i32 0, i32 30
  %69 = load i8, i8* %offset_unit_type, align 4
  %conv69 = zext i8 %69 to i32
  call void @png_write_oFFs(%struct.png_struct_def* %63, i32 %65, i32 %67, i32 %conv69)
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end63
  %70 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid71 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %70, i32 0, i32 2
  %71 = load i32, i32* %valid71, align 8
  %and72 = and i32 %71, 1024
  %cmp73 = icmp ne i32 %and72, 0
  br i1 %cmp73, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end70
  %72 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %73 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %pcal_purpose = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %73, i32 0, i32 38
  %74 = load i8*, i8** %pcal_purpose, align 8
  %75 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %pcal_X0 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %75, i32 0, i32 39
  %76 = load i32, i32* %pcal_X0, align 8
  %77 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %pcal_X1 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %77, i32 0, i32 40
  %78 = load i32, i32* %pcal_X1, align 4
  %79 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %pcal_type = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %79, i32 0, i32 43
  %80 = load i8, i8* %pcal_type, align 8
  %conv76 = zext i8 %80 to i32
  %81 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %pcal_nparams = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %81, i32 0, i32 44
  %82 = load i8, i8* %pcal_nparams, align 1
  %conv77 = zext i8 %82 to i32
  %83 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %pcal_units = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %83, i32 0, i32 41
  %84 = load i8*, i8** %pcal_units, align 8
  %85 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %pcal_params = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %85, i32 0, i32 42
  %86 = load i8**, i8*** %pcal_params, align 8
  call void @png_write_pCAL(%struct.png_struct_def* %72, i8* %74, i32 %76, i32 %78, i32 %conv76, i32 %conv77, i8* %84, i8** %86)
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end70
  %87 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid79 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %87, i32 0, i32 2
  %88 = load i32, i32* %valid79, align 8
  %and80 = and i32 %88, 16384
  %cmp81 = icmp ne i32 %and80, 0
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end78
  %89 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %90 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %scal_unit = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %90, i32 0, i32 50
  %91 = load i8, i8* %scal_unit, align 4
  %conv84 = zext i8 %91 to i32
  %92 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %scal_s_width = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %92, i32 0, i32 51
  %93 = load i8*, i8** %scal_s_width, align 8
  %94 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %scal_s_height = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %94, i32 0, i32 52
  %95 = load i8*, i8** %scal_s_height, align 8
  call void @png_write_sCAL_s(%struct.png_struct_def* %89, i32 %conv84, i8* %93, i8* %95)
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end78
  %96 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid86 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %96, i32 0, i32 2
  %97 = load i32, i32* %valid86, align 8
  %and87 = and i32 %97, 128
  %cmp88 = icmp ne i32 %and87, 0
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end85
  %98 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %99 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %x_pixels_per_unit = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %99, i32 0, i32 31
  %100 = load i32, i32* %x_pixels_per_unit, align 8
  %101 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %y_pixels_per_unit = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %101, i32 0, i32 32
  %102 = load i32, i32* %y_pixels_per_unit, align 4
  %103 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %phys_unit_type = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %103, i32 0, i32 33
  %104 = load i8, i8* %phys_unit_type, align 8
  %conv91 = zext i8 %104 to i32
  call void @png_write_pHYs(%struct.png_struct_def* %98, i32 %100, i32 %102, i32 %conv91)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end85
  %105 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid93 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %105, i32 0, i32 2
  %106 = load i32, i32* %valid93, align 8
  %and94 = and i32 %106, 512
  %cmp95 = icmp ne i32 %and94, 0
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end92
  %107 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %108 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %mod_time = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %108, i32 0, i32 23
  call void @png_write_tIME(%struct.png_struct_def* %107, %struct.png_time_struct* %mod_time)
  %109 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mode = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %109, i32 0, i32 15
  %110 = load i32, i32* %mode, align 4
  %or = or i32 %110, 512
  store i32 %or, i32* %mode, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end92
  %111 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid99 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %111, i32 0, i32 2
  %112 = load i32, i32* %valid99, align 8
  %and100 = and i32 %112, 8192
  %cmp101 = icmp ne i32 %and100, 0
  br i1 %cmp101, label %if.then103, label %if.end111

if.then103:                                       ; preds = %if.end98
  store i32 0, i32* %i, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc108, %if.then103
  %113 = load i32, i32* %i, align 4
  %114 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %splt_palettes_num = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %114, i32 0, i32 49
  %115 = load i32, i32* %splt_palettes_num, align 8
  %cmp105 = icmp slt i32 %113, %115
  br i1 %cmp105, label %for.body107, label %for.end110

for.body107:                                      ; preds = %for.cond104
  %116 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %117 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %splt_palettes = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %117, i32 0, i32 48
  %118 = load %struct.png_sPLT_struct*, %struct.png_sPLT_struct** %splt_palettes, align 8
  %119 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %119 to i64
  %add.ptr = getelementptr inbounds %struct.png_sPLT_struct, %struct.png_sPLT_struct* %118, i64 %idx.ext
  call void @png_write_sPLT(%struct.png_struct_def* %116, %struct.png_sPLT_struct* %add.ptr)
  br label %for.inc108

for.inc108:                                       ; preds = %for.body107
  %120 = load i32, i32* %i, align 4
  %inc109 = add nsw i32 %120, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond104, !llvm.loop !5

for.end110:                                       ; preds = %for.cond104
  br label %if.end111

if.end111:                                        ; preds = %for.end110, %if.end98
  store i32 0, i32* %i, align 4
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc202, %if.end111
  %121 = load i32, i32* %i, align 4
  %122 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %num_text = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %122, i32 0, i32 20
  %123 = load i32, i32* %num_text, align 4
  %cmp113 = icmp slt i32 %121, %123
  br i1 %cmp113, label %for.body115, label %for.end204

for.body115:                                      ; preds = %for.cond112
  %124 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %124, i32 0, i32 22
  %125 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %126 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %126 to i64
  %arrayidx117 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %125, i64 %idxprom116
  %compression = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx117, i32 0, i32 0
  %127 = load i32, i32* %compression, align 8
  %cmp118 = icmp sgt i32 %127, 0
  br i1 %cmp118, label %if.then120, label %if.else155

if.then120:                                       ; preds = %for.body115
  %128 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %129 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text121 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %129, i32 0, i32 22
  %130 = load %struct.png_text_struct*, %struct.png_text_struct** %text121, align 8
  %131 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %131 to i64
  %arrayidx123 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %130, i64 %idxprom122
  %compression124 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx123, i32 0, i32 0
  %132 = load i32, i32* %compression124, align 8
  %133 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text125 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %133, i32 0, i32 22
  %134 = load %struct.png_text_struct*, %struct.png_text_struct** %text125, align 8
  %135 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %135 to i64
  %arrayidx127 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %134, i64 %idxprom126
  %key = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx127, i32 0, i32 1
  %136 = load i8*, i8** %key, align 8
  %137 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text128 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %137, i32 0, i32 22
  %138 = load %struct.png_text_struct*, %struct.png_text_struct** %text128, align 8
  %139 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %139 to i64
  %arrayidx130 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %138, i64 %idxprom129
  %lang = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx130, i32 0, i32 5
  %140 = load i8*, i8** %lang, align 8
  %141 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text131 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %141, i32 0, i32 22
  %142 = load %struct.png_text_struct*, %struct.png_text_struct** %text131, align 8
  %143 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %143 to i64
  %arrayidx133 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %142, i64 %idxprom132
  %lang_key = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx133, i32 0, i32 6
  %144 = load i8*, i8** %lang_key, align 8
  %145 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text134 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %145, i32 0, i32 22
  %146 = load %struct.png_text_struct*, %struct.png_text_struct** %text134, align 8
  %147 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %147 to i64
  %arrayidx136 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %146, i64 %idxprom135
  %text137 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx136, i32 0, i32 2
  %148 = load i8*, i8** %text137, align 8
  call void @png_write_iTXt(%struct.png_struct_def* %128, i32 %132, i8* %136, i8* %140, i8* %144, i8* %148)
  %149 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text138 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %149, i32 0, i32 22
  %150 = load %struct.png_text_struct*, %struct.png_text_struct** %text138, align 8
  %151 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %151 to i64
  %arrayidx140 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %150, i64 %idxprom139
  %compression141 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx140, i32 0, i32 0
  %152 = load i32, i32* %compression141, align 8
  %cmp142 = icmp eq i32 %152, -1
  br i1 %cmp142, label %if.then144, label %if.else149

if.then144:                                       ; preds = %if.then120
  %153 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text145 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %153, i32 0, i32 22
  %154 = load %struct.png_text_struct*, %struct.png_text_struct** %text145, align 8
  %155 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %155 to i64
  %arrayidx147 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %154, i64 %idxprom146
  %compression148 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx147, i32 0, i32 0
  store i32 -3, i32* %compression148, align 8
  br label %if.end154

if.else149:                                       ; preds = %if.then120
  %156 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text150 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %156, i32 0, i32 22
  %157 = load %struct.png_text_struct*, %struct.png_text_struct** %text150, align 8
  %158 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %158 to i64
  %arrayidx152 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %157, i64 %idxprom151
  %compression153 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx152, i32 0, i32 0
  store i32 -2, i32* %compression153, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.else149, %if.then144
  br label %if.end201

if.else155:                                       ; preds = %for.body115
  %159 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text156 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %159, i32 0, i32 22
  %160 = load %struct.png_text_struct*, %struct.png_text_struct** %text156, align 8
  %161 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %161 to i64
  %arrayidx158 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %160, i64 %idxprom157
  %compression159 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx158, i32 0, i32 0
  %162 = load i32, i32* %compression159, align 8
  %cmp160 = icmp eq i32 %162, 0
  br i1 %cmp160, label %if.then162, label %if.else179

if.then162:                                       ; preds = %if.else155
  %163 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %164 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text163 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %164, i32 0, i32 22
  %165 = load %struct.png_text_struct*, %struct.png_text_struct** %text163, align 8
  %166 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %166 to i64
  %arrayidx165 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %165, i64 %idxprom164
  %key166 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx165, i32 0, i32 1
  %167 = load i8*, i8** %key166, align 8
  %168 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text167 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %168, i32 0, i32 22
  %169 = load %struct.png_text_struct*, %struct.png_text_struct** %text167, align 8
  %170 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %170 to i64
  %arrayidx169 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %169, i64 %idxprom168
  %text170 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx169, i32 0, i32 2
  %171 = load i8*, i8** %text170, align 8
  %172 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text171 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %172, i32 0, i32 22
  %173 = load %struct.png_text_struct*, %struct.png_text_struct** %text171, align 8
  %174 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %174 to i64
  %arrayidx173 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %173, i64 %idxprom172
  %compression174 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx173, i32 0, i32 0
  %175 = load i32, i32* %compression174, align 8
  call void @png_write_zTXt(%struct.png_struct_def* %163, i8* %167, i8* %171, i32 %175)
  %176 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text175 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %176, i32 0, i32 22
  %177 = load %struct.png_text_struct*, %struct.png_text_struct** %text175, align 8
  %178 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %178 to i64
  %arrayidx177 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %177, i64 %idxprom176
  %compression178 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx177, i32 0, i32 0
  store i32 -2, i32* %compression178, align 8
  br label %if.end200

if.else179:                                       ; preds = %if.else155
  %179 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text180 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %179, i32 0, i32 22
  %180 = load %struct.png_text_struct*, %struct.png_text_struct** %text180, align 8
  %181 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %181 to i64
  %arrayidx182 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %180, i64 %idxprom181
  %compression183 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx182, i32 0, i32 0
  %182 = load i32, i32* %compression183, align 8
  %cmp184 = icmp eq i32 %182, -1
  br i1 %cmp184, label %if.then186, label %if.end199

if.then186:                                       ; preds = %if.else179
  %183 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %184 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text187 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %184, i32 0, i32 22
  %185 = load %struct.png_text_struct*, %struct.png_text_struct** %text187, align 8
  %186 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %186 to i64
  %arrayidx189 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %185, i64 %idxprom188
  %key190 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx189, i32 0, i32 1
  %187 = load i8*, i8** %key190, align 8
  %188 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text191 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %188, i32 0, i32 22
  %189 = load %struct.png_text_struct*, %struct.png_text_struct** %text191, align 8
  %190 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %190 to i64
  %arrayidx193 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %189, i64 %idxprom192
  %text194 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx193, i32 0, i32 2
  %191 = load i8*, i8** %text194, align 8
  call void @png_write_tEXt(%struct.png_struct_def* %183, i8* %187, i8* %191, i64 0)
  %192 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text195 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %192, i32 0, i32 22
  %193 = load %struct.png_text_struct*, %struct.png_text_struct** %text195, align 8
  %194 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %194 to i64
  %arrayidx197 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %193, i64 %idxprom196
  %compression198 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx197, i32 0, i32 0
  store i32 -3, i32* %compression198, align 8
  br label %if.end199

if.end199:                                        ; preds = %if.then186, %if.else179
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.then162
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.end154
  br label %for.inc202

for.inc202:                                       ; preds = %if.end201
  %195 = load i32, i32* %i, align 4
  %inc203 = add nsw i32 %195, 1
  store i32 %inc203, i32* %i, align 4
  br label %for.cond112, !llvm.loop !6

for.end204:                                       ; preds = %for.cond112
  %196 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %197 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  call void @write_unknown_chunks(%struct.png_struct_def* %196, %struct.png_info_def* %197, i32 2)
  br label %return

return:                                           ; preds = %for.end204, %if.then
  ret void
}

declare dso_local void @png_write_PLTE(%struct.png_struct_def*, %struct.png_color_struct*, i32) #1

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def*, i8*) #2

declare dso_local void @png_write_tRNS(%struct.png_struct_def*, i8*, %struct.png_color_16_struct*, i32, i32) #1

declare dso_local void @png_write_bKGD(%struct.png_struct_def*, %struct.png_color_16_struct*, i32) #1

declare dso_local void @png_write_eXIf(%struct.png_struct_def*, i8*, i32) #1

declare dso_local void @png_write_hIST(%struct.png_struct_def*, i16*, i32) #1

declare dso_local void @png_write_oFFs(%struct.png_struct_def*, i32, i32, i32) #1

declare dso_local void @png_write_pCAL(%struct.png_struct_def*, i8*, i32, i32, i32, i32, i8*, i8**) #1

declare dso_local void @png_write_sCAL_s(%struct.png_struct_def*, i32, i8*, i8*) #1

declare dso_local void @png_write_pHYs(%struct.png_struct_def*, i32, i32, i32) #1

declare dso_local void @png_write_tIME(%struct.png_struct_def*, %struct.png_time_struct*) #1

declare dso_local void @png_write_sPLT(%struct.png_struct_def*, %struct.png_sPLT_struct*) #1

declare dso_local void @png_write_iTXt(%struct.png_struct_def*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local void @png_write_zTXt(%struct.png_struct_def*, i8*, i8*, i32) #1

declare dso_local void @png_write_tEXt(%struct.png_struct_def*, i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_end(%struct.png_struct_def* noalias %png_ptr, %struct.png_info_def* noalias %info_ptr) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %info_ptr.addr = alloca %struct.png_info_def*, align 8
  %i = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store %struct.png_info_def* %info_ptr, %struct.png_info_def** %info_ptr.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mode = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i32 0, i32 15
  %2 = load i32, i32* %mode, align 4
  %and = and i32 %2, 4
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)) #7
  unreachable

if.end3:                                          ; preds = %if.end
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %num_palette_max = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %4, i32 0, i32 56
  %5 = load i32, i32* %num_palette_max, align 4
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %num_palette = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 55
  %7 = load i16, i16* %num_palette, align 8
  %conv = zext i16 %7 to i32
  %cmp4 = icmp sgt i32 %5, %conv
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_benign_error(%struct.png_struct_def* %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %9 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %cmp8 = icmp ne %struct.png_info_def* %9, null
  br i1 %cmp8, label %if.then10, label %if.end111

if.then10:                                        ; preds = %if.end7
  %10 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %10, i32 0, i32 2
  %11 = load i32, i32* %valid, align 8
  %and11 = and i32 %11, 512
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.then10
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mode14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 15
  %13 = load i32, i32* %mode14, align 4
  %and15 = and i32 %13, 512
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %15 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %mod_time = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %15, i32 0, i32 23
  call void @png_write_tIME(%struct.png_struct_def* %14, %struct.png_time_struct* %mod_time)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true, %if.then10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end19
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %num_text = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %17, i32 0, i32 20
  %18 = load i32, i32* %num_text, align 4
  %cmp20 = icmp slt i32 %16, %18
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %19, i32 0, i32 22
  %20 = load %struct.png_text_struct*, %struct.png_text_struct** %text, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %20, i64 %idxprom
  %compression = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx, i32 0, i32 0
  %22 = load i32, i32* %compression, align 8
  %cmp22 = icmp sgt i32 %22, 0
  br i1 %cmp22, label %if.then24, label %if.else58

if.then24:                                        ; preds = %for.body
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %24 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text25 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %24, i32 0, i32 22
  %25 = load %struct.png_text_struct*, %struct.png_text_struct** %text25, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %arrayidx27 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %25, i64 %idxprom26
  %compression28 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx27, i32 0, i32 0
  %27 = load i32, i32* %compression28, align 8
  %28 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text29 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %28, i32 0, i32 22
  %29 = load %struct.png_text_struct*, %struct.png_text_struct** %text29, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %30 to i64
  %arrayidx31 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %29, i64 %idxprom30
  %key = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx31, i32 0, i32 1
  %31 = load i8*, i8** %key, align 8
  %32 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text32 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %32, i32 0, i32 22
  %33 = load %struct.png_text_struct*, %struct.png_text_struct** %text32, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %34 to i64
  %arrayidx34 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %33, i64 %idxprom33
  %lang = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx34, i32 0, i32 5
  %35 = load i8*, i8** %lang, align 8
  %36 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text35 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %36, i32 0, i32 22
  %37 = load %struct.png_text_struct*, %struct.png_text_struct** %text35, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %37, i64 %idxprom36
  %lang_key = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx37, i32 0, i32 6
  %39 = load i8*, i8** %lang_key, align 8
  %40 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text38 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %40, i32 0, i32 22
  %41 = load %struct.png_text_struct*, %struct.png_text_struct** %text38, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %42 to i64
  %arrayidx40 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %41, i64 %idxprom39
  %text41 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx40, i32 0, i32 2
  %43 = load i8*, i8** %text41, align 8
  call void @png_write_iTXt(%struct.png_struct_def* %23, i32 %27, i8* %31, i8* %35, i8* %39, i8* %43)
  %44 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text42 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %44, i32 0, i32 22
  %45 = load %struct.png_text_struct*, %struct.png_text_struct** %text42, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %45, i64 %idxprom43
  %compression45 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx44, i32 0, i32 0
  %47 = load i32, i32* %compression45, align 8
  %cmp46 = icmp eq i32 %47, -1
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.then24
  %48 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text49 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %48, i32 0, i32 22
  %49 = load %struct.png_text_struct*, %struct.png_text_struct** %text49, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %50 to i64
  %arrayidx51 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %49, i64 %idxprom50
  %compression52 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx51, i32 0, i32 0
  store i32 -3, i32* %compression52, align 8
  br label %if.end57

if.else:                                          ; preds = %if.then24
  %51 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text53 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %51, i32 0, i32 22
  %52 = load %struct.png_text_struct*, %struct.png_text_struct** %text53, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %53 to i64
  %arrayidx55 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %52, i64 %idxprom54
  %compression56 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx55, i32 0, i32 0
  store i32 -2, i32* %compression56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then48
  br label %if.end104

if.else58:                                        ; preds = %for.body
  %54 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text59 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %54, i32 0, i32 22
  %55 = load %struct.png_text_struct*, %struct.png_text_struct** %text59, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %56 to i64
  %arrayidx61 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %55, i64 %idxprom60
  %compression62 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx61, i32 0, i32 0
  %57 = load i32, i32* %compression62, align 8
  %cmp63 = icmp sge i32 %57, 0
  br i1 %cmp63, label %if.then65, label %if.else82

if.then65:                                        ; preds = %if.else58
  %58 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %59 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text66 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %59, i32 0, i32 22
  %60 = load %struct.png_text_struct*, %struct.png_text_struct** %text66, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %61 to i64
  %arrayidx68 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %60, i64 %idxprom67
  %key69 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx68, i32 0, i32 1
  %62 = load i8*, i8** %key69, align 8
  %63 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text70 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %63, i32 0, i32 22
  %64 = load %struct.png_text_struct*, %struct.png_text_struct** %text70, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %65 to i64
  %arrayidx72 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %64, i64 %idxprom71
  %text73 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx72, i32 0, i32 2
  %66 = load i8*, i8** %text73, align 8
  %67 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text74 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %67, i32 0, i32 22
  %68 = load %struct.png_text_struct*, %struct.png_text_struct** %text74, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %69 to i64
  %arrayidx76 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %68, i64 %idxprom75
  %compression77 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx76, i32 0, i32 0
  %70 = load i32, i32* %compression77, align 8
  call void @png_write_zTXt(%struct.png_struct_def* %58, i8* %62, i8* %66, i32 %70)
  %71 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text78 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %71, i32 0, i32 22
  %72 = load %struct.png_text_struct*, %struct.png_text_struct** %text78, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %73 to i64
  %arrayidx80 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %72, i64 %idxprom79
  %compression81 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx80, i32 0, i32 0
  store i32 -2, i32* %compression81, align 8
  br label %if.end103

if.else82:                                        ; preds = %if.else58
  %74 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text83 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %74, i32 0, i32 22
  %75 = load %struct.png_text_struct*, %struct.png_text_struct** %text83, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %76 to i64
  %arrayidx85 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %75, i64 %idxprom84
  %compression86 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx85, i32 0, i32 0
  %77 = load i32, i32* %compression86, align 8
  %cmp87 = icmp eq i32 %77, -1
  br i1 %cmp87, label %if.then89, label %if.end102

if.then89:                                        ; preds = %if.else82
  %78 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %79 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text90 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %79, i32 0, i32 22
  %80 = load %struct.png_text_struct*, %struct.png_text_struct** %text90, align 8
  %81 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %81 to i64
  %arrayidx92 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %80, i64 %idxprom91
  %key93 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx92, i32 0, i32 1
  %82 = load i8*, i8** %key93, align 8
  %83 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text94 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %83, i32 0, i32 22
  %84 = load %struct.png_text_struct*, %struct.png_text_struct** %text94, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %85 to i64
  %arrayidx96 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %84, i64 %idxprom95
  %text97 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx96, i32 0, i32 2
  %86 = load i8*, i8** %text97, align 8
  call void @png_write_tEXt(%struct.png_struct_def* %78, i8* %82, i8* %86, i64 0)
  %87 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %text98 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %87, i32 0, i32 22
  %88 = load %struct.png_text_struct*, %struct.png_text_struct** %text98, align 8
  %89 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %89 to i64
  %arrayidx100 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %88, i64 %idxprom99
  %compression101 = getelementptr inbounds %struct.png_text_struct, %struct.png_text_struct* %arrayidx100, i32 0, i32 0
  store i32 -3, i32* %compression101, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then89, %if.else82
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then65
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end57
  br label %for.inc

for.inc:                                          ; preds = %if.end104
  %90 = load i32, i32* %i, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %91 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid105 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %91, i32 0, i32 2
  %92 = load i32, i32* %valid105, align 8
  %and106 = and i32 %92, 65536
  %cmp107 = icmp ne i32 %and106, 0
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %for.end
  %93 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %94 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %exif = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %94, i32 0, i32 35
  %95 = load i8*, i8** %exif, align 8
  %96 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %num_exif = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %96, i32 0, i32 34
  %97 = load i32, i32* %num_exif, align 4
  call void @png_write_eXIf(%struct.png_struct_def* %93, i8* %95, i32 %97)
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %for.end
  %98 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %99 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  call void @write_unknown_chunks(%struct.png_struct_def* %98, %struct.png_info_def* %99, i32 8)
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end7
  %100 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mode112 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %100, i32 0, i32 15
  %101 = load i32, i32* %mode112, align 4
  %or = or i32 %101, 8
  store i32 %or, i32* %mode112, align 4
  %102 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_IEND(%struct.png_struct_def* %102)
  br label %return

return:                                           ; preds = %if.end111, %if.then
  ret void
}

declare dso_local void @png_benign_error(%struct.png_struct_def*, i8*) #1

declare dso_local void @png_write_IEND(%struct.png_struct_def*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_convert_from_struct_tm(%struct.png_time_struct* %ptime, %struct.tm* %ttime) #0 {
entry:
  %ptime.addr = alloca %struct.png_time_struct*, align 8
  %ttime.addr = alloca %struct.tm*, align 8
  store %struct.png_time_struct* %ptime, %struct.png_time_struct** %ptime.addr, align 8
  store %struct.tm* %ttime, %struct.tm** %ttime.addr, align 8
  %0 = load %struct.tm*, %struct.tm** %ttime.addr, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %0, i32 0, i32 5
  %1 = load i32, i32* %tm_year, align 4
  %add = add nsw i32 1900, %1
  %conv = trunc i32 %add to i16
  %2 = load %struct.png_time_struct*, %struct.png_time_struct** %ptime.addr, align 8
  %year = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %2, i32 0, i32 0
  store i16 %conv, i16* %year, align 2
  %3 = load %struct.tm*, %struct.tm** %ttime.addr, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %4 = load i32, i32* %tm_mon, align 8
  %add1 = add nsw i32 %4, 1
  %conv2 = trunc i32 %add1 to i8
  %5 = load %struct.png_time_struct*, %struct.png_time_struct** %ptime.addr, align 8
  %month = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %5, i32 0, i32 1
  store i8 %conv2, i8* %month, align 2
  %6 = load %struct.tm*, %struct.tm** %ttime.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  %7 = load i32, i32* %tm_mday, align 4
  %conv3 = trunc i32 %7 to i8
  %8 = load %struct.png_time_struct*, %struct.png_time_struct** %ptime.addr, align 8
  %day = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %8, i32 0, i32 2
  store i8 %conv3, i8* %day, align 1
  %9 = load %struct.tm*, %struct.tm** %ttime.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2
  %10 = load i32, i32* %tm_hour, align 8
  %conv4 = trunc i32 %10 to i8
  %11 = load %struct.png_time_struct*, %struct.png_time_struct** %ptime.addr, align 8
  %hour = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %11, i32 0, i32 3
  store i8 %conv4, i8* %hour, align 2
  %12 = load %struct.tm*, %struct.tm** %ttime.addr, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 1
  %13 = load i32, i32* %tm_min, align 4
  %conv5 = trunc i32 %13 to i8
  %14 = load %struct.png_time_struct*, %struct.png_time_struct** %ptime.addr, align 8
  %minute = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %14, i32 0, i32 4
  store i8 %conv5, i8* %minute, align 1
  %15 = load %struct.tm*, %struct.tm** %ttime.addr, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 0
  %16 = load i32, i32* %tm_sec, align 8
  %conv6 = trunc i32 %16 to i8
  %17 = load %struct.png_time_struct*, %struct.png_time_struct** %ptime.addr, align 8
  %second = getelementptr inbounds %struct.png_time_struct, %struct.png_time_struct* %17, i32 0, i32 5
  store i8 %conv6, i8* %second, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_convert_from_time_t(%struct.png_time_struct* %ptime, i64 %ttime) #0 {
entry:
  %ptime.addr = alloca %struct.png_time_struct*, align 8
  %ttime.addr = alloca i64, align 8
  %tbuf = alloca %struct.tm*, align 8
  store %struct.png_time_struct* %ptime, %struct.png_time_struct** %ptime.addr, align 8
  store i64 %ttime, i64* %ttime.addr, align 8
  %call = call %struct.tm* @gmtime(i64* %ttime.addr) #8
  store %struct.tm* %call, %struct.tm** %tbuf, align 8
  %0 = load %struct.tm*, %struct.tm** %tbuf, align 8
  %cmp = icmp eq %struct.tm* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.png_time_struct*, %struct.png_time_struct** %ptime.addr, align 8
  %2 = bitcast %struct.png_time_struct* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 2 %2, i8 0, i64 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.png_time_struct*, %struct.png_time_struct** %ptime.addr, align 8
  %4 = load %struct.tm*, %struct.tm** %tbuf, align 8
  call void @png_convert_from_struct_tm(%struct.png_time_struct* %3, %struct.tm* %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime(i64*) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct.png_struct_def* @png_create_write_struct(i8* %user_png_ver, i8* %error_ptr, void (%struct.png_struct_def*, i8*)* %error_fn, void (%struct.png_struct_def*, i8*)* %warn_fn) #0 {
entry:
  %user_png_ver.addr = alloca i8*, align 8
  %error_ptr.addr = alloca i8*, align 8
  %error_fn.addr = alloca void (%struct.png_struct_def*, i8*)*, align 8
  %warn_fn.addr = alloca void (%struct.png_struct_def*, i8*)*, align 8
  store i8* %user_png_ver, i8** %user_png_ver.addr, align 8
  store i8* %error_ptr, i8** %error_ptr.addr, align 8
  store void (%struct.png_struct_def*, i8*)* %error_fn, void (%struct.png_struct_def*, i8*)** %error_fn.addr, align 8
  store void (%struct.png_struct_def*, i8*)* %warn_fn, void (%struct.png_struct_def*, i8*)** %warn_fn.addr, align 8
  %0 = load i8*, i8** %user_png_ver.addr, align 8
  %1 = load i8*, i8** %error_ptr.addr, align 8
  %2 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %error_fn.addr, align 8
  %3 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %warn_fn.addr, align 8
  %call = call noalias %struct.png_struct_def* @png_create_write_struct_2(i8* %0, i8* %1, void (%struct.png_struct_def*, i8*)* %2, void (%struct.png_struct_def*, i8*)* %3, i8* null, i8* (%struct.png_struct_def*, i64)* null, void (%struct.png_struct_def*, i8*)* null)
  ret %struct.png_struct_def* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local noalias %struct.png_struct_def* @png_create_write_struct_2(i8* %user_png_ver, i8* %error_ptr, void (%struct.png_struct_def*, i8*)* %error_fn, void (%struct.png_struct_def*, i8*)* %warn_fn, i8* %mem_ptr, i8* (%struct.png_struct_def*, i64)* %malloc_fn, void (%struct.png_struct_def*, i8*)* %free_fn) #0 {
entry:
  %user_png_ver.addr = alloca i8*, align 8
  %error_ptr.addr = alloca i8*, align 8
  %error_fn.addr = alloca void (%struct.png_struct_def*, i8*)*, align 8
  %warn_fn.addr = alloca void (%struct.png_struct_def*, i8*)*, align 8
  %mem_ptr.addr = alloca i8*, align 8
  %malloc_fn.addr = alloca i8* (%struct.png_struct_def*, i64)*, align 8
  %free_fn.addr = alloca void (%struct.png_struct_def*, i8*)*, align 8
  %png_ptr = alloca %struct.png_struct_def*, align 8
  store i8* %user_png_ver, i8** %user_png_ver.addr, align 8
  store i8* %error_ptr, i8** %error_ptr.addr, align 8
  store void (%struct.png_struct_def*, i8*)* %error_fn, void (%struct.png_struct_def*, i8*)** %error_fn.addr, align 8
  store void (%struct.png_struct_def*, i8*)* %warn_fn, void (%struct.png_struct_def*, i8*)** %warn_fn.addr, align 8
  store i8* %mem_ptr, i8** %mem_ptr.addr, align 8
  store i8* (%struct.png_struct_def*, i64)* %malloc_fn, i8* (%struct.png_struct_def*, i64)** %malloc_fn.addr, align 8
  store void (%struct.png_struct_def*, i8*)* %free_fn, void (%struct.png_struct_def*, i8*)** %free_fn.addr, align 8
  %0 = load i8*, i8** %user_png_ver.addr, align 8
  %1 = load i8*, i8** %error_ptr.addr, align 8
  %2 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %error_fn.addr, align 8
  %3 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %warn_fn.addr, align 8
  %4 = load i8*, i8** %mem_ptr.addr, align 8
  %5 = load i8* (%struct.png_struct_def*, i64)*, i8* (%struct.png_struct_def*, i64)** %malloc_fn.addr, align 8
  %6 = load void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)** %free_fn.addr, align 8
  %call = call noalias %struct.png_struct_def* @png_create_png_struct(i8* %0, i8* %1, void (%struct.png_struct_def*, i8*)* %2, void (%struct.png_struct_def*, i8*)* %3, i8* %4, i8* (%struct.png_struct_def*, i64)* %5, void (%struct.png_struct_def*, i8*)* %6)
  store %struct.png_struct_def* %call, %struct.png_struct_def** %png_ptr, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %cmp = icmp ne %struct.png_struct_def* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %zbuffer_size = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 21
  store i32 8192, i32* %zbuffer_size, align 8
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %zlib_strategy = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %9, i32 0, i32 26
  store i32 1, i32* %zlib_strategy, align 4
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %zlib_level = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 22
  store i32 -1, i32* %zlib_level, align 4
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %zlib_mem_level = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 25
  store i32 8, i32* %zlib_mem_level, align 8
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %zlib_window_bits = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %12, i32 0, i32 24
  store i32 15, i32* %zlib_window_bits, align 4
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %zlib_method = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 23
  store i32 8, i32* %zlib_method, align 8
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %zlib_text_strategy = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 31
  store i32 0, i32* %zlib_text_strategy, align 8
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %zlib_text_level = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 27
  store i32 -1, i32* %zlib_text_level, align 8
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %zlib_text_mem_level = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 30
  store i32 8, i32* %zlib_text_mem_level, align 4
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %zlib_text_window_bits = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 29
  store i32 15, i32* %zlib_text_window_bits, align 8
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %zlib_text_method = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 28
  store i32 8, i32* %zlib_text_method, align 4
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_write_fn(%struct.png_struct_def* %19, i8* null, void (%struct.png_struct_def*, i8*, i64)* null, void (%struct.png_struct_def*)* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  ret %struct.png_struct_def* %20
}

declare dso_local noalias %struct.png_struct_def* @png_create_png_struct(i8*, i8*, void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, i8* (%struct.png_struct_def*, i64)*, void (%struct.png_struct_def*, i8*)*) #1

declare dso_local void @png_set_write_fn(%struct.png_struct_def*, i8*, void (%struct.png_struct_def*, i8*, i64)*, void (%struct.png_struct_def*)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_rows(%struct.png_struct_def* noalias %png_ptr, i8** %row, i32 %num_rows) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %row.addr = alloca i8**, align 8
  %num_rows.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rp = alloca i8**, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i8** %row, i8*** %row.addr, align 8
  store i32 %num_rows, i32* %num_rows.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  %1 = load i8**, i8*** %row.addr, align 8
  store i8** %1, i8*** %rp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_rows.addr, align 4
  %cmp1 = icmp ult i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %5 = load i8**, i8*** %rp, align 8
  %6 = load i8*, i8** %5, align 8
  call void @png_write_row(%struct.png_struct_def* %4, i8* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i8**, i8*** %rp, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr, i8*** %rp, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_row(%struct.png_struct_def* noalias %png_ptr, i8* %row) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %row.addr = alloca i8*, align 8
  %row_info = alloca %struct.png_row_info_struct, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i8* %row, i8** %row.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end171

if.end:                                           ; preds = %entry
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i32 0, i32 43
  %2 = load i32, i32* %row_number, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pass = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i32 0, i32 61
  %4 = load i8, i8* %pass, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then4, label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mode = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 15
  %6 = load i32, i32* %mode, align 4
  %and = and i32 %6, 1024
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* %7, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0)) #7
  unreachable

if.end8:                                          ; preds = %if.then4
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_start_row(%struct.png_struct_def* %8)
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %land.lhs.true, %if.end
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %interlaced = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %9, i32 0, i32 60
  %10 = load i8, i8* %interlaced, align 4
  %conv10 = zext i8 %10 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %land.lhs.true13, label %if.end78

land.lhs.true13:                                  ; preds = %if.end9
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %transformations = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 17
  %12 = load i32, i32* %transformations, align 4
  %and14 = and i32 %12, 2
  %cmp15 = icmp ne i32 %and14, 0
  br i1 %cmp15, label %if.then17, label %if.end78

if.then17:                                        ; preds = %land.lhs.true13
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pass18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 61
  %14 = load i8, i8* %pass18, align 1
  %conv19 = zext i8 %14 to i32
  switch i32 %conv19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb35
    i32 3, label %sw.bb42
    i32 4, label %sw.bb53
    i32 5, label %sw.bb60
    i32 6, label %sw.bb71
  ]

sw.bb:                                            ; preds = %if.then17
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 43
  %16 = load i32, i32* %row_number20, align 4
  %and21 = and i32 %16, 7
  %cmp22 = icmp ne i32 %and21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %sw.bb
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %17)
  br label %if.end171

if.end25:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.then17
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 43
  %19 = load i32, i32* %row_number27, align 4
  %and28 = and i32 %19, 7
  %cmp29 = icmp ne i32 %and28, 0
  br i1 %cmp29, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb26
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %width = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 37
  %21 = load i32, i32* %width, align 8
  %cmp31 = icmp ult i32 %21, 5
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false, %sw.bb26
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %22)
  br label %if.end171

if.end34:                                         ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.then17
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number36 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %23, i32 0, i32 43
  %24 = load i32, i32* %row_number36, align 4
  %and37 = and i32 %24, 7
  %cmp38 = icmp ne i32 %and37, 4
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %sw.bb35
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %25)
  br label %if.end171

if.end41:                                         ; preds = %sw.bb35
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.then17
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %26, i32 0, i32 43
  %27 = load i32, i32* %row_number43, align 4
  %and44 = and i32 %27, 3
  %cmp45 = icmp ne i32 %and44, 0
  br i1 %cmp45, label %if.then51, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %sw.bb42
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %width48 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 37
  %29 = load i32, i32* %width48, align 8
  %cmp49 = icmp ult i32 %29, 3
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %lor.lhs.false47, %sw.bb42
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %30)
  br label %if.end171

if.end52:                                         ; preds = %lor.lhs.false47
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.then17
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number54 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %31, i32 0, i32 43
  %32 = load i32, i32* %row_number54, align 4
  %and55 = and i32 %32, 3
  %cmp56 = icmp ne i32 %and55, 2
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %sw.bb53
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %33)
  br label %if.end171

if.end59:                                         ; preds = %sw.bb53
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.then17
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number61 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %34, i32 0, i32 43
  %35 = load i32, i32* %row_number61, align 4
  %and62 = and i32 %35, 1
  %cmp63 = icmp ne i32 %and62, 0
  br i1 %cmp63, label %if.then69, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %sw.bb60
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %width66 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 37
  %37 = load i32, i32* %width66, align 8
  %cmp67 = icmp ult i32 %37, 2
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %lor.lhs.false65, %sw.bb60
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %38)
  br label %if.end171

if.end70:                                         ; preds = %lor.lhs.false65
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.then17
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number72 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %39, i32 0, i32 43
  %40 = load i32, i32* %row_number72, align 4
  %and73 = and i32 %40, 1
  %cmp74 = icmp eq i32 %and73, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %sw.bb71
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %41)
  br label %if.end171

if.end77:                                         ; preds = %sw.bb71
  br label %sw.epilog

sw.default:                                       ; preds = %if.then17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end77, %if.end70, %if.end59, %if.end52, %if.end41, %if.end34, %if.end25
  br label %if.end78

if.end78:                                         ; preds = %sw.epilog, %land.lhs.true13, %if.end9
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %color_type = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %42, i32 0, i32 63
  %43 = load i8, i8* %color_type, align 1
  %color_type79 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 2
  store i8 %43, i8* %color_type79, align 8
  %44 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_width = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %44, i32 0, i32 40
  %45 = load i32, i32* %usr_width, align 4
  %width80 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 0
  store i32 %45, i32* %width80, align 8
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_channels = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %46, i32 0, i32 68
  %47 = load i8, i8* %usr_channels, align 4
  %channels = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 4
  store i8 %47, i8* %channels, align 2
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_bit_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %48, i32 0, i32 65
  %49 = load i8, i8* %usr_bit_depth, align 1
  %bit_depth = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 3
  store i8 %49, i8* %bit_depth, align 1
  %bit_depth81 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 3
  %50 = load i8, i8* %bit_depth81, align 1
  %conv82 = zext i8 %50 to i32
  %channels83 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 4
  %51 = load i8, i8* %channels83, align 2
  %conv84 = zext i8 %51 to i32
  %mul = mul nsw i32 %conv82, %conv84
  %conv85 = trunc i32 %mul to i8
  %pixel_depth = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  store i8 %conv85, i8* %pixel_depth, align 1
  %pixel_depth86 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  %52 = load i8, i8* %pixel_depth86, align 1
  %conv87 = zext i8 %52 to i32
  %cmp88 = icmp sge i32 %conv87, 8
  br i1 %cmp88, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end78
  %width90 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 0
  %53 = load i32, i32* %width90, align 8
  %conv91 = zext i32 %53 to i64
  %pixel_depth92 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  %54 = load i8, i8* %pixel_depth92, align 1
  %conv93 = zext i8 %54 to i64
  %shr = lshr i64 %conv93, 3
  %mul94 = mul i64 %conv91, %shr
  br label %cond.end

cond.false:                                       ; preds = %if.end78
  %width95 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 0
  %55 = load i32, i32* %width95, align 8
  %conv96 = zext i32 %55 to i64
  %pixel_depth97 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  %56 = load i8, i8* %pixel_depth97, align 1
  %conv98 = zext i8 %56 to i64
  %mul99 = mul i64 %conv96, %conv98
  %add = add i64 %mul99, 7
  %shr100 = lshr i64 %add, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul94, %cond.true ], [ %shr100, %cond.false ]
  %rowbytes = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 1
  store i64 %cond, i64* %rowbytes, align 8
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_buf = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %57, i32 0, i32 47
  %58 = load i8*, i8** %row_buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8*, i8** %row.addr, align 8
  %rowbytes101 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 1
  %60 = load i64, i64* %rowbytes101, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %59, i64 %60, i1 false)
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %interlaced102 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %61, i32 0, i32 60
  %62 = load i8, i8* %interlaced102, align 4
  %conv103 = zext i8 %62 to i32
  %tobool = icmp ne i32 %conv103, 0
  br i1 %tobool, label %land.lhs.true104, label %if.end124

land.lhs.true104:                                 ; preds = %cond.end
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pass105 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %63, i32 0, i32 61
  %64 = load i8, i8* %pass105, align 1
  %conv106 = zext i8 %64 to i32
  %cmp107 = icmp slt i32 %conv106, 6
  br i1 %cmp107, label %land.lhs.true109, label %if.end124

land.lhs.true109:                                 ; preds = %land.lhs.true104
  %65 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %transformations110 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %65, i32 0, i32 17
  %66 = load i32, i32* %transformations110, align 4
  %and111 = and i32 %66, 2
  %cmp112 = icmp ne i32 %and111, 0
  br i1 %cmp112, label %if.then114, label %if.end124

if.then114:                                       ; preds = %land.lhs.true109
  %67 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_buf115 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %67, i32 0, i32 47
  %68 = load i8*, i8** %row_buf115, align 8
  %add.ptr116 = getelementptr inbounds i8, i8* %68, i64 1
  %69 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pass117 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %69, i32 0, i32 61
  %70 = load i8, i8* %pass117, align 1
  %conv118 = zext i8 %70 to i32
  call void @png_do_write_interlace(%struct.png_row_info_struct* %row_info, i8* %add.ptr116, i32 %conv118)
  %width119 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 0
  %71 = load i32, i32* %width119, align 8
  %cmp120 = icmp eq i32 %71, 0
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.then114
  %72 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %72)
  br label %if.end171

if.end123:                                        ; preds = %if.then114
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %land.lhs.true109, %land.lhs.true104, %cond.end
  %73 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %transformations125 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %73, i32 0, i32 17
  %74 = load i32, i32* %transformations125, align 4
  %cmp126 = icmp ne i32 %74, 0
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end124
  %75 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_do_write_transformations(%struct.png_struct_def* %75, %struct.png_row_info_struct* %row_info)
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end124
  %pixel_depth130 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  %76 = load i8, i8* %pixel_depth130, align 1
  %conv131 = zext i8 %76 to i32
  %77 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pixel_depth132 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %77, i32 0, i32 66
  %78 = load i8, i8* %pixel_depth132, align 2
  %conv133 = zext i8 %78 to i32
  %cmp134 = icmp ne i32 %conv131, %conv133
  br i1 %cmp134, label %if.then142, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %if.end129
  %pixel_depth137 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  %79 = load i8, i8* %pixel_depth137, align 1
  %conv138 = zext i8 %79 to i32
  %80 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %transformed_pixel_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %80, i32 0, i32 71
  %81 = load i8, i8* %transformed_pixel_depth, align 1
  %conv139 = zext i8 %81 to i32
  %cmp140 = icmp ne i32 %conv138, %conv139
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %lor.lhs.false136, %if.end129
  %82 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0)) #7
  unreachable

if.end143:                                        ; preds = %lor.lhs.false136
  %83 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mng_features_permitted = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %83, i32 0, i32 125
  %84 = load i32, i32* %mng_features_permitted, align 8
  %and144 = and i32 %84, 4
  %cmp145 = icmp ne i32 %and144, 0
  br i1 %cmp145, label %land.lhs.true147, label %if.end154

land.lhs.true147:                                 ; preds = %if.end143
  %85 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %filter_type = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %85, i32 0, i32 126
  %86 = load i8, i8* %filter_type, align 4
  %conv148 = zext i8 %86 to i32
  %cmp149 = icmp eq i32 %conv148, 64
  br i1 %cmp149, label %if.then151, label %if.end154

if.then151:                                       ; preds = %land.lhs.true147
  %87 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_buf152 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %87, i32 0, i32 47
  %88 = load i8*, i8** %row_buf152, align 8
  %add.ptr153 = getelementptr inbounds i8, i8* %88, i64 1
  call void @png_do_write_intrapixel(%struct.png_row_info_struct* %row_info, i8* %add.ptr153)
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %land.lhs.true147, %if.end143
  %color_type155 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 2
  %89 = load i8, i8* %color_type155, align 8
  %conv156 = zext i8 %89 to i32
  %cmp157 = icmp eq i32 %conv156, 3
  br i1 %cmp157, label %land.lhs.true159, label %if.end163

land.lhs.true159:                                 ; preds = %if.end154
  %90 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %num_palette_max = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %90, i32 0, i32 56
  %91 = load i32, i32* %num_palette_max, align 4
  %cmp160 = icmp sge i32 %91, 0
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %land.lhs.true159
  %92 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_do_check_palette_indexes(%struct.png_struct_def* %92, %struct.png_row_info_struct* %row_info)
  br label %if.end163

if.end163:                                        ; preds = %if.then162, %land.lhs.true159, %if.end154
  %93 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_find_filter(%struct.png_struct_def* %93, %struct.png_row_info_struct* %row_info)
  %94 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %write_row_fn = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %94, i32 0, i32 94
  %95 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %write_row_fn, align 8
  %cmp164 = icmp ne void (%struct.png_struct_def*, i32, i32)* %95, null
  br i1 %cmp164, label %if.then166, label %if.end171

if.then166:                                       ; preds = %if.end163
  %96 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %write_row_fn167 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %96, i32 0, i32 94
  %97 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %write_row_fn167, align 8
  %98 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %99 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number168 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %99, i32 0, i32 43
  %100 = load i32, i32* %row_number168, align 4
  %101 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pass169 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %101, i32 0, i32 61
  %102 = load i8, i8* %pass169, align 1
  %conv170 = zext i8 %102 to i32
  call void %97(%struct.png_struct_def* %98, i32 %100, i32 %conv170)
  br label %if.end171

if.end171:                                        ; preds = %if.then, %if.then24, %if.then33, %if.then40, %if.then51, %if.then58, %if.then69, %if.then76, %if.then122, %if.then166, %if.end163
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_image(%struct.png_struct_def* noalias %png_ptr, i8** %image) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %image.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %pass = alloca i32, align 4
  %num_pass = alloca i32, align 4
  %rp = alloca i8**, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i8** %image, i8*** %image.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end7

if.end:                                           ; preds = %entry
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %call = call i32 @png_set_interlace_handling(%struct.png_struct_def* %1)
  store i32 %call, i32* %num_pass, align 4
  store i32 0, i32* %pass, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %if.end
  %2 = load i32, i32* %pass, align 4
  %3 = load i32, i32* %num_pass, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %4 = load i8**, i8*** %image.addr, align 8
  store i8** %4, i8*** %rp, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %height = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 38
  %7 = load i32, i32* %height, align 4
  %cmp3 = icmp ult i32 %5, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %9 = load i8**, i8*** %rp, align 8
  %10 = load i8*, i8** %9, align 8
  call void @png_write_row(%struct.png_struct_def* %8, i8* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  %12 = load i8**, i8*** %rp, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %incdec.ptr, i8*** %rp, align 8
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %13 = load i32, i32* %pass, align 4
  %inc6 = add nsw i32 %13, 1
  store i32 %inc6, i32* %pass, align 4
  br label %for.cond, !llvm.loop !10

for.end7:                                         ; preds = %if.then, %for.cond
  ret void
}

declare dso_local i32 @png_set_interlace_handling(%struct.png_struct_def*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t_png_write_image(%struct.png_struct_def* noalias %png_ptr, i8** %image) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %image.addr = alloca i8**, align 4
  %i = alloca i32, align 4
  %pass = alloca i32, align 4
  %num_pass = alloca i32, align 4
  %rp = alloca i8**, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i8** %image, i8*** %image.addr, align 4
  store i8** null, i8*** %rp, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end7

if.end:                                           ; preds = %entry
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %call = call i32 @png_set_interlace_handling(%struct.png_struct_def* %1)
  store i32 %call, i32* %num_pass, align 4
  store i32 0, i32* %pass, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %if.end
  %2 = load i32, i32* %pass, align 4
  %3 = load i32, i32* %num_pass, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %4 = load i8**, i8*** %image.addr, align 4
  store i8** %4, i8*** %rp, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %height = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 38
  %7 = load i32, i32* %height, align 4
  %cmp3 = icmp ult i32 %5, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %9 = load i8**, i8*** %rp, align 4
  %10 = ptrtoint i8** %9 to i64
  %lowerboundVal_1 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck = icmp uge i64 %10, %lowerboundVal_1
  %IsoHeap.UpperCheck = icmp ule i64 %10, %upperboundVal_1
  %IsoHeap.RangeCheck = and i1 %IsoHeap.LowerCheck, %IsoHeap.UpperCheck
  br i1 %IsoHeap.RangeCheck, label %trap.cont, label %trap.fail

trap.fail:                                        ; preds = %for.body4
  %addr_to_ptr = inttoptr i64 %10 to i8*
  %11 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr, i64 0)
  br label %trap.cont

trap.cont:                                        ; preds = %trap.fail, %for.body4
  br i1 %IsoHeap.RangeCheck, label %IsoHeap_HIT, label %IsoHeap_L1.MISS

IsoHeap_HIT:                                      ; preds = %trap.cont, %IsoHeap_L1.MISS
  %12 = load i8*, i8** %9, align 4
  call void @t_png_write_row(%struct.png_struct_def* %8, i8* %12)
  br label %for.inc

for.inc:                                          ; preds = %IsoHeap_HIT
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  %14 = load i8**, i8*** %rp, align 4
  %incdec.ptr = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %incdec.ptr, i8*** %rp, align 4
  br label %for.cond2, !llvm.loop !11

IsoHeap_L1.MISS:                                  ; preds = %trap.cont
  %15 = inttoptr i64 %10 to i8*
  %16 = call i1 @CacheUpdateandCheck(i8* %15)
  br label %IsoHeap_HIT

for.end:                                          ; preds = %for.cond2
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %17 = load i32, i32* %pass, align 4
  %inc6 = add nsw i32 %17, 1
  store i32 %inc6, i32* %pass, align 4
  br label %for.cond, !llvm.loop !12

for.end7:                                         ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t_png_write_row(%struct.png_struct_def* noalias %png_ptr, i8* %row) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %row.addr = alloca i8*, align 4
  %row_info = alloca %struct.png_row_info_struct, align 8
  %tmp = alloca i8*, align 4
  %tmp117 = alloca i8*, align 4
  %tmp155 = alloca i8*, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i8* %row, i8** %row.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end173

if.end:                                           ; preds = %entry
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i32 0, i32 43
  %2 = load i32, i32* %row_number, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pass = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i32 0, i32 61
  %4 = load i8, i8* %pass, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then4, label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mode = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %5, i32 0, i32 15
  %6 = load i32, i32* %mode, align 4
  %and = and i32 %6, 1024
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* %7, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0)) #7
  unreachable

if.end8:                                          ; preds = %if.then4
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_start_row(%struct.png_struct_def* %8)
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %land.lhs.true, %if.end
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %interlaced = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %9, i32 0, i32 60
  %10 = load i8, i8* %interlaced, align 4
  %conv10 = zext i8 %10 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %land.lhs.true13, label %if.end78

land.lhs.true13:                                  ; preds = %if.end9
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %transformations = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 17
  %12 = load i32, i32* %transformations, align 4
  %and14 = and i32 %12, 2
  %cmp15 = icmp ne i32 %and14, 0
  br i1 %cmp15, label %if.then17, label %if.end78

if.then17:                                        ; preds = %land.lhs.true13
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pass18 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 61
  %14 = load i8, i8* %pass18, align 1
  %conv19 = zext i8 %14 to i32
  switch i32 %conv19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb35
    i32 3, label %sw.bb42
    i32 4, label %sw.bb53
    i32 5, label %sw.bb60
    i32 6, label %sw.bb71
  ]

sw.bb:                                            ; preds = %if.then17
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number20 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %15, i32 0, i32 43
  %16 = load i32, i32* %row_number20, align 4
  %and21 = and i32 %16, 7
  %cmp22 = icmp ne i32 %and21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %sw.bb
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %17)
  br label %if.end173

if.end25:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.then17
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number27 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 43
  %19 = load i32, i32* %row_number27, align 4
  %and28 = and i32 %19, 7
  %cmp29 = icmp ne i32 %and28, 0
  br i1 %cmp29, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb26
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %width = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 37
  %21 = load i32, i32* %width, align 8
  %cmp31 = icmp ult i32 %21, 5
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false, %sw.bb26
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %22)
  br label %if.end173

if.end34:                                         ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.then17
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number36 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %23, i32 0, i32 43
  %24 = load i32, i32* %row_number36, align 4
  %and37 = and i32 %24, 7
  %cmp38 = icmp ne i32 %and37, 4
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %sw.bb35
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %25)
  br label %if.end173

if.end41:                                         ; preds = %sw.bb35
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.then17
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number43 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %26, i32 0, i32 43
  %27 = load i32, i32* %row_number43, align 4
  %and44 = and i32 %27, 3
  %cmp45 = icmp ne i32 %and44, 0
  br i1 %cmp45, label %if.then51, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %sw.bb42
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %width48 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %28, i32 0, i32 37
  %29 = load i32, i32* %width48, align 8
  %cmp49 = icmp ult i32 %29, 3
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %lor.lhs.false47, %sw.bb42
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %30)
  br label %if.end173

if.end52:                                         ; preds = %lor.lhs.false47
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.then17
  %31 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number54 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %31, i32 0, i32 43
  %32 = load i32, i32* %row_number54, align 4
  %and55 = and i32 %32, 3
  %cmp56 = icmp ne i32 %and55, 2
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %sw.bb53
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %33)
  br label %if.end173

if.end59:                                         ; preds = %sw.bb53
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.then17
  %34 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number61 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %34, i32 0, i32 43
  %35 = load i32, i32* %row_number61, align 4
  %and62 = and i32 %35, 1
  %cmp63 = icmp ne i32 %and62, 0
  br i1 %cmp63, label %if.then69, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %sw.bb60
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %width66 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %36, i32 0, i32 37
  %37 = load i32, i32* %width66, align 8
  %cmp67 = icmp ult i32 %37, 2
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %lor.lhs.false65, %sw.bb60
  %38 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %38)
  br label %if.end173

if.end70:                                         ; preds = %lor.lhs.false65
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.then17
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number72 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %39, i32 0, i32 43
  %40 = load i32, i32* %row_number72, align 4
  %and73 = and i32 %40, 1
  %cmp74 = icmp eq i32 %and73, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %sw.bb71
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %41)
  br label %if.end173

if.end77:                                         ; preds = %sw.bb71
  br label %sw.epilog

sw.default:                                       ; preds = %if.then17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end77, %if.end70, %if.end59, %if.end52, %if.end41, %if.end34, %if.end25
  br label %if.end78

if.end78:                                         ; preds = %sw.epilog, %land.lhs.true13, %if.end9
  %42 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %color_type = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %42, i32 0, i32 63
  %43 = load i8, i8* %color_type, align 1
  %color_type79 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 2
  store i8 %43, i8* %color_type79, align 8
  %44 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_width = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %44, i32 0, i32 40
  %45 = load i32, i32* %usr_width, align 4
  %width80 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 0
  store i32 %45, i32* %width80, align 8
  %46 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_channels = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %46, i32 0, i32 68
  %47 = load i8, i8* %usr_channels, align 4
  %channels = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 4
  store i8 %47, i8* %channels, align 2
  %48 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_bit_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %48, i32 0, i32 65
  %49 = load i8, i8* %usr_bit_depth, align 1
  %bit_depth = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 3
  store i8 %49, i8* %bit_depth, align 1
  %bit_depth81 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 3
  %50 = load i8, i8* %bit_depth81, align 1
  %conv82 = zext i8 %50 to i32
  %channels83 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 4
  %51 = load i8, i8* %channels83, align 2
  %conv84 = zext i8 %51 to i32
  %mul = mul nsw i32 %conv82, %conv84
  %conv85 = trunc i32 %mul to i8
  %pixel_depth = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  store i8 %conv85, i8* %pixel_depth, align 1
  %pixel_depth86 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  %52 = load i8, i8* %pixel_depth86, align 1
  %conv87 = zext i8 %52 to i32
  %cmp88 = icmp sge i32 %conv87, 8
  br i1 %cmp88, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end78
  %width90 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 0
  %53 = load i32, i32* %width90, align 8
  %conv91 = zext i32 %53 to i64
  %pixel_depth92 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  %54 = load i8, i8* %pixel_depth92, align 1
  %conv93 = zext i8 %54 to i64
  %shr = lshr i64 %conv93, 3
  %mul94 = mul i64 %conv91, %shr
  br label %cond.end

cond.false:                                       ; preds = %if.end78
  %width95 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 0
  %55 = load i32, i32* %width95, align 8
  %conv96 = zext i32 %55 to i64
  %pixel_depth97 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  %56 = load i8, i8* %pixel_depth97, align 1
  %conv98 = zext i8 %56 to i64
  %mul99 = mul i64 %conv96, %conv98
  %add = add i64 %mul99, 7
  %shr100 = lshr i64 %add, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul94, %cond.true ], [ %shr100, %cond.false ]
  %rowbytes = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 1
  store i64 %cond, i64* %rowbytes, align 8
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_row_buf = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %57, i32 0, i32 48
  %58 = load i8*, i8** %t_row_buf, align 4
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %add.ptr, i8** %tmp, align 4
  %59 = load i8*, i8** %tmp, align 4
  %60 = load i8*, i8** %row.addr, align 4
  %rowbytes101 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 1
  %61 = load i64, i64* %rowbytes101, align 8
  %call = call i8* @t_memcpy(i8* %59, i8* %60, i64 %61)
  %62 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %interlaced102 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %62, i32 0, i32 60
  %63 = load i8, i8* %interlaced102, align 4
  %conv103 = zext i8 %63 to i32
  %tobool = icmp ne i32 %conv103, 0
  br i1 %tobool, label %land.lhs.true104, label %if.end125

land.lhs.true104:                                 ; preds = %cond.end
  %64 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pass105 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %64, i32 0, i32 61
  %65 = load i8, i8* %pass105, align 1
  %conv106 = zext i8 %65 to i32
  %cmp107 = icmp slt i32 %conv106, 6
  br i1 %cmp107, label %land.lhs.true109, label %if.end125

land.lhs.true109:                                 ; preds = %land.lhs.true104
  %66 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %transformations110 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %66, i32 0, i32 17
  %67 = load i32, i32* %transformations110, align 4
  %and111 = and i32 %67, 2
  %cmp112 = icmp ne i32 %and111, 0
  br i1 %cmp112, label %if.then114, label %if.end125

if.then114:                                       ; preds = %land.lhs.true109
  %68 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_row_buf115 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %68, i32 0, i32 48
  %69 = load i8*, i8** %t_row_buf115, align 4
  %add.ptr116 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %add.ptr116, i8** %tmp117, align 4
  %70 = load i8*, i8** %tmp117, align 4
  %71 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pass118 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %71, i32 0, i32 61
  %72 = load i8, i8* %pass118, align 1
  %conv119 = zext i8 %72 to i32
  call void @t_png_do_write_interlace(%struct.png_row_info_struct* %row_info, i8* %70, i32 %conv119)
  %width120 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 0
  %73 = load i32, i32* %width120, align 8
  %cmp121 = icmp eq i32 %73, 0
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.then114
  %74 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_finish_row(%struct.png_struct_def* %74)
  br label %if.end173

if.end124:                                        ; preds = %if.then114
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %land.lhs.true109, %land.lhs.true104, %cond.end
  %75 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %transformations126 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %75, i32 0, i32 17
  %76 = load i32, i32* %transformations126, align 4
  %cmp127 = icmp ne i32 %76, 0
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end125
  %77 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_do_write_transformations(%struct.png_struct_def* %77, %struct.png_row_info_struct* %row_info)
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end125
  %pixel_depth131 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  %78 = load i8, i8* %pixel_depth131, align 1
  %conv132 = zext i8 %78 to i32
  %79 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pixel_depth133 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %79, i32 0, i32 66
  %80 = load i8, i8* %pixel_depth133, align 2
  %conv134 = zext i8 %80 to i32
  %cmp135 = icmp ne i32 %conv132, %conv134
  br i1 %cmp135, label %if.then143, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %if.end130
  %pixel_depth138 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 5
  %81 = load i8, i8* %pixel_depth138, align 1
  %conv139 = zext i8 %81 to i32
  %82 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %transformed_pixel_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %82, i32 0, i32 71
  %83 = load i8, i8* %transformed_pixel_depth, align 1
  %conv140 = zext i8 %83 to i32
  %cmp141 = icmp ne i32 %conv139, %conv140
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %lor.lhs.false137, %if.end130
  %84 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0)) #7
  unreachable

if.end144:                                        ; preds = %lor.lhs.false137
  %85 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mng_features_permitted = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %85, i32 0, i32 125
  %86 = load i32, i32* %mng_features_permitted, align 8
  %and145 = and i32 %86, 4
  %cmp146 = icmp ne i32 %and145, 0
  br i1 %cmp146, label %land.lhs.true148, label %if.end156

land.lhs.true148:                                 ; preds = %if.end144
  %87 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %filter_type = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %87, i32 0, i32 126
  %88 = load i8, i8* %filter_type, align 4
  %conv149 = zext i8 %88 to i32
  %cmp150 = icmp eq i32 %conv149, 64
  br i1 %cmp150, label %if.then152, label %if.end156

if.then152:                                       ; preds = %land.lhs.true148
  %89 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_row_buf153 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %89, i32 0, i32 48
  %90 = load i8*, i8** %t_row_buf153, align 4
  %add.ptr154 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %add.ptr154, i8** %tmp155, align 4
  %91 = load i8*, i8** %tmp155, align 4
  call void @t_png_do_write_intrapixel(%struct.png_row_info_struct* %row_info, i8* %91)
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %land.lhs.true148, %if.end144
  %color_type157 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i32 0, i32 2
  %92 = load i8, i8* %color_type157, align 8
  %conv158 = zext i8 %92 to i32
  %cmp159 = icmp eq i32 %conv158, 3
  br i1 %cmp159, label %land.lhs.true161, label %if.end165

land.lhs.true161:                                 ; preds = %if.end156
  %93 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %num_palette_max = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %93, i32 0, i32 56
  %94 = load i32, i32* %num_palette_max, align 4
  %cmp162 = icmp sge i32 %94, 0
  br i1 %cmp162, label %if.then164, label %if.end165

if.then164:                                       ; preds = %land.lhs.true161
  %95 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_do_check_palette_indexes(%struct.png_struct_def* %95, %struct.png_row_info_struct* %row_info)
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %land.lhs.true161, %if.end156
  %96 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_write_find_filter(%struct.png_struct_def* %96, %struct.png_row_info_struct* %row_info)
  %97 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %write_row_fn = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %97, i32 0, i32 94
  %98 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %write_row_fn, align 8
  %cmp166 = icmp ne void (%struct.png_struct_def*, i32, i32)* %98, null
  br i1 %cmp166, label %if.then168, label %if.end173

if.then168:                                       ; preds = %if.end165
  %99 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %write_row_fn169 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %99, i32 0, i32 94
  %100 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %write_row_fn169, align 8
  %101 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %102 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number170 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %102, i32 0, i32 43
  %103 = load i32, i32* %row_number170, align 4
  %104 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %pass171 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %104, i32 0, i32 61
  %105 = load i8, i8* %pass171, align 1
  %conv172 = zext i8 %105 to i32
  call void %100(%struct.png_struct_def* %101, i32 %103, i32 %conv172)
  br label %if.end173

if.end173:                                        ; preds = %if.then, %if.then24, %if.then33, %if.then40, %if.then51, %if.then58, %if.then69, %if.then76, %if.then123, %if.then168, %if.end165
  ret void
}

declare i1 @CacheUpdateandCheck_2(i8*, i64)

declare i1 @CacheUpdateandCheck(i8*)

declare dso_local void @png_write_start_row(%struct.png_struct_def*) #1

declare dso_local void @png_write_finish_row(%struct.png_struct_def*) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @png_do_write_interlace(%struct.png_row_info_struct*, i8*, i32) #1

declare dso_local void @png_do_write_transformations(%struct.png_struct_def*, %struct.png_row_info_struct*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_do_write_intrapixel(%struct.png_row_info_struct* %row_info, i8* %row) #0 {
entry:
  %row_info.addr = alloca %struct.png_row_info_struct*, align 8
  %row.addr = alloca i8*, align 8
  %bytes_per_pixel = alloca i32, align 4
  %row_width = alloca i32, align 4
  %rp = alloca i8*, align 8
  %i = alloca i32, align 4
  %rp37 = alloca i8*, align 8
  %i38 = alloca i32, align 4
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %red = alloca i32, align 4
  %blue = alloca i32, align 4
  store %struct.png_row_info_struct* %row_info, %struct.png_row_info_struct** %row_info.addr, align 8
  store i8* %row, i8** %row.addr, align 8
  %0 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %color_type = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i32 0, i32 2
  %1 = load i8, i8* %color_type, align 8
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end95

if.then:                                          ; preds = %entry
  %2 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %width = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %width, align 8
  store i32 %3, i32* %row_width, align 4
  %4 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %bit_depth = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %4, i32 0, i32 3
  %5 = load i8, i8* %bit_depth, align 1
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 8
  br i1 %cmp3, label %if.then5, label %if.else31

if.then5:                                         ; preds = %if.then
  %6 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %color_type6 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %6, i32 0, i32 2
  %7 = load i8, i8* %color_type6, align 8
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then5
  store i32 3, i32* %bytes_per_pixel, align 4
  br label %if.end17

if.else:                                          ; preds = %if.then5
  %8 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %color_type11 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %8, i32 0, i32 2
  %9 = load i8, i8* %color_type11, align 8
  %conv12 = zext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 6
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  store i32 4, i32* %bytes_per_pixel, align 4
  br label %if.end

if.else16:                                        ; preds = %if.else
  br label %if.end95

if.end:                                           ; preds = %if.then15
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then10
  store i32 0, i32* %i, align 4
  %10 = load i8*, i8** %row.addr, align 8
  store i8* %10, i8** %rp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %row_width, align 4
  %cmp18 = icmp ult i32 %11, %12
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %rp, align 8
  %14 = load i8, i8* %13, align 1
  %conv20 = zext i8 %14 to i32
  %15 = load i8*, i8** %rp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %add.ptr, align 1
  %conv21 = zext i8 %16 to i32
  %sub = sub nsw i32 %conv20, %conv21
  %conv22 = trunc i32 %sub to i8
  %17 = load i8*, i8** %rp, align 8
  store i8 %conv22, i8* %17, align 1
  %18 = load i8*, i8** %rp, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %18, i64 2
  %19 = load i8, i8* %add.ptr23, align 1
  %conv24 = zext i8 %19 to i32
  %20 = load i8*, i8** %rp, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %add.ptr25, align 1
  %conv26 = zext i8 %21 to i32
  %sub27 = sub nsw i32 %conv24, %conv26
  %conv28 = trunc i32 %sub27 to i8
  %22 = load i8*, i8** %rp, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 %conv28, i8* %add.ptr29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4
  %24 = load i32, i32* %bytes_per_pixel, align 4
  %25 = load i8*, i8** %rp, align 8
  %idx.ext = sext i32 %24 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr30, i8** %rp, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  br label %if.end94

if.else31:                                        ; preds = %if.then
  %26 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %bit_depth32 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %26, i32 0, i32 3
  %27 = load i8, i8* %bit_depth32, align 1
  %conv33 = zext i8 %27 to i32
  %cmp34 = icmp eq i32 %conv33, 16
  br i1 %cmp34, label %if.then36, label %if.end93

if.then36:                                        ; preds = %if.else31
  %28 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %color_type39 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %28, i32 0, i32 2
  %29 = load i8, i8* %color_type39, align 8
  %conv40 = zext i8 %29 to i32
  %cmp41 = icmp eq i32 %conv40, 2
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.then36
  store i32 6, i32* %bytes_per_pixel, align 4
  br label %if.end52

if.else44:                                        ; preds = %if.then36
  %30 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %color_type45 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %30, i32 0, i32 2
  %31 = load i8, i8* %color_type45, align 8
  %conv46 = zext i8 %31 to i32
  %cmp47 = icmp eq i32 %conv46, 6
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else44
  store i32 8, i32* %bytes_per_pixel, align 4
  br label %if.end51

if.else50:                                        ; preds = %if.else44
  br label %if.end95

if.end51:                                         ; preds = %if.then49
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then43
  store i32 0, i32* %i38, align 4
  %32 = load i8*, i8** %row.addr, align 8
  store i8* %32, i8** %rp37, align 8
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc88, %if.end52
  %33 = load i32, i32* %i38, align 4
  %34 = load i32, i32* %row_width, align 4
  %cmp54 = icmp ult i32 %33, %34
  br i1 %cmp54, label %for.body56, label %for.end92

for.body56:                                       ; preds = %for.cond53
  %35 = load i8*, i8** %rp37, align 8
  %36 = load i8, i8* %35, align 1
  %conv57 = zext i8 %36 to i32
  %shl = shl i32 %conv57, 8
  %37 = load i8*, i8** %rp37, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %add.ptr58, align 1
  %conv59 = zext i8 %38 to i32
  %or = or i32 %shl, %conv59
  store i32 %or, i32* %s0, align 4
  %39 = load i8*, i8** %rp37, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %39, i64 2
  %40 = load i8, i8* %add.ptr60, align 1
  %conv61 = zext i8 %40 to i32
  %shl62 = shl i32 %conv61, 8
  %41 = load i8*, i8** %rp37, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %41, i64 3
  %42 = load i8, i8* %add.ptr63, align 1
  %conv64 = zext i8 %42 to i32
  %or65 = or i32 %shl62, %conv64
  store i32 %or65, i32* %s1, align 4
  %43 = load i8*, i8** %rp37, align 8
  %add.ptr66 = getelementptr inbounds i8, i8* %43, i64 4
  %44 = load i8, i8* %add.ptr66, align 1
  %conv67 = zext i8 %44 to i32
  %shl68 = shl i32 %conv67, 8
  %45 = load i8*, i8** %rp37, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %45, i64 5
  %46 = load i8, i8* %add.ptr69, align 1
  %conv70 = zext i8 %46 to i32
  %or71 = or i32 %shl68, %conv70
  store i32 %or71, i32* %s2, align 4
  %47 = load i32, i32* %s0, align 4
  %48 = load i32, i32* %s1, align 4
  %sub72 = sub i32 %47, %48
  %conv73 = zext i32 %sub72 to i64
  %and74 = and i64 %conv73, 65535
  %conv75 = trunc i64 %and74 to i32
  store i32 %conv75, i32* %red, align 4
  %49 = load i32, i32* %s2, align 4
  %50 = load i32, i32* %s1, align 4
  %sub76 = sub i32 %49, %50
  %conv77 = zext i32 %sub76 to i64
  %and78 = and i64 %conv77, 65535
  %conv79 = trunc i64 %and78 to i32
  store i32 %conv79, i32* %blue, align 4
  %51 = load i32, i32* %red, align 4
  %shr = lshr i32 %51, 8
  %conv80 = trunc i32 %shr to i8
  %52 = load i8*, i8** %rp37, align 8
  store i8 %conv80, i8* %52, align 1
  %53 = load i32, i32* %red, align 4
  %conv81 = trunc i32 %53 to i8
  %54 = load i8*, i8** %rp37, align 8
  %add.ptr82 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 %conv81, i8* %add.ptr82, align 1
  %55 = load i32, i32* %blue, align 4
  %shr83 = lshr i32 %55, 8
  %conv84 = trunc i32 %shr83 to i8
  %56 = load i8*, i8** %rp37, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %56, i64 4
  store i8 %conv84, i8* %add.ptr85, align 1
  %57 = load i32, i32* %blue, align 4
  %conv86 = trunc i32 %57 to i8
  %58 = load i8*, i8** %rp37, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %58, i64 5
  store i8 %conv86, i8* %add.ptr87, align 1
  br label %for.inc88

for.inc88:                                        ; preds = %for.body56
  %59 = load i32, i32* %i38, align 4
  %inc89 = add i32 %59, 1
  store i32 %inc89, i32* %i38, align 4
  %60 = load i32, i32* %bytes_per_pixel, align 4
  %61 = load i8*, i8** %rp37, align 8
  %idx.ext90 = sext i32 %60 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %61, i64 %idx.ext90
  store i8* %add.ptr91, i8** %rp37, align 8
  br label %for.cond53, !llvm.loop !14

for.end92:                                        ; preds = %for.cond53
  br label %if.end93

if.end93:                                         ; preds = %for.end92, %if.else31
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %for.end
  br label %if.end95

if.end95:                                         ; preds = %if.else16, %if.else50, %if.end94, %entry
  ret void
}

declare dso_local void @png_do_check_palette_indexes(%struct.png_struct_def*, %struct.png_row_info_struct*) #1

declare dso_local void @png_write_find_filter(%struct.png_struct_def*, %struct.png_row_info_struct*) #1

declare dso_local i8* @t_memcpy(i8*, i8*, i64) #1

declare dso_local void @t_png_do_write_interlace(%struct.png_row_info_struct*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t_png_do_write_intrapixel(%struct.png_row_info_struct* %row_info, i8* %row) #0 {
entry:
  %row_info.addr = alloca %struct.png_row_info_struct*, align 8
  %row.addr = alloca i8*, align 4
  %bytes_per_pixel = alloca i32, align 4
  %row_width = alloca i32, align 4
  %rp = alloca i8*, align 4
  %i = alloca i32, align 4
  %tmp = alloca i8*, align 4
  %tmp44 = alloca i8*, align 4
  %tmp57 = alloca i8*, align 4
  %tmp72 = alloca i8*, align 4
  %tmp84 = alloca i8*, align 4
  %rp91 = alloca i8*, align 4
  %i92 = alloca i32, align 4
  %s0 = alloca i32, align 4
  %tmp123 = alloca i8*, align 4
  %s1 = alloca i32, align 4
  %tmp136 = alloca i8*, align 4
  %tmp150 = alloca i8*, align 4
  %s2 = alloca i32, align 4
  %tmp164 = alloca i8*, align 4
  %tmp178 = alloca i8*, align 4
  %red = alloca i32, align 4
  %blue = alloca i32, align 4
  %tmp212 = alloca i8*, align 4
  %tmp226 = alloca i8*, align 4
  %tmp239 = alloca i8*, align 4
  %tmp254 = alloca i8*, align 4
  store %struct.png_row_info_struct* %row_info, %struct.png_row_info_struct** %row_info.addr, align 8
  store i8* %row, i8** %row.addr, align 4
  %0 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %color_type = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %0, i32 0, i32 2
  %1 = load i8, i8* %color_type, align 8
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end258

if.then:                                          ; preds = %entry
  %2 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %width = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %width, align 8
  store i32 %3, i32* %row_width, align 4
  %4 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %bit_depth = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %4, i32 0, i32 3
  %5 = load i8, i8* %bit_depth, align 1
  %conv2 = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 8
  br i1 %cmp3, label %if.then5, label %if.else85

if.then5:                                         ; preds = %if.then
  store i8* null, i8** %rp, align 4
  %6 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %color_type6 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %6, i32 0, i32 2
  %7 = load i8, i8* %color_type6, align 8
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then5
  store i32 3, i32* %bytes_per_pixel, align 4
  br label %if.end17

if.else:                                          ; preds = %if.then5
  %8 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %color_type11 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %8, i32 0, i32 2
  %9 = load i8, i8* %color_type11, align 8
  %conv12 = zext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 6
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  store i32 4, i32* %bytes_per_pixel, align 4
  br label %if.end

if.else16:                                        ; preds = %if.else
  br label %if.end258

if.end:                                           ; preds = %if.then15
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then10
  store i32 0, i32* %i, align 4
  %10 = load i8*, i8** %row.addr, align 4
  store i8* %10, i8** %rp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %row_width, align 4
  %cmp18 = icmp ult i32 %11, %12
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %rp, align 4
  %14 = ptrtoint i8* %13 to i64
  %lowerboundVal_1 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck = icmp uge i64 %14, %lowerboundVal_1
  %IsoHeap.UpperCheck = icmp ule i64 %14, %upperboundVal_1
  %IsoHeap.RangeCheck = and i1 %IsoHeap.LowerCheck, %IsoHeap.UpperCheck
  br i1 %IsoHeap.RangeCheck, label %trap.cont, label %trap.fail

trap.fail:                                        ; preds = %for.body
  %addr_to_ptr = inttoptr i64 %14 to i8*
  %15 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr, i64 0)
  br label %trap.cont

trap.cont:                                        ; preds = %trap.fail, %for.body
  br i1 %IsoHeap.RangeCheck, label %IsoHeap_HIT, label %IsoHeap_L1.MISS

IsoHeap_HIT:                                      ; preds = %trap.cont, %IsoHeap_L1.MISS
  %16 = load i8, i8* %13, align 1
  %conv20 = zext i8 %16 to i32
  %17 = load i8*, i8** %rp, align 4
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %add.ptr, i8** %tmp, align 4
  %18 = load i8*, i8** %tmp, align 4
  %19 = ptrtoint i8* %18 to i64
  %lowerboundVal_121 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_122 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck23 = icmp uge i64 %19, %lowerboundVal_121
  %IsoHeap.UpperCheck24 = icmp ule i64 %19, %upperboundVal_122
  %IsoHeap.RangeCheck25 = and i1 %IsoHeap.LowerCheck23, %IsoHeap.UpperCheck24
  br i1 %IsoHeap.RangeCheck25, label %trap.cont27, label %trap.fail26

IsoHeap_L1.MISS:                                  ; preds = %trap.cont
  %20 = inttoptr i64 %14 to i8*
  %21 = call i1 @CacheUpdateandCheck(i8* %20)
  br label %IsoHeap_HIT

trap.fail26:                                      ; preds = %IsoHeap_HIT
  %addr_to_ptr28 = inttoptr i64 %19 to i8*
  %22 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr28, i64 0)
  br label %trap.cont27

trap.cont27:                                      ; preds = %trap.fail26, %IsoHeap_HIT
  br i1 %IsoHeap.RangeCheck25, label %IsoHeap_HIT30, label %IsoHeap_L1.MISS29

IsoHeap_HIT30:                                    ; preds = %trap.cont27, %IsoHeap_L1.MISS29
  %23 = load i8, i8* %18, align 1
  %conv31 = zext i8 %23 to i32
  %sub = sub nsw i32 %conv20, %conv31
  %conv32 = trunc i32 %sub to i8
  %24 = load i8*, i8** %rp, align 4
  %25 = ptrtoint i8* %24 to i64
  %lowerboundVal_133 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_134 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck35 = icmp uge i64 %25, %lowerboundVal_133
  %IsoHeap.UpperCheck36 = icmp ule i64 %25, %upperboundVal_134
  %IsoHeap.RangeCheck37 = and i1 %IsoHeap.LowerCheck35, %IsoHeap.UpperCheck36
  br i1 %IsoHeap.RangeCheck37, label %trap.cont39, label %trap.fail38

IsoHeap_L1.MISS29:                                ; preds = %trap.cont27
  %26 = inttoptr i64 %19 to i8*
  %27 = call i1 @CacheUpdateandCheck(i8* %26)
  br label %IsoHeap_HIT30

trap.fail38:                                      ; preds = %IsoHeap_HIT30
  %addr_to_ptr40 = inttoptr i64 %25 to i8*
  %28 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr40, i64 0)
  br label %trap.cont39

trap.cont39:                                      ; preds = %trap.fail38, %IsoHeap_HIT30
  br i1 %IsoHeap.RangeCheck37, label %IsoHeap_HIT42, label %IsoHeap_L1.MISS41

IsoHeap_HIT42:                                    ; preds = %trap.cont39, %IsoHeap_L1.MISS41
  store i8 %conv32, i8* %24, align 1
  %29 = load i8*, i8** %rp, align 4
  %add.ptr43 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %add.ptr43, i8** %tmp44, align 4
  %30 = load i8*, i8** %tmp44, align 4
  %31 = ptrtoint i8* %30 to i64
  %lowerboundVal_145 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_146 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck47 = icmp uge i64 %31, %lowerboundVal_145
  %IsoHeap.UpperCheck48 = icmp ule i64 %31, %upperboundVal_146
  %IsoHeap.RangeCheck49 = and i1 %IsoHeap.LowerCheck47, %IsoHeap.UpperCheck48
  br i1 %IsoHeap.RangeCheck49, label %trap.cont51, label %trap.fail50

IsoHeap_L1.MISS41:                                ; preds = %trap.cont39
  %32 = inttoptr i64 %25 to i8*
  %33 = call i1 @CacheUpdateandCheck(i8* %32)
  br label %IsoHeap_HIT42

trap.fail50:                                      ; preds = %IsoHeap_HIT42
  %addr_to_ptr52 = inttoptr i64 %31 to i8*
  %34 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr52, i64 0)
  br label %trap.cont51

trap.cont51:                                      ; preds = %trap.fail50, %IsoHeap_HIT42
  br i1 %IsoHeap.RangeCheck49, label %IsoHeap_HIT54, label %IsoHeap_L1.MISS53

IsoHeap_HIT54:                                    ; preds = %trap.cont51, %IsoHeap_L1.MISS53
  %35 = load i8, i8* %30, align 1
  %conv55 = zext i8 %35 to i32
  %36 = load i8*, i8** %rp, align 4
  %add.ptr56 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %add.ptr56, i8** %tmp57, align 4
  %37 = load i8*, i8** %tmp57, align 4
  %38 = ptrtoint i8* %37 to i64
  %lowerboundVal_158 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_159 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck60 = icmp uge i64 %38, %lowerboundVal_158
  %IsoHeap.UpperCheck61 = icmp ule i64 %38, %upperboundVal_159
  %IsoHeap.RangeCheck62 = and i1 %IsoHeap.LowerCheck60, %IsoHeap.UpperCheck61
  br i1 %IsoHeap.RangeCheck62, label %trap.cont64, label %trap.fail63

IsoHeap_L1.MISS53:                                ; preds = %trap.cont51
  %39 = inttoptr i64 %31 to i8*
  %40 = call i1 @CacheUpdateandCheck(i8* %39)
  br label %IsoHeap_HIT54

trap.fail63:                                      ; preds = %IsoHeap_HIT54
  %addr_to_ptr65 = inttoptr i64 %38 to i8*
  %41 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr65, i64 0)
  br label %trap.cont64

trap.cont64:                                      ; preds = %trap.fail63, %IsoHeap_HIT54
  br i1 %IsoHeap.RangeCheck62, label %IsoHeap_HIT67, label %IsoHeap_L1.MISS66

IsoHeap_HIT67:                                    ; preds = %trap.cont64, %IsoHeap_L1.MISS66
  %42 = load i8, i8* %37, align 1
  %conv68 = zext i8 %42 to i32
  %sub69 = sub nsw i32 %conv55, %conv68
  %conv70 = trunc i32 %sub69 to i8
  %43 = load i8*, i8** %rp, align 4
  %add.ptr71 = getelementptr inbounds i8, i8* %43, i64 2
  store i8* %add.ptr71, i8** %tmp72, align 4
  %44 = load i8*, i8** %tmp72, align 4
  %45 = ptrtoint i8* %44 to i64
  %lowerboundVal_173 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_174 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck75 = icmp uge i64 %45, %lowerboundVal_173
  %IsoHeap.UpperCheck76 = icmp ule i64 %45, %upperboundVal_174
  %IsoHeap.RangeCheck77 = and i1 %IsoHeap.LowerCheck75, %IsoHeap.UpperCheck76
  br i1 %IsoHeap.RangeCheck77, label %trap.cont79, label %trap.fail78

IsoHeap_L1.MISS66:                                ; preds = %trap.cont64
  %46 = inttoptr i64 %38 to i8*
  %47 = call i1 @CacheUpdateandCheck(i8* %46)
  br label %IsoHeap_HIT67

trap.fail78:                                      ; preds = %IsoHeap_HIT67
  %addr_to_ptr80 = inttoptr i64 %45 to i8*
  %48 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr80, i64 0)
  br label %trap.cont79

trap.cont79:                                      ; preds = %trap.fail78, %IsoHeap_HIT67
  br i1 %IsoHeap.RangeCheck77, label %IsoHeap_HIT82, label %IsoHeap_L1.MISS81

IsoHeap_HIT82:                                    ; preds = %trap.cont79, %IsoHeap_L1.MISS81
  store i8 %conv70, i8* %44, align 1
  br label %for.inc

for.inc:                                          ; preds = %IsoHeap_HIT82
  %49 = load i32, i32* %i, align 4
  %inc = add i32 %49, 1
  store i32 %inc, i32* %i, align 4
  %50 = load i32, i32* %bytes_per_pixel, align 4
  %51 = load i8*, i8** %rp, align 4
  %idx.ext = sext i32 %50 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %51, i64 %idx.ext
  store i8* %add.ptr83, i8** %tmp84, align 4
  %52 = load i8*, i8** %tmp84, align 4
  store i8* %52, i8** %rp, align 4
  br label %for.cond, !llvm.loop !15

IsoHeap_L1.MISS81:                                ; preds = %trap.cont79
  %53 = inttoptr i64 %45 to i8*
  %54 = call i1 @CacheUpdateandCheck(i8* %53)
  br label %IsoHeap_HIT82

for.end:                                          ; preds = %for.cond
  br label %if.end257

if.else85:                                        ; preds = %if.then
  %55 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %bit_depth86 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %55, i32 0, i32 3
  %56 = load i8, i8* %bit_depth86, align 1
  %conv87 = zext i8 %56 to i32
  %cmp88 = icmp eq i32 %conv87, 16
  br i1 %cmp88, label %if.then90, label %if.end256

if.then90:                                        ; preds = %if.else85
  store i8* null, i8** %rp91, align 4
  %57 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %color_type93 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %57, i32 0, i32 2
  %58 = load i8, i8* %color_type93, align 8
  %conv94 = zext i8 %58 to i32
  %cmp95 = icmp eq i32 %conv94, 2
  br i1 %cmp95, label %if.then97, label %if.else98

if.then97:                                        ; preds = %if.then90
  store i32 6, i32* %bytes_per_pixel, align 4
  br label %if.end106

if.else98:                                        ; preds = %if.then90
  %59 = load %struct.png_row_info_struct*, %struct.png_row_info_struct** %row_info.addr, align 8
  %color_type99 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %59, i32 0, i32 2
  %60 = load i8, i8* %color_type99, align 8
  %conv100 = zext i8 %60 to i32
  %cmp101 = icmp eq i32 %conv100, 6
  br i1 %cmp101, label %if.then103, label %if.else104

if.then103:                                       ; preds = %if.else98
  store i32 8, i32* %bytes_per_pixel, align 4
  br label %if.end105

if.else104:                                       ; preds = %if.else98
  br label %if.end258

if.end105:                                        ; preds = %if.then103
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then97
  store i32 0, i32* %i92, align 4
  %61 = load i8*, i8** %row.addr, align 4
  store i8* %61, i8** %rp91, align 4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc250, %if.end106
  %62 = load i32, i32* %i92, align 4
  %63 = load i32, i32* %row_width, align 4
  %cmp108 = icmp ult i32 %62, %63
  br i1 %cmp108, label %for.body110, label %for.end255

for.body110:                                      ; preds = %for.cond107
  %64 = load i8*, i8** %rp91, align 4
  %65 = ptrtoint i8* %64 to i64
  %lowerboundVal_1111 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1112 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck113 = icmp uge i64 %65, %lowerboundVal_1111
  %IsoHeap.UpperCheck114 = icmp ule i64 %65, %upperboundVal_1112
  %IsoHeap.RangeCheck115 = and i1 %IsoHeap.LowerCheck113, %IsoHeap.UpperCheck114
  br i1 %IsoHeap.RangeCheck115, label %trap.cont117, label %trap.fail116

trap.fail116:                                     ; preds = %for.body110
  %addr_to_ptr118 = inttoptr i64 %65 to i8*
  %66 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr118, i64 0)
  br label %trap.cont117

trap.cont117:                                     ; preds = %trap.fail116, %for.body110
  br i1 %IsoHeap.RangeCheck115, label %IsoHeap_HIT120, label %IsoHeap_L1.MISS119

IsoHeap_HIT120:                                   ; preds = %trap.cont117, %IsoHeap_L1.MISS119
  %67 = load i8, i8* %64, align 1
  %conv121 = zext i8 %67 to i32
  %shl = shl i32 %conv121, 8
  %68 = load i8*, i8** %rp91, align 4
  %add.ptr122 = getelementptr inbounds i8, i8* %68, i64 1
  store i8* %add.ptr122, i8** %tmp123, align 4
  %69 = load i8*, i8** %tmp123, align 4
  %70 = ptrtoint i8* %69 to i64
  %lowerboundVal_1124 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1125 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck126 = icmp uge i64 %70, %lowerboundVal_1124
  %IsoHeap.UpperCheck127 = icmp ule i64 %70, %upperboundVal_1125
  %IsoHeap.RangeCheck128 = and i1 %IsoHeap.LowerCheck126, %IsoHeap.UpperCheck127
  br i1 %IsoHeap.RangeCheck128, label %trap.cont130, label %trap.fail129

IsoHeap_L1.MISS119:                               ; preds = %trap.cont117
  %71 = inttoptr i64 %65 to i8*
  %72 = call i1 @CacheUpdateandCheck(i8* %71)
  br label %IsoHeap_HIT120

trap.fail129:                                     ; preds = %IsoHeap_HIT120
  %addr_to_ptr131 = inttoptr i64 %70 to i8*
  %73 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr131, i64 0)
  br label %trap.cont130

trap.cont130:                                     ; preds = %trap.fail129, %IsoHeap_HIT120
  br i1 %IsoHeap.RangeCheck128, label %IsoHeap_HIT133, label %IsoHeap_L1.MISS132

IsoHeap_HIT133:                                   ; preds = %trap.cont130, %IsoHeap_L1.MISS132
  %74 = load i8, i8* %69, align 1
  %conv134 = zext i8 %74 to i32
  %or = or i32 %shl, %conv134
  store i32 %or, i32* %s0, align 4
  %75 = load i8*, i8** %rp91, align 4
  %add.ptr135 = getelementptr inbounds i8, i8* %75, i64 2
  store i8* %add.ptr135, i8** %tmp136, align 4
  %76 = load i8*, i8** %tmp136, align 4
  %77 = ptrtoint i8* %76 to i64
  %lowerboundVal_1137 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1138 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck139 = icmp uge i64 %77, %lowerboundVal_1137
  %IsoHeap.UpperCheck140 = icmp ule i64 %77, %upperboundVal_1138
  %IsoHeap.RangeCheck141 = and i1 %IsoHeap.LowerCheck139, %IsoHeap.UpperCheck140
  br i1 %IsoHeap.RangeCheck141, label %trap.cont143, label %trap.fail142

IsoHeap_L1.MISS132:                               ; preds = %trap.cont130
  %78 = inttoptr i64 %70 to i8*
  %79 = call i1 @CacheUpdateandCheck(i8* %78)
  br label %IsoHeap_HIT133

trap.fail142:                                     ; preds = %IsoHeap_HIT133
  %addr_to_ptr144 = inttoptr i64 %77 to i8*
  %80 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr144, i64 0)
  br label %trap.cont143

trap.cont143:                                     ; preds = %trap.fail142, %IsoHeap_HIT133
  br i1 %IsoHeap.RangeCheck141, label %IsoHeap_HIT146, label %IsoHeap_L1.MISS145

IsoHeap_HIT146:                                   ; preds = %trap.cont143, %IsoHeap_L1.MISS145
  %81 = load i8, i8* %76, align 1
  %conv147 = zext i8 %81 to i32
  %shl148 = shl i32 %conv147, 8
  %82 = load i8*, i8** %rp91, align 4
  %add.ptr149 = getelementptr inbounds i8, i8* %82, i64 3
  store i8* %add.ptr149, i8** %tmp150, align 4
  %83 = load i8*, i8** %tmp150, align 4
  %84 = ptrtoint i8* %83 to i64
  %lowerboundVal_1151 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1152 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck153 = icmp uge i64 %84, %lowerboundVal_1151
  %IsoHeap.UpperCheck154 = icmp ule i64 %84, %upperboundVal_1152
  %IsoHeap.RangeCheck155 = and i1 %IsoHeap.LowerCheck153, %IsoHeap.UpperCheck154
  br i1 %IsoHeap.RangeCheck155, label %trap.cont157, label %trap.fail156

IsoHeap_L1.MISS145:                               ; preds = %trap.cont143
  %85 = inttoptr i64 %77 to i8*
  %86 = call i1 @CacheUpdateandCheck(i8* %85)
  br label %IsoHeap_HIT146

trap.fail156:                                     ; preds = %IsoHeap_HIT146
  %addr_to_ptr158 = inttoptr i64 %84 to i8*
  %87 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr158, i64 0)
  br label %trap.cont157

trap.cont157:                                     ; preds = %trap.fail156, %IsoHeap_HIT146
  br i1 %IsoHeap.RangeCheck155, label %IsoHeap_HIT160, label %IsoHeap_L1.MISS159

IsoHeap_HIT160:                                   ; preds = %trap.cont157, %IsoHeap_L1.MISS159
  %88 = load i8, i8* %83, align 1
  %conv161 = zext i8 %88 to i32
  %or162 = or i32 %shl148, %conv161
  store i32 %or162, i32* %s1, align 4
  %89 = load i8*, i8** %rp91, align 4
  %add.ptr163 = getelementptr inbounds i8, i8* %89, i64 4
  store i8* %add.ptr163, i8** %tmp164, align 4
  %90 = load i8*, i8** %tmp164, align 4
  %91 = ptrtoint i8* %90 to i64
  %lowerboundVal_1165 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1166 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck167 = icmp uge i64 %91, %lowerboundVal_1165
  %IsoHeap.UpperCheck168 = icmp ule i64 %91, %upperboundVal_1166
  %IsoHeap.RangeCheck169 = and i1 %IsoHeap.LowerCheck167, %IsoHeap.UpperCheck168
  br i1 %IsoHeap.RangeCheck169, label %trap.cont171, label %trap.fail170

IsoHeap_L1.MISS159:                               ; preds = %trap.cont157
  %92 = inttoptr i64 %84 to i8*
  %93 = call i1 @CacheUpdateandCheck(i8* %92)
  br label %IsoHeap_HIT160

trap.fail170:                                     ; preds = %IsoHeap_HIT160
  %addr_to_ptr172 = inttoptr i64 %91 to i8*
  %94 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr172, i64 0)
  br label %trap.cont171

trap.cont171:                                     ; preds = %trap.fail170, %IsoHeap_HIT160
  br i1 %IsoHeap.RangeCheck169, label %IsoHeap_HIT174, label %IsoHeap_L1.MISS173

IsoHeap_HIT174:                                   ; preds = %trap.cont171, %IsoHeap_L1.MISS173
  %95 = load i8, i8* %90, align 1
  %conv175 = zext i8 %95 to i32
  %shl176 = shl i32 %conv175, 8
  %96 = load i8*, i8** %rp91, align 4
  %add.ptr177 = getelementptr inbounds i8, i8* %96, i64 5
  store i8* %add.ptr177, i8** %tmp178, align 4
  %97 = load i8*, i8** %tmp178, align 4
  %98 = ptrtoint i8* %97 to i64
  %lowerboundVal_1179 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1180 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck181 = icmp uge i64 %98, %lowerboundVal_1179
  %IsoHeap.UpperCheck182 = icmp ule i64 %98, %upperboundVal_1180
  %IsoHeap.RangeCheck183 = and i1 %IsoHeap.LowerCheck181, %IsoHeap.UpperCheck182
  br i1 %IsoHeap.RangeCheck183, label %trap.cont185, label %trap.fail184

IsoHeap_L1.MISS173:                               ; preds = %trap.cont171
  %99 = inttoptr i64 %91 to i8*
  %100 = call i1 @CacheUpdateandCheck(i8* %99)
  br label %IsoHeap_HIT174

trap.fail184:                                     ; preds = %IsoHeap_HIT174
  %addr_to_ptr186 = inttoptr i64 %98 to i8*
  %101 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr186, i64 0)
  br label %trap.cont185

trap.cont185:                                     ; preds = %trap.fail184, %IsoHeap_HIT174
  br i1 %IsoHeap.RangeCheck183, label %IsoHeap_HIT188, label %IsoHeap_L1.MISS187

IsoHeap_HIT188:                                   ; preds = %trap.cont185, %IsoHeap_L1.MISS187
  %102 = load i8, i8* %97, align 1
  %conv189 = zext i8 %102 to i32
  %or190 = or i32 %shl176, %conv189
  store i32 %or190, i32* %s2, align 4
  %103 = load i32, i32* %s0, align 4
  %104 = load i32, i32* %s1, align 4
  %sub191 = sub i32 %103, %104
  %conv192 = zext i32 %sub191 to i64
  %and193 = and i64 %conv192, 65535
  %conv194 = trunc i64 %and193 to i32
  store i32 %conv194, i32* %red, align 4
  %105 = load i32, i32* %s2, align 4
  %106 = load i32, i32* %s1, align 4
  %sub195 = sub i32 %105, %106
  %conv196 = zext i32 %sub195 to i64
  %and197 = and i64 %conv196, 65535
  %conv198 = trunc i64 %and197 to i32
  store i32 %conv198, i32* %blue, align 4
  %107 = load i32, i32* %red, align 4
  %shr = lshr i32 %107, 8
  %conv199 = trunc i32 %shr to i8
  %108 = load i8*, i8** %rp91, align 4
  %109 = ptrtoint i8* %108 to i64
  %lowerboundVal_1200 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1201 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck202 = icmp uge i64 %109, %lowerboundVal_1200
  %IsoHeap.UpperCheck203 = icmp ule i64 %109, %upperboundVal_1201
  %IsoHeap.RangeCheck204 = and i1 %IsoHeap.LowerCheck202, %IsoHeap.UpperCheck203
  br i1 %IsoHeap.RangeCheck204, label %trap.cont206, label %trap.fail205

IsoHeap_L1.MISS187:                               ; preds = %trap.cont185
  %110 = inttoptr i64 %98 to i8*
  %111 = call i1 @CacheUpdateandCheck(i8* %110)
  br label %IsoHeap_HIT188

trap.fail205:                                     ; preds = %IsoHeap_HIT188
  %addr_to_ptr207 = inttoptr i64 %109 to i8*
  %112 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr207, i64 0)
  br label %trap.cont206

trap.cont206:                                     ; preds = %trap.fail205, %IsoHeap_HIT188
  br i1 %IsoHeap.RangeCheck204, label %IsoHeap_HIT209, label %IsoHeap_L1.MISS208

IsoHeap_HIT209:                                   ; preds = %trap.cont206, %IsoHeap_L1.MISS208
  store i8 %conv199, i8* %108, align 1
  %113 = load i32, i32* %red, align 4
  %conv210 = trunc i32 %113 to i8
  %114 = load i8*, i8** %rp91, align 4
  %add.ptr211 = getelementptr inbounds i8, i8* %114, i64 1
  store i8* %add.ptr211, i8** %tmp212, align 4
  %115 = load i8*, i8** %tmp212, align 4
  %116 = ptrtoint i8* %115 to i64
  %lowerboundVal_1213 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1214 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck215 = icmp uge i64 %116, %lowerboundVal_1213
  %IsoHeap.UpperCheck216 = icmp ule i64 %116, %upperboundVal_1214
  %IsoHeap.RangeCheck217 = and i1 %IsoHeap.LowerCheck215, %IsoHeap.UpperCheck216
  br i1 %IsoHeap.RangeCheck217, label %trap.cont219, label %trap.fail218

IsoHeap_L1.MISS208:                               ; preds = %trap.cont206
  %117 = inttoptr i64 %109 to i8*
  %118 = call i1 @CacheUpdateandCheck(i8* %117)
  br label %IsoHeap_HIT209

trap.fail218:                                     ; preds = %IsoHeap_HIT209
  %addr_to_ptr220 = inttoptr i64 %116 to i8*
  %119 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr220, i64 0)
  br label %trap.cont219

trap.cont219:                                     ; preds = %trap.fail218, %IsoHeap_HIT209
  br i1 %IsoHeap.RangeCheck217, label %IsoHeap_HIT222, label %IsoHeap_L1.MISS221

IsoHeap_HIT222:                                   ; preds = %trap.cont219, %IsoHeap_L1.MISS221
  store i8 %conv210, i8* %115, align 1
  %120 = load i32, i32* %blue, align 4
  %shr223 = lshr i32 %120, 8
  %conv224 = trunc i32 %shr223 to i8
  %121 = load i8*, i8** %rp91, align 4
  %add.ptr225 = getelementptr inbounds i8, i8* %121, i64 4
  store i8* %add.ptr225, i8** %tmp226, align 4
  %122 = load i8*, i8** %tmp226, align 4
  %123 = ptrtoint i8* %122 to i64
  %lowerboundVal_1227 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1228 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck229 = icmp uge i64 %123, %lowerboundVal_1227
  %IsoHeap.UpperCheck230 = icmp ule i64 %123, %upperboundVal_1228
  %IsoHeap.RangeCheck231 = and i1 %IsoHeap.LowerCheck229, %IsoHeap.UpperCheck230
  br i1 %IsoHeap.RangeCheck231, label %trap.cont233, label %trap.fail232

IsoHeap_L1.MISS221:                               ; preds = %trap.cont219
  %124 = inttoptr i64 %116 to i8*
  %125 = call i1 @CacheUpdateandCheck(i8* %124)
  br label %IsoHeap_HIT222

trap.fail232:                                     ; preds = %IsoHeap_HIT222
  %addr_to_ptr234 = inttoptr i64 %123 to i8*
  %126 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr234, i64 0)
  br label %trap.cont233

trap.cont233:                                     ; preds = %trap.fail232, %IsoHeap_HIT222
  br i1 %IsoHeap.RangeCheck231, label %IsoHeap_HIT236, label %IsoHeap_L1.MISS235

IsoHeap_HIT236:                                   ; preds = %trap.cont233, %IsoHeap_L1.MISS235
  store i8 %conv224, i8* %122, align 1
  %127 = load i32, i32* %blue, align 4
  %conv237 = trunc i32 %127 to i8
  %128 = load i8*, i8** %rp91, align 4
  %add.ptr238 = getelementptr inbounds i8, i8* %128, i64 5
  store i8* %add.ptr238, i8** %tmp239, align 4
  %129 = load i8*, i8** %tmp239, align 4
  %130 = ptrtoint i8* %129 to i64
  %lowerboundVal_1240 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1241 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck242 = icmp uge i64 %130, %lowerboundVal_1240
  %IsoHeap.UpperCheck243 = icmp ule i64 %130, %upperboundVal_1241
  %IsoHeap.RangeCheck244 = and i1 %IsoHeap.LowerCheck242, %IsoHeap.UpperCheck243
  br i1 %IsoHeap.RangeCheck244, label %trap.cont246, label %trap.fail245

IsoHeap_L1.MISS235:                               ; preds = %trap.cont233
  %131 = inttoptr i64 %123 to i8*
  %132 = call i1 @CacheUpdateandCheck(i8* %131)
  br label %IsoHeap_HIT236

trap.fail245:                                     ; preds = %IsoHeap_HIT236
  %addr_to_ptr247 = inttoptr i64 %130 to i8*
  %133 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr247, i64 0)
  br label %trap.cont246

trap.cont246:                                     ; preds = %trap.fail245, %IsoHeap_HIT236
  br i1 %IsoHeap.RangeCheck244, label %IsoHeap_HIT249, label %IsoHeap_L1.MISS248

IsoHeap_HIT249:                                   ; preds = %trap.cont246, %IsoHeap_L1.MISS248
  store i8 %conv237, i8* %129, align 1
  br label %for.inc250

for.inc250:                                       ; preds = %IsoHeap_HIT249
  %134 = load i32, i32* %i92, align 4
  %inc251 = add i32 %134, 1
  store i32 %inc251, i32* %i92, align 4
  %135 = load i32, i32* %bytes_per_pixel, align 4
  %136 = load i8*, i8** %rp91, align 4
  %idx.ext252 = sext i32 %135 to i64
  %add.ptr253 = getelementptr inbounds i8, i8* %136, i64 %idx.ext252
  store i8* %add.ptr253, i8** %tmp254, align 4
  %137 = load i8*, i8** %tmp254, align 4
  store i8* %137, i8** %rp91, align 4
  br label %for.cond107, !llvm.loop !16

IsoHeap_L1.MISS248:                               ; preds = %trap.cont246
  %138 = inttoptr i64 %130 to i8*
  %139 = call i1 @CacheUpdateandCheck(i8* %138)
  br label %IsoHeap_HIT249

for.end255:                                       ; preds = %for.cond107
  br label %if.end256

if.end256:                                        ; preds = %for.end255, %if.else85
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %for.end
  br label %if.end258

if.end258:                                        ; preds = %if.else16, %if.else104, %if.end257, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_flush(%struct.png_struct_def* noalias %png_ptr, i32 %nrows) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %nrows.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %nrows, i32* %nrows.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %nrows.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %2 = load i32, i32* %nrows.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %2, %cond.false ]
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %flush_dist = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i32 0, i32 79
  store i32 %cond, i32* %flush_dist, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_flush(%struct.png_struct_def* noalias %png_ptr) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_number = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i32 0, i32 43
  %2 = load i32, i32* %row_number, align 4
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %num_rows = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i32 0, i32 39
  %4 = load i32, i32* %num_rows, align 8
  %cmp1 = icmp uge i32 %2, %4
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_compress_IDAT(%struct.png_struct_def* %5, i8* null, i64 0, i32 2)
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %flush_rows = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 80
  store i32 0, i32* %flush_rows, align 4
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_flush(%struct.png_struct_def* %7)
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  ret void
}

declare dso_local void @png_compress_IDAT(%struct.png_struct_def*, i8*, i64, i32) #1

declare dso_local void @png_flush(%struct.png_struct_def*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_destroy_write_struct(%struct.png_struct_def** %png_ptr_ptr, %struct.png_info_def** %info_ptr_ptr) #0 {
entry:
  %png_ptr_ptr.addr = alloca %struct.png_struct_def**, align 8
  %info_ptr_ptr.addr = alloca %struct.png_info_def**, align 8
  %png_ptr = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def** %png_ptr_ptr, %struct.png_struct_def*** %png_ptr_ptr.addr, align 8
  store %struct.png_info_def** %info_ptr_ptr, %struct.png_info_def*** %info_ptr_ptr.addr, align 8
  %0 = load %struct.png_struct_def**, %struct.png_struct_def*** %png_ptr_ptr.addr, align 8
  %cmp = icmp ne %struct.png_struct_def** %0, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load %struct.png_struct_def**, %struct.png_struct_def*** %png_ptr_ptr.addr, align 8
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %1, align 8
  store %struct.png_struct_def* %2, %struct.png_struct_def** %png_ptr, align 8
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %cmp1 = icmp ne %struct.png_struct_def* %3, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %5 = load %struct.png_info_def**, %struct.png_info_def*** %info_ptr_ptr.addr, align 8
  call void @png_destroy_info_struct(%struct.png_struct_def* %4, %struct.png_info_def** %5)
  %6 = load %struct.png_struct_def**, %struct.png_struct_def*** %png_ptr_ptr.addr, align 8
  store %struct.png_struct_def* null, %struct.png_struct_def** %6, align 8
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_write_destroy(%struct.png_struct_def* %7)
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_destroy_png_struct(%struct.png_struct_def* %8)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  ret void
}

declare dso_local void @png_destroy_info_struct(%struct.png_struct_def*, %struct.png_info_def**) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_write_destroy(%struct.png_struct_def* noalias %png_ptr) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i32 0, i32 16
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zstream = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i32 0, i32 19
  %call = call i32 @deflateEnd(%struct.z_stream_s* %zstream)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zbuffer_list = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %4, i32 0, i32 20
  call void @png_free_buffer_list(%struct.png_struct_def* %3, %struct.png_compression_buffer** %zbuffer_list)
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_row_buf = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 48
  %7 = load i8*, i8** %t_row_buf, align 4
  call void @t_png_free(%struct.png_struct_def* %5, i8* %7)
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_row_buf1 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 48
  store i8* null, i8** %t_row_buf1, align 4
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %prev_row = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 45
  %11 = load i8*, i8** %prev_row, align 8
  call void @png_free(%struct.png_struct_def* %9, i8* %11)
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_try_row = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 49
  %14 = load i8*, i8** %t_try_row, align 4
  call void @t_png_free(%struct.png_struct_def* %12, i8* %14)
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %16 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_tst_row = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %16, i32 0, i32 50
  %17 = load i8*, i8** %t_tst_row, align 4
  call void @t_png_free(%struct.png_struct_def* %15, i8* %17)
  %18 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %prev_row2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %18, i32 0, i32 45
  store i8* null, i8** %prev_row2, align 8
  %19 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_try_row3 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %19, i32 0, i32 49
  store i8* null, i8** %t_try_row3, align 4
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_tst_row4 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 50
  store i8* null, i8** %t_tst_row4, align 4
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %chunk_list = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %22, i32 0, i32 119
  %23 = load i8*, i8** %chunk_list, align 8
  call void @png_free(%struct.png_struct_def* %21, i8* %23)
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %chunk_list5 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 119
  store i8* null, i8** %chunk_list5, align 8
  ret void
}

declare dso_local void @png_destroy_png_struct(%struct.png_struct_def*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_filter(%struct.png_struct_def* noalias %png_ptr, i32 %method, i32 %filters) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %method.addr = alloca i32, align 4
  %filters.addr = alloca i32, align 4
  %num_filters = alloca i32, align 4
  %buf_size = alloca i64, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %method, i32* %method.addr, align 4
  store i32 %filters, i32* %filters.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end100

if.end:                                           ; preds = %entry
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %mng_features_permitted = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i32 0, i32 125
  %2 = load i32, i32* %mng_features_permitted, align 8
  %and = and i32 %2, 4
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %method.addr, align 4
  %cmp2 = icmp eq i32 %3, 64
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, i32* %method.addr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %4 = load i32, i32* %method.addr, align 4
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %5 = load i32, i32* %filters.addr, align 4
  %and7 = and i32 %5, 255
  switch i32 %and7, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 0, label %sw.bb8
    i32 1, label %sw.bb9
    i32 2, label %sw.bb11
    i32 3, label %sw.bb13
    i32 4, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.then6, %if.then6, %if.then6
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_app_error(%struct.png_struct_def* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.then6, %sw.bb
  %7 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %do_filter = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %7, i32 0, i32 62
  store i8 8, i8* %do_filter, align 2
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then6
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %do_filter10 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i32 0, i32 62
  store i8 16, i8* %do_filter10, align 2
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then6
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %do_filter12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %9, i32 0, i32 62
  store i8 32, i8* %do_filter12, align 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then6
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %do_filter14 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %10, i32 0, i32 62
  store i8 64, i8* %do_filter14, align 2
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then6
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %do_filter16 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 62
  store i8 -128, i8* %do_filter16, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.then6
  %12 = load i32, i32* %filters.addr, align 4
  %conv = trunc i32 %12 to i8
  %13 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %do_filter17 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %13, i32 0, i32 62
  store i8 %conv, i8* %do_filter17, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb8
  %14 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %row_buf = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %14, i32 0, i32 47
  %15 = load i8*, i8** %row_buf, align 8
  %16 = ptrtoint i8* %15 to i32
  %cmp18 = icmp ne i32 %16, 0
  br i1 %cmp18, label %if.then20, label %if.end97

if.then20:                                        ; preds = %sw.epilog
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %height = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %17, i32 0, i32 38
  %18 = load i32, i32* %height, align 4
  %cmp21 = icmp eq i32 %18, 1
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then20
  %19 = load i32, i32* %filters.addr, align 4
  %and24 = and i32 %19, -225
  store i32 %and24, i32* %filters.addr, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then20
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %width = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %20, i32 0, i32 37
  %21 = load i32, i32* %width, align 8
  %cmp26 = icmp eq i32 %21, 1
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %22 = load i32, i32* %filters.addr, align 4
  %and29 = and i32 %22, -209
  store i32 %and29, i32* %filters.addr, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  %23 = load i32, i32* %filters.addr, align 4
  %and31 = and i32 %23, 224
  %cmp32 = icmp ne i32 %and31, 0
  br i1 %cmp32, label %land.lhs.true34, label %if.end39

land.lhs.true34:                                  ; preds = %if.end30
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %prev_row = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %24, i32 0, i32 45
  %25 = load i8*, i8** %prev_row, align 8
  %26 = ptrtoint i8* %25 to i32
  %cmp35 = icmp eq i32 %26, 0
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %land.lhs.true34
  %27 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_app_warning(%struct.png_struct_def* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %28 = load i32, i32* %filters.addr, align 4
  %and38 = and i32 %28, -225
  store i32 %and38, i32* %filters.addr, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true34, %if.end30
  store i32 0, i32* %num_filters, align 4
  %29 = load i32, i32* %filters.addr, align 4
  %and40 = and i32 %29, 16
  %tobool = icmp ne i32 %and40, 0
  br i1 %tobool, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end39
  %30 = load i32, i32* %num_filters, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %num_filters, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39
  %31 = load i32, i32* %filters.addr, align 4
  %and43 = and i32 %31, 32
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end42
  %32 = load i32, i32* %num_filters, align 4
  %inc46 = add nsw i32 %32, 1
  store i32 %inc46, i32* %num_filters, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42
  %33 = load i32, i32* %filters.addr, align 4
  %and48 = and i32 %33, 64
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  %34 = load i32, i32* %num_filters, align 4
  %inc51 = add nsw i32 %34, 1
  store i32 %inc51, i32* %num_filters, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47
  %35 = load i32, i32* %filters.addr, align 4
  %and53 = and i32 %35, 128
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end52
  %36 = load i32, i32* %num_filters, align 4
  %inc56 = add nsw i32 %36, 1
  store i32 %inc56, i32* %num_filters, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52
  %37 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_channels = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %37, i32 0, i32 68
  %38 = load i8, i8* %usr_channels, align 4
  %conv58 = zext i8 %38 to i32
  %39 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_bit_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %39, i32 0, i32 65
  %40 = load i8, i8* %usr_bit_depth, align 1
  %conv59 = zext i8 %40 to i32
  %mul = mul nsw i32 %conv58, %conv59
  %cmp60 = icmp sge i32 %mul, 8
  br i1 %cmp60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end57
  %41 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %width62 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %41, i32 0, i32 37
  %42 = load i32, i32* %width62, align 8
  %conv63 = zext i32 %42 to i64
  %43 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_channels64 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %43, i32 0, i32 68
  %44 = load i8, i8* %usr_channels64, align 4
  %conv65 = zext i8 %44 to i32
  %45 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_bit_depth66 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %45, i32 0, i32 65
  %46 = load i8, i8* %usr_bit_depth66, align 1
  %conv67 = zext i8 %46 to i32
  %mul68 = mul nsw i32 %conv65, %conv67
  %conv69 = sext i32 %mul68 to i64
  %shr = lshr i64 %conv69, 3
  %mul70 = mul i64 %conv63, %shr
  br label %cond.end

cond.false:                                       ; preds = %if.end57
  %47 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %width71 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %47, i32 0, i32 37
  %48 = load i32, i32* %width71, align 8
  %conv72 = zext i32 %48 to i64
  %49 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_channels73 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %49, i32 0, i32 68
  %50 = load i8, i8* %usr_channels73, align 4
  %conv74 = zext i8 %50 to i32
  %51 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %usr_bit_depth75 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %51, i32 0, i32 65
  %52 = load i8, i8* %usr_bit_depth75, align 1
  %conv76 = zext i8 %52 to i32
  %mul77 = mul nsw i32 %conv74, %conv76
  %conv78 = sext i32 %mul77 to i64
  %mul79 = mul i64 %conv72, %conv78
  %add = add i64 %mul79, 7
  %shr80 = lshr i64 %add, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul70, %cond.true ], [ %shr80, %cond.false ]
  %add81 = add i64 %cond, 1
  store i64 %add81, i64* %buf_size, align 8
  %53 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_try_row = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %53, i32 0, i32 49
  %54 = load i8*, i8** %t_try_row, align 4
  %55 = ptrtoint i8* %54 to i32
  %56 = zext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = ptrtoint i8* %57 to i32
  %cmp82 = icmp eq i32 %58, 0
  br i1 %cmp82, label %if.then84, label %if.end86

if.then84:                                        ; preds = %cond.end
  %59 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %60 = load i64, i64* %buf_size, align 8
  %call = call noalias i8* @t_png_malloc(%struct.png_struct_def* %59, i64 %60)
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_try_row85 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %61, i32 0, i32 49
  store i8* %call, i8** %t_try_row85, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %cond.end
  %62 = load i32, i32* %num_filters, align 4
  %cmp87 = icmp sgt i32 %62, 1
  br i1 %cmp87, label %if.then89, label %if.end96

if.then89:                                        ; preds = %if.end86
  %63 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_tst_row = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %63, i32 0, i32 50
  %64 = load i8*, i8** %t_tst_row, align 4
  %65 = ptrtoint i8* %64 to i32
  %66 = zext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = ptrtoint i8* %67 to i32
  %cmp90 = icmp eq i32 %68, 0
  br i1 %cmp90, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.then89
  %69 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %70 = load i64, i64* %buf_size, align 8
  %call93 = call noalias i8* @t_png_malloc(%struct.png_struct_def* %69, i64 %70)
  %71 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %t_tst_row94 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %71, i32 0, i32 50
  store i8* %call93, i8** %t_tst_row94, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.then89
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end86
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %sw.epilog
  %72 = load i32, i32* %filters.addr, align 4
  %conv98 = trunc i32 %72 to i8
  %73 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %do_filter99 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %73, i32 0, i32 62
  store i8 %conv98, i8* %do_filter99, align 2
  br label %if.end100

if.else:                                          ; preds = %if.end4
  %74 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0)) #7
  unreachable

if.end100:                                        ; preds = %if.then, %if.end97
  ret void
}

declare dso_local void @png_app_error(%struct.png_struct_def*, i8*) #1

declare dso_local noalias i8* @t_png_malloc(%struct.png_struct_def*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_filter_heuristics(%struct.png_struct_def* noalias %png_ptr, i32 %heuristic_method, i32 %num_weights, double* %filter_weights, double* %filter_costs) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %heuristic_method.addr = alloca i32, align 4
  %num_weights.addr = alloca i32, align 4
  %filter_weights.addr = alloca double*, align 8
  %filter_costs.addr = alloca double*, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %heuristic_method, i32* %heuristic_method.addr, align 4
  store i32 %num_weights, i32* %num_weights.addr, align 4
  store double* %filter_weights, double** %filter_weights.addr, align 8
  store double* %filter_costs, double** %filter_costs.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %1 = load i32, i32* %heuristic_method.addr, align 4
  %2 = load i32, i32* %num_weights.addr, align 4
  %3 = load double*, double** %filter_weights.addr, align 8
  %4 = load double*, double** %filter_costs.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_filter_heuristics_fixed(%struct.png_struct_def* noalias %png_ptr, i32 %heuristic_method, i32 %num_weights, i32* %filter_weights, i32* %filter_costs) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %heuristic_method.addr = alloca i32, align 4
  %num_weights.addr = alloca i32, align 4
  %filter_weights.addr = alloca i32*, align 8
  %filter_costs.addr = alloca i32*, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %heuristic_method, i32* %heuristic_method.addr, align 4
  store i32 %num_weights, i32* %num_weights.addr, align 4
  store i32* %filter_weights, i32** %filter_weights.addr, align 8
  store i32* %filter_costs, i32** %filter_costs.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %1 = load i32, i32* %heuristic_method.addr, align 4
  %2 = load i32, i32* %num_weights.addr, align 4
  %3 = load i32*, i32** %filter_weights.addr, align 8
  %4 = load i32*, i32** %filter_costs.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_compression_level(%struct.png_struct_def* noalias %png_ptr, i32 %level) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %level.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %level.addr, align 4
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zlib_level = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i32 0, i32 22
  store i32 %1, i32* %zlib_level, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_compression_mem_level(%struct.png_struct_def* noalias %png_ptr, i32 %mem_level) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %mem_level.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %mem_level, i32* %mem_level.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mem_level.addr, align 4
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zlib_mem_level = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i32 0, i32 25
  store i32 %1, i32* %zlib_mem_level, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_compression_strategy(%struct.png_struct_def* noalias %png_ptr, i32 %strategy) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %strategy.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %strategy, i32* %strategy.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i32 0, i32 16
  %2 = load i32, i32* %flags, align 8
  %or = or i32 %2, 1
  store i32 %or, i32* %flags, align 8
  %3 = load i32, i32* %strategy.addr, align 4
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zlib_strategy = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %4, i32 0, i32 26
  store i32 %3, i32* %zlib_strategy, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_compression_window_bits(%struct.png_struct_def* noalias %png_ptr, i32 %window_bits) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %window_bits.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %window_bits, i32* %window_bits.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %window_bits.addr, align 4
  %cmp1 = icmp sgt i32 %1, 15
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_warning(%struct.png_struct_def* %2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  store i32 15, i32* %window_bits.addr, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  %3 = load i32, i32* %window_bits.addr, align 4
  %cmp3 = icmp slt i32 %3, 8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_warning(%struct.png_struct_def* %4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  store i32 8, i32* %window_bits.addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then2
  %5 = load i32, i32* %window_bits.addr, align 4
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zlib_window_bits = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 24
  store i32 %5, i32* %zlib_window_bits, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_compression_method(%struct.png_struct_def* noalias %png_ptr, i32 %method) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %method.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %method, i32* %method.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %method.addr, align 4
  %cmp1 = icmp ne i32 %1, 8
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_warning(%struct.png_struct_def* %2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load i32, i32* %method.addr, align 4
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zlib_method = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %4, i32 0, i32 23
  store i32 %3, i32* %zlib_method, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_text_compression_level(%struct.png_struct_def* noalias %png_ptr, i32 %level) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %level.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %level.addr, align 4
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zlib_text_level = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i32 0, i32 27
  store i32 %1, i32* %zlib_text_level, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_text_compression_mem_level(%struct.png_struct_def* noalias %png_ptr, i32 %mem_level) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %mem_level.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %mem_level, i32* %mem_level.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mem_level.addr, align 4
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zlib_text_mem_level = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i32 0, i32 30
  store i32 %1, i32* %zlib_text_mem_level, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_text_compression_strategy(%struct.png_struct_def* noalias %png_ptr, i32 %strategy) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %strategy.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %strategy, i32* %strategy.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %strategy.addr, align 4
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zlib_text_strategy = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i32 0, i32 31
  store i32 %1, i32* %zlib_text_strategy, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_text_compression_window_bits(%struct.png_struct_def* noalias %png_ptr, i32 %window_bits) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %window_bits.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %window_bits, i32* %window_bits.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %window_bits.addr, align 4
  %cmp1 = icmp sgt i32 %1, 15
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_warning(%struct.png_struct_def* %2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  store i32 15, i32* %window_bits.addr, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  %3 = load i32, i32* %window_bits.addr, align 4
  %cmp3 = icmp slt i32 %3, 8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_warning(%struct.png_struct_def* %4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  store i32 8, i32* %window_bits.addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then2
  %5 = load i32, i32* %window_bits.addr, align 4
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zlib_text_window_bits = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %6, i32 0, i32 29
  store i32 %5, i32* %zlib_text_window_bits, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_text_compression_method(%struct.png_struct_def* noalias %png_ptr, i32 %method) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %method.addr = alloca i32, align 4
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i32 %method, i32* %method.addr, align 4
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %method.addr, align 4
  %cmp1 = icmp ne i32 %1, 8
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_warning(%struct.png_struct_def* %2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load i32, i32* %method.addr, align 4
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %zlib_text_method = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %4, i32 0, i32 28
  store i32 %3, i32* %zlib_text_method, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_write_status_fn(%struct.png_struct_def* noalias %png_ptr, void (%struct.png_struct_def*, i32, i32)* %write_row_fn) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %write_row_fn.addr = alloca void (%struct.png_struct_def*, i32, i32)*, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store void (%struct.png_struct_def*, i32, i32)* %write_row_fn, void (%struct.png_struct_def*, i32, i32)** %write_row_fn.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %write_row_fn.addr, align 8
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %write_row_fn1 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i32 0, i32 94
  store void (%struct.png_struct_def*, i32, i32)* %1, void (%struct.png_struct_def*, i32, i32)** %write_row_fn1, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_set_write_user_transform_fn(%struct.png_struct_def* noalias %png_ptr, void (%struct.png_struct_def*, %struct.png_row_info_struct*, i8*)* %write_user_transform_fn) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %write_user_transform_fn.addr = alloca void (%struct.png_struct_def*, %struct.png_row_info_struct*, i8*)*, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store void (%struct.png_struct_def*, %struct.png_row_info_struct*, i8*)* %write_user_transform_fn, void (%struct.png_struct_def*, %struct.png_row_info_struct*, i8*)** %write_user_transform_fn.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %transformations = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i32 0, i32 17
  %2 = load i32, i32* %transformations, align 4
  %or = or i32 %2, 1048576
  store i32 %or, i32* %transformations, align 4
  %3 = load void (%struct.png_struct_def*, %struct.png_row_info_struct*, i8*)*, void (%struct.png_struct_def*, %struct.png_row_info_struct*, i8*)** %write_user_transform_fn.addr, align 8
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %write_user_transform_fn1 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %4, i32 0, i32 11
  store void (%struct.png_struct_def*, %struct.png_row_info_struct*, i8*)* %3, void (%struct.png_struct_def*, %struct.png_row_info_struct*, i8*)** %write_user_transform_fn1, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_png(%struct.png_struct_def* noalias %png_ptr, %struct.png_info_def* noalias %info_ptr, i32 %transforms, i8* %params) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %info_ptr.addr = alloca %struct.png_info_def*, align 8
  %transforms.addr = alloca i32, align 4
  %params.addr = alloca i8*, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store %struct.png_info_def* %info_ptr, %struct.png_info_def** %info_ptr.addr, align 8
  store i32 %transforms, i32* %transforms.addr, align 4
  store i8* %params, i8** %params.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %cmp = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %cmp1 = icmp eq %struct.png_info_def* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %2, i32 0, i32 2
  %3 = load i32, i32* %valid, align 8
  %and = and i32 %3, 32768
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_app_error(%struct.png_struct_def* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %6 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  call void @png_write_info(%struct.png_struct_def* %5, %struct.png_info_def* %6)
  %7 = load i32, i32* %transforms.addr, align 4
  %and5 = and i32 %7, 32
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_set_invert_mono(%struct.png_struct_def* %8)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  %9 = load i32, i32* %transforms.addr, align 4
  %and9 = and i32 %9, 64
  %cmp10 = icmp ne i32 %and9, 0
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end8
  %10 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %valid12 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %10, i32 0, i32 2
  %11 = load i32, i32* %valid12, align 8
  %and13 = and i32 %11, 2
  %cmp14 = icmp ne i32 %and13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then11
  %12 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %13 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %sig_bit = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %13, i32 0, i32 24
  call void @png_set_shift(%struct.png_struct_def* %12, %struct.png_color_8_struct* %sig_bit)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end8
  %14 = load i32, i32* %transforms.addr, align 4
  %and18 = and i32 %14, 4
  %cmp19 = icmp ne i32 %and18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %15 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_set_packing(%struct.png_struct_def* %15)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  %16 = load i32, i32* %transforms.addr, align 4
  %and22 = and i32 %16, 256
  %cmp23 = icmp ne i32 %and22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_set_swap_alpha(%struct.png_struct_def* %17)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  %18 = load i32, i32* %transforms.addr, align 4
  %and26 = and i32 %18, 6144
  %cmp27 = icmp ne i32 %and26, 0
  br i1 %cmp27, label %if.then28, label %if.end41

if.then28:                                        ; preds = %if.end25
  %19 = load i32, i32* %transforms.addr, align 4
  %and29 = and i32 %19, 4096
  %cmp30 = icmp ne i32 %and29, 0
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then28
  %20 = load i32, i32* %transforms.addr, align 4
  %and32 = and i32 %20, 2048
  %cmp33 = icmp ne i32 %and32, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then31
  %21 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_app_error(%struct.png_struct_def* %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then31
  %22 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_set_filler(%struct.png_struct_def* %22, i32 0, i32 1)
  br label %if.end40

if.else:                                          ; preds = %if.then28
  %23 = load i32, i32* %transforms.addr, align 4
  %and36 = and i32 %23, 2048
  %cmp37 = icmp ne i32 %and36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.else
  %24 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_set_filler(%struct.png_struct_def* %24, i32 0, i32 0)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.else
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end35
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end25
  %25 = load i32, i32* %transforms.addr, align 4
  %and42 = and i32 %25, 128
  %cmp43 = icmp ne i32 %and42, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  %26 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_set_bgr(%struct.png_struct_def* %26)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41
  %27 = load i32, i32* %transforms.addr, align 4
  %and46 = and i32 %27, 512
  %cmp47 = icmp ne i32 %and46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  %28 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_set_swap(%struct.png_struct_def* %28)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45
  %29 = load i32, i32* %transforms.addr, align 4
  %and50 = and i32 %29, 8
  %cmp51 = icmp ne i32 %and50, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end49
  %30 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_set_packswap(%struct.png_struct_def* %30)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %31 = load i32, i32* %transforms.addr, align 4
  %and54 = and i32 %31, 1024
  %cmp55 = icmp ne i32 %and54, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  %32 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_set_invert_alpha(%struct.png_struct_def* %32)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53
  %33 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %34 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  %row_pointers = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %34, i32 0, i32 53
  %35 = load i8**, i8*** %row_pointers, align 4
  call void @t_png_write_image(%struct.png_struct_def* %33, i8** %35)
  %36 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %37 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr.addr, align 8
  call void @png_write_end(%struct.png_struct_def* %36, %struct.png_info_def* %37)
  %38 = load i8*, i8** %params.addr, align 8
  br label %return

return:                                           ; preds = %if.end57, %if.then3, %if.then
  ret void
}

declare dso_local void @png_set_invert_mono(%struct.png_struct_def*) #1

declare dso_local void @png_set_shift(%struct.png_struct_def*, %struct.png_color_8_struct*) #1

declare dso_local void @png_set_packing(%struct.png_struct_def*) #1

declare dso_local void @png_set_swap_alpha(%struct.png_struct_def*) #1

declare dso_local void @png_set_filler(%struct.png_struct_def*, i32, i32) #1

declare dso_local void @png_set_bgr(%struct.png_struct_def*) #1

declare dso_local void @png_set_swap(%struct.png_struct_def*) #1

declare dso_local void @png_set_packswap(%struct.png_struct_def*) #1

declare dso_local void @png_set_invert_alpha(%struct.png_struct_def*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @png_image_write_to_memory(%struct.png_image* %image, i8* %memory, i64* noalias %memory_bytes, i32 %convert_to_8bit, i8* %buffer, i32 %row_stride, i8* %colormap) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct.png_image*, align 8
  %memory.addr = alloca i8*, align 8
  %memory_bytes.addr = alloca i64*, align 8
  %convert_to_8bit.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %row_stride.addr = alloca i32, align 4
  %colormap.addr = alloca i8*, align 8
  %display = alloca %struct.png_image_write_control, align 8
  %result = alloca i32, align 4
  store %struct.png_image* %image, %struct.png_image** %image.addr, align 8
  store i8* %memory, i8** %memory.addr, align 8
  store i64* %memory_bytes, i64** %memory_bytes.addr, align 8
  store i32 %convert_to_8bit, i32* %convert_to_8bit.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %row_stride, i32* %row_stride.addr, align 4
  store i8* %colormap, i8** %colormap.addr, align 8
  %0 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %cmp = icmp ne %struct.png_image* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else29

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %version = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i32 0, i32 1
  %2 = load i32, i32* %version, align 8
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then, label %if.else29

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64*, i64** %memory_bytes.addr, align 8
  %cmp2 = icmp ne i64* %3, null
  br i1 %cmp2, label %land.lhs.true3, label %if.else27

land.lhs.true3:                                   ; preds = %if.then
  %4 = load i8*, i8** %buffer.addr, align 8
  %5 = ptrtoint i8* %4 to i32
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.else27

if.then5:                                         ; preds = %land.lhs.true3
  %6 = load i8*, i8** %memory.addr, align 8
  %7 = ptrtoint i8* %6 to i32
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  %8 = load i64*, i64** %memory_bytes.addr, align 8
  store i64 0, i64* %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5
  %9 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %call = call i32 @png_image_write_init(%struct.png_image* %9)
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %10 = bitcast %struct.png_image_write_control* %display to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 88, i1 false)
  %11 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %image10 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 0
  store %struct.png_image* %11, %struct.png_image** %image10, align 8
  %12 = load i8*, i8** %buffer.addr, align 8
  %buffer11 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 1
  store i8* %12, i8** %buffer11, align 8
  %13 = load i32, i32* %row_stride.addr, align 4
  %row_stride12 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 2
  store i32 %13, i32* %row_stride12, align 8
  %14 = load i8*, i8** %colormap.addr, align 8
  %colormap13 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 3
  store i8* %14, i8** %colormap13, align 8
  %15 = load i32, i32* %convert_to_8bit.addr, align 4
  %convert_to_8bit14 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 4
  store i32 %15, i32* %convert_to_8bit14, align 8
  %16 = load i8*, i8** %memory.addr, align 8
  %memory15 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 8
  store i8* %16, i8** %memory15, align 8
  %17 = load i64*, i64** %memory_bytes.addr, align 8
  %18 = load i64, i64* %17, align 8
  %memory_bytes16 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 9
  store i64 %18, i64* %memory_bytes16, align 8
  %output_bytes = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 10
  store i64 0, i64* %output_bytes, align 8
  %19 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %20 = bitcast %struct.png_image_write_control* %display to i8*
  %call17 = call i32 @png_safe_execute(%struct.png_image* %19, i32 (i8*)* @png_image_write_memory, i8* %20)
  store i32 %call17, i32* %result, align 4
  %21 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  call void @png_image_free(%struct.png_image* %21)
  %22 = load i32, i32* %result, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then18, label %if.end26

if.then18:                                        ; preds = %if.then9
  %23 = load i8*, i8** %memory.addr, align 8
  %24 = ptrtoint i8* %23 to i32
  %cmp19 = icmp ne i32 %24, 0
  br i1 %cmp19, label %land.lhs.true20, label %if.end24

land.lhs.true20:                                  ; preds = %if.then18
  %output_bytes21 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 10
  %25 = load i64, i64* %output_bytes21, align 8
  %26 = load i64*, i64** %memory_bytes.addr, align 8
  %27 = load i64, i64* %26, align 8
  %cmp22 = icmp ugt i64 %25, %27
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true20
  store i32 0, i32* %result, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true20, %if.then18
  %output_bytes25 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 10
  %28 = load i64, i64* %output_bytes25, align 8
  %29 = load i64*, i64** %memory_bytes.addr, align 8
  store i64 %28, i64* %29, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.then9
  %30 = load i32, i32* %result, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.else27:                                        ; preds = %land.lhs.true3, %if.then
  %31 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %call28 = call i32 @png_image_error(%struct.png_image* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  store i32 %call28, i32* %retval, align 4
  br label %return

if.else29:                                        ; preds = %land.lhs.true, %entry
  %32 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %cmp30 = icmp ne %struct.png_image* %32, null
  br i1 %cmp30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else29
  %33 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %call32 = call i32 @png_image_error(%struct.png_image* %33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0))
  store i32 %call32, i32* %retval, align 4
  br label %return

if.else33:                                        ; preds = %if.else29
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else33, %if.then31, %if.else27, %if.else, %if.end26
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_image_write_init(%struct.png_image* %image) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct.png_image*, align 8
  %png_ptr = alloca %struct.png_struct_def*, align 8
  %info_ptr = alloca %struct.png_info_def*, align 8
  %control = alloca %struct.png_control*, align 8
  store %struct.png_image* %image, %struct.png_image** %image.addr, align 8
  %0 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %1 = bitcast %struct.png_image* %0 to i8*
  %call = call noalias %struct.png_struct_def* @png_create_write_struct(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* %1, void (%struct.png_struct_def*, i8*)* @png_safe_error, void (%struct.png_struct_def*, i8*)* @png_safe_warning)
  store %struct.png_struct_def* %call, %struct.png_struct_def** %png_ptr, align 8
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %cmp = icmp ne %struct.png_struct_def* %2, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %call1 = call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* %3)
  store %struct.png_info_def* %call1, %struct.png_info_def** %info_ptr, align 8
  %4 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %cmp2 = icmp ne %struct.png_info_def* %4, null
  br i1 %cmp2, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.then
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %call4 = call noalias i8* @png_malloc_warn(%struct.png_struct_def* %5, i64 48)
  %6 = bitcast i8* %call4 to %struct.png_control*
  store %struct.png_control* %6, %struct.png_control** %control, align 8
  %7 = load %struct.png_control*, %struct.png_control** %control, align 8
  %cmp5 = icmp ne %struct.png_control* %7, null
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then3
  %8 = load %struct.png_control*, %struct.png_control** %control, align 8
  %9 = bitcast %struct.png_control* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 48, i1 false)
  %10 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %11 = load %struct.png_control*, %struct.png_control** %control, align 8
  %png_ptr7 = getelementptr inbounds %struct.png_control, %struct.png_control* %11, i32 0, i32 0
  store %struct.png_struct_def* %10, %struct.png_struct_def** %png_ptr7, align 8
  %12 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %13 = load %struct.png_control*, %struct.png_control** %control, align 8
  %info_ptr8 = getelementptr inbounds %struct.png_control, %struct.png_control* %13, i32 0, i32 1
  store %struct.png_info_def* %12, %struct.png_info_def** %info_ptr8, align 8
  %14 = load %struct.png_control*, %struct.png_control** %control, align 8
  %for_write = getelementptr inbounds %struct.png_control, %struct.png_control* %14, i32 0, i32 5
  %bf.load = load i8, i8* %for_write, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %for_write, align 8
  %15 = load %struct.png_control*, %struct.png_control** %control, align 8
  %16 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %16, i32 0, i32 0
  store %struct.png_control* %15, %struct.png_control** %opaque, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then3
  %17 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_destroy_info_struct(%struct.png_struct_def* %17, %struct.png_info_def** %info_ptr)
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  call void @png_destroy_write_struct(%struct.png_struct_def** %png_ptr, %struct.png_info_def** null)
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  %18 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %call11 = call i32 @png_image_error(%struct.png_image* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0))
  store i32 %call11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then6
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare dso_local i32 @png_safe_execute(%struct.png_image*, i32 (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_image_write_memory(i8* %argument) #0 {
entry:
  %argument.addr = alloca i8*, align 8
  %display = alloca %struct.png_image_write_control*, align 8
  store i8* %argument, i8** %argument.addr, align 8
  %0 = load i8*, i8** %argument.addr, align 8
  %1 = bitcast i8* %0 to %struct.png_image_write_control*
  store %struct.png_image_write_control* %1, %struct.png_image_write_control** %display, align 8
  %2 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %image = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %2, i32 0, i32 0
  %3 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %3, i32 0, i32 0
  %4 = load %struct.png_control*, %struct.png_control** %opaque, align 8
  %png_ptr = getelementptr inbounds %struct.png_control, %struct.png_control* %4, i32 0, i32 0
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %6 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %7 = bitcast %struct.png_image_write_control* %6 to i8*
  call void @png_set_write_fn(%struct.png_struct_def* %5, i8* %7, void (%struct.png_struct_def*, i8*, i64)* @image_memory_write, void (%struct.png_struct_def*)* @image_memory_flush)
  %8 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %9 = bitcast %struct.png_image_write_control* %8 to i8*
  %call = call i32 @png_image_write_main(i8* %9)
  ret i32 %call
}

declare dso_local void @png_image_free(%struct.png_image*) #1

declare dso_local i32 @png_image_error(%struct.png_image*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @png_image_write_to_stdio(%struct.png_image* %image, %struct._IO_FILE* %file, i32 %convert_to_8bit, i8* %buffer, i32 %row_stride, i8* %colormap) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct.png_image*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %convert_to_8bit.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %row_stride.addr = alloca i32, align 4
  %colormap.addr = alloca i8*, align 8
  %display = alloca %struct.png_image_write_control, align 8
  %result = alloca i32, align 4
  store %struct.png_image* %image, %struct.png_image** %image.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %convert_to_8bit, i32* %convert_to_8bit.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %row_stride, i32* %row_stride.addr, align 4
  store i8* %colormap, i8** %colormap.addr, align 8
  %0 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %cmp = icmp ne %struct.png_image* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else16

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %version = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i32 0, i32 1
  %2 = load i32, i32* %version, align 8
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then, label %if.else16

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %cmp2 = icmp ne %struct._IO_FILE* %3, null
  br i1 %cmp2, label %land.lhs.true3, label %if.else14

land.lhs.true3:                                   ; preds = %if.then
  %4 = load i8*, i8** %buffer.addr, align 8
  %5 = ptrtoint i8* %4 to i32
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.else14

if.then5:                                         ; preds = %land.lhs.true3
  %6 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %call = call i32 @png_image_write_init(%struct.png_image* %6)
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %8 = bitcast %struct._IO_FILE* %7 to i8*
  %9 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %9, i32 0, i32 0
  %10 = load %struct.png_control*, %struct.png_control** %opaque, align 8
  %png_ptr = getelementptr inbounds %struct.png_control, %struct.png_control* %10, i32 0, i32 0
  %11 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %io_ptr = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %11, i32 0, i32 9
  store i8* %8, i8** %io_ptr, align 8
  %12 = bitcast %struct.png_image_write_control* %display to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 88, i1 false)
  %13 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %image8 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 0
  store %struct.png_image* %13, %struct.png_image** %image8, align 8
  %14 = load i8*, i8** %buffer.addr, align 8
  %buffer9 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 1
  store i8* %14, i8** %buffer9, align 8
  %15 = load i32, i32* %row_stride.addr, align 4
  %row_stride10 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 2
  store i32 %15, i32* %row_stride10, align 8
  %16 = load i8*, i8** %colormap.addr, align 8
  %colormap11 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 3
  store i8* %16, i8** %colormap11, align 8
  %17 = load i32, i32* %convert_to_8bit.addr, align 4
  %convert_to_8bit12 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %display, i32 0, i32 4
  store i32 %17, i32* %convert_to_8bit12, align 8
  %18 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %19 = bitcast %struct.png_image_write_control* %display to i8*
  %call13 = call i32 @png_safe_execute(%struct.png_image* %18, i32 (i8*)* @png_image_write_main, i8* %19)
  store i32 %call13, i32* %result, align 4
  %20 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  call void @png_image_free(%struct.png_image* %20)
  %21 = load i32, i32* %result, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then5
  store i32 0, i32* %retval, align 4
  br label %return

if.else14:                                        ; preds = %land.lhs.true3, %if.then
  %22 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %call15 = call i32 @png_image_error(%struct.png_image* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0))
  store i32 %call15, i32* %retval, align 4
  br label %return

if.else16:                                        ; preds = %land.lhs.true, %entry
  %23 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %cmp17 = icmp ne %struct.png_image* %23, null
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else16
  %24 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %call19 = call i32 @png_image_error(%struct.png_image* %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0))
  store i32 %call19, i32* %retval, align 4
  br label %return

if.else20:                                        ; preds = %if.else16
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else20, %if.then18, %if.else14, %if.else, %if.then7
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_image_write_main(i8* %argument) #0 {
entry:
  %retval = alloca i32, align 4
  %argument.addr = alloca i8*, align 8
  %display = alloca %struct.png_image_write_control*, align 8
  %image = alloca %struct.png_image*, align 8
  %png_ptr = alloca %struct.png_struct_def*, align 8
  %info_ptr = alloca %struct.png_info_def*, align 8
  %format = alloca i32, align 4
  %colormap = alloca i32, align 4
  %linear = alloca i32, align 4
  %alpha = alloca i32, align 4
  %write_16bit = alloca i32, align 4
  %channels = alloca i32, align 4
  %check = alloca i32, align 4
  %png_row_stride = alloca i32, align 4
  %entries = alloca i32, align 4
  %le = alloca i16, align 2
  %row = alloca i8*, align 8
  %row_bytes = alloca i64, align 8
  %row186 = alloca i8*, align 8
  %result = alloca i32, align 4
  %row201 = alloca i8*, align 8
  %row_bytes203 = alloca i64, align 8
  %y = alloca i32, align 4
  store i8* %argument, i8** %argument.addr, align 8
  %0 = load i8*, i8** %argument.addr, align 8
  %1 = bitcast i8* %0 to %struct.png_image_write_control*
  store %struct.png_image_write_control* %1, %struct.png_image_write_control** %display, align 8
  %2 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %image1 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %2, i32 0, i32 0
  %3 = load %struct.png_image*, %struct.png_image** %image1, align 8
  store %struct.png_image* %3, %struct.png_image** %image, align 8
  %4 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %4, i32 0, i32 0
  %5 = load %struct.png_control*, %struct.png_control** %opaque, align 8
  %png_ptr2 = getelementptr inbounds %struct.png_control, %struct.png_control* %5, i32 0, i32 0
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr2, align 8
  store %struct.png_struct_def* %6, %struct.png_struct_def** %png_ptr, align 8
  %7 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque3 = getelementptr inbounds %struct.png_image, %struct.png_image* %7, i32 0, i32 0
  %8 = load %struct.png_control*, %struct.png_control** %opaque3, align 8
  %info_ptr4 = getelementptr inbounds %struct.png_control, %struct.png_control* %8, i32 0, i32 1
  %9 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr4, align 8
  store %struct.png_info_def* %9, %struct.png_info_def** %info_ptr, align 8
  %10 = load %struct.png_image*, %struct.png_image** %image, align 8
  %format5 = getelementptr inbounds %struct.png_image, %struct.png_image* %10, i32 0, i32 4
  %11 = load i32, i32* %format5, align 4
  store i32 %11, i32* %format, align 4
  %12 = load i32, i32* %format, align 4
  %and = and i32 %12, 8
  store i32 %and, i32* %colormap, align 4
  %13 = load i32, i32* %colormap, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %14 = load i32, i32* %format, align 4
  %and6 = and i32 %14, 4
  %tobool7 = icmp ne i32 %and6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %15 = phi i1 [ false, %entry ], [ %tobool7, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, i32* %linear, align 4
  %16 = load i32, i32* %colormap, align 4
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %land.end12, label %land.rhs9

land.rhs9:                                        ; preds = %land.end
  %17 = load i32, i32* %format, align 4
  %and10 = and i32 %17, 1
  %tobool11 = icmp ne i32 %and10, 0
  br label %land.end12

land.end12:                                       ; preds = %land.rhs9, %land.end
  %18 = phi i1 [ false, %land.end ], [ %tobool11, %land.rhs9 ]
  %land.ext13 = zext i1 %18 to i32
  store i32 %land.ext13, i32* %alpha, align 4
  %19 = load i32, i32* %linear, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %land.rhs15, label %land.end16

land.rhs15:                                       ; preds = %land.end12
  %20 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %convert_to_8bit = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %20, i32 0, i32 4
  %21 = load i32, i32* %convert_to_8bit, align 8
  %cmp = icmp eq i32 %21, 0
  br label %land.end16

land.end16:                                       ; preds = %land.rhs15, %land.end12
  %22 = phi i1 [ false, %land.end12 ], [ %cmp, %land.rhs15 ]
  %land.ext17 = zext i1 %22 to i32
  store i32 %land.ext17, i32* %write_16bit, align 4
  %23 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_benign_errors(%struct.png_struct_def* %23, i32 0)
  %24 = load %struct.png_image*, %struct.png_image** %image, align 8
  %format18 = getelementptr inbounds %struct.png_image, %struct.png_image* %24, i32 0, i32 4
  %25 = load i32, i32* %format18, align 4
  %and19 = and i32 %25, 8
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end16
  br label %cond.end

cond.false:                                       ; preds = %land.end16
  %26 = load %struct.png_image*, %struct.png_image** %image, align 8
  %format21 = getelementptr inbounds %struct.png_image, %struct.png_image* %26, i32 0, i32 4
  %27 = load i32, i32* %format21, align 4
  %and22 = and i32 %27, 3
  %add = add i32 %and22, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %channels, align 4
  %28 = load %struct.png_image*, %struct.png_image** %image, align 8
  %width = getelementptr inbounds %struct.png_image, %struct.png_image* %28, i32 0, i32 2
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %channels, align 4
  %div = udiv i32 2147483647, %30
  %cmp23 = icmp ule i32 %29, %div
  br i1 %cmp23, label %if.then, label %if.else46

if.then:                                          ; preds = %cond.end
  %31 = load %struct.png_image*, %struct.png_image** %image, align 8
  %width24 = getelementptr inbounds %struct.png_image, %struct.png_image* %31, i32 0, i32 2
  %32 = load i32, i32* %width24, align 4
  %33 = load i32, i32* %channels, align 4
  %mul = mul i32 %32, %33
  store i32 %mul, i32* %png_row_stride, align 4
  %34 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %row_stride = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %34, i32 0, i32 2
  %35 = load i32, i32* %row_stride, align 8
  %cmp25 = icmp eq i32 %35, 0
  br i1 %cmp25, label %if.then26, label %if.end

if.then26:                                        ; preds = %if.then
  %36 = load i32, i32* %png_row_stride, align 4
  %37 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %row_stride27 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %37, i32 0, i32 2
  store i32 %36, i32* %row_stride27, align 8
  br label %if.end

if.end:                                           ; preds = %if.then26, %if.then
  %38 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %row_stride28 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %38, i32 0, i32 2
  %39 = load i32, i32* %row_stride28, align 8
  %cmp29 = icmp slt i32 %39, 0
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end
  %40 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %row_stride31 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %40, i32 0, i32 2
  %41 = load i32, i32* %row_stride31, align 8
  %sub = sub nsw i32 0, %41
  store i32 %sub, i32* %check, align 4
  br label %if.end33

if.else:                                          ; preds = %if.end
  %42 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %row_stride32 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %42, i32 0, i32 2
  %43 = load i32, i32* %row_stride32, align 8
  store i32 %43, i32* %check, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then30
  %44 = load i32, i32* %check, align 4
  %45 = load i32, i32* %png_row_stride, align 4
  %cmp34 = icmp uge i32 %44, %45
  br i1 %cmp34, label %if.then35, label %if.else42

if.then35:                                        ; preds = %if.end33
  %46 = load %struct.png_image*, %struct.png_image** %image, align 8
  %height = getelementptr inbounds %struct.png_image, %struct.png_image* %46, i32 0, i32 3
  %47 = load i32, i32* %height, align 8
  %48 = load i32, i32* %png_row_stride, align 4
  %div36 = udiv i32 -1, %48
  %cmp37 = icmp ugt i32 %47, %div36
  br i1 %cmp37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.then35
  %49 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque39 = getelementptr inbounds %struct.png_image, %struct.png_image* %49, i32 0, i32 0
  %50 = load %struct.png_control*, %struct.png_control** %opaque39, align 8
  %png_ptr40 = getelementptr inbounds %struct.png_control, %struct.png_control* %50, i32 0, i32 0
  %51 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr40, align 8
  call void @png_error(%struct.png_struct_def* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0)) #7
  unreachable

if.end41:                                         ; preds = %if.then35
  br label %if.end45

if.else42:                                        ; preds = %if.end33
  %52 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque43 = getelementptr inbounds %struct.png_image, %struct.png_image* %52, i32 0, i32 0
  %53 = load %struct.png_control*, %struct.png_control** %opaque43, align 8
  %png_ptr44 = getelementptr inbounds %struct.png_control, %struct.png_control* %53, i32 0, i32 0
  %54 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr44, align 8
  call void @png_error(%struct.png_struct_def* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0)) #7
  unreachable

if.end45:                                         ; preds = %if.end41
  br label %if.end49

if.else46:                                        ; preds = %cond.end
  %55 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque47 = getelementptr inbounds %struct.png_image, %struct.png_image* %55, i32 0, i32 0
  %56 = load %struct.png_control*, %struct.png_control** %opaque47, align 8
  %png_ptr48 = getelementptr inbounds %struct.png_control, %struct.png_control* %56, i32 0, i32 0
  %57 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr48, align 8
  call void @png_error(%struct.png_struct_def* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0)) #7
  unreachable

if.end49:                                         ; preds = %if.end45
  %58 = load i32, i32* %format, align 4
  %and50 = and i32 %58, 8
  %cmp51 = icmp ne i32 %and50, 0
  br i1 %cmp51, label %if.then52, label %if.else76

if.then52:                                        ; preds = %if.end49
  %59 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %colormap53 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %59, i32 0, i32 3
  %60 = load i8*, i8** %colormap53, align 8
  %61 = ptrtoint i8* %60 to i32
  %cmp54 = icmp ne i32 %61, 0
  br i1 %cmp54, label %land.lhs.true, label %if.else72

land.lhs.true:                                    ; preds = %if.then52
  %62 = load %struct.png_image*, %struct.png_image** %image, align 8
  %colormap_entries = getelementptr inbounds %struct.png_image, %struct.png_image* %62, i32 0, i32 6
  %63 = load i32, i32* %colormap_entries, align 4
  %cmp55 = icmp ugt i32 %63, 0
  br i1 %cmp55, label %if.then56, label %if.else72

if.then56:                                        ; preds = %land.lhs.true
  %64 = load %struct.png_image*, %struct.png_image** %image, align 8
  %colormap_entries57 = getelementptr inbounds %struct.png_image, %struct.png_image* %64, i32 0, i32 6
  %65 = load i32, i32* %colormap_entries57, align 4
  store i32 %65, i32* %entries, align 4
  %66 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %67 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %68 = load %struct.png_image*, %struct.png_image** %image, align 8
  %width58 = getelementptr inbounds %struct.png_image, %struct.png_image* %68, i32 0, i32 2
  %69 = load i32, i32* %width58, align 4
  %70 = load %struct.png_image*, %struct.png_image** %image, align 8
  %height59 = getelementptr inbounds %struct.png_image, %struct.png_image* %70, i32 0, i32 3
  %71 = load i32, i32* %height59, align 8
  %72 = load i32, i32* %entries, align 4
  %cmp60 = icmp ugt i32 %72, 16
  br i1 %cmp60, label %cond.true61, label %cond.false62

cond.true61:                                      ; preds = %if.then56
  br label %cond.end70

cond.false62:                                     ; preds = %if.then56
  %73 = load i32, i32* %entries, align 4
  %cmp63 = icmp ugt i32 %73, 4
  br i1 %cmp63, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %cond.false62
  br label %cond.end68

cond.false65:                                     ; preds = %cond.false62
  %74 = load i32, i32* %entries, align 4
  %cmp66 = icmp ugt i32 %74, 2
  %75 = zext i1 %cmp66 to i64
  %cond67 = select i1 %cmp66, i32 2, i32 1
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false65, %cond.true64
  %cond69 = phi i32 [ 4, %cond.true64 ], [ %cond67, %cond.false65 ]
  br label %cond.end70

cond.end70:                                       ; preds = %cond.end68, %cond.true61
  %cond71 = phi i32 [ 8, %cond.true61 ], [ %cond69, %cond.end68 ]
  call void @png_set_IHDR(%struct.png_struct_def* %66, %struct.png_info_def* %67, i32 %69, i32 %71, i32 %cond71, i32 3, i32 0, i32 0, i32 0)
  %76 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  call void @png_image_set_PLTE(%struct.png_image_write_control* %76)
  br label %if.end75

if.else72:                                        ; preds = %land.lhs.true, %if.then52
  %77 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque73 = getelementptr inbounds %struct.png_image, %struct.png_image* %77, i32 0, i32 0
  %78 = load %struct.png_control*, %struct.png_control** %opaque73, align 8
  %png_ptr74 = getelementptr inbounds %struct.png_control, %struct.png_control* %78, i32 0, i32 0
  %79 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr74, align 8
  call void @png_error(%struct.png_struct_def* %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0)) #7
  unreachable

if.end75:                                         ; preds = %cond.end70
  br label %if.end88

if.else76:                                        ; preds = %if.end49
  %80 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %81 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %82 = load %struct.png_image*, %struct.png_image** %image, align 8
  %width77 = getelementptr inbounds %struct.png_image, %struct.png_image* %82, i32 0, i32 2
  %83 = load i32, i32* %width77, align 4
  %84 = load %struct.png_image*, %struct.png_image** %image, align 8
  %height78 = getelementptr inbounds %struct.png_image, %struct.png_image* %84, i32 0, i32 3
  %85 = load i32, i32* %height78, align 8
  %86 = load i32, i32* %write_16bit, align 4
  %tobool79 = icmp ne i32 %86, 0
  %87 = zext i1 %tobool79 to i64
  %cond80 = select i1 %tobool79, i32 16, i32 8
  %88 = load i32, i32* %format, align 4
  %and81 = and i32 %88, 2
  %tobool82 = icmp ne i32 %and81, 0
  %89 = zext i1 %tobool82 to i64
  %cond83 = select i1 %tobool82, i32 2, i32 0
  %90 = load i32, i32* %format, align 4
  %and84 = and i32 %90, 1
  %tobool85 = icmp ne i32 %and84, 0
  %91 = zext i1 %tobool85 to i64
  %cond86 = select i1 %tobool85, i32 4, i32 0
  %add87 = add nsw i32 %cond83, %cond86
  call void @png_set_IHDR(%struct.png_struct_def* %80, %struct.png_info_def* %81, i32 %83, i32 %85, i32 %cond80, i32 %add87, i32 0, i32 0, i32 0)
  br label %if.end88

if.end88:                                         ; preds = %if.else76, %if.end75
  %92 = load i32, i32* %write_16bit, align 4
  %cmp89 = icmp ne i32 %92, 0
  br i1 %cmp89, label %if.then90, label %if.else95

if.then90:                                        ; preds = %if.end88
  %93 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %94 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_set_gAMA_fixed(%struct.png_struct_def* %93, %struct.png_info_def* %94, i32 100000)
  %95 = load %struct.png_image*, %struct.png_image** %image, align 8
  %flags = getelementptr inbounds %struct.png_image, %struct.png_image* %95, i32 0, i32 5
  %96 = load i32, i32* %flags, align 8
  %and91 = and i32 %96, 1
  %cmp92 = icmp eq i32 %and91, 0
  br i1 %cmp92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.then90
  %97 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %98 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_set_cHRM_fixed(%struct.png_struct_def* %97, %struct.png_info_def* %98, i32 31270, i32 32900, i32 64000, i32 33000, i32 30000, i32 60000, i32 15000, i32 6000)
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.then90
  br label %if.end102

if.else95:                                        ; preds = %if.end88
  %99 = load %struct.png_image*, %struct.png_image** %image, align 8
  %flags96 = getelementptr inbounds %struct.png_image, %struct.png_image* %99, i32 0, i32 5
  %100 = load i32, i32* %flags96, align 8
  %and97 = and i32 %100, 1
  %cmp98 = icmp eq i32 %and97, 0
  br i1 %cmp98, label %if.then99, label %if.else100

if.then99:                                        ; preds = %if.else95
  %101 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %102 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_set_sRGB(%struct.png_struct_def* %101, %struct.png_info_def* %102, i32 0)
  br label %if.end101

if.else100:                                       ; preds = %if.else95
  %103 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %104 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_set_gAMA_fixed(%struct.png_struct_def* %103, %struct.png_info_def* %104, i32 45455)
  br label %if.end101

if.end101:                                        ; preds = %if.else100, %if.then99
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end94
  %105 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %106 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_write_info(%struct.png_struct_def* %105, %struct.png_info_def* %106)
  %107 = load i32, i32* %write_16bit, align 4
  %cmp103 = icmp ne i32 %107, 0
  br i1 %cmp103, label %if.then104, label %if.end109

if.then104:                                       ; preds = %if.end102
  store i16 1, i16* %le, align 2
  %108 = bitcast i16* %le to i8*
  %109 = load i8, i8* %108, align 2
  %conv = zext i8 %109 to i32
  %cmp105 = icmp ne i32 %conv, 0
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.then104
  %110 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_swap(%struct.png_struct_def* %110)
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.then104
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end102
  %111 = load i32, i32* %format, align 4
  %and110 = and i32 %111, 16
  %cmp111 = icmp ne i32 %and110, 0
  br i1 %cmp111, label %if.then113, label %if.end123

if.then113:                                       ; preds = %if.end109
  %112 = load i32, i32* %colormap, align 4
  %cmp114 = icmp eq i32 %112, 0
  br i1 %cmp114, label %land.lhs.true116, label %if.end121

land.lhs.true116:                                 ; preds = %if.then113
  %113 = load i32, i32* %format, align 4
  %and117 = and i32 %113, 2
  %cmp118 = icmp ne i32 %and117, 0
  br i1 %cmp118, label %if.then120, label %if.end121

if.then120:                                       ; preds = %land.lhs.true116
  %114 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_bgr(%struct.png_struct_def* %114)
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %land.lhs.true116, %if.then113
  %115 = load i32, i32* %format, align 4
  %and122 = and i32 %115, -17
  store i32 %and122, i32* %format, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.end121, %if.end109
  %116 = load i32, i32* %format, align 4
  %and124 = and i32 %116, 32
  %cmp125 = icmp ne i32 %and124, 0
  br i1 %cmp125, label %if.then127, label %if.end137

if.then127:                                       ; preds = %if.end123
  %117 = load i32, i32* %colormap, align 4
  %cmp128 = icmp eq i32 %117, 0
  br i1 %cmp128, label %land.lhs.true130, label %if.end135

land.lhs.true130:                                 ; preds = %if.then127
  %118 = load i32, i32* %format, align 4
  %and131 = and i32 %118, 1
  %cmp132 = icmp ne i32 %and131, 0
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %land.lhs.true130
  %119 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_swap_alpha(%struct.png_struct_def* %119)
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %land.lhs.true130, %if.then127
  %120 = load i32, i32* %format, align 4
  %and136 = and i32 %120, -33
  store i32 %and136, i32* %format, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.end135, %if.end123
  %121 = load i32, i32* %colormap, align 4
  %cmp138 = icmp ne i32 %121, 0
  br i1 %cmp138, label %land.lhs.true140, label %if.end145

land.lhs.true140:                                 ; preds = %if.end137
  %122 = load %struct.png_image*, %struct.png_image** %image, align 8
  %colormap_entries141 = getelementptr inbounds %struct.png_image, %struct.png_image* %122, i32 0, i32 6
  %123 = load i32, i32* %colormap_entries141, align 4
  %cmp142 = icmp ule i32 %123, 16
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %land.lhs.true140
  %124 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_packing(%struct.png_struct_def* %124)
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %land.lhs.true140, %if.end137
  %125 = load i32, i32* %format, align 4
  %and146 = and i32 %125, -16
  %cmp147 = icmp ne i32 %and146, 0
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.end145
  %126 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_error(%struct.png_struct_def* %126, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0)) #7
  unreachable

if.end150:                                        ; preds = %if.end145
  %127 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %buffer = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %127, i32 0, i32 1
  %128 = load i8*, i8** %buffer, align 8
  store i8* %128, i8** %row, align 8
  %129 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %row_stride151 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %129, i32 0, i32 2
  %130 = load i32, i32* %row_stride151, align 8
  %conv152 = sext i32 %130 to i64
  store i64 %conv152, i64* %row_bytes, align 8
  %131 = load i32, i32* %linear, align 4
  %cmp153 = icmp ne i32 %131, 0
  br i1 %cmp153, label %if.then155, label %if.end157

if.then155:                                       ; preds = %if.end150
  %132 = load i64, i64* %row_bytes, align 8
  %mul156 = mul i64 %132, 2
  store i64 %mul156, i64* %row_bytes, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end150
  %133 = load i64, i64* %row_bytes, align 8
  %cmp158 = icmp slt i64 %133, 0
  br i1 %cmp158, label %if.then160, label %if.end166

if.then160:                                       ; preds = %if.end157
  %134 = load %struct.png_image*, %struct.png_image** %image, align 8
  %height161 = getelementptr inbounds %struct.png_image, %struct.png_image* %134, i32 0, i32 3
  %135 = load i32, i32* %height161, align 8
  %sub162 = sub i32 %135, 1
  %conv163 = zext i32 %sub162 to i64
  %136 = load i64, i64* %row_bytes, align 8
  %sub164 = sub nsw i64 0, %136
  %mul165 = mul nsw i64 %conv163, %sub164
  %137 = load i8*, i8** %row, align 8
  %add.ptr = getelementptr inbounds i8, i8* %137, i64 %mul165
  store i8* %add.ptr, i8** %row, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.then160, %if.end157
  %138 = load i8*, i8** %row, align 8
  %139 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %first_row = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %139, i32 0, i32 5
  store i8* %138, i8** %first_row, align 8
  %140 = load i64, i64* %row_bytes, align 8
  %141 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %row_bytes167 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %141, i32 0, i32 6
  store i64 %140, i64* %row_bytes167, align 8
  %142 = load %struct.png_image*, %struct.png_image** %image, align 8
  %flags168 = getelementptr inbounds %struct.png_image, %struct.png_image* %142, i32 0, i32 5
  %143 = load i32, i32* %flags168, align 8
  %and169 = and i32 %143, 2
  %cmp170 = icmp ne i32 %and169, 0
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.end166
  %144 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_filter(%struct.png_struct_def* %144, i32 0, i32 0)
  %145 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_set_compression_level(%struct.png_struct_def* %145, i32 3)
  br label %if.end173

if.end173:                                        ; preds = %if.then172, %if.end166
  %146 = load i32, i32* %linear, align 4
  %cmp174 = icmp ne i32 %146, 0
  br i1 %cmp174, label %land.lhs.true176, label %lor.lhs.false

land.lhs.true176:                                 ; preds = %if.end173
  %147 = load i32, i32* %alpha, align 4
  %cmp177 = icmp ne i32 %147, 0
  br i1 %cmp177, label %if.then185, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true176, %if.end173
  %148 = load i32, i32* %colormap, align 4
  %cmp179 = icmp eq i32 %148, 0
  br i1 %cmp179, label %land.lhs.true181, label %if.else200

land.lhs.true181:                                 ; preds = %lor.lhs.false
  %149 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %convert_to_8bit182 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %149, i32 0, i32 4
  %150 = load i32, i32* %convert_to_8bit182, align 8
  %cmp183 = icmp ne i32 %150, 0
  br i1 %cmp183, label %if.then185, label %if.else200

if.then185:                                       ; preds = %land.lhs.true181, %land.lhs.true176
  %151 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %152 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %153 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %call = call i64 @png_get_rowbytes(%struct.png_struct_def* %152, %struct.png_info_def* %153)
  %call187 = call noalias i8* @png_malloc(%struct.png_struct_def* %151, i64 %call)
  store i8* %call187, i8** %row186, align 8
  %154 = load i8*, i8** %row186, align 8
  %155 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %local_row = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %155, i32 0, i32 7
  store i8* %154, i8** %local_row, align 8
  %156 = load i32, i32* %write_16bit, align 4
  %cmp188 = icmp ne i32 %156, 0
  br i1 %cmp188, label %if.then190, label %if.else192

if.then190:                                       ; preds = %if.then185
  %157 = load %struct.png_image*, %struct.png_image** %image, align 8
  %158 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %159 = bitcast %struct.png_image_write_control* %158 to i8*
  %call191 = call i32 @png_safe_execute(%struct.png_image* %157, i32 (i8*)* @png_write_image_16bit, i8* %159)
  store i32 %call191, i32* %result, align 4
  br label %if.end194

if.else192:                                       ; preds = %if.then185
  %160 = load %struct.png_image*, %struct.png_image** %image, align 8
  %161 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %162 = bitcast %struct.png_image_write_control* %161 to i8*
  %call193 = call i32 @png_safe_execute(%struct.png_image* %160, i32 (i8*)* @png_write_image_8bit, i8* %162)
  store i32 %call193, i32* %result, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.else192, %if.then190
  %163 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %local_row195 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %163, i32 0, i32 7
  store i8* null, i8** %local_row195, align 8
  %164 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %165 = load i8*, i8** %row186, align 8
  call void @png_free(%struct.png_struct_def* %164, i8* %165)
  %166 = load i32, i32* %result, align 4
  %cmp196 = icmp eq i32 %166, 0
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.end194
  store i32 0, i32* %retval, align 4
  br label %return

if.end199:                                        ; preds = %if.end194
  br label %if.end209

if.else200:                                       ; preds = %land.lhs.true181, %lor.lhs.false
  %167 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %first_row202 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %167, i32 0, i32 5
  %168 = load i8*, i8** %first_row202, align 8
  store i8* %168, i8** %row201, align 8
  %169 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %row_bytes204 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %169, i32 0, i32 6
  %170 = load i64, i64* %row_bytes204, align 8
  store i64 %170, i64* %row_bytes203, align 8
  %171 = load %struct.png_image*, %struct.png_image** %image, align 8
  %height205 = getelementptr inbounds %struct.png_image, %struct.png_image* %171, i32 0, i32 3
  %172 = load i32, i32* %height205, align 8
  store i32 %172, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else200
  %173 = load i32, i32* %y, align 4
  %cmp206 = icmp ugt i32 %173, 0
  br i1 %cmp206, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %174 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %175 = load i8*, i8** %row201, align 8
  call void @png_write_row(%struct.png_struct_def* %174, i8* %175)
  %176 = load i64, i64* %row_bytes203, align 8
  %177 = load i8*, i8** %row201, align 8
  %add.ptr208 = getelementptr inbounds i8, i8* %177, i64 %176
  store i8* %add.ptr208, i8** %row201, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %178 = load i32, i32* %y, align 4
  %dec = add i32 %178, -1
  store i32 %dec, i32* %y, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  br label %if.end209

if.end209:                                        ; preds = %for.end, %if.end199
  %179 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %180 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  call void @png_write_end(%struct.png_struct_def* %179, %struct.png_info_def* %180)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end209, %if.then198
  %181 = load i32, i32* %retval, align 4
  ret i32 %181
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @png_image_write_to_file(%struct.png_image* %image, i8* %file_name, i32 %convert_to_8bit, i8* %buffer, i32 %row_stride, i8* %colormap) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct.png_image*, align 8
  %file_name.addr = alloca i8*, align 8
  %convert_to_8bit.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %row_stride.addr = alloca i32, align 4
  %colormap.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %error = alloca i32, align 4
  store %struct.png_image* %image, %struct.png_image** %image.addr, align 8
  store i8* %file_name, i8** %file_name.addr, align 8
  store i32 %convert_to_8bit, i32* %convert_to_8bit.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %row_stride, i32* %row_stride.addr, align 4
  store i8* %colormap, i8** %colormap.addr, align 8
  %0 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %cmp = icmp ne %struct.png_image* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else36

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %version = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i32 0, i32 1
  %2 = load i32, i32* %version, align 8
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then, label %if.else36

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %file_name.addr, align 8
  %4 = ptrtoint i8* %3 to i32
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.else34

land.lhs.true3:                                   ; preds = %if.then
  %5 = load i8*, i8** %buffer.addr, align 8
  %6 = ptrtoint i8* %5 to i32
  %cmp4 = icmp ne i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.else34

if.then5:                                         ; preds = %land.lhs.true3
  %7 = load i8*, i8** %file_name.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp6 = icmp ne %struct._IO_FILE* %8, null
  br i1 %cmp6, label %if.then7, label %if.else30

if.then7:                                         ; preds = %if.then5
  %9 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %11 = load i32, i32* %convert_to_8bit.addr, align 4
  %12 = load i8*, i8** %buffer.addr, align 8
  %13 = load i32, i32* %row_stride.addr, align 4
  %14 = load i8*, i8** %colormap.addr, align 8
  %call8 = call i32 @png_image_write_to_stdio(%struct.png_image* %9, %struct._IO_FILE* %10, i32 %11, i8* %12, i32 %13, i8* %14)
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else27

if.then10:                                        ; preds = %if.then7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i32 @fflush(%struct._IO_FILE* %15)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %if.then10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call14 = call i32 @ferror(%struct._IO_FILE* %16) #8
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %land.lhs.true13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* %17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.then16
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then16
  %call20 = call i32* @__errno_location() #9
  %18 = load i32, i32* %call20, align 4
  store i32 %18, i32* %error, align 4
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true13, %if.then10
  %call21 = call i32* @__errno_location() #9
  %19 = load i32, i32* %call21, align 4
  store i32 %19, i32* %error, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* %20)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end
  %21 = load i8*, i8** %file_name.addr, align 8
  %call24 = call i32 @remove(i8* %21) #8
  %22 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %23 = load i32, i32* %error, align 4
  %call25 = call i8* @strerror(i32 %23) #8
  %call26 = call i32 @png_image_error(%struct.png_image* %22, i8* %call25)
  store i32 %call26, i32* %retval, align 4
  br label %return

if.else27:                                        ; preds = %if.then7
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* %24)
  %25 = load i8*, i8** %file_name.addr, align 8
  %call29 = call i32 @remove(i8* %25) #8
  store i32 0, i32* %retval, align 4
  br label %return

if.else30:                                        ; preds = %if.then5
  %26 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %call31 = call i32* @__errno_location() #9
  %27 = load i32, i32* %call31, align 4
  %call32 = call i8* @strerror(i32 %27) #8
  %call33 = call i32 @png_image_error(%struct.png_image* %26, i8* %call32)
  store i32 %call33, i32* %retval, align 4
  br label %return

if.else34:                                        ; preds = %land.lhs.true3, %if.then
  %28 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %call35 = call i32 @png_image_error(%struct.png_image* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0))
  store i32 %call35, i32* %retval, align 4
  br label %return

if.else36:                                        ; preds = %land.lhs.true, %entry
  %29 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %cmp37 = icmp ne %struct.png_image* %29, null
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else36
  %30 = load %struct.png_image*, %struct.png_image** %image.addr, align 8
  %call39 = call i32 @png_image_error(%struct.png_image* %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0))
  store i32 %call39, i32* %retval, align 4
  br label %return

if.else40:                                        ; preds = %if.else36
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else40, %if.then38, %if.else34, %if.else30, %if.else27, %if.end23, %if.then19
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

; Function Attrs: nounwind
declare dso_local i32 @remove(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #3

declare dso_local i32 @png_handle_as_unknown(%struct.png_struct_def*, i8*) #1

declare dso_local void @png_write_chunk(%struct.png_struct_def*, i8*, i8*, i64) #1

declare dso_local i32 @deflateEnd(%struct.z_stream_s*) #1

declare dso_local void @png_free_buffer_list(%struct.png_struct_def*, %struct.png_compression_buffer**) #1

declare dso_local void @t_png_free(%struct.png_struct_def*, i8*) #1

declare dso_local void @png_free(%struct.png_struct_def*, i8*) #1

; Function Attrs: noreturn
declare dso_local void @png_safe_error(%struct.png_struct_def*, i8*) #2

declare dso_local void @png_safe_warning(%struct.png_struct_def*, i8*) #1

declare dso_local noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def*) #1

declare dso_local noalias i8* @png_malloc_warn(%struct.png_struct_def*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_memory_write(%struct.png_struct_def* %png_ptr, i8* %data, i64 %size) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %display = alloca %struct.png_image_write_control*, align 8
  %ob = alloca i64, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  %io_ptr = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i32 0, i32 9
  %1 = load i8*, i8** %io_ptr, align 8
  %2 = bitcast i8* %1 to %struct.png_image_write_control*
  store %struct.png_image_write_control* %2, %struct.png_image_write_control** %display, align 8
  %3 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %output_bytes = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %3, i32 0, i32 10
  %4 = load i64, i64* %output_bytes, align 8
  store i64 %4, i64* %ob, align 8
  %5 = load i64, i64* %size.addr, align 8
  %6 = load i64, i64* %ob, align 8
  %sub = sub i64 -1, %6
  %cmp = icmp ule i64 %5, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ugt i64 %7, 0
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.then
  %8 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %memory_bytes = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %8, i32 0, i32 9
  %9 = load i64, i64* %memory_bytes, align 8
  %10 = load i64, i64* %ob, align 8
  %11 = load i64, i64* %size.addr, align 8
  %add = add i64 %10, %11
  %cmp3 = icmp uge i64 %9, %add
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %12 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %memory = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %12, i32 0, i32 8
  %13 = load i8*, i8** %memory, align 8
  %14 = load i64, i64* %ob, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8*, i8** %data.addr, align 8
  %16 = load i64, i64* %size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %15, i64 %16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  %17 = load i64, i64* %ob, align 8
  %18 = load i64, i64* %size.addr, align 8
  %add5 = add i64 %17, %18
  %19 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %output_bytes6 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %19, i32 0, i32 10
  store i64 %add5, i64* %output_bytes6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  br label %if.end8

if.else:                                          ; preds = %entry
  %20 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  call void @png_error(%struct.png_struct_def* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #7
  unreachable

if.end8:                                          ; preds = %if.end7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_memory_flush(%struct.png_struct_def* %png_ptr) #0 {
entry:
  %png_ptr.addr = alloca %struct.png_struct_def*, align 8
  store %struct.png_struct_def* %png_ptr, %struct.png_struct_def** %png_ptr.addr, align 8
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.addr, align 8
  ret void
}

declare dso_local void @png_set_benign_errors(%struct.png_struct_def*, i32) #1

declare dso_local void @png_set_IHDR(%struct.png_struct_def*, %struct.png_info_def*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_image_set_PLTE(%struct.png_image_write_control* %display) #0 {
entry:
  %display.addr = alloca %struct.png_image_write_control*, align 8
  %image = alloca %struct.png_image*, align 8
  %cmap = alloca i8*, align 8
  %entries = alloca i32, align 4
  %format = alloca i32, align 4
  %channels = alloca i32, align 4
  %afirst = alloca i32, align 4
  %bgr = alloca i32, align 4
  %i = alloca i32, align 4
  %num_trans = alloca i32, align 4
  %palette = alloca [256 x %struct.png_color_struct], align 16
  %tRNS = alloca [256 x i8], align 16
  %entry15 = alloca i16*, align 8
  %alpha = alloca i16, align 2
  %alphabyte = alloca i8, align 1
  %reciprocal = alloca i32, align 4
  %entry213 = alloca i8*, align 8
  store %struct.png_image_write_control* %display, %struct.png_image_write_control** %display.addr, align 8
  %0 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display.addr, align 8
  %image1 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %0, i32 0, i32 0
  %1 = load %struct.png_image*, %struct.png_image** %image1, align 8
  store %struct.png_image* %1, %struct.png_image** %image, align 8
  %2 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display.addr, align 8
  %colormap = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %2, i32 0, i32 3
  %3 = load i8*, i8** %colormap, align 8
  store i8* %3, i8** %cmap, align 8
  %4 = load %struct.png_image*, %struct.png_image** %image, align 8
  %colormap_entries = getelementptr inbounds %struct.png_image, %struct.png_image* %4, i32 0, i32 6
  %5 = load i32, i32* %colormap_entries, align 4
  %cmp = icmp ugt i32 %5, 256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.png_image*, %struct.png_image** %image, align 8
  %colormap_entries2 = getelementptr inbounds %struct.png_image, %struct.png_image* %6, i32 0, i32 6
  %7 = load i32, i32* %colormap_entries2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 256, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %entries, align 4
  %8 = load %struct.png_image*, %struct.png_image** %image, align 8
  %format3 = getelementptr inbounds %struct.png_image, %struct.png_image* %8, i32 0, i32 4
  %9 = load i32, i32* %format3, align 4
  store i32 %9, i32* %format, align 4
  %10 = load i32, i32* %format, align 4
  %and = and i32 %10, 3
  %add = add i32 %and, 1
  store i32 %add, i32* %channels, align 4
  %11 = load i32, i32* %format, align 4
  %and4 = and i32 %11, 32
  %cmp5 = icmp ne i32 %and4, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %12 = load i32, i32* %format, align 4
  %and6 = and i32 %12, 1
  %cmp7 = icmp ne i32 %and6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %13 = phi i1 [ false, %cond.end ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %afirst, align 4
  %14 = load i32, i32* %format, align 4
  %and8 = and i32 %14, 16
  %cmp9 = icmp ne i32 %and8, 0
  %15 = zext i1 %cmp9 to i64
  %cond10 = select i1 %cmp9, i32 2, i32 0
  store i32 %cond10, i32* %bgr, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %tRNS, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 -1, i64 256, i1 false)
  %arraydecay11 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 0
  %16 = bitcast %struct.png_color_struct* %arraydecay11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 768, i1 false)
  store i32 0, i32* %num_trans, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %entries, align 4
  %cmp12 = icmp slt i32 %17, %18
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %format, align 4
  %and13 = and i32 %19, 4
  %cmp14 = icmp ne i32 %and13, 0
  br i1 %cmp14, label %if.then, label %if.else212

if.then:                                          ; preds = %for.body
  %20 = load i8*, i8** %cmap, align 8
  %21 = bitcast i8* %20 to i16*
  store i16* %21, i16** %entry15, align 8
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %channels, align 4
  %mul = mul i32 %22, %23
  %24 = load i16*, i16** %entry15, align 8
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %24, i64 %idx.ext
  store i16* %add.ptr, i16** %entry15, align 8
  %25 = load i32, i32* %channels, align 4
  %and16 = and i32 %25, 1
  %cmp17 = icmp ne i32 %and16, 0
  br i1 %cmp17, label %if.then18, label %if.else133

if.then18:                                        ; preds = %if.then
  %26 = load i32, i32* %channels, align 4
  %cmp19 = icmp uge i32 %26, 3
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then18
  %27 = load i16*, i16** %entry15, align 8
  %28 = load i32, i32* %bgr, align 4
  %xor = xor i32 2, %28
  %idxprom = sext i32 %xor to i64
  %arrayidx = getelementptr inbounds i16, i16* %27, i64 %idxprom
  %29 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %29 to i32
  %mul21 = mul nsw i32 255, %conv
  %shr = ashr i32 %mul21, 15
  %idxprom22 = sext i32 %shr to i64
  %arrayidx23 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom22
  %30 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %30 to i32
  %31 = load i16*, i16** %entry15, align 8
  %32 = load i32, i32* %bgr, align 4
  %xor25 = xor i32 2, %32
  %idxprom26 = sext i32 %xor25 to i64
  %arrayidx27 = getelementptr inbounds i16, i16* %31, i64 %idxprom26
  %33 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %33 to i32
  %mul29 = mul nsw i32 255, %conv28
  %and30 = and i32 %mul29, 32767
  %34 = load i16*, i16** %entry15, align 8
  %35 = load i32, i32* %bgr, align 4
  %xor31 = xor i32 2, %35
  %idxprom32 = sext i32 %xor31 to i64
  %arrayidx33 = getelementptr inbounds i16, i16* %34, i64 %idxprom32
  %36 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %36 to i32
  %mul35 = mul nsw i32 255, %conv34
  %shr36 = ashr i32 %mul35, 15
  %idxprom37 = sext i32 %shr36 to i64
  %arrayidx38 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom37
  %37 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %37 to i32
  %mul40 = mul nsw i32 %and30, %conv39
  %shr41 = ashr i32 %mul40, 12
  %add42 = add nsw i32 %conv24, %shr41
  %shr43 = ashr i32 %add42, 8
  %and44 = and i32 255, %shr43
  %conv45 = trunc i32 %and44 to i8
  %38 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %38 to i64
  %arrayidx47 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom46
  %blue = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx47, i32 0, i32 2
  store i8 %conv45, i8* %blue, align 1
  %39 = load i16*, i16** %entry15, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %39, i64 1
  %40 = load i16, i16* %arrayidx48, align 2
  %conv49 = zext i16 %40 to i32
  %mul50 = mul nsw i32 255, %conv49
  %shr51 = ashr i32 %mul50, 15
  %idxprom52 = sext i32 %shr51 to i64
  %arrayidx53 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom52
  %41 = load i16, i16* %arrayidx53, align 2
  %conv54 = zext i16 %41 to i32
  %42 = load i16*, i16** %entry15, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %42, i64 1
  %43 = load i16, i16* %arrayidx55, align 2
  %conv56 = zext i16 %43 to i32
  %mul57 = mul nsw i32 255, %conv56
  %and58 = and i32 %mul57, 32767
  %44 = load i16*, i16** %entry15, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %44, i64 1
  %45 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %45 to i32
  %mul61 = mul nsw i32 255, %conv60
  %shr62 = ashr i32 %mul61, 15
  %idxprom63 = sext i32 %shr62 to i64
  %arrayidx64 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom63
  %46 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %46 to i32
  %mul66 = mul nsw i32 %and58, %conv65
  %shr67 = ashr i32 %mul66, 12
  %add68 = add nsw i32 %conv54, %shr67
  %shr69 = ashr i32 %add68, 8
  %and70 = and i32 255, %shr69
  %conv71 = trunc i32 %and70 to i8
  %47 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %47 to i64
  %arrayidx73 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom72
  %green = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx73, i32 0, i32 1
  store i8 %conv71, i8* %green, align 1
  %48 = load i16*, i16** %entry15, align 8
  %49 = load i32, i32* %bgr, align 4
  %idxprom74 = sext i32 %49 to i64
  %arrayidx75 = getelementptr inbounds i16, i16* %48, i64 %idxprom74
  %50 = load i16, i16* %arrayidx75, align 2
  %conv76 = zext i16 %50 to i32
  %mul77 = mul nsw i32 255, %conv76
  %shr78 = ashr i32 %mul77, 15
  %idxprom79 = sext i32 %shr78 to i64
  %arrayidx80 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom79
  %51 = load i16, i16* %arrayidx80, align 2
  %conv81 = zext i16 %51 to i32
  %52 = load i16*, i16** %entry15, align 8
  %53 = load i32, i32* %bgr, align 4
  %idxprom82 = sext i32 %53 to i64
  %arrayidx83 = getelementptr inbounds i16, i16* %52, i64 %idxprom82
  %54 = load i16, i16* %arrayidx83, align 2
  %conv84 = zext i16 %54 to i32
  %mul85 = mul nsw i32 255, %conv84
  %and86 = and i32 %mul85, 32767
  %55 = load i16*, i16** %entry15, align 8
  %56 = load i32, i32* %bgr, align 4
  %idxprom87 = sext i32 %56 to i64
  %arrayidx88 = getelementptr inbounds i16, i16* %55, i64 %idxprom87
  %57 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %57 to i32
  %mul90 = mul nsw i32 255, %conv89
  %shr91 = ashr i32 %mul90, 15
  %idxprom92 = sext i32 %shr91 to i64
  %arrayidx93 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom92
  %58 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %58 to i32
  %mul95 = mul nsw i32 %and86, %conv94
  %shr96 = ashr i32 %mul95, 12
  %add97 = add nsw i32 %conv81, %shr96
  %shr98 = ashr i32 %add97, 8
  %and99 = and i32 255, %shr98
  %conv100 = trunc i32 %and99 to i8
  %59 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %59 to i64
  %arrayidx102 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom101
  %red = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx102, i32 0, i32 0
  store i8 %conv100, i8* %red, align 1
  br label %if.end

if.else:                                          ; preds = %if.then18
  %60 = load i16*, i16** %entry15, align 8
  %61 = load i16, i16* %60, align 2
  %conv103 = zext i16 %61 to i32
  %mul104 = mul nsw i32 255, %conv103
  %shr105 = ashr i32 %mul104, 15
  %idxprom106 = sext i32 %shr105 to i64
  %arrayidx107 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom106
  %62 = load i16, i16* %arrayidx107, align 2
  %conv108 = zext i16 %62 to i32
  %63 = load i16*, i16** %entry15, align 8
  %64 = load i16, i16* %63, align 2
  %conv109 = zext i16 %64 to i32
  %mul110 = mul nsw i32 255, %conv109
  %and111 = and i32 %mul110, 32767
  %65 = load i16*, i16** %entry15, align 8
  %66 = load i16, i16* %65, align 2
  %conv112 = zext i16 %66 to i32
  %mul113 = mul nsw i32 255, %conv112
  %shr114 = ashr i32 %mul113, 15
  %idxprom115 = sext i32 %shr114 to i64
  %arrayidx116 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom115
  %67 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %67 to i32
  %mul118 = mul nsw i32 %and111, %conv117
  %shr119 = ashr i32 %mul118, 12
  %add120 = add nsw i32 %conv108, %shr119
  %shr121 = ashr i32 %add120, 8
  %and122 = and i32 255, %shr121
  %conv123 = trunc i32 %and122 to i8
  %68 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %68 to i64
  %arrayidx125 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom124
  %green126 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx125, i32 0, i32 1
  store i8 %conv123, i8* %green126, align 1
  %69 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %69 to i64
  %arrayidx128 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom127
  %red129 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx128, i32 0, i32 0
  store i8 %conv123, i8* %red129, align 1
  %70 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %70 to i64
  %arrayidx131 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom130
  %blue132 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx131, i32 0, i32 2
  store i8 %conv123, i8* %blue132, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then20
  br label %if.end211

if.else133:                                       ; preds = %if.then
  %71 = load i16*, i16** %entry15, align 8
  %72 = load i32, i32* %afirst, align 4
  %tobool = icmp ne i32 %72, 0
  br i1 %tobool, label %cond.true134, label %cond.false135

cond.true134:                                     ; preds = %if.else133
  br label %cond.end136

cond.false135:                                    ; preds = %if.else133
  %73 = load i32, i32* %channels, align 4
  %sub = sub i32 %73, 1
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false135, %cond.true134
  %cond137 = phi i32 [ 0, %cond.true134 ], [ %sub, %cond.false135 ]
  %idxprom138 = zext i32 %cond137 to i64
  %arrayidx139 = getelementptr inbounds i16, i16* %71, i64 %idxprom138
  %74 = load i16, i16* %arrayidx139, align 2
  store i16 %74, i16* %alpha, align 2
  %75 = load i16, i16* %alpha, align 2
  %conv140 = zext i16 %75 to i32
  %mul141 = mul i32 %conv140, 255
  %add142 = add i32 %mul141, 32895
  %shr143 = lshr i32 %add142, 16
  %conv144 = trunc i32 %shr143 to i8
  store i8 %conv144, i8* %alphabyte, align 1
  store i32 0, i32* %reciprocal, align 4
  %76 = load i8, i8* %alphabyte, align 1
  %conv145 = zext i8 %76 to i32
  %cmp146 = icmp sgt i32 %conv145, 0
  br i1 %cmp146, label %land.lhs.true, label %if.end156

land.lhs.true:                                    ; preds = %cond.end136
  %77 = load i8, i8* %alphabyte, align 1
  %conv148 = zext i8 %77 to i32
  %cmp149 = icmp slt i32 %conv148, 255
  br i1 %cmp149, label %if.then151, label %if.end156

if.then151:                                       ; preds = %land.lhs.true
  %78 = load i16, i16* %alpha, align 2
  %conv152 = zext i16 %78 to i32
  %shr153 = ashr i32 %conv152, 1
  %add154 = add nsw i32 2139062400, %shr153
  %79 = load i16, i16* %alpha, align 2
  %conv155 = zext i16 %79 to i32
  %div = sdiv i32 %add154, %conv155
  store i32 %div, i32* %reciprocal, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then151, %land.lhs.true, %cond.end136
  %80 = load i8, i8* %alphabyte, align 1
  %81 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %81 to i64
  %arrayidx158 = getelementptr inbounds [256 x i8], [256 x i8]* %tRNS, i64 0, i64 %idxprom157
  store i8 %80, i8* %arrayidx158, align 1
  %82 = load i8, i8* %alphabyte, align 1
  %conv159 = zext i8 %82 to i32
  %cmp160 = icmp slt i32 %conv159, 255
  br i1 %cmp160, label %if.then162, label %if.end164

if.then162:                                       ; preds = %if.end156
  %83 = load i32, i32* %i, align 4
  %add163 = add nsw i32 %83, 1
  store i32 %add163, i32* %num_trans, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then162, %if.end156
  %84 = load i32, i32* %channels, align 4
  %cmp165 = icmp uge i32 %84, 3
  br i1 %cmp165, label %if.then167, label %if.else195

if.then167:                                       ; preds = %if.end164
  %85 = load i16*, i16** %entry15, align 8
  %86 = load i32, i32* %afirst, align 4
  %87 = load i32, i32* %bgr, align 4
  %xor168 = xor i32 2, %87
  %add169 = add nsw i32 %86, %xor168
  %idxprom170 = sext i32 %add169 to i64
  %arrayidx171 = getelementptr inbounds i16, i16* %85, i64 %idxprom170
  %88 = load i16, i16* %arrayidx171, align 2
  %conv172 = zext i16 %88 to i32
  %89 = load i16, i16* %alpha, align 2
  %conv173 = zext i16 %89 to i32
  %90 = load i32, i32* %reciprocal, align 4
  %call = call zeroext i8 @png_unpremultiply(i32 %conv172, i32 %conv173, i32 %90)
  %91 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %91 to i64
  %arrayidx175 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom174
  %blue176 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx175, i32 0, i32 2
  store i8 %call, i8* %blue176, align 1
  %92 = load i16*, i16** %entry15, align 8
  %93 = load i32, i32* %afirst, align 4
  %add177 = add nsw i32 %93, 1
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds i16, i16* %92, i64 %idxprom178
  %94 = load i16, i16* %arrayidx179, align 2
  %conv180 = zext i16 %94 to i32
  %95 = load i16, i16* %alpha, align 2
  %conv181 = zext i16 %95 to i32
  %96 = load i32, i32* %reciprocal, align 4
  %call182 = call zeroext i8 @png_unpremultiply(i32 %conv180, i32 %conv181, i32 %96)
  %97 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %97 to i64
  %arrayidx184 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom183
  %green185 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx184, i32 0, i32 1
  store i8 %call182, i8* %green185, align 1
  %98 = load i16*, i16** %entry15, align 8
  %99 = load i32, i32* %afirst, align 4
  %100 = load i32, i32* %bgr, align 4
  %add186 = add nsw i32 %99, %100
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds i16, i16* %98, i64 %idxprom187
  %101 = load i16, i16* %arrayidx188, align 2
  %conv189 = zext i16 %101 to i32
  %102 = load i16, i16* %alpha, align 2
  %conv190 = zext i16 %102 to i32
  %103 = load i32, i32* %reciprocal, align 4
  %call191 = call zeroext i8 @png_unpremultiply(i32 %conv189, i32 %conv190, i32 %103)
  %104 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %104 to i64
  %arrayidx193 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom192
  %red194 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx193, i32 0, i32 0
  store i8 %call191, i8* %red194, align 1
  br label %if.end210

if.else195:                                       ; preds = %if.end164
  %105 = load i16*, i16** %entry15, align 8
  %106 = load i32, i32* %afirst, align 4
  %idxprom196 = sext i32 %106 to i64
  %arrayidx197 = getelementptr inbounds i16, i16* %105, i64 %idxprom196
  %107 = load i16, i16* %arrayidx197, align 2
  %conv198 = zext i16 %107 to i32
  %108 = load i16, i16* %alpha, align 2
  %conv199 = zext i16 %108 to i32
  %109 = load i32, i32* %reciprocal, align 4
  %call200 = call zeroext i8 @png_unpremultiply(i32 %conv198, i32 %conv199, i32 %109)
  %110 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %110 to i64
  %arrayidx202 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom201
  %green203 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx202, i32 0, i32 1
  store i8 %call200, i8* %green203, align 1
  %111 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %111 to i64
  %arrayidx205 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom204
  %red206 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx205, i32 0, i32 0
  store i8 %call200, i8* %red206, align 1
  %112 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %112 to i64
  %arrayidx208 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom207
  %blue209 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx208, i32 0, i32 2
  store i8 %call200, i8* %blue209, align 1
  br label %if.end210

if.end210:                                        ; preds = %if.else195, %if.then167
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %if.end
  br label %if.end277

if.else212:                                       ; preds = %for.body
  %113 = load i8*, i8** %cmap, align 8
  store i8* %113, i8** %entry213, align 8
  %114 = load i32, i32* %i, align 4
  %115 = load i32, i32* %channels, align 4
  %mul214 = mul i32 %114, %115
  %116 = load i8*, i8** %entry213, align 8
  %idx.ext215 = zext i32 %mul214 to i64
  %add.ptr216 = getelementptr inbounds i8, i8* %116, i64 %idx.ext215
  store i8* %add.ptr216, i8** %entry213, align 8
  %117 = load i32, i32* %channels, align 4
  switch i32 %117, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb231
    i32 2, label %sw.bb251
    i32 1, label %sw.bb265
  ]

sw.bb:                                            ; preds = %if.else212
  %118 = load i8*, i8** %entry213, align 8
  %119 = load i32, i32* %afirst, align 4
  %tobool217 = icmp ne i32 %119, 0
  %120 = zext i1 %tobool217 to i64
  %cond218 = select i1 %tobool217, i32 0, i32 3
  %idxprom219 = sext i32 %cond218 to i64
  %arrayidx220 = getelementptr inbounds i8, i8* %118, i64 %idxprom219
  %121 = load i8, i8* %arrayidx220, align 1
  %122 = load i32, i32* %i, align 4
  %idxprom221 = sext i32 %122 to i64
  %arrayidx222 = getelementptr inbounds [256 x i8], [256 x i8]* %tRNS, i64 0, i64 %idxprom221
  store i8 %121, i8* %arrayidx222, align 1
  %123 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %123 to i64
  %arrayidx224 = getelementptr inbounds [256 x i8], [256 x i8]* %tRNS, i64 0, i64 %idxprom223
  %124 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %124 to i32
  %cmp226 = icmp slt i32 %conv225, 255
  br i1 %cmp226, label %if.then228, label %if.end230

if.then228:                                       ; preds = %sw.bb
  %125 = load i32, i32* %i, align 4
  %add229 = add nsw i32 %125, 1
  store i32 %add229, i32* %num_trans, align 4
  br label %if.end230

if.end230:                                        ; preds = %if.then228, %sw.bb
  br label %sw.bb231

sw.bb231:                                         ; preds = %if.else212, %if.end230
  %126 = load i8*, i8** %entry213, align 8
  %127 = load i32, i32* %afirst, align 4
  %128 = load i32, i32* %bgr, align 4
  %xor232 = xor i32 2, %128
  %add233 = add nsw i32 %127, %xor232
  %idxprom234 = sext i32 %add233 to i64
  %arrayidx235 = getelementptr inbounds i8, i8* %126, i64 %idxprom234
  %129 = load i8, i8* %arrayidx235, align 1
  %130 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %130 to i64
  %arrayidx237 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom236
  %blue238 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx237, i32 0, i32 2
  store i8 %129, i8* %blue238, align 1
  %131 = load i8*, i8** %entry213, align 8
  %132 = load i32, i32* %afirst, align 4
  %add239 = add nsw i32 %132, 1
  %idxprom240 = sext i32 %add239 to i64
  %arrayidx241 = getelementptr inbounds i8, i8* %131, i64 %idxprom240
  %133 = load i8, i8* %arrayidx241, align 1
  %134 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %134 to i64
  %arrayidx243 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom242
  %green244 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx243, i32 0, i32 1
  store i8 %133, i8* %green244, align 1
  %135 = load i8*, i8** %entry213, align 8
  %136 = load i32, i32* %afirst, align 4
  %137 = load i32, i32* %bgr, align 4
  %add245 = add nsw i32 %136, %137
  %idxprom246 = sext i32 %add245 to i64
  %arrayidx247 = getelementptr inbounds i8, i8* %135, i64 %idxprom246
  %138 = load i8, i8* %arrayidx247, align 1
  %139 = load i32, i32* %i, align 4
  %idxprom248 = sext i32 %139 to i64
  %arrayidx249 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom248
  %red250 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx249, i32 0, i32 0
  store i8 %138, i8* %red250, align 1
  br label %sw.epilog

sw.bb251:                                         ; preds = %if.else212
  %140 = load i8*, i8** %entry213, align 8
  %141 = load i32, i32* %afirst, align 4
  %xor252 = xor i32 1, %141
  %idxprom253 = sext i32 %xor252 to i64
  %arrayidx254 = getelementptr inbounds i8, i8* %140, i64 %idxprom253
  %142 = load i8, i8* %arrayidx254, align 1
  %143 = load i32, i32* %i, align 4
  %idxprom255 = sext i32 %143 to i64
  %arrayidx256 = getelementptr inbounds [256 x i8], [256 x i8]* %tRNS, i64 0, i64 %idxprom255
  store i8 %142, i8* %arrayidx256, align 1
  %144 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %144 to i64
  %arrayidx258 = getelementptr inbounds [256 x i8], [256 x i8]* %tRNS, i64 0, i64 %idxprom257
  %145 = load i8, i8* %arrayidx258, align 1
  %conv259 = zext i8 %145 to i32
  %cmp260 = icmp slt i32 %conv259, 255
  br i1 %cmp260, label %if.then262, label %if.end264

if.then262:                                       ; preds = %sw.bb251
  %146 = load i32, i32* %i, align 4
  %add263 = add nsw i32 %146, 1
  store i32 %add263, i32* %num_trans, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.then262, %sw.bb251
  br label %sw.bb265

sw.bb265:                                         ; preds = %if.else212, %if.end264
  %147 = load i8*, i8** %entry213, align 8
  %148 = load i32, i32* %afirst, align 4
  %idxprom266 = sext i32 %148 to i64
  %arrayidx267 = getelementptr inbounds i8, i8* %147, i64 %idxprom266
  %149 = load i8, i8* %arrayidx267, align 1
  %150 = load i32, i32* %i, align 4
  %idxprom268 = sext i32 %150 to i64
  %arrayidx269 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom268
  %green270 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx269, i32 0, i32 1
  store i8 %149, i8* %green270, align 1
  %151 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %151 to i64
  %arrayidx272 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom271
  %red273 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx272, i32 0, i32 0
  store i8 %149, i8* %red273, align 1
  %152 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %152 to i64
  %arrayidx275 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 %idxprom274
  %blue276 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %arrayidx275, i32 0, i32 2
  store i8 %149, i8* %blue276, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.else212
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb265, %sw.bb231
  br label %if.end277

if.end277:                                        ; preds = %sw.epilog, %if.end211
  br label %for.inc

for.inc:                                          ; preds = %if.end277
  %153 = load i32, i32* %i, align 4
  %inc = add nsw i32 %153, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %154 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %154, i32 0, i32 0
  %155 = load %struct.png_control*, %struct.png_control** %opaque, align 8
  %png_ptr = getelementptr inbounds %struct.png_control, %struct.png_control* %155, i32 0, i32 0
  %156 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %157 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque278 = getelementptr inbounds %struct.png_image, %struct.png_image* %157, i32 0, i32 0
  %158 = load %struct.png_control*, %struct.png_control** %opaque278, align 8
  %info_ptr = getelementptr inbounds %struct.png_control, %struct.png_control* %158, i32 0, i32 1
  %159 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr, align 8
  %arraydecay279 = getelementptr inbounds [256 x %struct.png_color_struct], [256 x %struct.png_color_struct]* %palette, i64 0, i64 0
  %160 = load i32, i32* %entries, align 4
  call void @png_set_PLTE(%struct.png_struct_def* %156, %struct.png_info_def* %159, %struct.png_color_struct* %arraydecay279, i32 %160)
  %161 = load i32, i32* %num_trans, align 4
  %cmp280 = icmp sgt i32 %161, 0
  br i1 %cmp280, label %if.then282, label %if.end288

if.then282:                                       ; preds = %for.end
  %162 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque283 = getelementptr inbounds %struct.png_image, %struct.png_image* %162, i32 0, i32 0
  %163 = load %struct.png_control*, %struct.png_control** %opaque283, align 8
  %png_ptr284 = getelementptr inbounds %struct.png_control, %struct.png_control* %163, i32 0, i32 0
  %164 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr284, align 8
  %165 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque285 = getelementptr inbounds %struct.png_image, %struct.png_image* %165, i32 0, i32 0
  %166 = load %struct.png_control*, %struct.png_control** %opaque285, align 8
  %info_ptr286 = getelementptr inbounds %struct.png_control, %struct.png_control* %166, i32 0, i32 1
  %167 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr286, align 8
  %arraydecay287 = getelementptr inbounds [256 x i8], [256 x i8]* %tRNS, i64 0, i64 0
  %168 = load i32, i32* %num_trans, align 4
  call void @png_set_tRNS(%struct.png_struct_def* %164, %struct.png_info_def* %167, i8* %arraydecay287, i32 %168, %struct.png_color_16_struct* null)
  br label %if.end288

if.end288:                                        ; preds = %if.then282, %for.end
  %169 = load i32, i32* %entries, align 4
  %170 = load %struct.png_image*, %struct.png_image** %image, align 8
  %colormap_entries289 = getelementptr inbounds %struct.png_image, %struct.png_image* %170, i32 0, i32 6
  store i32 %169, i32* %colormap_entries289, align 4
  ret void
}

declare dso_local void @png_set_gAMA_fixed(%struct.png_struct_def*, %struct.png_info_def*, i32) #1

declare dso_local void @png_set_cHRM_fixed(%struct.png_struct_def*, %struct.png_info_def*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local void @png_set_sRGB(%struct.png_struct_def*, %struct.png_info_def*, i32) #1

declare dso_local noalias i8* @png_malloc(%struct.png_struct_def*, i64) #1

declare dso_local i64 @png_get_rowbytes(%struct.png_struct_def*, %struct.png_info_def*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_write_image_16bit(i8* %argument) #0 {
entry:
  %argument.addr = alloca i8*, align 8
  %display = alloca %struct.png_image_write_control*, align 8
  %image = alloca %struct.png_image*, align 8
  %png_ptr = alloca %struct.png_struct_def*, align 8
  %input_row = alloca i16*, align 8
  %output_row = alloca i16*, align 8
  %row_end = alloca i16*, align 8
  %channels = alloca i32, align 4
  %aindex = alloca i32, align 4
  %y = alloca i32, align 4
  %in_ptr = alloca i16*, align 8
  %out_ptr = alloca i16*, align 8
  %alpha = alloca i16, align 2
  %reciprocal = alloca i32, align 4
  %c = alloca i32, align 4
  %component = alloca i16, align 2
  %calc = alloca i32, align 4
  store i8* %argument, i8** %argument.addr, align 8
  %0 = load i8*, i8** %argument.addr, align 8
  %1 = bitcast i8* %0 to %struct.png_image_write_control*
  store %struct.png_image_write_control* %1, %struct.png_image_write_control** %display, align 8
  %2 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %image1 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %2, i32 0, i32 0
  %3 = load %struct.png_image*, %struct.png_image** %image1, align 8
  store %struct.png_image* %3, %struct.png_image** %image, align 8
  %4 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %4, i32 0, i32 0
  %5 = load %struct.png_control*, %struct.png_control** %opaque, align 8
  %png_ptr2 = getelementptr inbounds %struct.png_control, %struct.png_control* %5, i32 0, i32 0
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr2, align 8
  store %struct.png_struct_def* %6, %struct.png_struct_def** %png_ptr, align 8
  %7 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %first_row = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %7, i32 0, i32 5
  %8 = load i8*, i8** %first_row, align 8
  %9 = bitcast i8* %8 to i16*
  store i16* %9, i16** %input_row, align 8
  %10 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %local_row = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %10, i32 0, i32 7
  %11 = load i8*, i8** %local_row, align 8
  %12 = bitcast i8* %11 to i16*
  store i16* %12, i16** %output_row, align 8
  %13 = load %struct.png_image*, %struct.png_image** %image, align 8
  %format = getelementptr inbounds %struct.png_image, %struct.png_image* %13, i32 0, i32 4
  %14 = load i32, i32* %format, align 4
  %and = and i32 %14, 2
  %cmp = icmp ne i32 %and, 0
  %15 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 3, i32 1
  store i32 %cond, i32* %channels, align 4
  store i32 0, i32* %aindex, align 4
  %16 = load %struct.png_image*, %struct.png_image** %image, align 8
  %height = getelementptr inbounds %struct.png_image, %struct.png_image* %16, i32 0, i32 3
  %17 = load i32, i32* %height, align 8
  store i32 %17, i32* %y, align 4
  %18 = load %struct.png_image*, %struct.png_image** %image, align 8
  %format3 = getelementptr inbounds %struct.png_image, %struct.png_image* %18, i32 0, i32 4
  %19 = load i32, i32* %format3, align 4
  %and4 = and i32 %19, 1
  %cmp5 = icmp ne i32 %and4, 0
  br i1 %cmp5, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %20 = load %struct.png_image*, %struct.png_image** %image, align 8
  %format6 = getelementptr inbounds %struct.png_image, %struct.png_image* %20, i32 0, i32 4
  %21 = load i32, i32* %format6, align 4
  %and7 = and i32 %21, 32
  %cmp8 = icmp ne i32 %and7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  store i32 -1, i32* %aindex, align 4
  %22 = load i16*, i16** %input_row, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %incdec.ptr, i16** %input_row, align 8
  %23 = load i16*, i16** %output_row, align 8
  %incdec.ptr10 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr10, i16** %output_row, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %24 = load i32, i32* %channels, align 4
  store i32 %24, i32* %aindex, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  br label %if.end12

if.else11:                                        ; preds = %entry
  %25 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  call void @png_error(%struct.png_struct_def* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0)) #7
  unreachable

if.end12:                                         ; preds = %if.end
  %26 = load i16*, i16** %output_row, align 8
  %27 = load %struct.png_image*, %struct.png_image** %image, align 8
  %width = getelementptr inbounds %struct.png_image, %struct.png_image* %27, i32 0, i32 2
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %channels, align 4
  %add = add i32 %29, 1
  %mul = mul i32 %28, %add
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %26, i64 %idx.ext
  store i16* %add.ptr, i16** %row_end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %30 = load i32, i32* %y, align 4
  %cmp13 = icmp ugt i32 %30, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i16*, i16** %input_row, align 8
  store i16* %31, i16** %in_ptr, align 8
  %32 = load i16*, i16** %output_row, align 8
  store i16* %32, i16** %out_ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %for.body
  %33 = load i16*, i16** %out_ptr, align 8
  %34 = load i16*, i16** %row_end, align 8
  %cmp14 = icmp ult i16* %33, %34
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i16*, i16** %in_ptr, align 8
  %36 = load i32, i32* %aindex, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds i16, i16* %35, i64 %idxprom
  %37 = load i16, i16* %arrayidx, align 2
  store i16 %37, i16* %alpha, align 2
  store i32 0, i32* %reciprocal, align 4
  %38 = load i16, i16* %alpha, align 2
  %39 = load i16*, i16** %out_ptr, align 8
  %40 = load i32, i32* %aindex, align 4
  %idxprom15 = sext i32 %40 to i64
  %arrayidx16 = getelementptr inbounds i16, i16* %39, i64 %idxprom15
  store i16 %38, i16* %arrayidx16, align 2
  %41 = load i16, i16* %alpha, align 2
  %conv = zext i16 %41 to i32
  %cmp17 = icmp sgt i32 %conv, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %while.body
  %42 = load i16, i16* %alpha, align 2
  %conv19 = zext i16 %42 to i32
  %cmp20 = icmp slt i32 %conv19, 65535
  br i1 %cmp20, label %if.then22, label %if.end26

if.then22:                                        ; preds = %land.lhs.true
  %43 = load i16, i16* %alpha, align 2
  %conv23 = zext i16 %43 to i32
  %shr = ashr i32 %conv23, 1
  %add24 = add nsw i32 2147450880, %shr
  %44 = load i16, i16* %alpha, align 2
  %conv25 = zext i16 %44 to i32
  %div = sdiv i32 %add24, %conv25
  store i32 %div, i32* %reciprocal, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %land.lhs.true, %while.body
  %45 = load i32, i32* %channels, align 4
  store i32 %45, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end26
  %46 = load i16*, i16** %in_ptr, align 8
  %incdec.ptr27 = getelementptr inbounds i16, i16* %46, i32 1
  store i16* %incdec.ptr27, i16** %in_ptr, align 8
  %47 = load i16, i16* %46, align 2
  store i16 %47, i16* %component, align 2
  %48 = load i16, i16* %component, align 2
  %conv28 = zext i16 %48 to i32
  %49 = load i16, i16* %alpha, align 2
  %conv29 = zext i16 %49 to i32
  %cmp30 = icmp sge i32 %conv28, %conv29
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %do.body
  store i16 -1, i16* %component, align 2
  br label %if.end48

if.else33:                                        ; preds = %do.body
  %50 = load i16, i16* %component, align 2
  %conv34 = zext i16 %50 to i32
  %cmp35 = icmp sgt i32 %conv34, 0
  br i1 %cmp35, label %land.lhs.true37, label %if.end47

land.lhs.true37:                                  ; preds = %if.else33
  %51 = load i16, i16* %alpha, align 2
  %conv38 = zext i16 %51 to i32
  %cmp39 = icmp slt i32 %conv38, 65535
  br i1 %cmp39, label %if.then41, label %if.end47

if.then41:                                        ; preds = %land.lhs.true37
  %52 = load i16, i16* %component, align 2
  %conv42 = zext i16 %52 to i32
  %53 = load i32, i32* %reciprocal, align 4
  %mul43 = mul i32 %conv42, %53
  store i32 %mul43, i32* %calc, align 4
  %54 = load i32, i32* %calc, align 4
  %add44 = add i32 %54, 16384
  store i32 %add44, i32* %calc, align 4
  %55 = load i32, i32* %calc, align 4
  %shr45 = lshr i32 %55, 15
  %conv46 = trunc i32 %shr45 to i16
  store i16 %conv46, i16* %component, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %land.lhs.true37, %if.else33
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then32
  %56 = load i16, i16* %component, align 2
  %57 = load i16*, i16** %out_ptr, align 8
  %incdec.ptr49 = getelementptr inbounds i16, i16* %57, i32 1
  store i16* %incdec.ptr49, i16** %out_ptr, align 8
  store i16 %56, i16* %57, align 2
  br label %do.cond

do.cond:                                          ; preds = %if.end48
  %58 = load i32, i32* %c, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %c, align 4
  %cmp50 = icmp sgt i32 %dec, 0
  br i1 %cmp50, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  %59 = load i16*, i16** %in_ptr, align 8
  %incdec.ptr52 = getelementptr inbounds i16, i16* %59, i32 1
  store i16* %incdec.ptr52, i16** %in_ptr, align 8
  %60 = load i16*, i16** %out_ptr, align 8
  %incdec.ptr53 = getelementptr inbounds i16, i16* %60, i32 1
  store i16* %incdec.ptr53, i16** %out_ptr, align 8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %61 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %62 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %local_row54 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %62, i32 0, i32 7
  %63 = load i8*, i8** %local_row54, align 8
  call void @png_write_row(%struct.png_struct_def* %61, i8* %63)
  %64 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %row_bytes = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %64, i32 0, i32 6
  %65 = load i64, i64* %row_bytes, align 8
  %conv55 = trunc i64 %65 to i16
  %conv56 = zext i16 %conv55 to i64
  %div57 = udiv i64 %conv56, 2
  %66 = load i16*, i16** %input_row, align 8
  %add.ptr58 = getelementptr inbounds i16, i16* %66, i64 %div57
  store i16* %add.ptr58, i16** %input_row, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %67 = load i32, i32* %y, align 4
  %dec59 = add i32 %67, -1
  store i32 %dec59, i32* %y, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_write_image_8bit(i8* %argument) #0 {
entry:
  %argument.addr = alloca i8*, align 8
  %display = alloca %struct.png_image_write_control*, align 8
  %image = alloca %struct.png_image*, align 8
  %png_ptr = alloca %struct.png_struct_def*, align 8
  %input_row = alloca i16*, align 8
  %output_row = alloca i8*, align 8
  %y = alloca i32, align 4
  %channels = alloca i32, align 4
  %row_end = alloca i8*, align 8
  %aindex = alloca i32, align 4
  %in_ptr = alloca i16*, align 8
  %out_ptr = alloca i8*, align 8
  %alpha = alloca i16, align 2
  %alphabyte = alloca i8, align 1
  %reciprocal = alloca i32, align 4
  %c = alloca i32, align 4
  %row_end45 = alloca i8*, align 8
  %in_ptr54 = alloca i16*, align 8
  %out_ptr55 = alloca i8*, align 8
  %component = alloca i32, align 4
  store i8* %argument, i8** %argument.addr, align 8
  %0 = load i8*, i8** %argument.addr, align 8
  %1 = bitcast i8* %0 to %struct.png_image_write_control*
  store %struct.png_image_write_control* %1, %struct.png_image_write_control** %display, align 8
  %2 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %image1 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %2, i32 0, i32 0
  %3 = load %struct.png_image*, %struct.png_image** %image1, align 8
  store %struct.png_image* %3, %struct.png_image** %image, align 8
  %4 = load %struct.png_image*, %struct.png_image** %image, align 8
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %4, i32 0, i32 0
  %5 = load %struct.png_control*, %struct.png_control** %opaque, align 8
  %png_ptr2 = getelementptr inbounds %struct.png_control, %struct.png_control* %5, i32 0, i32 0
  %6 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr2, align 8
  store %struct.png_struct_def* %6, %struct.png_struct_def** %png_ptr, align 8
  %7 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %first_row = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %7, i32 0, i32 5
  %8 = load i8*, i8** %first_row, align 8
  %9 = bitcast i8* %8 to i16*
  store i16* %9, i16** %input_row, align 8
  %10 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %local_row = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %10, i32 0, i32 7
  %11 = load i8*, i8** %local_row, align 8
  store i8* %11, i8** %output_row, align 8
  %12 = load %struct.png_image*, %struct.png_image** %image, align 8
  %height = getelementptr inbounds %struct.png_image, %struct.png_image* %12, i32 0, i32 3
  %13 = load i32, i32* %height, align 8
  store i32 %13, i32* %y, align 4
  %14 = load %struct.png_image*, %struct.png_image** %image, align 8
  %format = getelementptr inbounds %struct.png_image, %struct.png_image* %14, i32 0, i32 4
  %15 = load i32, i32* %format, align 4
  %and = and i32 %15, 2
  %cmp = icmp ne i32 %and, 0
  %16 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 3, i32 1
  store i32 %cond, i32* %channels, align 4
  %17 = load %struct.png_image*, %struct.png_image** %image, align 8
  %format3 = getelementptr inbounds %struct.png_image, %struct.png_image* %17, i32 0, i32 4
  %18 = load i32, i32* %format3, align 4
  %and4 = and i32 %18, 1
  %cmp5 = icmp ne i32 %and4, 0
  br i1 %cmp5, label %if.then, label %if.else44

if.then:                                          ; preds = %entry
  %19 = load %struct.png_image*, %struct.png_image** %image, align 8
  %format6 = getelementptr inbounds %struct.png_image, %struct.png_image* %19, i32 0, i32 4
  %20 = load i32, i32* %format6, align 4
  %and7 = and i32 %20, 32
  %cmp8 = icmp ne i32 %and7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  store i32 -1, i32* %aindex, align 4
  %21 = load i16*, i16** %input_row, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr, i16** %input_row, align 8
  %22 = load i8*, i8** %output_row, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr10, i8** %output_row, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %23 = load i32, i32* %channels, align 4
  store i32 %23, i32* %aindex, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %24 = load i8*, i8** %output_row, align 8
  %25 = load %struct.png_image*, %struct.png_image** %image, align 8
  %width = getelementptr inbounds %struct.png_image, %struct.png_image* %25, i32 0, i32 2
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %channels, align 4
  %add = add i32 %27, 1
  %mul = mul i32 %26, %add
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %row_end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %28 = load i32, i32* %y, align 4
  %cmp11 = icmp ugt i32 %28, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i16*, i16** %input_row, align 8
  store i16* %29, i16** %in_ptr, align 8
  %30 = load i8*, i8** %output_row, align 8
  store i8* %30, i8** %out_ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %for.body
  %31 = load i8*, i8** %out_ptr, align 8
  %32 = load i8*, i8** %row_end, align 8
  %33 = ptrtoint i8* %31 to i32
  %34 = ptrtoint i8* %32 to i32
  %cmp12 = icmp ult i32 %33, %34
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i16*, i16** %in_ptr, align 8
  %36 = load i32, i32* %aindex, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds i16, i16* %35, i64 %idxprom
  %37 = load i16, i16* %arrayidx, align 2
  store i16 %37, i16* %alpha, align 2
  %38 = load i16, i16* %alpha, align 2
  %conv = zext i16 %38 to i32
  %mul13 = mul i32 %conv, 255
  %add14 = add i32 %mul13, 32895
  %shr = lshr i32 %add14, 16
  %conv15 = trunc i32 %shr to i8
  store i8 %conv15, i8* %alphabyte, align 1
  store i32 0, i32* %reciprocal, align 4
  %39 = load i8, i8* %alphabyte, align 1
  %40 = load i8*, i8** %out_ptr, align 8
  %41 = load i32, i32* %aindex, align 4
  %idxprom16 = sext i32 %41 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %40, i64 %idxprom16
  store i8 %39, i8* %arrayidx17, align 1
  %42 = load i8, i8* %alphabyte, align 1
  %conv18 = zext i8 %42 to i32
  %cmp19 = icmp sgt i32 %conv18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %while.body
  %43 = load i8, i8* %alphabyte, align 1
  %conv21 = zext i8 %43 to i32
  %cmp22 = icmp slt i32 %conv21, 255
  br i1 %cmp22, label %if.then24, label %if.end29

if.then24:                                        ; preds = %land.lhs.true
  %44 = load i16, i16* %alpha, align 2
  %conv25 = zext i16 %44 to i32
  %shr26 = ashr i32 %conv25, 1
  %add27 = add nsw i32 2139062400, %shr26
  %45 = load i16, i16* %alpha, align 2
  %conv28 = zext i16 %45 to i32
  %div = sdiv i32 %add27, %conv28
  store i32 %div, i32* %reciprocal, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %land.lhs.true, %while.body
  %46 = load i32, i32* %channels, align 4
  store i32 %46, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end29
  %47 = load i16*, i16** %in_ptr, align 8
  %incdec.ptr30 = getelementptr inbounds i16, i16* %47, i32 1
  store i16* %incdec.ptr30, i16** %in_ptr, align 8
  %48 = load i16, i16* %47, align 2
  %conv31 = zext i16 %48 to i32
  %49 = load i16, i16* %alpha, align 2
  %conv32 = zext i16 %49 to i32
  %50 = load i32, i32* %reciprocal, align 4
  %call = call zeroext i8 @png_unpremultiply(i32 %conv31, i32 %conv32, i32 %50)
  %51 = load i8*, i8** %out_ptr, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr33, i8** %out_ptr, align 8
  store i8 %call, i8* %51, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %52 = load i32, i32* %c, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %c, align 4
  %cmp34 = icmp sgt i32 %dec, 0
  br i1 %cmp34, label %do.body, label %do.end, !llvm.loop !22

do.end:                                           ; preds = %do.cond
  %53 = load i16*, i16** %in_ptr, align 8
  %incdec.ptr36 = getelementptr inbounds i16, i16* %53, i32 1
  store i16* %incdec.ptr36, i16** %in_ptr, align 8
  %54 = load i8*, i8** %out_ptr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr37, i8** %out_ptr, align 8
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %55 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %56 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %local_row38 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %56, i32 0, i32 7
  %57 = load i8*, i8** %local_row38, align 8
  call void @png_write_row(%struct.png_struct_def* %55, i8* %57)
  %58 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %row_bytes = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %58, i32 0, i32 6
  %59 = load i64, i64* %row_bytes, align 8
  %conv39 = trunc i64 %59 to i16
  %conv40 = zext i16 %conv39 to i64
  %div41 = udiv i64 %conv40, 2
  %60 = load i16*, i16** %input_row, align 8
  %add.ptr42 = getelementptr inbounds i16, i16* %60, i64 %div41
  store i16* %add.ptr42, i16** %input_row, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %61 = load i32, i32* %y, align 4
  %dec43 = add i32 %61, -1
  store i32 %dec43, i32* %y, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  br label %if.end88

if.else44:                                        ; preds = %entry
  %62 = load i8*, i8** %output_row, align 8
  %63 = load %struct.png_image*, %struct.png_image** %image, align 8
  %width46 = getelementptr inbounds %struct.png_image, %struct.png_image* %63, i32 0, i32 2
  %64 = load i32, i32* %width46, align 4
  %65 = load i32, i32* %channels, align 4
  %mul47 = mul i32 %64, %65
  %idx.ext48 = zext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %62, i64 %idx.ext48
  store i8* %add.ptr49, i8** %row_end45, align 8
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc85, %if.else44
  %66 = load i32, i32* %y, align 4
  %cmp51 = icmp ugt i32 %66, 0
  br i1 %cmp51, label %for.body53, label %for.end87

for.body53:                                       ; preds = %for.cond50
  %67 = load i16*, i16** %input_row, align 8
  store i16* %67, i16** %in_ptr54, align 8
  %68 = load i8*, i8** %output_row, align 8
  store i8* %68, i8** %out_ptr55, align 8
  br label %while.cond56

while.cond56:                                     ; preds = %while.body59, %for.body53
  %69 = load i8*, i8** %out_ptr55, align 8
  %70 = load i8*, i8** %row_end45, align 8
  %71 = ptrtoint i8* %69 to i32
  %72 = ptrtoint i8* %70 to i32
  %cmp57 = icmp ult i32 %71, %72
  br i1 %cmp57, label %while.body59, label %while.end79

while.body59:                                     ; preds = %while.cond56
  %73 = load i16*, i16** %in_ptr54, align 8
  %incdec.ptr60 = getelementptr inbounds i16, i16* %73, i32 1
  store i16* %incdec.ptr60, i16** %in_ptr54, align 8
  %74 = load i16, i16* %73, align 2
  %conv61 = zext i16 %74 to i32
  store i32 %conv61, i32* %component, align 4
  %75 = load i32, i32* %component, align 4
  %mul62 = mul i32 %75, 255
  store i32 %mul62, i32* %component, align 4
  %76 = load i32, i32* %component, align 4
  %shr63 = lshr i32 %76, 15
  %idxprom64 = zext i32 %shr63 to i64
  %arrayidx65 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom64
  %77 = load i16, i16* %arrayidx65, align 2
  %conv66 = zext i16 %77 to i32
  %78 = load i32, i32* %component, align 4
  %and67 = and i32 %78, 32767
  %79 = load i32, i32* %component, align 4
  %shr68 = lshr i32 %79, 15
  %idxprom69 = zext i32 %shr68 to i64
  %arrayidx70 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom69
  %80 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %80 to i32
  %mul72 = mul i32 %and67, %conv71
  %shr73 = lshr i32 %mul72, 12
  %add74 = add i32 %conv66, %shr73
  %shr75 = lshr i32 %add74, 8
  %and76 = and i32 255, %shr75
  %conv77 = trunc i32 %and76 to i8
  %81 = load i8*, i8** %out_ptr55, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr78, i8** %out_ptr55, align 8
  store i8 %conv77, i8* %81, align 1
  br label %while.cond56, !llvm.loop !25

while.end79:                                      ; preds = %while.cond56
  %82 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8
  %83 = load i8*, i8** %output_row, align 8
  call void @png_write_row(%struct.png_struct_def* %82, i8* %83)
  %84 = load %struct.png_image_write_control*, %struct.png_image_write_control** %display, align 8
  %row_bytes80 = getelementptr inbounds %struct.png_image_write_control, %struct.png_image_write_control* %84, i32 0, i32 6
  %85 = load i64, i64* %row_bytes80, align 8
  %conv81 = trunc i64 %85 to i16
  %conv82 = zext i16 %conv81 to i64
  %div83 = udiv i64 %conv82, 2
  %86 = load i16*, i16** %input_row, align 8
  %add.ptr84 = getelementptr inbounds i16, i16* %86, i64 %div83
  store i16* %add.ptr84, i16** %input_row, align 8
  br label %for.inc85

for.inc85:                                        ; preds = %while.end79
  %87 = load i32, i32* %y, align 4
  %dec86 = add i32 %87, -1
  store i32 %dec86, i32* %y, align 4
  br label %for.cond50, !llvm.loop !26

for.end87:                                        ; preds = %for.cond50
  br label %if.end88

if.end88:                                         ; preds = %for.end87, %for.end
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @png_unpremultiply(i32 %component, i32 %alpha, i32 %reciprocal) #0 {
entry:
  %retval = alloca i8, align 1
  %component.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %reciprocal.addr = alloca i32, align 4
  store i32 %component, i32* %component.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %reciprocal, i32* %reciprocal.addr, align 4
  %0 = load i32, i32* %component.addr, align 4
  %1 = load i32, i32* %alpha.addr, align 4
  %cmp = icmp uge i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %alpha.addr, align 4
  %cmp1 = icmp ult i32 %2, 128
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 -1, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* %component.addr, align 4
  %cmp2 = icmp ugt i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.else19

if.then3:                                         ; preds = %if.else
  %4 = load i32, i32* %alpha.addr, align 4
  %cmp4 = icmp ult i32 %4, 65407
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.then3
  %5 = load i32, i32* %reciprocal.addr, align 4
  %6 = load i32, i32* %component.addr, align 4
  %mul = mul i32 %6, %5
  store i32 %mul, i32* %component.addr, align 4
  %7 = load i32, i32* %component.addr, align 4
  %add = add i32 %7, 64
  store i32 %add, i32* %component.addr, align 4
  %8 = load i32, i32* %component.addr, align 4
  %shr = lshr i32 %8, 7
  store i32 %shr, i32* %component.addr, align 4
  br label %if.end

if.else6:                                         ; preds = %if.then3
  %9 = load i32, i32* %component.addr, align 4
  %mul7 = mul i32 %9, 255
  store i32 %mul7, i32* %component.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  %10 = load i32, i32* %component.addr, align 4
  %shr8 = lshr i32 %10, 15
  %idxprom = zext i32 %shr8 to i64
  %arrayidx = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %11 to i32
  %12 = load i32, i32* %component.addr, align 4
  %and = and i32 %12, 32767
  %13 = load i32, i32* %component.addr, align 4
  %shr9 = lshr i32 %13, 15
  %idxprom10 = zext i32 %shr9 to i64
  %arrayidx11 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %mul13 = mul i32 %and, %conv12
  %shr14 = lshr i32 %mul13, 12
  %add15 = add i32 %conv, %shr14
  %shr16 = lshr i32 %add15, 8
  %and17 = and i32 255, %shr16
  %conv18 = trunc i32 %and17 to i8
  store i8 %conv18, i8* %retval, align 1
  br label %return

if.else19:                                        ; preds = %if.else
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.else19, %if.end, %if.then
  %15 = load i8, i8* %retval, align 1
  ret i8 %15
}

declare dso_local void @png_set_PLTE(%struct.png_struct_def*, %struct.png_info_def*, %struct.png_color_struct*, i32) #1

declare dso_local void @png_set_tRNS(%struct.png_struct_def*, %struct.png_info_def*, i8*, i32, %struct.png_color_16_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (git@github.com:TypeFlexer/TypeFlexer-Clang.git 1ff1c030905ca01d91c47de79da9743dae2b5ed9)"}
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
!22 = distinct !{!22, !3}
!23 = distinct !{!23, !3}
!24 = distinct !{!24, !3}
!25 = distinct !{!25, !3}
!26 = distinct !{!26, !3}
