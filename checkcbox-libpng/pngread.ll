; ModuleID = 'pngread.c'
source_filename = "pngread.c"
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
%struct.png_info_def = type { i32, i32, i32, i64, %struct.png_color_struct*, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], %struct.png_colorspace, i8*, i8*, i32, i32, i32, %struct.png_text_struct*, %struct.png_time_struct, %struct.png_color_8_struct, i8*, %struct.png_color_16_struct, %struct.png_color_16_struct, i32, i32, i8, i32, i32, i8, i32, i8*, i8*, i16*, i8*, i32, i32, i8*, i8**, i8, i8, i32, %struct.png_unknown_chunk_t*, i32, %struct.png_sPLT_struct*, i32, i8, i8*, i8*, i8** }
%struct.png_text_struct = type { i32, i8*, i8*, i64, i64, i8*, i8* }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }
%struct.png_sPLT_struct = type { i8*, i8, %struct.png_sPLT_entry_struct*, i32 }
%struct.png_sPLT_entry_struct = type { i16, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], i8*, i64, i8 }
%struct.png_colorspace = type { i32, %struct.png_xy, %struct.png_XYZ, i16, i16 }
%struct.png_xy = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_XYZ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.png_image = type { %struct.png_control*, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.png_control = type { %struct.png_struct_def*, %struct.png_info_def*, i8*, i8*, i64, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.png_image_read_control = type { %struct.png_image*, i8*, i32, i8*, %struct.png_color_struct*, i8*, i8*, i64, i32, i32, i32 }

@lowerbound_1 = common local_unnamed_addr global i64 0
@upperbound_1 = common local_unnamed_addr global i64 0
@lowerbound_2 = common local_unnamed_addr global i64 0
@upperbound_2 = common local_unnamed_addr global i64 0
@.str = private unnamed_addr constant [25 x i8] c"Missing IHDR before IDAT\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing PLTE before IDAT\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Too many IDATs found\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"png_read_update_info/png_start_read_image: duplicate call\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"png_start_read_image/png_read_update_info: duplicate call\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Invalid attempt to read row data\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"bad adaptive filter value\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"sequential row overflow\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"internal sequential row size calculation error\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"tainted bad adaptive filter value\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"Interlace handling should be turned on when using png_read_image\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Read palette index exceeding num_palette\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c".Too many IDATs found\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"..Too many IDATs found\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"Image is too high to process with png_read_png()\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"png_image_begin_read_from_stdio: invalid argument\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"png_image_begin_read_from_stdio: incorrect PNG_IMAGE_VERSION\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"png_image_begin_read_from_file: invalid argument\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"png_image_begin_read_from_file: incorrect PNG_IMAGE_VERSION\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"png_image_begin_read_from_memory: invalid argument\00", align 1
@.str.21 = private unnamed_addr constant [62 x i8] c"png_image_begin_read_from_memory: incorrect PNG_IMAGE_VERSION\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"png_image_finish_read[color-map]: no color-map\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"png_image_finish_read: image too large\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"png_image_finish_read: invalid argument\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"png_image_finish_read: row_stride too large\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"png_image_finish_read: damaged PNG_IMAGE_VERSION\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"1.6.39.git\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"png_image_read: out of memory\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"png_image_read: opaque pointer not NULL\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"read beyond end of data\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"invalid memory read\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"background color must be supplied to remove alpha/transparency\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"gray[8] color-map: too few entries\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"gray[16] color-map: too few entries\00", align 1
@png_sRGB_base = external dso_local local_unnamed_addr constant [512 x i16], align 16
@png_sRGB_delta = external dso_local local_unnamed_addr constant [512 x i8], align 16
@.str.35 = private unnamed_addr constant [38 x i8] c"gray+alpha color-map: too few entries\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"gray-alpha color-map: too few entries\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"ga-alpha color-map: too few entries\00", align 1
@png_sRGB_table = external dso_local local_unnamed_addr constant [256 x i16], align 16
@.str.38 = private unnamed_addr constant [35 x i8] c"rgb[ga] color-map: too few entries\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"rgb[gray] color-map: too few entries\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"rgb+alpha color-map: too few entries\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"rgb-alpha color-map: too few entries\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"rgb color-map: too few entries\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"palette color-map: too few entries\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"invalid PNG color type\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"bad data option (internal error)\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"color map overflow (BAD internal error)\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"bad processing option (internal error)\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"bad background index (internal error)\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"color-map index out of range\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"bad encoding (internal error)\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"unexpected encoding (internal error)\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"bad color-map processing (internal error)\00", align 1
@png_image_skip_unused_chunks.chunks_to_process = internal constant [30 x i8] c"bKGD\00cHRM\00gAMA\00iCCP\00sBIT\00sRGB\00", align 16
@.str.53 = private unnamed_addr constant [23 x i8] c"unknown interlace type\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"png_read_image: unsupported transformation\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"png_image_read: alpha channel lost\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"unexpected alpha swap transformation\00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"png_read_image: invalid transformations\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"lost rgb to gray\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"unexpected compose\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"lost/gained channels\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"unexpected 8-bit transformation\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"unexpected bit depth\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.png_struct_def* @png_create_read_struct(i8* %user_png_ver, i8* %error_ptr, void (%struct.png_struct_def*, i8*)* %error_fn, void (%struct.png_struct_def*, i8*)* %warn_fn) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias %struct.png_struct_def* @png_create_png_struct(i8* %user_png_ver, i8* %error_ptr, void (%struct.png_struct_def*, i8*)* %error_fn, void (%struct.png_struct_def*, i8*)* %warn_fn, i8* null, i8* (%struct.png_struct_def*, i64)* null, void (%struct.png_struct_def*, i8*)* null) #13
  %cmp.not.i = icmp eq %struct.png_struct_def* %call.i, null
  br i1 %cmp.not.i, label %png_create_read_struct_2.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %mode.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %call.i, i64 0, i32 15
  store i32 32768, i32* %mode.i, align 4, !tbaa !2
  %IDAT_read_size.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %call.i, i64 0, i32 145
  store i32 8192, i32* %IDAT_read_size.i, align 8, !tbaa !17
  %flags.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %call.i, i64 0, i32 16
  %0 = load i32, i32* %flags.i, align 8, !tbaa !18
  %or.i = or i32 %0, 1048576
  store i32 %or.i, i32* %flags.i, align 8, !tbaa !18
  tail call void @png_set_read_fn(%struct.png_struct_def* nonnull %call.i, i8* null, void (%struct.png_struct_def*, i8*, i64)* null) #13
  br label %png_create_read_struct_2.exit

png_create_read_struct_2.exit:                    ; preds = %entry, %if.then.i
  ret %struct.png_struct_def* %call.i
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.png_struct_def* @png_create_read_struct_2(i8* %user_png_ver, i8* %error_ptr, void (%struct.png_struct_def*, i8*)* %error_fn, void (%struct.png_struct_def*, i8*)* %warn_fn, i8* %mem_ptr, i8* (%struct.png_struct_def*, i64)* %malloc_fn, void (%struct.png_struct_def*, i8*)* %free_fn) local_unnamed_addr #0 {
entry:
  %call = tail call noalias %struct.png_struct_def* @png_create_png_struct(i8* %user_png_ver, i8* %error_ptr, void (%struct.png_struct_def*, i8*)* %error_fn, void (%struct.png_struct_def*, i8*)* %warn_fn, i8* %mem_ptr, i8* (%struct.png_struct_def*, i64)* %malloc_fn, void (%struct.png_struct_def*, i8*)* %free_fn) #13
  %cmp.not = icmp eq %struct.png_struct_def* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mode = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %call, i64 0, i32 15
  store i32 32768, i32* %mode, align 4, !tbaa !2
  %IDAT_read_size = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %call, i64 0, i32 145
  store i32 8192, i32* %IDAT_read_size, align 8, !tbaa !17
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %call, i64 0, i32 16
  %0 = load i32, i32* %flags, align 8, !tbaa !18
  %or = or i32 %0, 1048576
  store i32 %or, i32* %flags, align 8, !tbaa !18
  tail call void @png_set_read_fn(%struct.png_struct_def* nonnull %call, i8* null, void (%struct.png_struct_def*, i8*, i64)* null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.png_struct_def* %call
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local noalias %struct.png_struct_def* @png_create_png_struct(i8*, i8*, void (%struct.png_struct_def*, i8*)*, void (%struct.png_struct_def*, i8*)*, i8*, i8* (%struct.png_struct_def*, i64)*, void (%struct.png_struct_def*, i8*)*) local_unnamed_addr #2

declare dso_local void @png_set_read_fn(%struct.png_struct_def*, i8*, void (%struct.png_struct_def*, i8*, i64)*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @png_read_info(%struct.png_struct_def* noalias %png_ptr, %struct.png_info_def* noalias %info_ptr) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.png_struct_def* %png_ptr, null
  %cmp1 = icmp eq %struct.png_info_def* %info_ptr, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup165, label %if.end

if.end:                                           ; preds = %entry
  tail call void @png_read_sig(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr) #13
  %call298 = tail call i32 @png_read_chunk_header(%struct.png_struct_def* nonnull %png_ptr) #13
  %chunk_name2 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 44
  %0 = load i32, i32* %chunk_name2, align 8, !tbaa !19
  %cmp3299 = icmp eq i32 %0, 1229209940
  br i1 %cmp3299, label %if.then4, label %if.else24.lr.ph

if.else24.lr.ph:                                  ; preds = %if.end
  %mode25 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 15
  br label %if.else24

if.then4:                                         ; preds = %cleanup, %if.end
  %call.lcssa = phi i32 [ %call298, %if.end ], [ %call, %cleanup ]
  %mode = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 15
  %1 = load i32, i32* %mode, align 4, !tbaa !2
  %and = and i32 %1, 1
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  tail call void @png_chunk_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)) #14
  unreachable

if.else:                                          ; preds = %if.then4
  %color_type = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 63
  %2 = load i8, i8* %color_type, align 1, !tbaa !20
  %cmp7 = icmp eq i8 %2, 3
  %and10 = and i32 %1, 2
  %cmp11 = icmp eq i32 %and10, 0
  %or.cond285 = and i1 %cmp11, %cmp7
  br i1 %or.cond285, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else
  tail call void @png_chunk_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #14
  unreachable

if.else14:                                        ; preds = %if.else
  %and16 = and i32 %1, 8
  %cmp17.not = icmp eq i32 %and16, 0
  br i1 %cmp17.not, label %if.else43.thread, label %if.then19

if.then19:                                        ; preds = %if.else14
  tail call void @png_chunk_benign_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #13
  %.pre = load i32, i32* %mode, align 4, !tbaa !2
  br label %if.else43.thread

if.else24:                                        ; preds = %if.else24.lr.ph, %cleanup
  %3 = phi i32 [ %0, %if.else24.lr.ph ], [ %7, %cleanup ]
  %call300 = phi i32 [ %call298, %if.else24.lr.ph ], [ %call, %cleanup ]
  %4 = load i32, i32* %mode25, align 4, !tbaa !2
  %and26 = and i32 %4, 4
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %if.end35, label %if.then29

if.then29:                                        ; preds = %if.else24
  %or33 = or i32 %4, 8200
  store i32 %or33, i32* %mode25, align 4, !tbaa !2
  br label %if.end35

if.end35:                                         ; preds = %if.else24, %if.then29
  switch i32 %3, label %if.else43 [
    i32 1229472850, label %if.then38
    i32 1229278788, label %if.then42
  ]

if.then38:                                        ; preds = %if.end35
  tail call void @png_handle_IHDR(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then42:                                        ; preds = %if.end35
  tail call void @png_handle_IEND(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.else43:                                        ; preds = %if.end35
  %call44 = tail call i32 @png_chunk_unknown_handling(%struct.png_struct_def* nonnull %png_ptr, i32 %3) #13
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %if.else59, label %if.then47

if.else43.thread:                                 ; preds = %if.then19, %if.else14
  %5 = phi i32 [ %.pre, %if.then19 ], [ %1, %if.else14 ]
  %or = or i32 %5, 4
  store i32 %or, i32* %mode, align 4, !tbaa !2
  %call44287 = tail call i32 @png_chunk_unknown_handling(%struct.png_struct_def* nonnull %png_ptr, i32 1229209940) #13
  %cmp45.not288 = icmp eq i32 %call44287, 0
  br i1 %cmp45.not288, label %cleanup165.sink.split, label %if.then56

if.then47:                                        ; preds = %if.else43
  tail call void @png_handle_unknown(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300, i32 %call44) #13
  %cmp48 = icmp eq i32 %3, 1347179589
  br i1 %cmp48, label %if.then50, label %cleanup

if.then50:                                        ; preds = %if.then47
  %6 = load i32, i32* %mode25, align 4, !tbaa !2
  %or52 = or i32 %6, 2
  store i32 %or52, i32* %mode25, align 4, !tbaa !2
  br label %cleanup

if.then56:                                        ; preds = %if.else43.thread
  tail call void @png_handle_unknown(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call.lcssa, i32 %call44287) #13
  br label %cleanup165.sink.split

if.else59:                                        ; preds = %if.else43
  switch i32 %3, label %if.else140 [
    i32 1347179589, label %if.then62
    i32 1649100612, label %if.then71
    i32 1665684045, label %if.then75
    i32 1700284774, label %if.then79
    i32 1732332865, label %if.then83
    i32 1749635924, label %if.then87
    i32 1866876531, label %if.then91
    i32 1883455820, label %if.then95
    i32 1933787468, label %if.then99
    i32 1883789683, label %if.then103
    i32 1933723988, label %if.then107
    i32 1934772034, label %if.then111
    i32 1766015824, label %if.then115
    i32 1934642260, label %if.then119
    i32 1950701684, label %if.then123
    i32 1950960965, label %if.then127
    i32 1951551059, label %if.then131
    i32 2052348020, label %if.then135
    i32 1767135348, label %if.then139
  ]

if.then62:                                        ; preds = %if.else59
  tail call void @png_handle_PLTE(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then71:                                        ; preds = %if.else59
  tail call void @png_handle_bKGD(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then75:                                        ; preds = %if.else59
  tail call void @png_handle_cHRM(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then79:                                        ; preds = %if.else59
  tail call void @png_handle_eXIf(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then83:                                        ; preds = %if.else59
  tail call void @png_handle_gAMA(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then87:                                        ; preds = %if.else59
  tail call void @png_handle_hIST(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then91:                                        ; preds = %if.else59
  tail call void @png_handle_oFFs(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then95:                                        ; preds = %if.else59
  tail call void @png_handle_pCAL(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then99:                                        ; preds = %if.else59
  tail call void @png_handle_sCAL(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then103:                                       ; preds = %if.else59
  tail call void @png_handle_pHYs(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then107:                                       ; preds = %if.else59
  tail call void @png_handle_sBIT(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then111:                                       ; preds = %if.else59
  tail call void @png_handle_sRGB(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then115:                                       ; preds = %if.else59
  tail call void @png_handle_iCCP(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then119:                                       ; preds = %if.else59
  tail call void @png_handle_sPLT(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then123:                                       ; preds = %if.else59
  tail call void @png_handle_tEXt(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then127:                                       ; preds = %if.else59
  tail call void @png_handle_tIME(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then131:                                       ; preds = %if.else59
  tail call void @png_handle_tRNS(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then135:                                       ; preds = %if.else59
  tail call void @png_handle_zTXt(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.then139:                                       ; preds = %if.else59
  tail call void @png_handle_iTXt(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300) #13
  br label %cleanup

if.else140:                                       ; preds = %if.else59
  tail call void @png_handle_unknown(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call300, i32 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.then38, %if.then50, %if.then75, %if.then83, %if.then91, %if.then99, %if.then107, %if.then115, %if.then123, %if.then131, %if.then139, %if.else140, %if.then135, %if.then127, %if.then119, %if.then111, %if.then103, %if.then95, %if.then87, %if.then79, %if.then71, %if.then62, %if.then42
  %call = tail call i32 @png_read_chunk_header(%struct.png_struct_def* nonnull %png_ptr) #13
  %7 = load i32, i32* %chunk_name2, align 8, !tbaa !19
  %cmp3 = icmp eq i32 %7, 1229209940
  br i1 %cmp3, label %if.then4, label %if.else24

cleanup165.sink.split:                            ; preds = %if.else43.thread, %if.then56
  %call.lcssa.sink = phi i32 [ 0, %if.then56 ], [ %call.lcssa, %if.else43.thread ]
  %idat_size67 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 52
  store i32 %call.lcssa.sink, i32* %idat_size67, align 8, !tbaa !21
  br label %cleanup165

cleanup165:                                       ; preds = %cleanup165.sink.split, %entry
  ret void
}

declare dso_local void @png_read_sig(%struct.png_struct_def*, %struct.png_info_def*) local_unnamed_addr #2

declare dso_local i32 @png_read_chunk_header(%struct.png_struct_def*) local_unnamed_addr #2

; Function Attrs: noreturn
declare dso_local void @png_chunk_error(%struct.png_struct_def*, i8*) local_unnamed_addr #3

declare dso_local void @png_chunk_benign_error(%struct.png_struct_def*, i8*) local_unnamed_addr #2

declare dso_local void @png_handle_IHDR(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_IEND(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local i32 @png_chunk_unknown_handling(%struct.png_struct_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_unknown(%struct.png_struct_def*, %struct.png_info_def*, i32, i32) local_unnamed_addr #2

declare dso_local void @png_handle_PLTE(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_bKGD(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_cHRM(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_eXIf(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_gAMA(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_hIST(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_oFFs(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_pCAL(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_sCAL(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_pHYs(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_sBIT(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_sRGB(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_iCCP(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_sPLT(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_tEXt(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_tIME(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_tRNS(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_zTXt(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

declare dso_local void @png_handle_iTXt(%struct.png_struct_def*, %struct.png_info_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_read_update_info(%struct.png_struct_def* noalias %png_ptr, %struct.png_info_def* noalias %info_ptr) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.png_struct_def* %png_ptr, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 16
  %0 = load i32, i32* %flags, align 8, !tbaa !18
  %and = and i32 %0, 64
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  tail call void @png_read_start_row(%struct.png_struct_def* nonnull %png_ptr) #13
  tail call void @png_read_transform_info(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr) #13
  br label %if.end3

if.else:                                          ; preds = %if.then
  tail call void @png_app_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0)) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else, %entry
  ret void
}

declare dso_local void @png_read_start_row(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_read_transform_info(%struct.png_struct_def*, %struct.png_info_def*) local_unnamed_addr #2

declare dso_local void @png_app_error(%struct.png_struct_def*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_start_read_image(%struct.png_struct_def* noalias %png_ptr) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.png_struct_def* %png_ptr, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 16
  %0 = load i32, i32* %flags, align 8, !tbaa !18
  %and = and i32 %0, 64
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  tail call void @png_read_start_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end3

if.else:                                          ; preds = %if.then
  tail call void @png_app_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0)) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_row(%struct.png_struct_def* noalias %png_ptr, i8* %row, i8* %dsp_row) local_unnamed_addr #0 {
entry:
  %row_info = alloca %struct.png_row_info_struct, align 8
  %0 = bitcast %struct.png_row_info_struct* %row_info to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #13
  %cmp = icmp eq %struct.png_struct_def* %png_ptr, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 16
  %1 = load i32, i32* %flags, align 8, !tbaa !18
  %and = and i32 %1, 64
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @png_read_start_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %iwidth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 42
  %2 = load i32, i32* %iwidth, align 8, !tbaa !22
  %width = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 0
  store i32 %2, i32* %width, align 8, !tbaa !23
  %color_type = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 63
  %3 = load i8, i8* %color_type, align 1, !tbaa !20
  %color_type4 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 2
  store i8 %3, i8* %color_type4, align 8, !tbaa !25
  %bit_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 64
  %4 = load i8, i8* %bit_depth, align 8, !tbaa !26
  %bit_depth5 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 3
  store i8 %4, i8* %bit_depth5, align 1, !tbaa !27
  %channels = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 67
  %5 = load i8, i8* %channels, align 1, !tbaa !28
  %channels6 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 4
  store i8 %5, i8* %channels6, align 2, !tbaa !29
  %pixel_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 66
  %6 = load i8, i8* %pixel_depth, align 2, !tbaa !30
  %pixel_depth7 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 5
  store i8 %6, i8* %pixel_depth7, align 1, !tbaa !31
  %cmp9 = icmp ugt i8 %6, 7
  %conv12 = zext i32 %2 to i64
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  %7 = lshr i8 %6, 3
  %shr = zext i8 %7 to i64
  %mul = mul nuw nsw i64 %shr, %conv12
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %conv18 = zext i8 %6 to i64
  %mul19 = mul nuw nsw i64 %conv18, %conv12
  %add = add nuw nsw i64 %mul19, 7
  %shr20 = lshr i64 %add, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ %shr20, %cond.false ]
  %rowbytes = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 1
  store i64 %cond, i64* %rowbytes, align 8, !tbaa !32
  %row_number = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 43
  %8 = load i32, i32* %row_number, align 4, !tbaa !33
  %interlaced = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 60
  %9 = load i8, i8* %interlaced, align 4, !tbaa !34
  %cmp29.not = icmp eq i8 %9, 0
  br i1 %cmp29.not, label %if.end124, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %cond.end
  %transformations = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 17
  %10 = load i32, i32* %transformations, align 4, !tbaa !35
  %and32 = and i32 %10, 2
  %cmp33.not = icmp eq i32 %and32, 0
  br i1 %cmp33.not, label %if.end124, label %if.then35

if.then35:                                        ; preds = %land.lhs.true31
  %pass36 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 61
  %11 = load i8, i8* %pass36, align 1, !tbaa !36
  switch i8 %11, label %sw.bb117 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb46
    i8 2, label %sw.bb59
    i8 3, label %sw.bb74
    i8 4, label %sw.bb88
    i8 5, label %sw.bb103
  ]

sw.bb:                                            ; preds = %if.then35
  %and39 = and i32 %8, 7
  %tobool.not = icmp eq i32 %and39, 0
  br i1 %tobool.not, label %if.end124, label %if.then40

if.then40:                                        ; preds = %sw.bb
  %12 = ptrtoint i8* %dsp_row to i64
  %13 = trunc i64 %12 to i32
  %cmp41.not = icmp eq i32 %13, 0
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.then40
  tail call void @png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then40
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb46:                                          ; preds = %if.then35
  %and48 = and i32 %8, 7
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %lor.lhs.false, label %if.then53

lor.lhs.false:                                    ; preds = %sw.bb46
  %width50 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 37
  %14 = load i32, i32* %width50, align 8, !tbaa !37
  %cmp51 = icmp ult i32 %14, 5
  br i1 %cmp51, label %if.then53, label %if.end124

if.then53:                                        ; preds = %lor.lhs.false, %sw.bb46
  %15 = ptrtoint i8* %dsp_row to i64
  %16 = trunc i64 %15 to i32
  %cmp54.not = icmp eq i32 %16, 0
  br i1 %cmp54.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.then53
  tail call void @png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then53
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb59:                                          ; preds = %if.then35
  %and61 = and i32 %8, 7
  %cmp62.not = icmp eq i32 %and61, 4
  br i1 %cmp62.not, label %if.end124, label %if.then64

if.then64:                                        ; preds = %sw.bb59
  %17 = ptrtoint i8* %dsp_row to i64
  %18 = trunc i64 %17 to i32
  %cmp65.not = icmp eq i32 %18, 0
  %and69 = and i32 %8, 4
  %tobool70.not = icmp eq i32 %and69, 0
  %or.cond = or i1 %cmp65.not, %tobool70.not
  br i1 %or.cond, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.then64
  tail call void @png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.then64
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb74:                                          ; preds = %if.then35
  %and76 = and i32 %8, 3
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %if.then82

lor.lhs.false78:                                  ; preds = %sw.bb74
  %width79 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 37
  %19 = load i32, i32* %width79, align 8, !tbaa !37
  %cmp80 = icmp ult i32 %19, 3
  br i1 %cmp80, label %if.then82, label %if.end124

if.then82:                                        ; preds = %lor.lhs.false78, %sw.bb74
  %20 = ptrtoint i8* %dsp_row to i64
  %21 = trunc i64 %20 to i32
  %cmp83.not = icmp eq i32 %21, 0
  br i1 %cmp83.not, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.then82
  tail call void @png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.then82
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb88:                                          ; preds = %if.then35
  %and90 = and i32 %8, 3
  %cmp91.not = icmp eq i32 %and90, 2
  br i1 %cmp91.not, label %if.end124, label %if.then93

if.then93:                                        ; preds = %sw.bb88
  %22 = ptrtoint i8* %dsp_row to i64
  %23 = trunc i64 %22 to i32
  %cmp94.not = icmp eq i32 %23, 0
  %and98 = and i32 %8, 2
  %tobool99.not = icmp eq i32 %and98, 0
  %or.cond367 = or i1 %cmp94.not, %tobool99.not
  br i1 %or.cond367, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.then93
  tail call void @png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.then93
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb103:                                         ; preds = %if.then35
  %and105 = and i32 %8, 1
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %lor.lhs.false107, label %if.then111

lor.lhs.false107:                                 ; preds = %sw.bb103
  %width108 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 37
  %24 = load i32, i32* %width108, align 8, !tbaa !37
  %cmp109 = icmp ult i32 %24, 2
  br i1 %cmp109, label %if.then111, label %if.end124

if.then111:                                       ; preds = %lor.lhs.false107, %sw.bb103
  %25 = ptrtoint i8* %dsp_row to i64
  %26 = trunc i64 %25 to i32
  %cmp112.not = icmp eq i32 %26, 0
  br i1 %cmp112.not, label %if.end115, label %if.then114

if.then114:                                       ; preds = %if.then111
  tail call void @png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.then111
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb117:                                         ; preds = %if.then35
  %and119 = and i32 %8, 1
  %cmp120 = icmp eq i32 %and119, 0
  br i1 %cmp120, label %if.then122, label %if.end124

if.then122:                                       ; preds = %sw.bb117
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

if.end124:                                        ; preds = %sw.bb, %lor.lhs.false, %sw.bb59, %lor.lhs.false78, %sw.bb88, %lor.lhs.false107, %sw.bb117, %land.lhs.true31, %cond.end
  %mode = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 15
  %27 = load i32, i32* %mode, align 4, !tbaa !2
  %and125 = and i32 %27, 4
  %cmp126 = icmp eq i32 %and125, 0
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end124
  tail call void @png_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)) #14
  unreachable

if.end129:                                        ; preds = %if.end124
  %t_row_buf = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 48
  %28 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %29 = ptrtoint i8* %28 to i64
  %lowerboundVal_1 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck = icmp ule i64 %lowerboundVal_1, %29
  %IsoHeap.UpperCheck = icmp uge i64 %upperboundVal_1, %29
  %IsoHeap.RangeCheck = and i1 %IsoHeap.LowerCheck, %IsoHeap.UpperCheck
  br i1 %IsoHeap.RangeCheck, label %IsoHeap_HIT, label %trap.fail

trap.fail:                                        ; preds = %if.end129
  %30 = tail call i1 @CacheUpdateandCheck_2(i8* %28, i64 0) #13
  %31 = tail call i1 @CacheUpdateandCheck(i8* %28) #13
  br label %IsoHeap_HIT

IsoHeap_HIT:                                      ; preds = %if.end129, %trap.fail
  store i8 -1, i8* %28, align 4, !tbaa !39
  %row_buf = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 47
  %32 = load i8*, i8** %row_buf, align 8, !tbaa !40
  %33 = load i64, i64* %rowbytes, align 8, !tbaa !32
  %add131 = add i64 %33, 1
  tail call void @png_read_IDAT_data(%struct.png_struct_def* nonnull %png_ptr, i8* %32, i64 %add131) #13
  %34 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %35 = ptrtoint i8* %34 to i64
  %lowerboundVal_1133 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1134 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck135 = icmp ule i64 %lowerboundVal_1133, %35
  %IsoHeap.UpperCheck136 = icmp uge i64 %upperboundVal_1134, %35
  %IsoHeap.RangeCheck137 = and i1 %IsoHeap.LowerCheck135, %IsoHeap.UpperCheck136
  br i1 %IsoHeap.RangeCheck137, label %IsoHeap_HIT142, label %trap.fail138

trap.fail138:                                     ; preds = %IsoHeap_HIT
  %36 = tail call i1 @CacheUpdateandCheck_2(i8* %34, i64 0) #13
  %37 = tail call i1 @CacheUpdateandCheck(i8* %34) #13
  br label %IsoHeap_HIT142

IsoHeap_HIT142:                                   ; preds = %IsoHeap_HIT, %trap.fail138
  %38 = load i8, i8* %34, align 4, !tbaa !39
  %cmp145.not = icmp eq i8 %38, 0
  br i1 %cmp145.not, label %if.end181, label %if.then147

if.then147:                                       ; preds = %IsoHeap_HIT142
  %39 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %40 = ptrtoint i8* %39 to i64
  %lowerboundVal_1149 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1150 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck151 = icmp ule i64 %lowerboundVal_1149, %40
  %IsoHeap.UpperCheck152 = icmp uge i64 %upperboundVal_1150, %40
  %IsoHeap.RangeCheck153 = and i1 %IsoHeap.LowerCheck151, %IsoHeap.UpperCheck152
  br i1 %IsoHeap.RangeCheck153, label %IsoHeap_HIT158, label %trap.fail154

trap.fail154:                                     ; preds = %if.then147
  %41 = tail call i1 @CacheUpdateandCheck_2(i8* %39, i64 0) #13
  %42 = tail call i1 @CacheUpdateandCheck(i8* %39) #13
  br label %IsoHeap_HIT158

IsoHeap_HIT158:                                   ; preds = %if.then147, %trap.fail154
  %43 = load i8, i8* %39, align 4, !tbaa !39
  %cmp161 = icmp ult i8 %43, 5
  br i1 %cmp161, label %if.then163, label %if.else

if.then163:                                       ; preds = %IsoHeap_HIT158
  %44 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 1
  %t_prev_row = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 46
  %45 = load i8*, i8** %t_prev_row, align 4, !tbaa !41
  %add.ptr165 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = ptrtoint i8* %44 to i64
  %lowerboundVal_1168 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1169 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck170 = icmp ule i64 %lowerboundVal_1168, %46
  %IsoHeap.UpperCheck171 = icmp uge i64 %upperboundVal_1169, %46
  %IsoHeap.RangeCheck172 = and i1 %IsoHeap.LowerCheck170, %IsoHeap.UpperCheck171
  br i1 %IsoHeap.RangeCheck172, label %IsoHeap_HIT177, label %trap.fail173

trap.fail173:                                     ; preds = %if.then163
  %47 = tail call i1 @CacheUpdateandCheck_2(i8* %44, i64 0) #13
  %48 = tail call i1 @CacheUpdateandCheck(i8* %44) #13
  br label %IsoHeap_HIT177

IsoHeap_HIT177:                                   ; preds = %if.then163, %trap.fail173
  %49 = load i8, i8* %44, align 4, !tbaa !39
  %conv179 = zext i8 %49 to i32
  call void @t_png_read_filter_row(%struct.png_struct_def* nonnull %png_ptr, %struct.png_row_info_struct* nonnull %row_info, i8* nonnull %add.ptr, i8* nonnull %add.ptr165, i32 %conv179) #13
  %.pre = load i64, i64* %rowbytes, align 8, !tbaa !32
  %.pre368 = add i64 %.pre, 1
  br label %if.end181

if.else:                                          ; preds = %IsoHeap_HIT158
  tail call void @png_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #14
  unreachable

if.end181:                                        ; preds = %IsoHeap_HIT177, %IsoHeap_HIT142
  %add185.pre-phi = phi i64 [ %.pre368, %IsoHeap_HIT177 ], [ %add131, %IsoHeap_HIT142 ]
  %t_prev_row182 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 46
  %50 = load i8*, i8** %t_prev_row182, align 4, !tbaa !41
  %51 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %call = call i8* @t_memcpy(i8* %50, i8* %51, i64 %add185.pre-phi) #13
  %mng_features_permitted = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 125
  %52 = load i32, i32* %mng_features_permitted, align 8, !tbaa !42
  %and186 = and i32 %52, 4
  %cmp187.not = icmp eq i32 %and186, 0
  br i1 %cmp187.not, label %if.end197, label %land.lhs.true189

land.lhs.true189:                                 ; preds = %if.end181
  %filter_type = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 126
  %53 = load i8, i8* %filter_type, align 4, !tbaa !43
  %cmp191 = icmp eq i8 %53, 64
  br i1 %cmp191, label %if.then193, label %if.end197

if.then193:                                       ; preds = %land.lhs.true189
  %54 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %add.ptr195 = getelementptr inbounds i8, i8* %54, i64 1
  call fastcc void @t_png_do_read_intrapixel(%struct.png_row_info_struct* nonnull %row_info, i8* nonnull %add.ptr195)
  br label %if.end197

if.end197:                                        ; preds = %if.then193, %land.lhs.true189, %if.end181
  %transformations198 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 17
  %55 = load i32, i32* %transformations198, align 4, !tbaa !35
  %tobool199.not = icmp eq i32 %55, 0
  br i1 %tobool199.not, label %if.end201, label %if.then200

if.then200:                                       ; preds = %if.end197
  call void @png_do_read_transformations(%struct.png_struct_def* nonnull %png_ptr, %struct.png_row_info_struct* nonnull %row_info) #13
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %if.end197
  %transformed_pixel_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 71
  %56 = load i8, i8* %transformed_pixel_depth, align 1, !tbaa !44
  %cmp203 = icmp eq i8 %56, 0
  %57 = load i8, i8* %pixel_depth7, align 1, !tbaa !31
  br i1 %cmp203, label %if.then205, label %if.else215

if.then205:                                       ; preds = %if.end201
  store i8 %57, i8* %transformed_pixel_depth, align 1, !tbaa !44
  %maximum_pixel_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 70
  %58 = load i8, i8* %maximum_pixel_depth, align 2, !tbaa !45
  %cmp211 = icmp ugt i8 %57, %58
  br i1 %cmp211, label %if.then213, label %if.end224

if.then213:                                       ; preds = %if.then205
  call void @png_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #14
  unreachable

if.else215:                                       ; preds = %if.end201
  %cmp220.not = icmp eq i8 %56, %57
  br i1 %cmp220.not, label %if.end224, label %if.then222

if.then222:                                       ; preds = %if.else215
  call void @png_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #14
  unreachable

if.end224:                                        ; preds = %if.else215, %if.then205
  %59 = load i8, i8* %interlaced, align 4, !tbaa !34
  %cmp227.not = icmp eq i8 %59, 0
  br i1 %cmp227.not, label %if.else254, label %land.lhs.true229

land.lhs.true229:                                 ; preds = %if.end224
  %60 = load i32, i32* %transformations198, align 4, !tbaa !35
  %and231 = and i32 %60, 2
  %cmp232.not = icmp eq i32 %and231, 0
  br i1 %cmp232.not, label %if.else254, label %if.then234

if.then234:                                       ; preds = %land.lhs.true229
  %pass235 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 61
  %61 = load i8, i8* %pass235, align 1, !tbaa !36
  %cmp237 = icmp ult i8 %61, 6
  br i1 %cmp237, label %if.then239, label %if.end245

if.then239:                                       ; preds = %if.then234
  %conv236 = zext i8 %61 to i32
  %62 = load i8*, i8** %row_buf, align 8, !tbaa !40
  %add.ptr241 = getelementptr inbounds i8, i8* %62, i64 1
  call void @png_do_read_interlace(%struct.png_row_info_struct* nonnull %row_info, i8* nonnull %add.ptr241, i32 %conv236, i32 %60) #13
  br label %if.end245

if.end245:                                        ; preds = %if.then239, %if.then234
  %63 = ptrtoint i8* %dsp_row to i64
  %64 = trunc i64 %63 to i32
  %cmp246.not = icmp eq i32 %64, 0
  br i1 %cmp246.not, label %if.end249, label %if.then248

if.then248:                                       ; preds = %if.end245
  call void @png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end249

if.end249:                                        ; preds = %if.then248, %if.end245
  %65 = ptrtoint i8* %row to i64
  %66 = trunc i64 %65 to i32
  %cmp250.not = icmp eq i32 %66, 0
  br i1 %cmp250.not, label %if.end263, label %if.then252

if.then252:                                       ; preds = %if.end249
  call void @png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %row, i32 0) #13
  br label %if.end263

if.else254:                                       ; preds = %land.lhs.true229, %if.end224
  %67 = ptrtoint i8* %row to i64
  %68 = trunc i64 %67 to i32
  %cmp255.not = icmp eq i32 %68, 0
  br i1 %cmp255.not, label %if.end258, label %if.then257

if.then257:                                       ; preds = %if.else254
  call void @png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %row, i32 -1) #13
  br label %if.end258

if.end258:                                        ; preds = %if.then257, %if.else254
  %69 = ptrtoint i8* %dsp_row to i64
  %70 = trunc i64 %69 to i32
  %cmp259.not = icmp eq i32 %70, 0
  br i1 %cmp259.not, label %if.end263, label %if.then261

if.then261:                                       ; preds = %if.end258
  call void @png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 -1) #13
  br label %if.end263

if.end263:                                        ; preds = %if.end258, %if.then261, %if.end249, %if.then252
  call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  %read_row_fn = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 93
  %71 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %read_row_fn, align 8, !tbaa !46
  %cmp264.not = icmp eq void (%struct.png_struct_def*, i32, i32)* %71, null
  br i1 %cmp264.not, label %cleanup, label %if.then266

if.then266:                                       ; preds = %if.end263
  %72 = load i32, i32* %row_number, align 4, !tbaa !33
  %pass269 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 61
  %73 = load i8, i8* %pass269, align 1, !tbaa !36
  %conv270 = zext i8 %73 to i32
  call void %71(%struct.png_struct_def* nonnull %png_ptr, i32 %72, i32 %conv270) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end263, %if.then266, %entry, %if.then122, %if.end115, %if.end101, %if.end86, %if.end72, %if.end57, %if.end44
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #13
  ret void
}

declare dso_local void @png_combine_row(%struct.png_struct_def*, i8*, i32) local_unnamed_addr #2

declare dso_local void @png_read_finish_row(%struct.png_struct_def*) local_unnamed_addr #2

; Function Attrs: noreturn
declare dso_local void @png_error(%struct.png_struct_def*, i8*) local_unnamed_addr #3

declare i1 @CacheUpdateandCheck_2(i8*, i64) local_unnamed_addr

declare i1 @CacheUpdateandCheck(i8*) local_unnamed_addr

declare dso_local void @png_read_IDAT_data(%struct.png_struct_def*, i8*, i64) local_unnamed_addr #2

declare dso_local void @t_png_read_filter_row(%struct.png_struct_def*, %struct.png_row_info_struct*, i8*, i8*, i32) local_unnamed_addr #2

declare dso_local i8* @t_memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @t_png_do_read_intrapixel(%struct.png_row_info_struct* nocapture readonly %row_info, i8* %row) unnamed_addr #0 {
entry:
  %color_type = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 2
  %0 = load i8, i8* %color_type, align 8, !tbaa !25
  %1 = and i8 %0, 2
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %cleanup269, label %if.then

if.then:                                          ; preds = %entry
  %width = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 0
  %2 = load i32, i32* %width, align 8, !tbaa !23
  %bit_depth = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 3
  %3 = load i8, i8* %bit_depth, align 1, !tbaa !27
  switch i8 %3, label %cleanup269 [
    i8 8, label %if.then5
    i8 16, label %if.then95
  ]

if.then5:                                         ; preds = %if.then
  switch i8 %0, label %cleanup269 [
    i8 2, label %if.end17
    i8 6, label %if.then15
  ]

if.then15:                                        ; preds = %if.then5
  br label %if.end17

if.end17:                                         ; preds = %if.then5, %if.then15
  %bytes_per_pixel.0 = phi i64 [ 4, %if.then15 ], [ 3, %if.then5 ]
  %cmp18321.not = icmp eq i32 %2, 0
  br i1 %cmp18321.not, label %cleanup269, label %for.body

for.body:                                         ; preds = %if.end17, %IsoHeap_HIT86
  %rp.0323 = phi i8* [ %add.ptr87, %IsoHeap_HIT86 ], [ %row, %if.end17 ]
  %i.0322 = phi i32 [ %inc, %IsoHeap_HIT86 ], [ 0, %if.end17 ]
  %4 = ptrtoint i8* %rp.0323 to i64
  %lowerboundVal_1 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck = icmp ule i64 %lowerboundVal_1, %4
  %IsoHeap.UpperCheck = icmp uge i64 %upperboundVal_1, %4
  %IsoHeap.RangeCheck = and i1 %IsoHeap.LowerCheck, %IsoHeap.UpperCheck
  br i1 %IsoHeap.RangeCheck, label %IsoHeap_HIT, label %trap.fail

trap.fail:                                        ; preds = %for.body
  %5 = tail call i1 @CacheUpdateandCheck_2(i8* %rp.0323, i64 0) #13
  %6 = tail call i1 @CacheUpdateandCheck(i8* %rp.0323) #13
  %lowerboundVal_121.pre = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_122.pre = load i64, i64* @upperbound_1, align 8
  br label %IsoHeap_HIT

IsoHeap_HIT:                                      ; preds = %for.body, %trap.fail
  %upperboundVal_122 = phi i64 [ %upperboundVal_1, %for.body ], [ %upperboundVal_122.pre, %trap.fail ]
  %lowerboundVal_121 = phi i64 [ %lowerboundVal_1, %for.body ], [ %lowerboundVal_121.pre, %trap.fail ]
  %7 = load i8, i8* %rp.0323, align 1, !tbaa !39
  %add.ptr = getelementptr inbounds i8, i8* %rp.0323, i64 1
  %8 = ptrtoint i8* %add.ptr to i64
  %IsoHeap.LowerCheck23 = icmp ule i64 %lowerboundVal_121, %8
  %IsoHeap.UpperCheck24 = icmp uge i64 %upperboundVal_122, %8
  %IsoHeap.RangeCheck25 = and i1 %IsoHeap.LowerCheck23, %IsoHeap.UpperCheck24
  br i1 %IsoHeap.RangeCheck25, label %IsoHeap_HIT30, label %trap.fail26

trap.fail26:                                      ; preds = %IsoHeap_HIT
  %9 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr, i64 0) #13
  %10 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr) #13
  %lowerboundVal_135.pre = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_136.pre = load i64, i64* @upperbound_1, align 8
  br label %IsoHeap_HIT30

IsoHeap_HIT30:                                    ; preds = %IsoHeap_HIT, %trap.fail26
  %upperboundVal_136 = phi i64 [ %upperboundVal_122, %IsoHeap_HIT ], [ %upperboundVal_136.pre, %trap.fail26 ]
  %lowerboundVal_135 = phi i64 [ %lowerboundVal_121, %IsoHeap_HIT ], [ %lowerboundVal_135.pre, %trap.fail26 ]
  %11 = load i8, i8* %add.ptr, align 1, !tbaa !39
  %add32 = add i8 %11, %7
  %IsoHeap.LowerCheck37 = icmp ule i64 %lowerboundVal_135, %4
  %IsoHeap.UpperCheck38 = icmp uge i64 %upperboundVal_136, %4
  %IsoHeap.RangeCheck39 = and i1 %IsoHeap.LowerCheck37, %IsoHeap.UpperCheck38
  br i1 %IsoHeap.RangeCheck39, label %IsoHeap_HIT44, label %trap.fail40

trap.fail40:                                      ; preds = %IsoHeap_HIT30
  %12 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %rp.0323, i64 0) #13
  %13 = tail call i1 @CacheUpdateandCheck(i8* nonnull %rp.0323) #13
  br label %IsoHeap_HIT44

IsoHeap_HIT44:                                    ; preds = %IsoHeap_HIT30, %trap.fail40
  store i8 %add32, i8* %rp.0323, align 1, !tbaa !39
  %add.ptr45 = getelementptr inbounds i8, i8* %rp.0323, i64 2
  %14 = ptrtoint i8* %add.ptr45 to i64
  %lowerboundVal_147 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_148 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck49 = icmp ule i64 %lowerboundVal_147, %14
  %IsoHeap.UpperCheck50 = icmp uge i64 %upperboundVal_148, %14
  %IsoHeap.RangeCheck51 = and i1 %IsoHeap.LowerCheck49, %IsoHeap.UpperCheck50
  br i1 %IsoHeap.RangeCheck51, label %IsoHeap_HIT56, label %trap.fail52

trap.fail52:                                      ; preds = %IsoHeap_HIT44
  %15 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr45, i64 0) #13
  %16 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr45) #13
  %lowerboundVal_161.pre = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_162.pre = load i64, i64* @upperbound_1, align 8
  br label %IsoHeap_HIT56

IsoHeap_HIT56:                                    ; preds = %IsoHeap_HIT44, %trap.fail52
  %upperboundVal_162 = phi i64 [ %upperboundVal_148, %IsoHeap_HIT44 ], [ %upperboundVal_162.pre, %trap.fail52 ]
  %lowerboundVal_161 = phi i64 [ %lowerboundVal_147, %IsoHeap_HIT44 ], [ %lowerboundVal_161.pre, %trap.fail52 ]
  %17 = load i8, i8* %add.ptr45, align 1, !tbaa !39
  %IsoHeap.LowerCheck63 = icmp ule i64 %lowerboundVal_161, %8
  %IsoHeap.UpperCheck64 = icmp uge i64 %upperboundVal_162, %8
  %IsoHeap.RangeCheck65 = and i1 %IsoHeap.LowerCheck63, %IsoHeap.UpperCheck64
  br i1 %IsoHeap.RangeCheck65, label %IsoHeap_HIT70, label %trap.fail66

trap.fail66:                                      ; preds = %IsoHeap_HIT56
  %18 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr, i64 0) #13
  %19 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr) #13
  %lowerboundVal_177.pre = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_178.pre = load i64, i64* @upperbound_1, align 8
  br label %IsoHeap_HIT70

IsoHeap_HIT70:                                    ; preds = %IsoHeap_HIT56, %trap.fail66
  %upperboundVal_178 = phi i64 [ %upperboundVal_162, %IsoHeap_HIT56 ], [ %upperboundVal_178.pre, %trap.fail66 ]
  %lowerboundVal_177 = phi i64 [ %lowerboundVal_161, %IsoHeap_HIT56 ], [ %lowerboundVal_177.pre, %trap.fail66 ]
  %20 = load i8, i8* %add.ptr, align 1, !tbaa !39
  %add72 = add i8 %20, %17
  %IsoHeap.LowerCheck79 = icmp ule i64 %lowerboundVal_177, %14
  %IsoHeap.UpperCheck80 = icmp uge i64 %upperboundVal_178, %14
  %IsoHeap.RangeCheck81 = and i1 %IsoHeap.LowerCheck79, %IsoHeap.UpperCheck80
  br i1 %IsoHeap.RangeCheck81, label %IsoHeap_HIT86, label %trap.fail82

trap.fail82:                                      ; preds = %IsoHeap_HIT70
  %21 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr45, i64 0) #13
  %22 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr45) #13
  br label %IsoHeap_HIT86

IsoHeap_HIT86:                                    ; preds = %IsoHeap_HIT70, %trap.fail82
  store i8 %add72, i8* %add.ptr45, align 1, !tbaa !39
  %inc = add nuw i32 %i.0322, 1
  %add.ptr87 = getelementptr inbounds i8, i8* %rp.0323, i64 %bytes_per_pixel.0
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %cleanup269, label %for.body, !llvm.loop !47

if.then95:                                        ; preds = %if.then
  switch i8 %0, label %cleanup269 [
    i8 2, label %if.end111
    i8 6, label %if.then108
  ]

if.then108:                                       ; preds = %if.then95
  br label %if.end111

if.end111:                                        ; preds = %if.then95, %if.then108
  %bytes_per_pixel.1 = phi i64 [ 8, %if.then108 ], [ 6, %if.then95 ]
  %cmp113326.not = icmp eq i32 %2, 0
  br i1 %cmp113326.not, label %cleanup269, label %for.body115

for.body115:                                      ; preds = %if.end111, %IsoHeap_HIT256
  %rp96.0328 = phi i8* [ %add.ptr260, %IsoHeap_HIT256 ], [ %row, %if.end111 ]
  %i97.0327 = phi i32 [ %inc258, %IsoHeap_HIT256 ], [ 0, %if.end111 ]
  %23 = ptrtoint i8* %rp96.0328 to i64
  %lowerboundVal_1116 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1117 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck118 = icmp ule i64 %lowerboundVal_1116, %23
  %IsoHeap.UpperCheck119 = icmp uge i64 %upperboundVal_1117, %23
  %IsoHeap.RangeCheck120 = and i1 %IsoHeap.LowerCheck118, %IsoHeap.UpperCheck119
  br i1 %IsoHeap.RangeCheck120, label %IsoHeap_HIT125, label %trap.fail121

trap.fail121:                                     ; preds = %for.body115
  %24 = tail call i1 @CacheUpdateandCheck_2(i8* %rp96.0328, i64 0) #13
  %25 = tail call i1 @CacheUpdateandCheck(i8* %rp96.0328) #13
  %lowerboundVal_1129.pre = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1130.pre = load i64, i64* @upperbound_1, align 8
  br label %IsoHeap_HIT125

IsoHeap_HIT125:                                   ; preds = %for.body115, %trap.fail121
  %upperboundVal_1130 = phi i64 [ %upperboundVal_1117, %for.body115 ], [ %upperboundVal_1130.pre, %trap.fail121 ]
  %lowerboundVal_1129 = phi i64 [ %lowerboundVal_1116, %for.body115 ], [ %lowerboundVal_1129.pre, %trap.fail121 ]
  %26 = load i8, i8* %rp96.0328, align 1, !tbaa !39
  %conv126 = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %conv126, 8
  %add.ptr127 = getelementptr inbounds i8, i8* %rp96.0328, i64 1
  %27 = ptrtoint i8* %add.ptr127 to i64
  %IsoHeap.LowerCheck131 = icmp ule i64 %lowerboundVal_1129, %27
  %IsoHeap.UpperCheck132 = icmp uge i64 %upperboundVal_1130, %27
  %IsoHeap.RangeCheck133 = and i1 %IsoHeap.LowerCheck131, %IsoHeap.UpperCheck132
  br i1 %IsoHeap.RangeCheck133, label %IsoHeap_HIT138, label %trap.fail134

trap.fail134:                                     ; preds = %IsoHeap_HIT125
  %28 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr127, i64 0) #13
  %29 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr127) #13
  %lowerboundVal_1142.pre = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1143.pre = load i64, i64* @upperbound_1, align 8
  br label %IsoHeap_HIT138

IsoHeap_HIT138:                                   ; preds = %IsoHeap_HIT125, %trap.fail134
  %upperboundVal_1143 = phi i64 [ %upperboundVal_1130, %IsoHeap_HIT125 ], [ %upperboundVal_1143.pre, %trap.fail134 ]
  %lowerboundVal_1142 = phi i64 [ %lowerboundVal_1129, %IsoHeap_HIT125 ], [ %lowerboundVal_1142.pre, %trap.fail134 ]
  %30 = load i8, i8* %add.ptr127, align 1, !tbaa !39
  %conv139 = zext i8 %30 to i32
  %or = or i32 %shl, %conv139
  %add.ptr140 = getelementptr inbounds i8, i8* %rp96.0328, i64 2
  %31 = ptrtoint i8* %add.ptr140 to i64
  %IsoHeap.LowerCheck144 = icmp ule i64 %lowerboundVal_1142, %31
  %IsoHeap.UpperCheck145 = icmp uge i64 %upperboundVal_1143, %31
  %IsoHeap.RangeCheck146 = and i1 %IsoHeap.LowerCheck144, %IsoHeap.UpperCheck145
  br i1 %IsoHeap.RangeCheck146, label %IsoHeap_HIT151, label %trap.fail147

trap.fail147:                                     ; preds = %IsoHeap_HIT138
  %32 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr140, i64 0) #13
  %33 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr140) #13
  %lowerboundVal_1156.pre = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1157.pre = load i64, i64* @upperbound_1, align 8
  br label %IsoHeap_HIT151

IsoHeap_HIT151:                                   ; preds = %IsoHeap_HIT138, %trap.fail147
  %upperboundVal_1157 = phi i64 [ %upperboundVal_1143, %IsoHeap_HIT138 ], [ %upperboundVal_1157.pre, %trap.fail147 ]
  %lowerboundVal_1156 = phi i64 [ %lowerboundVal_1142, %IsoHeap_HIT138 ], [ %lowerboundVal_1156.pre, %trap.fail147 ]
  %34 = load i8, i8* %add.ptr140, align 1, !tbaa !39
  %conv152 = zext i8 %34 to i32
  %shl153 = shl nuw nsw i32 %conv152, 8
  %add.ptr154 = getelementptr inbounds i8, i8* %rp96.0328, i64 3
  %35 = ptrtoint i8* %add.ptr154 to i64
  %IsoHeap.LowerCheck158 = icmp ule i64 %lowerboundVal_1156, %35
  %IsoHeap.UpperCheck159 = icmp uge i64 %upperboundVal_1157, %35
  %IsoHeap.RangeCheck160 = and i1 %IsoHeap.LowerCheck158, %IsoHeap.UpperCheck159
  br i1 %IsoHeap.RangeCheck160, label %IsoHeap_HIT165, label %trap.fail161

trap.fail161:                                     ; preds = %IsoHeap_HIT151
  %36 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr154, i64 0) #13
  %37 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr154) #13
  %lowerboundVal_1170.pre = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1171.pre = load i64, i64* @upperbound_1, align 8
  br label %IsoHeap_HIT165

IsoHeap_HIT165:                                   ; preds = %IsoHeap_HIT151, %trap.fail161
  %upperboundVal_1171 = phi i64 [ %upperboundVal_1157, %IsoHeap_HIT151 ], [ %upperboundVal_1171.pre, %trap.fail161 ]
  %lowerboundVal_1170 = phi i64 [ %lowerboundVal_1156, %IsoHeap_HIT151 ], [ %lowerboundVal_1170.pre, %trap.fail161 ]
  %38 = load i8, i8* %add.ptr154, align 1, !tbaa !39
  %conv166 = zext i8 %38 to i32
  %or167 = or i32 %shl153, %conv166
  %add.ptr168 = getelementptr inbounds i8, i8* %rp96.0328, i64 4
  %39 = ptrtoint i8* %add.ptr168 to i64
  %IsoHeap.LowerCheck172 = icmp ule i64 %lowerboundVal_1170, %39
  %IsoHeap.UpperCheck173 = icmp uge i64 %upperboundVal_1171, %39
  %IsoHeap.RangeCheck174 = and i1 %IsoHeap.LowerCheck172, %IsoHeap.UpperCheck173
  br i1 %IsoHeap.RangeCheck174, label %IsoHeap_HIT179, label %trap.fail175

trap.fail175:                                     ; preds = %IsoHeap_HIT165
  %40 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr168, i64 0) #13
  %41 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr168) #13
  %lowerboundVal_1184.pre = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1185.pre = load i64, i64* @upperbound_1, align 8
  br label %IsoHeap_HIT179

IsoHeap_HIT179:                                   ; preds = %IsoHeap_HIT165, %trap.fail175
  %upperboundVal_1185 = phi i64 [ %upperboundVal_1171, %IsoHeap_HIT165 ], [ %upperboundVal_1185.pre, %trap.fail175 ]
  %lowerboundVal_1184 = phi i64 [ %lowerboundVal_1170, %IsoHeap_HIT165 ], [ %lowerboundVal_1184.pre, %trap.fail175 ]
  %42 = load i8, i8* %add.ptr168, align 1, !tbaa !39
  %conv180 = zext i8 %42 to i32
  %shl181 = shl nuw nsw i32 %conv180, 8
  %add.ptr182 = getelementptr inbounds i8, i8* %rp96.0328, i64 5
  %43 = ptrtoint i8* %add.ptr182 to i64
  %IsoHeap.LowerCheck186 = icmp ule i64 %lowerboundVal_1184, %43
  %IsoHeap.UpperCheck187 = icmp uge i64 %upperboundVal_1185, %43
  %IsoHeap.RangeCheck188 = and i1 %IsoHeap.LowerCheck186, %IsoHeap.UpperCheck187
  br i1 %IsoHeap.RangeCheck188, label %IsoHeap_HIT193, label %trap.fail189

trap.fail189:                                     ; preds = %IsoHeap_HIT179
  %44 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr182, i64 0) #13
  %45 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr182) #13
  %lowerboundVal_1204.pre = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1205.pre = load i64, i64* @upperbound_1, align 8
  br label %IsoHeap_HIT193

IsoHeap_HIT193:                                   ; preds = %IsoHeap_HIT179, %trap.fail189
  %upperboundVal_1205 = phi i64 [ %upperboundVal_1185, %IsoHeap_HIT179 ], [ %upperboundVal_1205.pre, %trap.fail189 ]
  %lowerboundVal_1204 = phi i64 [ %lowerboundVal_1184, %IsoHeap_HIT179 ], [ %lowerboundVal_1204.pre, %trap.fail189 ]
  %46 = load i8, i8* %add.ptr182, align 1, !tbaa !39
  %conv194 = zext i8 %46 to i32
  %or195 = or i32 %shl181, %conv194
  %add196 = add nuw nsw i32 %or167, %or
  %add199 = add nuw nsw i32 %or195, %or167
  %shr = lshr i32 %add196, 8
  %conv203 = trunc i32 %shr to i8
  %IsoHeap.LowerCheck206 = icmp ule i64 %lowerboundVal_1204, %23
  %IsoHeap.UpperCheck207 = icmp uge i64 %upperboundVal_1205, %23
  %IsoHeap.RangeCheck208 = and i1 %IsoHeap.LowerCheck206, %IsoHeap.UpperCheck207
  br i1 %IsoHeap.RangeCheck208, label %IsoHeap_HIT213, label %trap.fail209

trap.fail209:                                     ; preds = %IsoHeap_HIT193
  %47 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %rp96.0328, i64 0) #13
  %48 = tail call i1 @CacheUpdateandCheck(i8* nonnull %rp96.0328) #13
  br label %IsoHeap_HIT213

IsoHeap_HIT213:                                   ; preds = %IsoHeap_HIT193, %trap.fail209
  store i8 %conv203, i8* %rp96.0328, align 1, !tbaa !39
  %conv215 = trunc i32 %add196 to i8
  %lowerboundVal_1218 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1219 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck220 = icmp ule i64 %lowerboundVal_1218, %27
  %IsoHeap.UpperCheck221 = icmp uge i64 %upperboundVal_1219, %27
  %IsoHeap.RangeCheck222 = and i1 %IsoHeap.LowerCheck220, %IsoHeap.UpperCheck221
  br i1 %IsoHeap.RangeCheck222, label %IsoHeap_HIT227, label %trap.fail223

trap.fail223:                                     ; preds = %IsoHeap_HIT213
  %49 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr127, i64 0) #13
  %50 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr127) #13
  br label %IsoHeap_HIT227

IsoHeap_HIT227:                                   ; preds = %IsoHeap_HIT213, %trap.fail223
  store i8 %conv215, i8* %add.ptr127, align 1, !tbaa !39
  %shr228 = lshr i32 %add199, 8
  %conv230 = trunc i32 %shr228 to i8
  %lowerboundVal_1233 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1234 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck235 = icmp ule i64 %lowerboundVal_1233, %39
  %IsoHeap.UpperCheck236 = icmp uge i64 %upperboundVal_1234, %39
  %IsoHeap.RangeCheck237 = and i1 %IsoHeap.LowerCheck235, %IsoHeap.UpperCheck236
  br i1 %IsoHeap.RangeCheck237, label %IsoHeap_HIT242, label %trap.fail238

trap.fail238:                                     ; preds = %IsoHeap_HIT227
  %51 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr168, i64 0) #13
  %52 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr168) #13
  br label %IsoHeap_HIT242

IsoHeap_HIT242:                                   ; preds = %IsoHeap_HIT227, %trap.fail238
  store i8 %conv230, i8* %add.ptr168, align 1, !tbaa !39
  %conv244 = trunc i32 %add199 to i8
  %lowerboundVal_1247 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1248 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck249 = icmp ule i64 %lowerboundVal_1247, %43
  %IsoHeap.UpperCheck250 = icmp uge i64 %upperboundVal_1248, %43
  %IsoHeap.RangeCheck251 = and i1 %IsoHeap.LowerCheck249, %IsoHeap.UpperCheck250
  br i1 %IsoHeap.RangeCheck251, label %IsoHeap_HIT256, label %trap.fail252

trap.fail252:                                     ; preds = %IsoHeap_HIT242
  %53 = tail call i1 @CacheUpdateandCheck_2(i8* nonnull %add.ptr182, i64 0) #13
  %54 = tail call i1 @CacheUpdateandCheck(i8* nonnull %add.ptr182) #13
  br label %IsoHeap_HIT256

IsoHeap_HIT256:                                   ; preds = %IsoHeap_HIT242, %trap.fail252
  store i8 %conv244, i8* %add.ptr182, align 1, !tbaa !39
  %inc258 = add nuw i32 %i97.0327, 1
  %add.ptr260 = getelementptr inbounds i8, i8* %rp96.0328, i64 %bytes_per_pixel.1
  %exitcond332.not = icmp eq i32 %inc258, %2
  br i1 %exitcond332.not, label %cleanup269, label %for.body115, !llvm.loop !49

cleanup269:                                       ; preds = %IsoHeap_HIT256, %IsoHeap_HIT86, %if.end111, %if.end17, %if.then95, %if.then5, %if.then, %entry
  ret void
}

declare dso_local void @png_do_read_transformations(%struct.png_struct_def*, %struct.png_row_info_struct*) local_unnamed_addr #2

declare dso_local void @png_do_read_interlace(%struct.png_row_info_struct*, i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @t_png_read_row(%struct.png_struct_def* noalias %png_ptr, i8* %row, i8* %dsp_row) local_unnamed_addr #0 {
entry:
  %row_info = alloca %struct.png_row_info_struct, align 8
  %0 = bitcast %struct.png_row_info_struct* %row_info to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #13
  %cmp = icmp eq %struct.png_struct_def* %png_ptr, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 16
  %1 = load i32, i32* %flags, align 8, !tbaa !18
  %and = and i32 %1, 64
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @png_read_start_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %iwidth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 42
  %2 = load i32, i32* %iwidth, align 8, !tbaa !22
  %width = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 0
  store i32 %2, i32* %width, align 8, !tbaa !23
  %color_type = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 63
  %3 = load i8, i8* %color_type, align 1, !tbaa !20
  %color_type4 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 2
  store i8 %3, i8* %color_type4, align 8, !tbaa !25
  %bit_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 64
  %4 = load i8, i8* %bit_depth, align 8, !tbaa !26
  %bit_depth5 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 3
  store i8 %4, i8* %bit_depth5, align 1, !tbaa !27
  %channels = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 67
  %5 = load i8, i8* %channels, align 1, !tbaa !28
  %channels6 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 4
  store i8 %5, i8* %channels6, align 2, !tbaa !29
  %pixel_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 66
  %6 = load i8, i8* %pixel_depth, align 2, !tbaa !30
  %pixel_depth7 = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 5
  store i8 %6, i8* %pixel_depth7, align 1, !tbaa !31
  %cmp9 = icmp ugt i8 %6, 7
  %conv12 = zext i32 %2 to i64
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  %7 = lshr i8 %6, 3
  %shr = zext i8 %7 to i64
  %mul = mul nuw nsw i64 %shr, %conv12
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %conv18 = zext i8 %6 to i64
  %mul19 = mul nuw nsw i64 %conv18, %conv12
  %add = add nuw nsw i64 %mul19, 7
  %shr20 = lshr i64 %add, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ %shr20, %cond.false ]
  %rowbytes = getelementptr inbounds %struct.png_row_info_struct, %struct.png_row_info_struct* %row_info, i64 0, i32 1
  store i64 %cond, i64* %rowbytes, align 8, !tbaa !32
  %row_number = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 43
  %8 = load i32, i32* %row_number, align 4, !tbaa !33
  %interlaced = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 60
  %9 = load i8, i8* %interlaced, align 4, !tbaa !34
  %cmp29.not = icmp eq i8 %9, 0
  br i1 %cmp29.not, label %if.end124, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %cond.end
  %transformations = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 17
  %10 = load i32, i32* %transformations, align 4, !tbaa !35
  %and32 = and i32 %10, 2
  %cmp33.not = icmp eq i32 %and32, 0
  br i1 %cmp33.not, label %if.end124, label %if.then35

if.then35:                                        ; preds = %land.lhs.true31
  %pass36 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 61
  %11 = load i8, i8* %pass36, align 1, !tbaa !36
  switch i8 %11, label %sw.bb117 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb46
    i8 2, label %sw.bb59
    i8 3, label %sw.bb74
    i8 4, label %sw.bb88
    i8 5, label %sw.bb103
  ]

sw.bb:                                            ; preds = %if.then35
  %and39 = and i32 %8, 7
  %tobool.not = icmp eq i32 %and39, 0
  br i1 %tobool.not, label %if.end124, label %if.then40

if.then40:                                        ; preds = %sw.bb
  %12 = ptrtoint i8* %dsp_row to i64
  %13 = trunc i64 %12 to i32
  %cmp41.not = icmp eq i32 %13, 0
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.then40
  tail call void @t_png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then40
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb46:                                          ; preds = %if.then35
  %and48 = and i32 %8, 7
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %lor.lhs.false, label %if.then53

lor.lhs.false:                                    ; preds = %sw.bb46
  %width50 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 37
  %14 = load i32, i32* %width50, align 8, !tbaa !37
  %cmp51 = icmp ult i32 %14, 5
  br i1 %cmp51, label %if.then53, label %if.end124

if.then53:                                        ; preds = %lor.lhs.false, %sw.bb46
  %15 = ptrtoint i8* %dsp_row to i64
  %16 = trunc i64 %15 to i32
  %cmp54.not = icmp eq i32 %16, 0
  br i1 %cmp54.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.then53
  tail call void @t_png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then53
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb59:                                          ; preds = %if.then35
  %and61 = and i32 %8, 7
  %cmp62.not = icmp eq i32 %and61, 4
  br i1 %cmp62.not, label %if.end124, label %if.then64

if.then64:                                        ; preds = %sw.bb59
  %17 = ptrtoint i8* %dsp_row to i64
  %18 = trunc i64 %17 to i32
  %cmp65.not = icmp eq i32 %18, 0
  %and69 = and i32 %8, 4
  %tobool70.not = icmp eq i32 %and69, 0
  %or.cond = or i1 %cmp65.not, %tobool70.not
  br i1 %or.cond, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.then64
  tail call void @t_png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.then64
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb74:                                          ; preds = %if.then35
  %and76 = and i32 %8, 3
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %if.then82

lor.lhs.false78:                                  ; preds = %sw.bb74
  %width79 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 37
  %19 = load i32, i32* %width79, align 8, !tbaa !37
  %cmp80 = icmp ult i32 %19, 3
  br i1 %cmp80, label %if.then82, label %if.end124

if.then82:                                        ; preds = %lor.lhs.false78, %sw.bb74
  %20 = ptrtoint i8* %dsp_row to i64
  %21 = trunc i64 %20 to i32
  %cmp83.not = icmp eq i32 %21, 0
  br i1 %cmp83.not, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.then82
  tail call void @t_png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.then82
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb88:                                          ; preds = %if.then35
  %and90 = and i32 %8, 3
  %cmp91.not = icmp eq i32 %and90, 2
  br i1 %cmp91.not, label %if.end124, label %if.then93

if.then93:                                        ; preds = %sw.bb88
  %22 = ptrtoint i8* %dsp_row to i64
  %23 = trunc i64 %22 to i32
  %cmp94.not = icmp eq i32 %23, 0
  %and98 = and i32 %8, 2
  %tobool99.not = icmp eq i32 %and98, 0
  %or.cond369 = or i1 %cmp94.not, %tobool99.not
  br i1 %or.cond369, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.then93
  tail call void @t_png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.then93
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb103:                                         ; preds = %if.then35
  %and105 = and i32 %8, 1
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %lor.lhs.false107, label %if.then111

lor.lhs.false107:                                 ; preds = %sw.bb103
  %width108 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 37
  %24 = load i32, i32* %width108, align 8, !tbaa !37
  %cmp109 = icmp ult i32 %24, 2
  br i1 %cmp109, label %if.then111, label %if.end124

if.then111:                                       ; preds = %lor.lhs.false107, %sw.bb103
  %25 = ptrtoint i8* %dsp_row to i64
  %26 = trunc i64 %25 to i32
  %cmp112.not = icmp eq i32 %26, 0
  br i1 %cmp112.not, label %if.end115, label %if.then114

if.then114:                                       ; preds = %if.then111
  tail call void @t_png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.then111
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

sw.bb117:                                         ; preds = %if.then35
  %and119 = and i32 %8, 1
  %cmp120 = icmp eq i32 %and119, 0
  br i1 %cmp120, label %if.then122, label %if.end124

if.then122:                                       ; preds = %sw.bb117
  tail call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %cleanup

if.end124:                                        ; preds = %sw.bb, %lor.lhs.false, %sw.bb59, %lor.lhs.false78, %sw.bb88, %lor.lhs.false107, %sw.bb117, %land.lhs.true31, %cond.end
  %mode = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 15
  %27 = load i32, i32* %mode, align 4, !tbaa !2
  %and125 = and i32 %27, 4
  %cmp126 = icmp eq i32 %and125, 0
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end124
  tail call void @png_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)) #14
  unreachable

if.end129:                                        ; preds = %if.end124
  %t_row_buf = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 48
  %28 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %29 = ptrtoint i8* %28 to i64
  %lowerboundVal_1 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck = icmp ule i64 %lowerboundVal_1, %29
  %IsoHeap.UpperCheck = icmp uge i64 %upperboundVal_1, %29
  %IsoHeap.RangeCheck = and i1 %IsoHeap.LowerCheck, %IsoHeap.UpperCheck
  br i1 %IsoHeap.RangeCheck, label %IsoHeap_HIT, label %trap.fail

trap.fail:                                        ; preds = %if.end129
  %30 = tail call i1 @CacheUpdateandCheck_2(i8* %28, i64 0) #13
  %31 = tail call i1 @CacheUpdateandCheck(i8* %28) #13
  br label %IsoHeap_HIT

IsoHeap_HIT:                                      ; preds = %if.end129, %trap.fail
  store i8 -1, i8* %28, align 4, !tbaa !39
  %32 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %33 = load i64, i64* %rowbytes, align 8, !tbaa !32
  %add132 = add i64 %33, 1
  tail call void @t_png_read_IDAT_data(%struct.png_struct_def* nonnull %png_ptr, i8* %32, i64 %add132) #13
  %34 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %35 = ptrtoint i8* %34 to i64
  %lowerboundVal_1134 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1135 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck136 = icmp ule i64 %lowerboundVal_1134, %35
  %IsoHeap.UpperCheck137 = icmp uge i64 %upperboundVal_1135, %35
  %IsoHeap.RangeCheck138 = and i1 %IsoHeap.LowerCheck136, %IsoHeap.UpperCheck137
  br i1 %IsoHeap.RangeCheck138, label %IsoHeap_HIT143, label %trap.fail139

trap.fail139:                                     ; preds = %IsoHeap_HIT
  %36 = tail call i1 @CacheUpdateandCheck_2(i8* %34, i64 0) #13
  %37 = tail call i1 @CacheUpdateandCheck(i8* %34) #13
  br label %IsoHeap_HIT143

IsoHeap_HIT143:                                   ; preds = %IsoHeap_HIT, %trap.fail139
  %38 = load i8, i8* %34, align 4, !tbaa !39
  %cmp146.not = icmp eq i8 %38, 0
  br i1 %cmp146.not, label %if.end182, label %if.then148

if.then148:                                       ; preds = %IsoHeap_HIT143
  %39 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %40 = ptrtoint i8* %39 to i64
  %lowerboundVal_1150 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1151 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck152 = icmp ule i64 %lowerboundVal_1150, %40
  %IsoHeap.UpperCheck153 = icmp uge i64 %upperboundVal_1151, %40
  %IsoHeap.RangeCheck154 = and i1 %IsoHeap.LowerCheck152, %IsoHeap.UpperCheck153
  br i1 %IsoHeap.RangeCheck154, label %IsoHeap_HIT159, label %trap.fail155

trap.fail155:                                     ; preds = %if.then148
  %41 = tail call i1 @CacheUpdateandCheck_2(i8* %39, i64 0) #13
  %42 = tail call i1 @CacheUpdateandCheck(i8* %39) #13
  br label %IsoHeap_HIT159

IsoHeap_HIT159:                                   ; preds = %if.then148, %trap.fail155
  %43 = load i8, i8* %39, align 4, !tbaa !39
  %cmp162 = icmp ult i8 %43, 5
  br i1 %cmp162, label %if.then164, label %if.else

if.then164:                                       ; preds = %IsoHeap_HIT159
  %44 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 1
  %t_prev_row = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 46
  %45 = load i8*, i8** %t_prev_row, align 4, !tbaa !41
  %add.ptr166 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = ptrtoint i8* %44 to i64
  %lowerboundVal_1169 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1170 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck171 = icmp ule i64 %lowerboundVal_1169, %46
  %IsoHeap.UpperCheck172 = icmp uge i64 %upperboundVal_1170, %46
  %IsoHeap.RangeCheck173 = and i1 %IsoHeap.LowerCheck171, %IsoHeap.UpperCheck172
  br i1 %IsoHeap.RangeCheck173, label %IsoHeap_HIT178, label %trap.fail174

trap.fail174:                                     ; preds = %if.then164
  %47 = tail call i1 @CacheUpdateandCheck_2(i8* %44, i64 0) #13
  %48 = tail call i1 @CacheUpdateandCheck(i8* %44) #13
  br label %IsoHeap_HIT178

IsoHeap_HIT178:                                   ; preds = %if.then164, %trap.fail174
  %49 = load i8, i8* %44, align 4, !tbaa !39
  %conv180 = zext i8 %49 to i32
  call void @t_png_read_filter_row(%struct.png_struct_def* nonnull %png_ptr, %struct.png_row_info_struct* nonnull %row_info, i8* nonnull %add.ptr, i8* nonnull %add.ptr166, i32 %conv180) #13
  %.pre = load i64, i64* %rowbytes, align 8, !tbaa !32
  %.pre370 = add i64 %.pre, 1
  br label %if.end182

if.else:                                          ; preds = %IsoHeap_HIT159
  tail call void @png_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0)) #14
  unreachable

if.end182:                                        ; preds = %IsoHeap_HIT178, %IsoHeap_HIT143
  %add186.pre-phi = phi i64 [ %.pre370, %IsoHeap_HIT178 ], [ %add132, %IsoHeap_HIT143 ]
  %t_prev_row183 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 46
  %50 = load i8*, i8** %t_prev_row183, align 4, !tbaa !41
  %51 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %call = call i8* @t_memcpy(i8* %50, i8* %51, i64 %add186.pre-phi) #13
  %mng_features_permitted = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 125
  %52 = load i32, i32* %mng_features_permitted, align 8, !tbaa !42
  %and187 = and i32 %52, 4
  %cmp188.not = icmp eq i32 %and187, 0
  br i1 %cmp188.not, label %if.end198, label %land.lhs.true190

land.lhs.true190:                                 ; preds = %if.end182
  %filter_type = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 126
  %53 = load i8, i8* %filter_type, align 4, !tbaa !43
  %cmp192 = icmp eq i8 %53, 64
  br i1 %cmp192, label %if.then194, label %if.end198

if.then194:                                       ; preds = %land.lhs.true190
  %54 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %add.ptr196 = getelementptr inbounds i8, i8* %54, i64 1
  call fastcc void @t_png_do_read_intrapixel(%struct.png_row_info_struct* nonnull %row_info, i8* nonnull %add.ptr196)
  br label %if.end198

if.end198:                                        ; preds = %if.then194, %land.lhs.true190, %if.end182
  %transformations199 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 17
  %55 = load i32, i32* %transformations199, align 4, !tbaa !35
  %tobool200.not = icmp eq i32 %55, 0
  br i1 %tobool200.not, label %if.end202, label %if.then201

if.then201:                                       ; preds = %if.end198
  call void @png_do_read_transformations(%struct.png_struct_def* nonnull %png_ptr, %struct.png_row_info_struct* nonnull %row_info) #13
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %if.end198
  %transformed_pixel_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 71
  %56 = load i8, i8* %transformed_pixel_depth, align 1, !tbaa !44
  %cmp204 = icmp eq i8 %56, 0
  %57 = load i8, i8* %pixel_depth7, align 1, !tbaa !31
  br i1 %cmp204, label %if.then206, label %if.else216

if.then206:                                       ; preds = %if.end202
  store i8 %57, i8* %transformed_pixel_depth, align 1, !tbaa !44
  %maximum_pixel_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 70
  %58 = load i8, i8* %maximum_pixel_depth, align 2, !tbaa !45
  %cmp212 = icmp ugt i8 %57, %58
  br i1 %cmp212, label %if.then214, label %if.end225

if.then214:                                       ; preds = %if.then206
  call void @png_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #14
  unreachable

if.else216:                                       ; preds = %if.end202
  %cmp221.not = icmp eq i8 %56, %57
  br i1 %cmp221.not, label %if.end225, label %if.then223

if.then223:                                       ; preds = %if.else216
  call void @png_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #14
  unreachable

if.end225:                                        ; preds = %if.else216, %if.then206
  %59 = load i8, i8* %interlaced, align 4, !tbaa !34
  %cmp228.not = icmp eq i8 %59, 0
  br i1 %cmp228.not, label %if.else256, label %land.lhs.true230

land.lhs.true230:                                 ; preds = %if.end225
  %60 = load i32, i32* %transformations199, align 4, !tbaa !35
  %and232 = and i32 %60, 2
  %cmp233.not = icmp eq i32 %and232, 0
  br i1 %cmp233.not, label %if.else256, label %if.then235

if.then235:                                       ; preds = %land.lhs.true230
  %pass236 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 61
  %61 = load i8, i8* %pass236, align 1, !tbaa !36
  %cmp238 = icmp ult i8 %61, 6
  br i1 %cmp238, label %if.then240, label %if.end247

if.then240:                                       ; preds = %if.then235
  %conv237 = zext i8 %61 to i32
  %62 = load i8*, i8** %t_row_buf, align 4, !tbaa !38
  %add.ptr242 = getelementptr inbounds i8, i8* %62, i64 1
  call void @t_png_do_read_interlace(%struct.png_row_info_struct* nonnull %row_info, i8* nonnull %add.ptr242, i32 %conv237, i32 %60) #13
  br label %if.end247

if.end247:                                        ; preds = %if.then240, %if.then235
  %63 = ptrtoint i8* %dsp_row to i64
  %64 = trunc i64 %63 to i32
  %cmp248.not = icmp eq i32 %64, 0
  br i1 %cmp248.not, label %if.end251, label %if.then250

if.then250:                                       ; preds = %if.end247
  call void @t_png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 1) #13
  br label %if.end251

if.end251:                                        ; preds = %if.then250, %if.end247
  %65 = ptrtoint i8* %row to i64
  %66 = trunc i64 %65 to i32
  %cmp252.not = icmp eq i32 %66, 0
  br i1 %cmp252.not, label %if.end265, label %if.then254

if.then254:                                       ; preds = %if.end251
  call void @t_png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %row, i32 0) #13
  br label %if.end265

if.else256:                                       ; preds = %land.lhs.true230, %if.end225
  %67 = ptrtoint i8* %row to i64
  %68 = trunc i64 %67 to i32
  %cmp257.not = icmp eq i32 %68, 0
  br i1 %cmp257.not, label %if.end260, label %if.then259

if.then259:                                       ; preds = %if.else256
  call void @t_png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %row, i32 -1) #13
  br label %if.end260

if.end260:                                        ; preds = %if.then259, %if.else256
  %69 = ptrtoint i8* %dsp_row to i64
  %70 = trunc i64 %69 to i32
  %cmp261.not = icmp eq i32 %70, 0
  br i1 %cmp261.not, label %if.end265, label %if.then263

if.then263:                                       ; preds = %if.end260
  call void @t_png_combine_row(%struct.png_struct_def* nonnull %png_ptr, i8* %dsp_row, i32 -1) #13
  br label %if.end265

if.end265:                                        ; preds = %if.end260, %if.then263, %if.end251, %if.then254
  call void @png_read_finish_row(%struct.png_struct_def* nonnull %png_ptr) #13
  %read_row_fn = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 93
  %71 = load void (%struct.png_struct_def*, i32, i32)*, void (%struct.png_struct_def*, i32, i32)** %read_row_fn, align 8, !tbaa !46
  %cmp266.not = icmp eq void (%struct.png_struct_def*, i32, i32)* %71, null
  br i1 %cmp266.not, label %cleanup, label %if.then268

if.then268:                                       ; preds = %if.end265
  %72 = load i32, i32* %row_number, align 4, !tbaa !33
  %pass271 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 61
  %73 = load i8, i8* %pass271, align 1, !tbaa !36
  %conv272 = zext i8 %73 to i32
  call void %71(%struct.png_struct_def* nonnull %png_ptr, i32 %72, i32 %conv272) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end265, %if.then268, %entry, %if.then122, %if.end115, %if.end101, %if.end86, %if.end72, %if.end57, %if.end44
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #13
  ret void
}

declare dso_local void @t_png_combine_row(%struct.png_struct_def*, i8*, i32) local_unnamed_addr #2

declare dso_local void @t_png_read_IDAT_data(%struct.png_struct_def*, i8*, i64) local_unnamed_addr #2

declare dso_local void @t_png_do_read_interlace(%struct.png_row_info_struct*, i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_read_rows(%struct.png_struct_def* noalias %png_ptr, i8** readonly %row, i8** readonly %display_row, i32 %num_rows) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.png_struct_def* %png_ptr, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne i8** %row, null
  %cmp2 = icmp ne i8** %display_row, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end
  %cmp459.not = icmp eq i32 %num_rows, 0
  br i1 %cmp459.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.062 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %rp.061 = phi i8** [ %incdec.ptr, %for.body ], [ %row, %for.cond.preheader ]
  %dp.060 = phi i8** [ %incdec.ptr5, %for.body ], [ %display_row, %for.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %rp.061, i64 1
  %0 = load i8*, i8** %rp.061, align 8, !tbaa !50
  %incdec.ptr5 = getelementptr inbounds i8*, i8** %dp.060, i64 1
  %1 = load i8*, i8** %dp.060, align 8, !tbaa !50
  tail call void @png_read_row(%struct.png_struct_def* nonnull %png_ptr, i8* %0, i8* %1)
  %inc = add nuw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %num_rows
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !51

if.else:                                          ; preds = %if.end
  br i1 %cmp1, label %for.cond8.preheader, label %if.else16

for.cond8.preheader:                              ; preds = %if.else
  %cmp963.not = icmp eq i32 %num_rows, 0
  br i1 %cmp963.not, label %cleanup, label %for.body10

for.body10:                                       ; preds = %for.cond8.preheader, %for.body10
  %i.165 = phi i32 [ %inc14, %for.body10 ], [ 0, %for.cond8.preheader ]
  %rp.164 = phi i8** [ %incdec.ptr12, %for.body10 ], [ %row, %for.cond8.preheader ]
  %2 = load i8*, i8** %rp.164, align 8, !tbaa !50
  tail call void @png_read_row(%struct.png_struct_def* nonnull %png_ptr, i8* %2, i8* null)
  %incdec.ptr12 = getelementptr inbounds i8*, i8** %rp.164, i64 1
  %inc14 = add nuw i32 %i.165, 1
  %exitcond72.not = icmp eq i32 %inc14, %num_rows
  br i1 %exitcond72.not, label %cleanup, label %for.body10, !llvm.loop !52

if.else16:                                        ; preds = %if.else
  %cmp2066 = icmp ne i32 %num_rows, 0
  %or.cond69 = and i1 %cmp2, %cmp2066
  br i1 %or.cond69, label %for.body21, label %cleanup

for.body21:                                       ; preds = %if.else16, %for.body21
  %i.268 = phi i32 [ %inc25, %for.body21 ], [ 0, %if.else16 ]
  %dp.167 = phi i8** [ %incdec.ptr23, %for.body21 ], [ %display_row, %if.else16 ]
  %3 = load i8*, i8** %dp.167, align 8, !tbaa !50
  tail call void @png_read_row(%struct.png_struct_def* nonnull %png_ptr, i8* null, i8* %3)
  %incdec.ptr23 = getelementptr inbounds i8*, i8** %dp.167, i64 1
  %inc25 = add nuw i32 %i.268, 1
  %exitcond73.not = icmp eq i32 %inc25, %num_rows
  br i1 %exitcond73.not, label %cleanup, label %for.body21, !llvm.loop !53

cleanup:                                          ; preds = %for.body21, %for.body10, %for.body, %for.cond8.preheader, %for.cond.preheader, %if.else16, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_image(%struct.png_struct_def* noalias %png_ptr, i8** nocapture readonly %image) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.png_struct_def* %png_ptr, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 16
  %0 = load i32, i32* %flags, align 8, !tbaa !18
  %and = and i32 %0, 64
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then.i, label %if.else

if.then.i:                                        ; preds = %if.end
  %call = tail call i32 @png_set_interlace_handling(%struct.png_struct_def* nonnull %png_ptr) #13
  %1 = load i32, i32* %flags, align 8, !tbaa !18, !alias.scope !54
  %and.i = and i32 %1, 64
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @png_read_start_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end11

if.else.i:                                        ; preds = %if.then.i
  tail call void @png_app_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0)) #13
  br label %if.end11

if.else:                                          ; preds = %if.end
  %interlaced = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 60
  %2 = load i8, i8* %interlaced, align 4, !tbaa !34
  %cmp3.not = icmp eq i8 %2, 0
  br i1 %cmp3.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %transformations = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 17
  %3 = load i32, i32* %transformations, align 4, !tbaa !35
  %and5 = and i32 %3, 2
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  tail call void @png_warning(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0)) #13
  %height = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 38
  %4 = load i32, i32* %height, align 4, !tbaa !57
  %num_rows = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 39
  store i32 %4, i32* %num_rows, align 8, !tbaa !58
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.else
  %call10 = tail call i32 @png_set_interlace_handling(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end11

if.end11:                                         ; preds = %if.else.i, %if.then2.i, %if.end9
  %pass.0 = phi i32 [ %call10, %if.end9 ], [ %call, %if.then2.i ], [ %call, %if.else.i ]
  %height12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 38
  %5 = load i32, i32* %height12, align 4, !tbaa !57
  %cmp1348 = icmp sgt i32 %pass.0, 0
  br i1 %cmp1348, label %for.cond15.preheader.lr.ph, label %cleanup

for.cond15.preheader.lr.ph:                       ; preds = %if.end11
  %cmp1645.not = icmp eq i32 %5, 0
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond15.preheader.lr.ph, %for.inc19
  %j.049 = phi i32 [ 0, %for.cond15.preheader.lr.ph ], [ %inc20, %for.inc19 ]
  br i1 %cmp1645.not, label %for.inc19, label %for.body18

for.body18:                                       ; preds = %for.cond15.preheader, %for.body18
  %rp.047 = phi i8** [ %incdec.ptr, %for.body18 ], [ %image, %for.cond15.preheader ]
  %i.046 = phi i32 [ %inc, %for.body18 ], [ 0, %for.cond15.preheader ]
  %6 = load i8*, i8** %rp.047, align 8, !tbaa !50
  tail call void @png_read_row(%struct.png_struct_def* nonnull %png_ptr, i8* %6, i8* null)
  %incdec.ptr = getelementptr inbounds i8*, i8** %rp.047, i64 1
  %inc = add nuw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc19, label %for.body18, !llvm.loop !59

for.inc19:                                        ; preds = %for.body18, %for.cond15.preheader
  %inc20 = add nuw nsw i32 %j.049, 1
  %exitcond50.not = icmp eq i32 %inc20, %pass.0
  br i1 %exitcond50.not, label %cleanup, label %for.cond15.preheader, !llvm.loop !60

cleanup:                                          ; preds = %for.inc19, %if.end11, %entry
  ret void
}

declare dso_local i32 @png_set_interlace_handling(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_warning(%struct.png_struct_def*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @t_png_read_image(%struct.png_struct_def* noalias %png_ptr, i64 %image) local_unnamed_addr #0 {
entry:
  %rp = alloca i8**, align 8
  %rp.0.rp.0.rp.0..sroa_cast = bitcast i8*** %rp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %rp.0.rp.0.rp.0..sroa_cast)
  store volatile i8** null, i8*** %rp, align 8, !tbaa !50
  %cmp = icmp eq %struct.png_struct_def* %png_ptr, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 16
  %0 = load i32, i32* %flags, align 8, !tbaa !18
  %and = and i32 %0, 64
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then.i, label %if.else

if.then.i:                                        ; preds = %if.end
  %call = tail call i32 @png_set_interlace_handling(%struct.png_struct_def* nonnull %png_ptr) #13
  %1 = load i32, i32* %flags, align 8, !tbaa !18, !alias.scope !61
  %and.i = and i32 %1, 64
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @png_read_start_row(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end11

if.else.i:                                        ; preds = %if.then.i
  tail call void @png_app_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0)) #13
  br label %if.end11

if.else:                                          ; preds = %if.end
  %interlaced = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 60
  %2 = load i8, i8* %interlaced, align 4, !tbaa !34
  %cmp3.not = icmp eq i8 %2, 0
  br i1 %cmp3.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %transformations = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 17
  %3 = load i32, i32* %transformations, align 4, !tbaa !35
  %and5 = and i32 %3, 2
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  tail call void @png_warning(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0)) #13
  %height = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 38
  %4 = load i32, i32* %height, align 4, !tbaa !57
  %num_rows = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 39
  store i32 %4, i32* %num_rows, align 8, !tbaa !58
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.else
  %call10 = tail call i32 @png_set_interlace_handling(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end11

if.end11:                                         ; preds = %if.else.i, %if.then2.i, %if.end9
  %pass.0 = phi i32 [ %call10, %if.end9 ], [ %call, %if.then2.i ], [ %call, %if.else.i ]
  %height12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 38
  %5 = load i32, i32* %height12, align 4, !tbaa !57
  %cmp1348 = icmp sgt i32 %pass.0, 0
  br i1 %cmp1348, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end11
  %6 = inttoptr i64 %image to i8**
  %cmp1646.not = icmp eq i32 %5, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc19
  %j.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.inc19 ]
  store volatile i8** %6, i8*** %rp, align 8, !tbaa !50
  br i1 %cmp1646.not, label %for.inc19, label %for.body18

for.body18:                                       ; preds = %for.body, %IsoHeap_HIT
  %i.047 = phi i32 [ %inc, %IsoHeap_HIT ], [ 0, %for.body ]
  %rp.0.rp.0.rp.0. = load volatile i8**, i8*** %rp, align 8, !tbaa !50
  %7 = ptrtoint i8** %rp.0.rp.0.rp.0. to i64
  %lowerboundVal_1 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck = icmp ule i64 %lowerboundVal_1, %7
  %IsoHeap.UpperCheck = icmp uge i64 %upperboundVal_1, %7
  %IsoHeap.RangeCheck = and i1 %IsoHeap.LowerCheck, %IsoHeap.UpperCheck
  br i1 %IsoHeap.RangeCheck, label %IsoHeap_HIT, label %trap.fail

trap.fail:                                        ; preds = %for.body18
  %addr_to_ptr = bitcast i8** %rp.0.rp.0.rp.0. to i8*
  %8 = tail call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr, i64 0) #13
  %9 = tail call i1 @CacheUpdateandCheck(i8* %addr_to_ptr) #13
  br label %IsoHeap_HIT

IsoHeap_HIT:                                      ; preds = %for.body18, %trap.fail
  %10 = load i8*, i8** %rp.0.rp.0.rp.0., align 4, !tbaa !50
  tail call void @t_png_read_row(%struct.png_struct_def* nonnull %png_ptr, i8* %10, i8* null)
  %rp.0.rp.0.rp.0.26 = load volatile i8**, i8*** %rp, align 8, !tbaa !50
  %incdec.ptr = getelementptr inbounds i8*, i8** %rp.0.rp.0.rp.0.26, i64 1
  store volatile i8** %incdec.ptr, i8*** %rp, align 8, !tbaa !50
  %inc = add nuw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc19, label %for.body18, !llvm.loop !64

for.inc19:                                        ; preds = %IsoHeap_HIT, %for.body
  %inc20 = add nuw nsw i32 %j.049, 1
  %exitcond50.not = icmp eq i32 %inc20, %pass.0
  br i1 %exitcond50.not, label %cleanup, label %for.body, !llvm.loop !65

cleanup:                                          ; preds = %for.inc19, %if.end11, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %rp.0.rp.0.rp.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_end(%struct.png_struct_def* noalias %png_ptr, %struct.png_info_def* noalias %info_ptr) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.png_struct_def* %png_ptr, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @png_chunk_unknown_handling(%struct.png_struct_def* nonnull %png_ptr, i32 1229209940) #13
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @png_read_finish_IDAT(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %color_type = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 63
  %0 = load i8, i8* %color_type, align 1, !tbaa !20
  %cmp4 = icmp eq i8 %0, 3
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end3
  %num_palette_max = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 56
  %1 = load i32, i32* %num_palette_max, align 4, !tbaa !66
  %num_palette = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 55
  %2 = load i16, i16* %num_palette, align 8, !tbaa !67
  %conv6 = zext i16 %2 to i32
  %cmp7 = icmp sgt i32 %1, %conv6
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  tail call void @png_benign_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0)) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.end3
  %chunk_name12 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 44
  %mode = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 15
  %cmp24 = icmp eq %struct.png_info_def* %info_ptr, null
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 16
  br label %do.body

do.body:                                          ; preds = %if.end170, %if.end10
  %call11 = tail call i32 @png_read_chunk_header(%struct.png_struct_def* nonnull %png_ptr) #13
  %3 = load i32, i32* %chunk_name12, align 8, !tbaa !19
  %cond = icmp eq i32 %3, 1229209940
  br i1 %cond, label %if.else23, label %if.then15

if.then15:                                        ; preds = %do.body
  %4 = load i32, i32* %mode, align 4, !tbaa !2
  %or = or i32 %4, 8192
  store i32 %or, i32* %mode, align 4, !tbaa !2
  switch i32 %3, label %if.else23 [
    i32 1229278788, label %if.then19
    i32 1229472850, label %if.then22
  ]

if.then19:                                        ; preds = %if.then15
  tail call void @png_handle_IEND(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call11) #13
  br label %if.end170

if.then22:                                        ; preds = %if.then15
  tail call void @png_handle_IHDR(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* %info_ptr, i32 %call11) #13
  br label %if.end170

if.else23:                                        ; preds = %do.body, %if.then15
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else23
  %call27 = tail call i32 @png_crc_finish(%struct.png_struct_def* nonnull %png_ptr, i32 %call11) #13
  br label %if.end170

if.else28:                                        ; preds = %if.else23
  %call29 = tail call i32 @png_chunk_unknown_handling(%struct.png_struct_def* nonnull %png_ptr, i32 %3) #13
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.else52, label %if.then32

if.then32:                                        ; preds = %if.else28
  br i1 %cond, label %if.then35, label %if.end45

if.then35:                                        ; preds = %if.then32
  %cmp36.not = icmp eq i32 %call11, 0
  br i1 %cmp36.not, label %lor.lhs.false, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %if.then35
  %5 = load i32, i32* %flags, align 8, !tbaa !18
  %and = and i32 %5, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true38, %if.then35
  %6 = load i32, i32* %mode, align 4, !tbaa !2
  %and40 = and i32 %6, 8192
  %cmp41.not = icmp eq i32 %and40, 0
  br i1 %cmp41.not, label %if.end45.thread, label %if.then43

if.then43:                                        ; preds = %lor.lhs.false, %land.lhs.true38
  tail call void @png_benign_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0)) #13
  br label %if.end45.thread

if.end45.thread:                                  ; preds = %lor.lhs.false, %if.then43
  tail call void @png_handle_unknown(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11, i32 %call29) #13
  br label %if.end170

if.end45:                                         ; preds = %if.then32
  tail call void @png_handle_unknown(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11, i32 %call29) #13
  %cmp46 = icmp eq i32 %3, 1347179589
  br i1 %cmp46, label %if.then48, label %if.end170

if.then48:                                        ; preds = %if.end45
  %7 = load i32, i32* %mode, align 4, !tbaa !2
  %or50 = or i32 %7, 2
  store i32 %or50, i32* %mode, align 4, !tbaa !2
  br label %if.end170

if.else52:                                        ; preds = %if.else28
  switch i32 %3, label %if.else146 [
    i32 1229209940, label %if.then55
    i32 1347179589, label %if.then73
    i32 1649100612, label %if.then77
    i32 1665684045, label %if.then81
    i32 1700284774, label %if.then85
    i32 1732332865, label %if.then89
    i32 1749635924, label %if.then93
    i32 1866876531, label %if.then97
    i32 1883455820, label %if.then101
    i32 1933787468, label %if.then105
    i32 1883789683, label %if.then109
    i32 1933723988, label %if.then113
    i32 1934772034, label %if.then117
    i32 1766015824, label %if.then121
    i32 1934642260, label %if.then125
    i32 1950701684, label %if.then129
    i32 1950960965, label %if.then133
    i32 1951551059, label %if.then137
    i32 2052348020, label %if.then141
    i32 1767135348, label %if.then145
  ]

if.then55:                                        ; preds = %if.else52
  %cmp56.not = icmp eq i32 %call11, 0
  br i1 %cmp56.not, label %lor.lhs.false62, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.then55
  %8 = load i32, i32* %flags, align 8, !tbaa !18
  %and60 = and i32 %8, 8
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then67, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %land.lhs.true58, %if.then55
  %9 = load i32, i32* %mode, align 4, !tbaa !2
  %and64 = and i32 %9, 8192
  %cmp65.not = icmp eq i32 %and64, 0
  br i1 %cmp65.not, label %if.end68, label %if.then67

if.then67:                                        ; preds = %lor.lhs.false62, %land.lhs.true58
  tail call void @png_benign_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0)) #13
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %lor.lhs.false62
  %call69 = tail call i32 @png_crc_finish(%struct.png_struct_def* nonnull %png_ptr, i32 %call11) #13
  br label %if.end170

if.then73:                                        ; preds = %if.else52
  tail call void @png_handle_PLTE(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then77:                                        ; preds = %if.else52
  tail call void @png_handle_bKGD(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then81:                                        ; preds = %if.else52
  tail call void @png_handle_cHRM(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then85:                                        ; preds = %if.else52
  tail call void @png_handle_eXIf(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then89:                                        ; preds = %if.else52
  tail call void @png_handle_gAMA(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then93:                                        ; preds = %if.else52
  tail call void @png_handle_hIST(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then97:                                        ; preds = %if.else52
  tail call void @png_handle_oFFs(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then101:                                       ; preds = %if.else52
  tail call void @png_handle_pCAL(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then105:                                       ; preds = %if.else52
  tail call void @png_handle_sCAL(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then109:                                       ; preds = %if.else52
  tail call void @png_handle_pHYs(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then113:                                       ; preds = %if.else52
  tail call void @png_handle_sBIT(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then117:                                       ; preds = %if.else52
  tail call void @png_handle_sRGB(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then121:                                       ; preds = %if.else52
  tail call void @png_handle_iCCP(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then125:                                       ; preds = %if.else52
  tail call void @png_handle_sPLT(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then129:                                       ; preds = %if.else52
  tail call void @png_handle_tEXt(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then133:                                       ; preds = %if.else52
  tail call void @png_handle_tIME(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then137:                                       ; preds = %if.else52
  tail call void @png_handle_tRNS(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then141:                                       ; preds = %if.else52
  tail call void @png_handle_zTXt(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.then145:                                       ; preds = %if.else52
  tail call void @png_handle_iTXt(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11) #13
  br label %if.end170

if.else146:                                       ; preds = %if.else52
  tail call void @png_handle_unknown(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 %call11, i32 0) #13
  br label %if.end170

if.end170:                                        ; preds = %if.end45.thread, %if.then22, %if.then48, %if.end45, %if.then73, %if.then81, %if.then89, %if.then97, %if.then105, %if.then113, %if.then121, %if.then129, %if.then137, %if.then145, %if.else146, %if.then141, %if.then133, %if.then125, %if.then117, %if.then109, %if.then101, %if.then93, %if.then85, %if.then77, %if.end68, %if.then26, %if.then19
  %10 = load i32, i32* %mode, align 4, !tbaa !2
  %and172 = and i32 %10, 16
  %cmp173 = icmp eq i32 %and172, 0
  br i1 %cmp173, label %do.body, label %cleanup, !llvm.loop !68

cleanup:                                          ; preds = %if.end170, %entry
  ret void
}

declare dso_local void @png_read_finish_IDAT(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_benign_error(%struct.png_struct_def*, i8*) local_unnamed_addr #2

declare dso_local i32 @png_crc_finish(%struct.png_struct_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @png_destroy_read_struct(%struct.png_struct_def** %png_ptr_ptr, %struct.png_info_def** %info_ptr_ptr, %struct.png_info_def** %end_info_ptr_ptr) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.png_struct_def** %png_ptr_ptr, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr_ptr, align 8, !tbaa !50
  %cmp1 = icmp eq %struct.png_struct_def* %0, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  tail call void @png_destroy_info_struct(%struct.png_struct_def* nonnull %0, %struct.png_info_def** %end_info_ptr_ptr) #13
  tail call void @png_destroy_info_struct(%struct.png_struct_def* nonnull %0, %struct.png_info_def** %info_ptr_ptr) #13
  store %struct.png_struct_def* null, %struct.png_struct_def** %png_ptr_ptr, align 8, !tbaa !50
  tail call void @png_destroy_gamma_table(%struct.png_struct_def* nonnull %0) #13
  %t_big_row_buf.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 132
  %1 = load i8*, i8** %t_big_row_buf.i, align 4, !tbaa !69, !alias.scope !70
  tail call void @t_png_free(%struct.png_struct_def* nonnull %0, i8* %1) #13
  store i8* null, i8** %t_big_row_buf.i, align 4, !tbaa !69, !alias.scope !70
  %t_big_prev_row.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 147
  %2 = load i8*, i8** %t_big_prev_row.i, align 4, !tbaa !73, !alias.scope !70
  tail call void @t_png_free(%struct.png_struct_def* nonnull %0, i8* %2) #13
  store i8* null, i8** %t_big_prev_row.i, align 4, !tbaa !73, !alias.scope !70
  %read_buffer.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 143
  %3 = load i8*, i8** %read_buffer.i, align 8, !tbaa !74, !alias.scope !70
  tail call void @png_free(%struct.png_struct_def* nonnull %0, i8* %3) #13
  store i8* null, i8** %read_buffer.i, align 8, !tbaa !74, !alias.scope !70
  %palette_lookup.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 110
  %4 = load i8*, i8** %palette_lookup.i, align 8, !tbaa !75, !alias.scope !70
  tail call void @png_free(%struct.png_struct_def* nonnull %0, i8* %4) #13
  store i8* null, i8** %palette_lookup.i, align 8, !tbaa !75, !alias.scope !70
  %quantize_index.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 111
  %5 = load i8*, i8** %quantize_index.i, align 8, !tbaa !76, !alias.scope !70
  tail call void @png_free(%struct.png_struct_def* nonnull %0, i8* %5) #13
  store i8* null, i8** %quantize_index.i, align 8, !tbaa !76, !alias.scope !70
  %free_me.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 114
  %6 = load i32, i32* %free_me.i, align 4, !tbaa !77, !alias.scope !70
  %and.i = and i32 %6, 4096
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end3
  %7 = bitcast %struct.png_struct_def* %0 to i8*
  %palette.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 54
  %8 = bitcast %struct.png_color_struct** %palette.i to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !78, !alias.scope !70
  tail call void @png_zfree(i8* nonnull %7, i8* %9) #13
  store %struct.png_color_struct* null, %struct.png_color_struct** %palette.i, align 8, !tbaa !78, !alias.scope !70
  %.pre.i = load i32, i32* %free_me.i, align 4, !tbaa !77, !alias.scope !70
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end3
  %10 = phi i32 [ %.pre.i, %if.then.i ], [ %6, %if.end3 ]
  %and8.i = and i32 %10, -4097
  store i32 %and8.i, i32* %free_me.i, align 4, !tbaa !77, !alias.scope !70
  %and10.i = and i32 %10, 8192
  %cmp11.not.i = icmp eq i32 %and10.i, 0
  br i1 %cmp11.not.i, label %png_read_destroy.exit, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  %trans_alpha.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 91
  %11 = load i8*, i8** %trans_alpha.i, align 8, !tbaa !79, !alias.scope !70
  tail call void @png_free(%struct.png_struct_def* nonnull %0, i8* %11) #13
  store i8* null, i8** %trans_alpha.i, align 8, !tbaa !79, !alias.scope !70
  %.pre60.i = load i32, i32* %free_me.i, align 4, !tbaa !77, !alias.scope !70
  br label %png_read_destroy.exit

png_read_destroy.exit:                            ; preds = %if.end.i, %if.then12.i
  %12 = phi i32 [ %.pre60.i, %if.then12.i ], [ %and8.i, %if.end.i ]
  %and16.i = and i32 %12, -8193
  store i32 %and16.i, i32* %free_me.i, align 4, !tbaa !77, !alias.scope !70
  %zstream.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 19
  %call.i = tail call i32 @inflateEnd(%struct.z_stream_s* nonnull %zstream.i) #13
  %save_buffer.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 99
  %13 = load i8*, i8** %save_buffer.i, align 8, !tbaa !80, !alias.scope !70
  tail call void @png_free(%struct.png_struct_def* nonnull %0, i8* %13) #13
  store i8* null, i8** %save_buffer.i, align 8, !tbaa !80, !alias.scope !70
  %data.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 141, i32 1
  %14 = load i8*, i8** %data.i, align 8, !tbaa !81, !alias.scope !70
  tail call void @png_free(%struct.png_struct_def* nonnull %0, i8* %14) #13
  store i8* null, i8** %data.i, align 8, !tbaa !81, !alias.scope !70
  %chunk_list.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 119
  %15 = load i8*, i8** %chunk_list.i, align 8, !tbaa !82, !alias.scope !70
  tail call void @png_free(%struct.png_struct_def* nonnull %0, i8* %15) #13
  store i8* null, i8** %chunk_list.i, align 8, !tbaa !82, !alias.scope !70
  %riffled_palette.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %0, i64 0, i32 124
  %16 = load i8*, i8** %riffled_palette.i, align 8, !tbaa !83, !alias.scope !70
  tail call void @png_free(%struct.png_struct_def* nonnull %0, i8* %16) #13
  store i8* null, i8** %riffled_palette.i, align 8, !tbaa !83, !alias.scope !70
  tail call void @png_destroy_png_struct(%struct.png_struct_def* nonnull %0) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %png_read_destroy.exit
  ret void
}

declare dso_local void @png_destroy_info_struct(%struct.png_struct_def*, %struct.png_info_def**) local_unnamed_addr #2

declare dso_local void @png_destroy_png_struct(%struct.png_struct_def*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define dso_local void @png_set_read_status_fn(%struct.png_struct_def* noalias %png_ptr, void (%struct.png_struct_def*, i32, i32)* %read_row_fn) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.png_struct_def* %png_ptr, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %read_row_fn1 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 93
  store void (%struct.png_struct_def*, i32, i32)* %read_row_fn, void (%struct.png_struct_def*, i32, i32)** %read_row_fn1, align 8, !tbaa !46
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_read_png(%struct.png_struct_def* noalias %png_ptr, %struct.png_info_def* noalias %info_ptr, i32 %transforms, i8* nocapture readnone %params) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.png_struct_def* %png_ptr, null
  %cmp1 = icmp eq %struct.png_info_def* %info_ptr, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @png_read_info(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr)
  %height = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %info_ptr, i64 0, i32 1
  %0 = load i32, i32* %height, align 4, !tbaa !84
  %cmp2 = icmp ugt i32 %0, 536870911
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @png_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0)) #14
  unreachable

if.end5:                                          ; preds = %if.end
  %1 = trunc i32 %transforms to i16
  %cmp6.not = icmp sgt i16 %1, -1
  br i1 %cmp6.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  tail call void @png_set_scale_16(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %and10 = and i32 %transforms, 1
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  tail call void @png_set_strip_16(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9
  %and15 = and i32 %transforms, 2
  %cmp16.not = icmp eq i32 %and15, 0
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  tail call void @png_set_strip_alpha(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14
  %and20 = and i32 %transforms, 4
  %cmp21.not = icmp eq i32 %and20, 0
  br i1 %cmp21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void @png_set_packing(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %and25 = and i32 %transforms, 8
  %cmp26.not = icmp eq i32 %and25, 0
  br i1 %cmp26.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end24
  tail call void @png_set_packswap(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24
  %and30 = and i32 %transforms, 16
  %cmp31.not = icmp eq i32 %and30, 0
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end29
  tail call void @png_set_expand(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29
  %and35 = and i32 %transforms, 32
  %cmp36.not = icmp eq i32 %and35, 0
  br i1 %cmp36.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end34
  tail call void @png_set_invert_mono(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end34
  %and40 = and i32 %transforms, 64
  %cmp41.not = icmp eq i32 %and40, 0
  br i1 %cmp41.not, label %if.end49, label %if.then43

if.then43:                                        ; preds = %if.end39
  %valid = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %info_ptr, i64 0, i32 2
  %2 = load i32, i32* %valid, align 8, !tbaa !87
  %and44 = and i32 %2, 2
  %cmp45.not = icmp eq i32 %and44, 0
  br i1 %cmp45.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.then43
  %sig_bit = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %info_ptr, i64 0, i32 24
  tail call void @png_set_shift(%struct.png_struct_def* nonnull %png_ptr, %struct.png_color_8_struct* nonnull %sig_bit) #13
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.then47, %if.end39
  %3 = trunc i32 %transforms to i8
  %cmp51.not = icmp sgt i8 %3, -1
  br i1 %cmp51.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end49
  tail call void @png_set_bgr(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49
  %and55 = and i32 %transforms, 256
  %cmp56.not = icmp eq i32 %and55, 0
  br i1 %cmp56.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end54
  tail call void @png_set_swap_alpha(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %and60 = and i32 %transforms, 512
  %cmp61.not = icmp eq i32 %and60, 0
  br i1 %cmp61.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end59
  tail call void @png_set_swap(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end59
  %and65 = and i32 %transforms, 1024
  %cmp66.not = icmp eq i32 %and65, 0
  br i1 %cmp66.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end64
  tail call void @png_set_invert_alpha(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end64
  %and70 = and i32 %transforms, 8192
  %cmp71.not = icmp eq i32 %and70, 0
  br i1 %cmp71.not, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end69
  tail call void @png_set_gray_to_rgb(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end69
  %and75 = and i32 %transforms, 16384
  %cmp76.not = icmp eq i32 %and75, 0
  br i1 %cmp76.not, label %if.then.i, label %if.then78

if.then78:                                        ; preds = %if.end74
  tail call void @png_set_expand_16(%struct.png_struct_def* nonnull %png_ptr) #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.end74, %if.then78
  %call = tail call i32 @png_set_interlace_handling(%struct.png_struct_def* nonnull %png_ptr) #13
  %flags.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 16
  %4 = load i32, i32* %flags.i, align 8, !tbaa !18, !alias.scope !88, !noalias !91
  %and.i = and i32 %4, 64
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @png_read_start_row(%struct.png_struct_def* nonnull %png_ptr) #13, !noalias !91
  tail call void @png_read_transform_info(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr) #13
  br label %png_read_update_info.exit

if.else.i:                                        ; preds = %if.then.i
  tail call void @png_app_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0)) #13
  br label %png_read_update_info.exit

png_read_update_info.exit:                        ; preds = %if.then2.i, %if.else.i
  tail call void @png_free_data(%struct.png_struct_def* nonnull %png_ptr, %struct.png_info_def* nonnull %info_ptr, i32 64, i32 0) #13
  %row_pointers = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %info_ptr, i64 0, i32 53
  %5 = load i8**, i8*** %row_pointers, align 4, !tbaa !93
  %6 = ptrtoint i8** %5 to i64
  %7 = and i64 %6, 4294967295
  %cmp80 = icmp eq i64 %7, 0
  br i1 %cmp80, label %if.then82, label %if.end113

if.then82:                                        ; preds = %png_read_update_info.exit
  %8 = load i32, i32* %height, align 4, !tbaa !84
  %conv84 = zext i32 %8 to i64
  %mul = shl nuw nsw i64 %conv84, 3
  %call85 = tail call noalias i8* @t_png_malloc(%struct.png_struct_def* nonnull %png_ptr, i64 %mul) #13
  %9 = bitcast i8*** %row_pointers to i8**
  store i8* %call85, i8** %9, align 4, !tbaa !93
  %10 = load i32, i32* %height, align 4, !tbaa !84
  %cmp88179.not = icmp eq i32 %10, 0
  br i1 %cmp88179.not, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %if.then82
  %free_me184 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %info_ptr, i64 0, i32 45
  %11 = load i32, i32* %free_me184, align 4, !tbaa !94
  %or185 = or i32 %11, 64
  store i32 %or185, i32* %free_me184, align 4, !tbaa !94
  br label %if.end113

for.body.lr.ph:                                   ; preds = %if.then82
  %12 = zext i32 %10 to i64
  %13 = ptrtoint i8* %call85 to i64
  %ScaledMaxIndex181 = shl nuw nsw i64 %12, 3
  call fastcc void @iso_heap_check_and_trap(i64 %13, i64 %ScaledMaxIndex181) #13
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %IsoHeap_HIT
  %indvars.iv182 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next183, %IsoHeap_HIT ]
  %14 = load i8**, i8*** %row_pointers, align 4, !tbaa !93
  %15 = ptrtoint i8** %14 to i64
  %lowerboundVal_1 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck = icmp ule i64 %lowerboundVal_1, %15
  %IsoHeap.UpperCheck = icmp uge i64 %upperboundVal_1, %15
  %IsoHeap.RangeCheck = and i1 %IsoHeap.LowerCheck, %IsoHeap.UpperCheck
  br i1 %IsoHeap.RangeCheck, label %IsoHeap_HIT, label %trap.fail

trap.fail:                                        ; preds = %for.body
  %addr_to_ptr = bitcast i8** %14 to i8*
  %16 = tail call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr, i64 0) #13
  %17 = tail call i1 @CacheUpdateandCheck(i8* %addr_to_ptr) #13
  br label %IsoHeap_HIT

IsoHeap_HIT:                                      ; preds = %for.body, %trap.fail
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %indvars.iv182
  store i8* null, i8** %arrayidx, align 4, !tbaa !50
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1
  %18 = load i32, i32* %height, align 4, !tbaa !84
  %19 = zext i32 %18 to i64
  %cmp88 = icmp ult i64 %indvars.iv.next183, %19
  br i1 %cmp88, label %for.body, label %for.end, !llvm.loop !95

for.end:                                          ; preds = %IsoHeap_HIT
  %free_me = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %info_ptr, i64 0, i32 45
  %20 = load i32, i32* %free_me, align 4, !tbaa !94
  %or = or i32 %20, 64
  store i32 %or, i32* %free_me, align 4, !tbaa !94
  %cmp93177.not = icmp eq i32 %18, 0
  br i1 %cmp93177.not, label %if.end113, label %for.body95.lr.ph

for.body95.lr.ph:                                 ; preds = %for.end
  %21 = zext i32 %18 to i64
  %22 = load i8**, i8*** %row_pointers, align 4, !tbaa !93
  %23 = ptrtoint i8** %22 to i64
  %ScaledMaxIndex = shl nuw nsw i64 %21, 3
  call fastcc void @iso_heap_check_and_trap(i64 %23, i64 %ScaledMaxIndex) #13
  %rowbytes = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %info_ptr, i64 0, i32 3
  br label %for.body95

for.body95:                                       ; preds = %for.body95.lr.ph, %IsoHeap_HIT108
  %indvars.iv = phi i64 [ 0, %for.body95.lr.ph ], [ %indvars.iv.next, %IsoHeap_HIT108 ]
  %24 = load i64, i64* %rowbytes, align 8, !tbaa !96
  %call96 = tail call noalias i8* @t_png_malloc(%struct.png_struct_def* %png_ptr, i64 %24) #13
  %25 = load i8**, i8*** %row_pointers, align 4, !tbaa !93
  %26 = ptrtoint i8** %25 to i64
  %lowerboundVal_199 = load i64, i64* @lowerbound_1, align 8
  %upperboundVal_1100 = load i64, i64* @upperbound_1, align 8
  %IsoHeap.LowerCheck101 = icmp ule i64 %lowerboundVal_199, %26
  %IsoHeap.UpperCheck102 = icmp uge i64 %upperboundVal_1100, %26
  %IsoHeap.RangeCheck103 = and i1 %IsoHeap.LowerCheck101, %IsoHeap.UpperCheck102
  br i1 %IsoHeap.RangeCheck103, label %IsoHeap_HIT108, label %trap.fail104

trap.fail104:                                     ; preds = %for.body95
  %addr_to_ptr106 = bitcast i8** %25 to i8*
  %27 = tail call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr106, i64 0) #13
  %28 = tail call i1 @CacheUpdateandCheck(i8* %addr_to_ptr106) #13
  br label %IsoHeap_HIT108

IsoHeap_HIT108:                                   ; preds = %for.body95, %trap.fail104
  %arrayidx109 = getelementptr inbounds i8*, i8** %25, i64 %indvars.iv
  store i8* %call96, i8** %arrayidx109, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %29 = load i32, i32* %height, align 4, !tbaa !84
  %30 = zext i32 %29 to i64
  %cmp93 = icmp ult i64 %indvars.iv.next, %30
  br i1 %cmp93, label %for.body95, label %if.end113, !llvm.loop !97

if.end113:                                        ; preds = %IsoHeap_HIT108, %for.end.thread, %for.end, %png_read_update_info.exit
  %31 = load i8**, i8*** %row_pointers, align 4, !tbaa !93
  %32 = ptrtoint i8** %31 to i64
  tail call void @t_png_read_image(%struct.png_struct_def* %png_ptr, i64 %32)
  %valid115 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %info_ptr, i64 0, i32 2
  %33 = load i32, i32* %valid115, align 8, !tbaa !87
  %or116 = or i32 %33, 32768
  store i32 %or116, i32* %valid115, align 8, !tbaa !87
  tail call void @png_read_end(%struct.png_struct_def* %png_ptr, %struct.png_info_def* nonnull %info_ptr)
  br label %return

return:                                           ; preds = %entry, %if.end113
  ret void
}

declare dso_local void @png_set_scale_16(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_strip_16(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_strip_alpha(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_packing(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_packswap(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_expand(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_invert_mono(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_shift(%struct.png_struct_def*, %struct.png_color_8_struct*) local_unnamed_addr #2

declare dso_local void @png_set_bgr(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_swap_alpha(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_swap(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_invert_alpha(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_gray_to_rgb(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_expand_16(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_free_data(%struct.png_struct_def*, %struct.png_info_def*, i32, i32) local_unnamed_addr #2

declare dso_local noalias i8* @t_png_malloc(%struct.png_struct_def*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @png_image_begin_read_from_stdio(%struct.png_image* %image, %struct._IO_FILE* %file) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.png_image* %image, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 1
  %0 = load i32, i32* %version, align 8, !tbaa !98
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %if.then, label %if.then11

if.then:                                          ; preds = %land.lhs.true
  %cmp2.not = icmp eq %struct._IO_FILE* %file, null
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %call = tail call fastcc i32 @png_image_read_init(%struct.png_image* nonnull %image)
  %cmp4.not = icmp eq i32 %call, 0
  br i1 %cmp4.not, label %return, label %if.then5

if.then5:                                         ; preds = %if.then3
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 0
  %1 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %png_ptr = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 0
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !101
  %io_ptr = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 9
  %3 = bitcast i8** %io_ptr to %struct._IO_FILE**
  store %struct._IO_FILE* %file, %struct._IO_FILE** %3, align 8, !tbaa !103
  %4 = bitcast %struct.png_image* %image to i8*
  %call6 = tail call i32 @png_safe_execute(%struct.png_image* nonnull %image, i32 (i8*)* nonnull @png_image_read_header, i8* nonnull %4) #13
  br label %return

if.else:                                          ; preds = %if.then
  %call7 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0)) #13
  br label %return

if.then11:                                        ; preds = %land.lhs.true
  %call12 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0)) #13
  br label %return

return:                                           ; preds = %if.then3, %entry, %if.then11, %if.else, %if.then5
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ %call7, %if.else ], [ %call12, %if.then11 ], [ 0, %entry ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @png_image_read_init(%struct.png_image* %image) unnamed_addr #0 {
entry:
  %png_ptr = alloca %struct.png_struct_def*, align 8
  %info_ptr = alloca %struct.png_info_def*, align 8
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 0
  %0 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %cmp = icmp eq %struct.png_control* %0, null
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.png_struct_def** %png_ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %2 = bitcast %struct.png_image* %image to i8*
  %call.i.i = tail call noalias %struct.png_struct_def* @png_create_png_struct(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* %2, void (%struct.png_struct_def*, i8*)* nonnull @png_safe_error, void (%struct.png_struct_def*, i8*)* nonnull @png_safe_warning, i8* null, i8* (%struct.png_struct_def*, i64)* null, void (%struct.png_struct_def*, i8*)* null) #13
  %cmp.not.i.i = icmp eq %struct.png_struct_def* %call.i.i, null
  br i1 %cmp.not.i.i, label %png_create_read_struct.exit.thread, label %if.then2

png_create_read_struct.exit.thread:               ; preds = %if.then
  store %struct.png_struct_def* null, %struct.png_struct_def** %png_ptr, align 8, !tbaa !50
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(104) %2, i8 0, i64 104, i1 false)
  %version35 = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 1
  store i32 1, i32* %version35, align 8, !tbaa !98
  br label %if.end16

if.then2:                                         ; preds = %if.then
  %mode.i.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %call.i.i, i64 0, i32 15
  store i32 32768, i32* %mode.i.i, align 4, !tbaa !2
  %IDAT_read_size.i.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %call.i.i, i64 0, i32 145
  store i32 8192, i32* %IDAT_read_size.i.i, align 8, !tbaa !17
  %flags.i.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %call.i.i, i64 0, i32 16
  %3 = load i32, i32* %flags.i.i, align 8, !tbaa !18
  %or.i.i = or i32 %3, 1048576
  store i32 %or.i.i, i32* %flags.i.i, align 8, !tbaa !18
  tail call void @png_set_read_fn(%struct.png_struct_def* nonnull %call.i.i, i8* null, void (%struct.png_struct_def*, i8*, i64)* null) #13
  store %struct.png_struct_def* %call.i.i, %struct.png_struct_def** %png_ptr, align 8, !tbaa !50
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(104) %2, i8 0, i64 104, i1 false)
  %version = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 1
  store i32 1, i32* %version, align 8, !tbaa !98
  %4 = bitcast %struct.png_info_def** %info_ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #13
  %call3 = tail call noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def* nonnull %call.i.i) #13
  store %struct.png_info_def* %call3, %struct.png_info_def** %info_ptr, align 8, !tbaa !50
  %cmp4.not = icmp eq %struct.png_info_def* %call3, null
  br i1 %cmp4.not, label %if.end12, label %if.then5

if.then5:                                         ; preds = %if.then2
  %call6 = tail call noalias i8* @png_malloc_warn(%struct.png_struct_def* nonnull %call.i.i, i64 48) #13
  %cmp7.not = icmp eq i8* %call6, null
  br i1 %cmp7.not, label %cleanup.thread, label %cleanup18.critedge

cleanup.thread:                                   ; preds = %if.then5
  call void @png_destroy_info_struct(%struct.png_struct_def* nonnull %call.i.i, %struct.png_info_def** nonnull %info_ptr) #13
  br label %if.end12

if.end12:                                         ; preds = %cleanup.thread, %if.then2
  call void @png_destroy_read_struct(%struct.png_struct_def** nonnull %png_ptr, %struct.png_info_def** null, %struct.png_info_def** null)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  br label %if.end16

if.end16:                                         ; preds = %png_create_read_struct.exit.thread, %if.end12
  %call17 = call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0)) #13
  br label %cleanup18

cleanup18.critedge:                               ; preds = %if.then5
  %5 = getelementptr inbounds i8, i8* %call6, i64 16
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(48) %5, i8 0, i64 32, i1 false)
  %png_ptr9 = bitcast i8* %call6 to %struct.png_struct_def**
  store %struct.png_struct_def* %call.i.i, %struct.png_struct_def** %png_ptr9, align 8, !tbaa !101
  %info_ptr10 = getelementptr inbounds i8, i8* %call6, i64 8
  %6 = bitcast i8* %info_ptr10 to %struct.png_info_def**
  store %struct.png_info_def* %call3, %struct.png_info_def** %6, align 8, !tbaa !104
  %7 = getelementptr inbounds i8, i8* %call6, i64 40
  store i8 0, i8* %7, align 8
  %8 = bitcast %struct.png_image* %image to i8**
  store i8* %call6, i8** %8, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #13
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup18.critedge, %if.end16
  %retval.3 = phi i32 [ %call17, %if.end16 ], [ 1, %cleanup18.critedge ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  br label %return

if.end19:                                         ; preds = %entry
  %call20 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #13
  br label %return

return:                                           ; preds = %if.end19, %cleanup18
  %retval.4 = phi i32 [ %retval.3, %cleanup18 ], [ %call20, %if.end19 ]
  ret i32 %retval.4
}

declare dso_local i32 @png_safe_execute(%struct.png_image*, i32 (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @png_image_read_header(i8* nocapture %argument) #0 {
entry:
  %opaque = bitcast i8* %argument to %struct.png_control**
  %0 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %png_ptr1 = getelementptr inbounds %struct.png_control, %struct.png_control* %0, i64 0, i32 0
  %1 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr1, align 8, !tbaa !101
  %info_ptr3 = getelementptr inbounds %struct.png_control, %struct.png_control* %0, i64 0, i32 1
  %2 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr3, align 8, !tbaa !104
  tail call void @png_set_benign_errors(%struct.png_struct_def* %1, i32 1) #13
  tail call void @png_read_info(%struct.png_struct_def* %1, %struct.png_info_def* %2)
  %width = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i64 0, i32 37
  %3 = load i32, i32* %width, align 8, !tbaa !37
  %width4 = getelementptr inbounds i8, i8* %argument, i64 12
  %4 = bitcast i8* %width4 to i32*
  store i32 %3, i32* %4, align 4, !tbaa !105
  %height = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i64 0, i32 38
  %5 = load i32, i32* %height, align 4, !tbaa !57
  %height5 = getelementptr inbounds i8, i8* %argument, i64 16
  %6 = bitcast i8* %height5 to i32*
  store i32 %5, i32* %6, align 8, !tbaa !106
  %color_type.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i64 0, i32 63
  %7 = load i8, i8* %color_type.i, align 1, !tbaa !20, !alias.scope !107
  %8 = and i8 %7, 2
  %9 = zext i8 %8 to i32
  %10 = and i8 %7, 4
  %cmp5.not.i = icmp eq i8 %10, 0
  br i1 %cmp5.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %entry
  %or8.i = or i32 %9, 1
  br label %png_image_format.exit

if.else.i:                                        ; preds = %entry
  %num_trans.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i64 0, i32 57
  %11 = load i16, i16* %num_trans.i, align 8, !tbaa !110, !alias.scope !107
  %cmp10.not.i = icmp ne i16 %11, 0
  %or13.i = zext i1 %cmp10.not.i to i32
  %spec.select40.i = or i32 %or13.i, %9
  br label %png_image_format.exit

png_image_format.exit:                            ; preds = %if.then7.i, %if.else.i
  %format.1.i = phi i32 [ %or8.i, %if.then7.i ], [ %spec.select40.i, %if.else.i ]
  %bit_depth.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i64 0, i32 64
  %12 = load i8, i8* %bit_depth.i, align 8, !tbaa !26, !alias.scope !107
  %cmp17.i = icmp eq i8 %12, 16
  %or20.i = or i32 %format.1.i, 4
  %spec.select41.i = select i1 %cmp17.i, i32 %or20.i, i32 %format.1.i
  %13 = shl i8 %7, 3
  %14 = and i8 %13, 8
  %15 = zext i8 %14 to i32
  %16 = or i32 %spec.select41.i, %15
  %format6 = getelementptr inbounds i8, i8* %argument, i64 20
  %17 = bitcast i8* %format6 to i32*
  store i32 %16, i32* %17, align 4, !tbaa !111
  %and = and i32 %spec.select41.i, 2
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %png_image_format.exit
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i64 0, i32 149, i32 4
  %18 = load i16, i16* %flags, align 2, !tbaa !112
  %19 = and i16 %18, -32702
  %cmp8 = icmp eq i16 %19, 2
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %flags10 = getelementptr inbounds i8, i8* %argument, i64 24
  %20 = bitcast i8* %flags10 to i32*
  %21 = load i32, i32* %20, align 8, !tbaa !113
  %or = or i32 %21, 1
  store i32 %or, i32* %20, align 8, !tbaa !113
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %png_image_format.exit
  switch i8 %7, label %sw.epilog.thread [
    i8 0, label %sw.bb
    i8 3, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  %conv12 = zext i8 %12 to i32
  %shl = shl nuw i32 1, %conv12
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %num_palette = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %1, i64 0, i32 55
  %22 = load i16, i16* %num_palette, align 8, !tbaa !67
  %conv14 = zext i16 %22 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb
  %cmap_entries.0 = phi i32 [ %conv14, %sw.bb13 ], [ %shl, %sw.bb ]
  %23 = icmp ult i32 %cmap_entries.0, 256
  %spec.select = select i1 %23, i32 %cmap_entries.0, i32 256
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog, %if.end
  %24 = phi i32 [ 256, %if.end ], [ %spec.select, %sw.epilog ]
  %colormap_entries = getelementptr inbounds i8, i8* %argument, i64 28
  %25 = bitcast i8* %colormap_entries to i32*
  store i32 %24, i32* %25, align 4, !tbaa !114
  ret i32 1
}

declare dso_local i32 @png_image_error(%struct.png_image*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @png_image_begin_read_from_file(%struct.png_image* %image, i8* %file_name) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.png_image* %image, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 1
  %0 = load i32, i32* %version, align 8, !tbaa !98
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %if.then, label %if.then21

if.then:                                          ; preds = %land.lhs.true
  %1 = ptrtoint i8* %file_name to i64
  %2 = trunc i64 %1 to i32
  %cmp2.not = icmp eq i32 %2, 0
  br i1 %cmp2.not, label %if.else16, label %if.then3

if.then3:                                         ; preds = %if.then
  %call = tail call noalias %struct._IO_FILE* @fopen(i8* %file_name, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %cmp4.not = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  %call6 = tail call fastcc i32 @png_image_read_init(%struct.png_image* nonnull %image)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.then5
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 0
  %3 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %png_ptr = getelementptr inbounds %struct.png_control, %struct.png_control* %3, i64 0, i32 0
  %4 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !101
  %io_ptr = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %4, i64 0, i32 9
  %5 = bitcast i8** %io_ptr to %struct._IO_FILE**
  store %struct._IO_FILE* %call, %struct._IO_FILE** %5, align 8, !tbaa !103
  %owned_file = getelementptr inbounds %struct.png_control, %struct.png_control* %3, i64 0, i32 5
  %bf.load = load i8, i8* %owned_file, align 8
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, i8* %owned_file, align 8
  %6 = bitcast %struct.png_image* %image to i8*
  %call10 = tail call i32 @png_safe_execute(%struct.png_image* nonnull %image, i32 (i8*)* nonnull @png_image_read_header, i8* nonnull %6) #13
  br label %return

if.else:                                          ; preds = %if.then3
  %call12 = tail call i32* @__errno_location() #15
  %7 = load i32, i32* %call12, align 4, !tbaa !115
  %call13 = tail call i8* @strerror(i32 %7) #13
  %call14 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* %call13) #13
  br label %return

cleanup:                                          ; preds = %if.then5
  %call11 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call)
  br label %return

if.else16:                                        ; preds = %if.then
  %call17 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0)) #13
  br label %return

if.then21:                                        ; preds = %land.lhs.true
  %call22 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i64 0, i64 0)) #13
  br label %return

return:                                           ; preds = %if.else, %if.then8, %entry, %cleanup, %if.then21, %if.else16
  %retval.1 = phi i32 [ %call17, %if.else16 ], [ %call22, %if.then21 ], [ 0, %cleanup ], [ 0, %entry ], [ %call14, %if.else ], [ %call10, %if.then8 ]
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) local_unnamed_addr #6

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @png_image_begin_read_from_memory(%struct.png_image* %image, i8* %memory, i64 %size) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.png_image* %image, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 1
  %0 = load i32, i32* %version, align 8, !tbaa !98
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %if.then, label %if.then19

if.then:                                          ; preds = %land.lhs.true
  %cmp2 = icmp ne i8* %memory, null
  %cmp4 = icmp ne i64 %size, 0
  %or.cond = and i1 %cmp2, %cmp4
  br i1 %or.cond, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %call = tail call fastcc i32 @png_image_read_init(%struct.png_image* nonnull %image)
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %return, label %if.then7

if.then7:                                         ; preds = %if.then5
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 0
  %1 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %memory8 = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 3
  store i8* %memory, i8** %memory8, align 8, !tbaa !116
  %size10 = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 4
  store i64 %size, i64* %size10, align 8, !tbaa !117
  %2 = bitcast %struct.png_image* %image to i8*
  %png_ptr = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 0
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !101
  %io_ptr = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 9
  %4 = bitcast i8** %io_ptr to %struct.png_image**
  store %struct.png_image* %image, %struct.png_image** %4, align 8, !tbaa !103
  %read_data_fn = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 8
  store void (%struct.png_struct_def*, i8*, i64)* @png_image_memory_read, void (%struct.png_struct_def*, i8*, i64)** %read_data_fn, align 8, !tbaa !118
  %call14 = tail call i32 @png_safe_execute(%struct.png_image* nonnull %image, i32 (i8*)* nonnull @png_image_read_header, i8* nonnull %2) #13
  br label %return

if.else:                                          ; preds = %if.then
  %call15 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0)) #13
  br label %return

if.then19:                                        ; preds = %land.lhs.true
  %call20 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.21, i64 0, i64 0)) #13
  br label %return

return:                                           ; preds = %if.then5, %entry, %if.then19, %if.else, %if.then7
  %retval.0 = phi i32 [ %call14, %if.then7 ], [ %call15, %if.else ], [ %call20, %if.then19 ], [ 0, %entry ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal void @png_image_memory_read(%struct.png_struct_def* %png_ptr, i8* nocapture %out, i64 %need) #0 {
entry:
  %cmp.not = icmp eq %struct.png_struct_def* %png_ptr, null
  br i1 %cmp.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %io_ptr = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %png_ptr, i64 0, i32 9
  %0 = bitcast i8** %io_ptr to %struct.png_image**
  %1 = load %struct.png_image*, %struct.png_image** %0, align 8, !tbaa !103
  %cmp1.not = icmp eq %struct.png_image* %1, null
  br i1 %cmp1.not, label %if.end13, label %if.then2

if.then2:                                         ; preds = %if.then
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 0
  %2 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %cmp3.not = icmp eq %struct.png_control* %2, null
  br i1 %cmp3.not, label %if.end13, label %if.then4

if.then4:                                         ; preds = %if.then2
  %memory5 = getelementptr inbounds %struct.png_control, %struct.png_control* %2, i64 0, i32 3
  %3 = load i8*, i8** %memory5, align 8, !tbaa !116
  %size6 = getelementptr inbounds %struct.png_control, %struct.png_control* %2, i64 0, i32 4
  %4 = load i64, i64* %size6, align 8, !tbaa !117
  %cmp7.not = icmp eq i8* %3, null
  %cmp8.not = icmp ult i64 %4, %need
  %or.cond = or i1 %cmp7.not, %cmp8.not
  br i1 %or.cond, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.then4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %out, i8* nonnull align 1 %3, i64 %need, i1 false)
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %need
  store i8* %add.ptr, i8** %memory5, align 8, !tbaa !116
  %sub = sub i64 %4, %need
  store i64 %sub, i64* %size6, align 8, !tbaa !117
  br label %if.end15

if.end:                                           ; preds = %if.then4
  tail call void @png_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)) #14
  unreachable

if.end13:                                         ; preds = %if.then2, %if.then
  tail call void @png_error(%struct.png_struct_def* nonnull %png_ptr, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0)) #14
  unreachable

if.end15:                                         ; preds = %if.then9, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @png_image_finish_read(%struct.png_image* %image, %struct.png_color_struct* %background, i8* %buffer, i32 %row_stride, i8* %colormap) local_unnamed_addr #0 {
entry:
  %display = alloca %struct.png_image_read_control, align 8
  %cmp.not = icmp eq %struct.png_image* %image, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 1
  %0 = load i32, i32* %version, align 8, !tbaa !98
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %if.then, label %if.then66

if.then:                                          ; preds = %land.lhs.true
  %format = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 4
  %1 = load i32, i32* %format, align 4, !tbaa !111
  %and = and i32 %1, 8
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %1, 3
  %add = add nuw nsw i32 %and3, 1
  %cond = select i1 %tobool.not, i32 %add, i32 1
  %width = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 2
  %2 = load i32, i32* %width, align 4, !tbaa !105
  %div = udiv i32 2147483647, %cond
  %cmp4.not = icmp ugt i32 %2, %div
  br i1 %cmp4.not, label %if.else61, label %if.then5

if.then5:                                         ; preds = %if.then
  %mul = mul i32 %cond, %2
  %cmp7 = icmp eq i32 %row_stride, 0
  %spec.select = select i1 %cmp7, i32 %mul, i32 %row_stride
  %3 = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true)
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 0
  %4 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %cmp12 = icmp eq %struct.png_control* %4, null
  %cmp14 = icmp eq i8* %buffer, null
  %or.cond.not = or i1 %cmp14, %cmp12
  %cmp16.not = icmp ult i32 %3, %mul
  %or.cond107 = or i1 %cmp16.not, %or.cond.not
  br i1 %or.cond107, label %if.else58, label %if.then17

if.then17:                                        ; preds = %if.then5
  %height = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 3
  %5 = load i32, i32* %height, align 8, !tbaa !106
  %and24 = lshr i32 %1, 2
  %shr = and i32 %and24, 1
  %add25 = add nuw nsw i32 %shr, 1
  %cond27 = select i1 %tobool.not, i32 %add25, i32 1
  %div28 = udiv i32 -1, %cond27
  %div29 = udiv i32 %div28, %3
  %cmp30.not = icmp ugt i32 %5, %div29
  br i1 %cmp30.not, label %if.else56, label %if.then31

if.then31:                                        ; preds = %if.then17
  br i1 %tobool.not, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then31
  %colormap_entries = getelementptr inbounds %struct.png_image, %struct.png_image* %image, i64 0, i32 6
  %6 = load i32, i32* %colormap_entries, align 4, !tbaa !114
  %cmp35 = icmp ne i32 %6, 0
  %cmp37 = icmp ne i8* %colormap, null
  %or.cond70 = and i1 %cmp37, %cmp35
  br i1 %or.cond70, label %if.then38, label %if.else54

if.then38:                                        ; preds = %lor.lhs.false, %if.then31
  %7 = bitcast %struct.png_image_read_control* %display to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #13
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(80) %7, i8 0, i64 80, i1 false)
  %image39 = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 0
  store %struct.png_image* %image, %struct.png_image** %image39, align 8, !tbaa !119
  %buffer40 = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 1
  store i8* %buffer, i8** %buffer40, align 8, !tbaa !121
  %row_stride41 = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 2
  store i32 %spec.select, i32* %row_stride41, align 8, !tbaa !122
  %colormap42 = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 3
  store i8* %colormap, i8** %colormap42, align 8, !tbaa !123
  %background43 = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 4
  store %struct.png_color_struct* %background, %struct.png_color_struct** %background43, align 8, !tbaa !124
  %local_row = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 5
  store i8* null, i8** %local_row, align 8, !tbaa !125
  br i1 %tobool.not, label %if.else51, label %if.then47

if.then47:                                        ; preds = %if.then38
  %call = call i32 @png_safe_execute(%struct.png_image* nonnull %image, i32 (i8*)* nonnull @png_image_read_colormap, i8* nonnull %7) #13
  %tobool48.not = icmp eq i32 %call, 0
  br i1 %tobool48.not, label %if.end53, label %land.rhs

land.rhs:                                         ; preds = %if.then47
  %call49 = call i32 @png_safe_execute(%struct.png_image* nonnull %image, i32 (i8*)* nonnull @png_image_read_colormapped, i8* nonnull %7) #13
  %tobool50 = icmp ne i32 %call49, 0
  %phi.cast = zext i1 %tobool50 to i32
  br label %if.end53

if.else51:                                        ; preds = %if.then38
  %call52 = call i32 @png_safe_execute(%struct.png_image* nonnull %image, i32 (i8*)* nonnull @png_image_read_direct, i8* nonnull %7) #13
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %land.rhs, %if.else51
  %result.0 = phi i32 [ %call52, %if.else51 ], [ 0, %if.then47 ], [ %phi.cast, %land.rhs ]
  call void @png_image_free(%struct.png_image* nonnull %image) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #13
  br label %return

if.else54:                                        ; preds = %lor.lhs.false
  %call55 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0)) #13
  br label %return

if.else56:                                        ; preds = %if.then17
  %call57 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #13
  br label %return

if.else58:                                        ; preds = %if.then5
  %call59 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #13
  br label %return

if.else61:                                        ; preds = %if.then
  %call62 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0)) #13
  br label %return

if.then66:                                        ; preds = %land.lhs.true
  %call67 = tail call i32 @png_image_error(%struct.png_image* nonnull %image, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0)) #13
  br label %return

return:                                           ; preds = %entry, %if.else61, %if.else58, %if.else56, %if.else54, %if.end53, %if.then66
  %retval.2 = phi i32 [ %call67, %if.then66 ], [ %call62, %if.else61 ], [ %result.0, %if.end53 ], [ %call55, %if.else54 ], [ %call57, %if.else56 ], [ %call59, %if.else58 ], [ 0, %entry ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal i32 @png_image_read_colormap(i8* %argument) #0 {
entry:
  %c = alloca %struct.png_color_16_struct, align 2
  %c182 = alloca %struct.png_color_16_struct, align 2
  %c398 = alloca %struct.png_color_16_struct, align 2
  %c631 = alloca %struct.png_color_16_struct, align 2
  %0 = bitcast i8* %argument to %struct.png_image_read_control*
  %image1 = bitcast i8* %argument to %struct.png_image**
  %1 = load %struct.png_image*, %struct.png_image** %image1, align 8, !tbaa !119
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 0
  %2 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %png_ptr2 = getelementptr inbounds %struct.png_control, %struct.png_control* %2, i64 0, i32 0
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr2, align 8, !tbaa !101
  %format = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 4
  %4 = load i32, i32* %format, align 4, !tbaa !111
  %and = and i32 %4, 4
  %cmp.not = icmp eq i32 %and, 0
  %cond = select i1 %cmp.not, i32 1, i32 2
  %color_type = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 63
  %5 = load i8, i8* %color_type, align 1, !tbaa !20
  %6 = and i8 %5, 4
  %cmp4.not = icmp eq i8 %6, 0
  br i1 %cmp4.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %num_trans = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 57
  %7 = load i16, i16* %num_trans, align 8, !tbaa !110
  %cmp7.not = icmp eq i16 %7, 0
  br i1 %cmp7.not, label %if.else32, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %and9 = and i32 %4, 1
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.then, label %if.else32

if.then:                                          ; preds = %land.lhs.true
  br i1 %cmp.not, label %if.else, label %if.end38

if.else:                                          ; preds = %if.then
  %background = getelementptr inbounds i8, i8* %argument, i64 32
  %8 = bitcast i8* %background to %struct.png_color_struct**
  %9 = load %struct.png_color_struct*, %struct.png_color_struct** %8, align 8, !tbaa !124
  %cmp15 = icmp eq %struct.png_color_struct* %9, null
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.32, i64 0, i64 0)) #14
  unreachable

if.else18:                                        ; preds = %if.else
  %green = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %9, i64 0, i32 1
  %10 = load i8, i8* %green, align 1, !tbaa !126
  %conv20 = zext i8 %10 to i32
  %and21 = and i32 %4, 2
  %cmp22.not = icmp eq i32 %and21, 0
  br i1 %cmp22.not, label %if.end38, label %if.then24

if.then24:                                        ; preds = %if.else18
  %red = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %9, i64 0, i32 0
  %11 = load i8, i8* %red, align 1, !tbaa !128
  %conv26 = zext i8 %11 to i32
  %blue = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %9, i64 0, i32 2
  %12 = load i8, i8* %blue, align 1, !tbaa !129
  %conv28 = zext i8 %12 to i32
  br label %if.end38

if.else32:                                        ; preds = %land.lhs.true, %lor.lhs.false
  br i1 %cmp.not, label %if.else36, label %if.end38

if.else36:                                        ; preds = %if.else32
  br label %if.end38

if.end38:                                         ; preds = %if.else32, %if.else18, %if.then, %if.else36, %if.then24
  %back_b.0 = phi i32 [ %conv28, %if.then24 ], [ 255, %if.else36 ], [ 0, %if.then ], [ %conv20, %if.else18 ], [ 65535, %if.else32 ]
  %back_g.0 = phi i32 [ %conv20, %if.then24 ], [ 255, %if.else36 ], [ 0, %if.then ], [ %conv20, %if.else18 ], [ 65535, %if.else32 ]
  %back_r.0 = phi i32 [ %conv26, %if.then24 ], [ 255, %if.else36 ], [ 0, %if.then ], [ %conv20, %if.else18 ], [ 65535, %if.else32 ]
  %colorspace = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 149
  %flags = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 149, i32 4
  %13 = load i16, i16* %flags, align 2, !tbaa !112
  %14 = and i16 %13, 1
  %cmp41 = icmp eq i16 %14, 0
  br i1 %cmp41, label %if.then43, label %if.end62

if.then43:                                        ; preds = %if.end38
  %bit_depth = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 64
  %15 = load i8, i8* %bit_depth, align 8, !tbaa !26
  %cmp45 = icmp eq i8 %15, 16
  br i1 %cmp45, label %land.lhs.true47, label %if.else54

land.lhs.true47:                                  ; preds = %if.then43
  %flags48 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 5
  %16 = load i32, i32* %flags48, align 8, !tbaa !113
  %and49 = and i32 %16, 4
  %cmp50 = icmp eq i32 %and49, 0
  br i1 %cmp50, label %if.end57, label %if.else54

if.else54:                                        ; preds = %land.lhs.true47, %if.then43
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true47, %if.else54
  %.sink = phi i32 [ 45455, %if.else54 ], [ 100000, %land.lhs.true47 ]
  %gamma56 = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace, i64 0, i32 0
  store i32 %.sink, i32* %gamma56, align 8, !tbaa !130
  %17 = or i16 %13, 1
  store i16 %17, i16* %flags, align 2, !tbaa !112
  br label %if.end62

if.end62:                                         ; preds = %if.end57, %if.end38
  switch i8 %5, label %sw.default [
    i8 0, label %sw.bb
    i8 4, label %sw.bb160
    i8 2, label %sw.bb337
    i8 6, label %sw.bb337
    i8 3, label %sw.bb651
  ]

sw.bb:                                            ; preds = %if.end62
  %bit_depth65 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 64
  %18 = load i8, i8* %bit_depth65, align 8, !tbaa !26
  %cmp67 = icmp ult i8 %18, 9
  br i1 %cmp67, label %if.then69, label %if.else104

if.then69:                                        ; preds = %sw.bb
  %conv66 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 1, %conv66
  %colormap_entries = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %19 = load i32, i32* %colormap_entries, align 4, !tbaa !114
  %cmp72 = icmp ugt i32 %shl, %19
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.then69
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0)) #14
  unreachable

if.end75:                                         ; preds = %if.then69
  %20 = trunc i32 %shl to i8
  %div.rhs.trunc = add i8 %20, -1
  %div1459 = udiv i8 -1, %div.rhs.trunc
  %div.zext = zext i8 %div1459 to i32
  %num_trans76 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 57
  %21 = load i16, i16* %num_trans76, align 8, !tbaa !110
  %cmp78.not = icmp eq i16 %21, 0
  br i1 %cmp78.not, label %if.end90, label %if.then80

if.then80:                                        ; preds = %if.end75
  %gray = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 92, i32 4
  %22 = load i16, i16* %gray, align 8, !tbaa !131
  %and82 = and i32 %4, 1
  %cmp83 = icmp eq i32 %and82, 0
  %cond88 = select i1 %cmp.not, i32 255, i32 65535
  %spec.select = select i1 %cmp83, i32 %cond88, i32 0
  %phi.cast = zext i16 %22 to i32
  br label %if.end90

if.end90:                                         ; preds = %if.then80, %if.end75
  %trans.0.shrunk = phi i32 [ 256, %if.end75 ], [ %phi.cast, %if.then80 ]
  %back_alpha.0 = phi i32 [ 0, %if.end75 ], [ %spec.select, %if.then80 ]
  %23 = icmp ugt i32 %shl, 1
  %umax = select i1 %23, i32 %shl, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end90, %for.inc
  %i.01463 = phi i32 [ 0, %if.end90 ], [ %inc, %for.inc ]
  %val.01462 = phi i32 [ 0, %if.end90 ], [ %add, %for.inc ]
  %cmp93.not = icmp eq i32 %i.01463, %trans.0.shrunk
  br i1 %cmp93.not, label %if.else96, label %if.then95

if.then95:                                        ; preds = %for.body
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %i.01463, i32 %val.01462, i32 %val.01462, i32 %val.01462, i32 255, i32 3)
  br label %for.inc

if.else96:                                        ; preds = %for.body
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %trans.0.shrunk, i32 %back_r.0, i32 %back_g.0, i32 %back_b.0, i32 %back_alpha.0, i32 %cond)
  br label %for.inc

for.inc:                                          ; preds = %if.then95, %if.else96
  %inc = add nuw i32 %i.01463, 1
  %add = add i32 %val.01462, %div.zext
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !132

for.end:                                          ; preds = %for.inc
  %24 = load i8, i8* %bit_depth65, align 8, !tbaa !26
  %cmp100 = icmp ult i8 %24, 8
  br i1 %cmp100, label %if.then102, label %sw.bb789

if.then102:                                       ; preds = %for.end
  tail call void @png_set_packing(%struct.png_struct_def* nonnull %3) #13
  br label %sw.bb789

if.else104:                                       ; preds = %sw.bb
  %colormap_entries105 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %25 = load i32, i32* %colormap_entries105, align 4, !tbaa !114
  %cmp106 = icmp ult i32 %25, 256
  br i1 %cmp106, label %if.then108, label %for.body.i

if.then108:                                       ; preds = %if.else104
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0)) #14
  unreachable

for.body.i:                                       ; preds = %if.else104, %for.body.i
  %i.08.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.else104 ]
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %i.08.i, i32 %i.08.i, i32 %i.08.i, i32 %i.08.i, i32 255, i32 1) #13
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %make_gray_colormap.exit, label %for.body.i, !llvm.loop !133

make_gray_colormap.exit:                          ; preds = %for.body.i
  %num_trans110 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 57
  %26 = load i16, i16* %num_trans110, align 8, !tbaa !110
  %cmp112.not = icmp eq i16 %26, 0
  br i1 %cmp112.not, label %sw.bb788, label %if.then114

if.then114:                                       ; preds = %make_gray_colormap.exit
  %and116 = and i32 %4, 1
  %cmp117.not = icmp eq i32 %and116, 0
  br i1 %cmp117.not, label %if.else120, label %if.end156

if.else120:                                       ; preds = %if.then114
  %cmp121 = icmp eq i32 %back_r.0, %back_g.0
  %cmp124 = icmp eq i32 %back_g.0, %back_b.0
  %or.cond = and i1 %cmp124, %cmp121
  br i1 %or.cond, label %if.then126, label %if.end152

if.then126:                                       ; preds = %if.else120
  %27 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %27) #13
  br i1 %cmp.not, label %if.end146, label %if.then130

if.then130:                                       ; preds = %if.then126
  %mul = mul nuw nsw i32 %back_b.0, 255
  %shr = lshr i32 %mul, 15
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom
  %28 = load i16, i16* %arrayidx, align 2, !tbaa !134
  %conv131 = zext i16 %28 to i32
  %and133 = and i32 %mul, 32767
  %arrayidx137 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom
  %29 = load i8, i8* %arrayidx137, align 1, !tbaa !39
  %conv138 = zext i8 %29 to i32
  %mul139 = mul nuw nsw i32 %and133, %conv138
  %shr140 = lshr i32 %mul139, 12
  %add141 = add nuw nsw i32 %shr140, %conv131
  %shr142 = lshr i32 %add141, 8
  %conv145 = and i32 %shr142, 255
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %conv145, i32 %back_b.0, i32 %back_b.0, i32 %back_b.0, i32 65535, i32 2)
  br label %if.end146

if.end146:                                        ; preds = %if.then130, %if.then126
  %gray127.0 = phi i32 [ %conv145, %if.then130 ], [ %back_b.0, %if.then126 ]
  store i8 0, i8* %27, align 2, !tbaa !135
  %conv147 = trunc i32 %gray127.0 to i16
  %red150 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c, i64 0, i32 1
  %30 = insertelement <4 x i16> poison, i16 %conv147, i32 0
  %31 = shufflevector <4 x i16> %30, <4 x i16> undef, <4 x i32> zeroinitializer
  %32 = bitcast i16* %red150 to <4 x i16>*
  store <4 x i16> %31, <4 x i16>* %32, align 2, !tbaa !134
  call void @png_set_background_fixed(%struct.png_struct_def* nonnull %3, %struct.png_color_16_struct* nonnull %c, i32 1, i32 0, i32 0) #13
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %27) #13
  br label %sw.bb788

if.end152:                                        ; preds = %if.else120
  %cond155 = select i1 %cmp.not, i32 255, i32 65535
  br label %if.end156

if.end156:                                        ; preds = %if.then114, %if.end152
  %back_alpha115.0 = phi i32 [ %cond155, %if.end152 ], [ 0, %if.then114 ]
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 254, i32 %back_r.0, i32 %back_g.0, i32 %back_b.0, i32 %back_alpha115.0, i32 %cond)
  br label %land.lhs.true775

sw.bb160:                                         ; preds = %if.end62
  %and161 = and i32 %4, 1
  %cmp162.not = icmp eq i32 %and161, 0
  br i1 %cmp162.not, label %if.else171, label %if.then164

if.then164:                                       ; preds = %sw.bb160
  %colormap_entries165 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %33 = load i32, i32* %colormap_entries165, align 4, !tbaa !114
  %cmp166 = icmp ult i32 %33, 256
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.then164
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0)) #14
  unreachable

if.end169:                                        ; preds = %if.then164
  %call170 = tail call fastcc i32 @make_ga_colormap(%struct.png_image_read_control* nonnull %0)
  br label %sw.bb788

if.else171:                                       ; preds = %sw.bb160
  %and172 = and i32 %4, 2
  %cmp173 = icmp eq i32 %and172, 0
  br i1 %cmp173, label %if.then181, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %if.else171
  %cmp176 = icmp eq i32 %back_r.0, %back_g.0
  %cmp179 = icmp eq i32 %back_g.0, %back_b.0
  %or.cond1233 = and i1 %cmp179, %cmp176
  br i1 %or.cond1233, label %if.then181, label %if.else219

if.then181:                                       ; preds = %lor.lhs.false175, %if.else171
  %34 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c182, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %34) #13
  %colormap_entries184 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %35 = load i32, i32* %colormap_entries184, align 4, !tbaa !114
  %cmp185 = icmp ult i32 %35, 256
  br i1 %cmp185, label %if.then187, label %for.body.i1239

if.then187:                                       ; preds = %if.then181
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i64 0, i64 0)) #14
  unreachable

for.body.i1239:                                   ; preds = %if.then181, %for.body.i1239
  %i.08.i1236 = phi i32 [ %inc.i1237, %for.body.i1239 ], [ 0, %if.then181 ]
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %i.08.i1236, i32 %i.08.i1236, i32 %i.08.i1236, i32 %i.08.i1236, i32 255, i32 1) #13
  %inc.i1237 = add nuw nsw i32 %i.08.i1236, 1
  %exitcond.not.i1238 = icmp eq i32 %inc.i1237, 256
  br i1 %exitcond.not.i1238, label %make_gray_colormap.exit1240, label %for.body.i1239, !llvm.loop !133

make_gray_colormap.exit1240:                      ; preds = %for.body.i1239
  br i1 %cmp.not, label %if.end212, label %if.then192

if.then192:                                       ; preds = %make_gray_colormap.exit1240
  %mul193 = mul nuw nsw i32 %back_g.0, 255
  %shr194 = lshr i32 %mul193, 15
  %idxprom195 = zext i32 %shr194 to i64
  %arrayidx196 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom195
  %36 = load i16, i16* %arrayidx196, align 2, !tbaa !134
  %conv197 = zext i16 %36 to i32
  %and199 = and i32 %mul193, 32767
  %arrayidx203 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom195
  %37 = load i8, i8* %arrayidx203, align 1, !tbaa !39
  %conv204 = zext i8 %37 to i32
  %mul205 = mul nuw nsw i32 %and199, %conv204
  %shr206 = lshr i32 %mul205, 12
  %add207 = add nuw nsw i32 %shr206, %conv197
  %shr208 = lshr i32 %add207, 8
  %conv211 = and i32 %shr208, 255
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %conv211, i32 %back_g.0, i32 %back_g.0, i32 %back_g.0, i32 65535, i32 2)
  br label %if.end212

if.end212:                                        ; preds = %if.then192, %make_gray_colormap.exit1240
  %gray183.0 = phi i32 [ %conv211, %if.then192 ], [ %back_g.0, %make_gray_colormap.exit1240 ]
  store i8 0, i8* %34, align 2, !tbaa !135
  %conv214 = trunc i32 %gray183.0 to i16
  %red217 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c182, i64 0, i32 1
  %38 = insertelement <4 x i16> poison, i16 %conv214, i32 0
  %39 = shufflevector <4 x i16> %38, <4 x i16> undef, <4 x i32> zeroinitializer
  %40 = bitcast i16* %red217 to <4 x i16>*
  store <4 x i16> %39, <4 x i16>* %40, align 2, !tbaa !134
  call void @png_set_background_fixed(%struct.png_struct_def* %3, %struct.png_color_16_struct* nonnull %c182, i32 1, i32 0, i32 0) #13
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %34) #13
  br label %sw.bb788

if.else219:                                       ; preds = %lor.lhs.false175
  %colormap_entries221 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %41 = load i32, i32* %colormap_entries221, align 4, !tbaa !114
  %cmp222 = icmp ult i32 %41, 256
  br i1 %cmp222, label %if.then224, label %while.body

if.then224:                                       ; preds = %if.else219
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0)) #14
  unreachable

while.body:                                       ; preds = %if.else219, %while.body
  %i220.01469 = phi i32 [ %inc232, %while.body ], [ 0, %if.else219 ]
  %mul229 = shl nuw nsw i32 %i220.01469, 8
  %add230 = or i32 %mul229, 115
  %div231 = udiv i32 %add230, 231
  %inc232 = add nuw nsw i32 %i220.01469, 1
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %i220.01469, i32 %div231, i32 %div231, i32 %div231, i32 255, i32 1)
  %exitcond1491.not = icmp eq i32 %inc232, 231
  br i1 %exitcond1491.not, label %while.end, label %while.body, !llvm.loop !136

while.end:                                        ; preds = %while.body
  %cond236 = select i1 %cmp.not, i32 255, i32 65535
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 231, i32 %back_r.0, i32 %back_g.0, i32 %back_b.0, i32 %cond236, i32 %cond)
  br i1 %cmp.not, label %if.then239, label %if.end249

if.then239:                                       ; preds = %while.end
  %idxprom240 = zext i32 %back_r.0 to i64
  %arrayidx241 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom240
  %42 = load i16, i16* %arrayidx241, align 2, !tbaa !134
  %conv242 = zext i16 %42 to i32
  %idxprom243 = zext i32 %back_g.0 to i64
  %arrayidx244 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom243
  %43 = load i16, i16* %arrayidx244, align 2, !tbaa !134
  %conv245 = zext i16 %43 to i32
  %idxprom246 = zext i32 %back_b.0 to i64
  %arrayidx247 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom246
  %44 = load i16, i16* %arrayidx247, align 2, !tbaa !134
  %conv248 = zext i16 %44 to i32
  br label %if.end249

if.end249:                                        ; preds = %if.then239, %while.end
  %back_b.1 = phi i32 [ %conv248, %if.then239 ], [ %back_b.0, %while.end ]
  %back_g.1 = phi i32 [ %conv245, %if.then239 ], [ %back_g.0, %while.end ]
  %back_r.1 = phi i32 [ %conv242, %if.then239 ], [ %back_r.0, %while.end ]
  br label %for.body253

for.body253:                                      ; preds = %if.end249, %for.end331
  %a.01468 = phi i32 [ 1, %if.end249 ], [ %inc333, %for.end331 ]
  %i220.11467 = phi i32 [ 232, %if.end249 ], [ %inc271, %for.end331 ]
  %mul254 = mul nuw nsw i32 %a.01468, 51
  %sub255 = sub nuw nsw i32 255, %mul254
  %mul256 = mul i32 %sub255, %back_r.1
  %mul258 = mul i32 %sub255, %back_g.1
  %mul260 = mul i32 %sub255, %back_b.1
  br label %for.body264

for.body264:                                      ; preds = %for.body253, %for.body264
  %indvars.iv = phi i64 [ 0, %for.body253 ], [ %indvars.iv.next, %for.body264 ]
  %i220.21465 = phi i32 [ %i220.11467, %for.body253 ], [ %inc271, %for.body264 ]
  %45 = mul nuw nsw i64 %indvars.iv, 51
  %arrayidx268 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %45
  %46 = load i16, i16* %arrayidx268, align 2, !tbaa !134
  %conv269 = zext i16 %46 to i32
  %mul270 = mul i32 %mul254, %conv269
  %inc271 = add i32 %i220.21465, 1
  %add272 = add i32 %mul270, %mul256
  %shr273 = lshr i32 %add272, 15
  %idxprom274 = zext i32 %shr273 to i64
  %arrayidx275 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom274
  %47 = load i16, i16* %arrayidx275, align 2, !tbaa !134
  %conv276 = zext i16 %47 to i32
  %and278 = and i32 %add272, 32767
  %arrayidx282 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom274
  %48 = load i8, i8* %arrayidx282, align 1, !tbaa !39
  %conv283 = zext i8 %48 to i32
  %mul284 = mul nuw nsw i32 %and278, %conv283
  %shr285 = lshr i32 %mul284, 12
  %add286 = add nuw nsw i32 %shr285, %conv276
  %shr287 = lshr i32 %add286, 8
  %conv290 = and i32 %shr287, 255
  %add291 = add i32 %mul270, %mul258
  %shr292 = lshr i32 %add291, 15
  %idxprom293 = zext i32 %shr292 to i64
  %arrayidx294 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom293
  %49 = load i16, i16* %arrayidx294, align 2, !tbaa !134
  %conv295 = zext i16 %49 to i32
  %and297 = and i32 %add291, 32767
  %arrayidx301 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom293
  %50 = load i8, i8* %arrayidx301, align 1, !tbaa !39
  %conv302 = zext i8 %50 to i32
  %mul303 = mul nuw nsw i32 %and297, %conv302
  %shr304 = lshr i32 %mul303, 12
  %add305 = add nuw nsw i32 %shr304, %conv295
  %shr306 = lshr i32 %add305, 8
  %conv309 = and i32 %shr306, 255
  %add310 = add i32 %mul270, %mul260
  %shr311 = lshr i32 %add310, 15
  %idxprom312 = zext i32 %shr311 to i64
  %arrayidx313 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom312
  %51 = load i16, i16* %arrayidx313, align 2, !tbaa !134
  %conv314 = zext i16 %51 to i32
  %and316 = and i32 %add310, 32767
  %arrayidx320 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom312
  %52 = load i8, i8* %arrayidx320, align 1, !tbaa !39
  %conv321 = zext i8 %52 to i32
  %mul322 = mul nuw nsw i32 %and316, %conv321
  %shr323 = lshr i32 %mul322, 12
  %add324 = add nuw nsw i32 %shr323, %conv314
  %shr325 = lshr i32 %add324, 8
  %conv328 = and i32 %shr325, 255
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %i220.21465, i32 %conv290, i32 %conv309, i32 %conv328, i32 255, i32 1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond1489.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond1489.not, label %for.end331, label %for.body264, !llvm.loop !137

for.end331:                                       ; preds = %for.body264
  %inc333 = add nuw nsw i32 %a.01468, 1
  %exitcond1490.not = icmp eq i32 %inc333, 5
  br i1 %exitcond1490.not, label %sw.bb788, label %for.body253, !llvm.loop !138

sw.bb337:                                         ; preds = %if.end62, %if.end62
  %and338 = and i32 %4, 2
  %cmp339 = icmp eq i32 %and338, 0
  br i1 %cmp339, label %if.then341, label %if.else450

if.then341:                                       ; preds = %sw.bb337
  tail call void @png_set_rgb_to_gray_fixed(%struct.png_struct_def* nonnull %3, i32 1, i32 -1, i32 -1) #13
  %53 = load i8, i8* %color_type, align 1, !tbaa !20
  %cmp344 = icmp eq i8 %53, 6
  br i1 %cmp344, label %land.lhs.true351, label %lor.lhs.false346

lor.lhs.false346:                                 ; preds = %if.then341
  %num_trans347 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 57
  %54 = load i16, i16* %num_trans347, align 8, !tbaa !110
  %cmp349.not = icmp eq i16 %54, 0
  br i1 %cmp349.not, label %if.else362.thread, label %land.lhs.true351

land.lhs.true351:                                 ; preds = %lor.lhs.false346, %if.then341
  %and352 = and i32 %4, 1
  %cmp353.not = icmp eq i32 %and352, 0
  %colormap_entries363 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %55 = load i32, i32* %colormap_entries363, align 4, !tbaa !114
  %cmp364 = icmp ult i32 %55, 256
  br i1 %cmp353.not, label %if.else362, label %if.then355

if.then355:                                       ; preds = %land.lhs.true351
  br i1 %cmp364, label %if.then359, label %if.end360

if.then359:                                       ; preds = %if.then355
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i64 0, i64 0)) #14
  unreachable

if.end360:                                        ; preds = %if.then355
  %call361 = tail call fastcc i32 @make_ga_colormap(%struct.png_image_read_control* nonnull %0)
  br label %land.lhs.true775

if.else362:                                       ; preds = %land.lhs.true351
  br i1 %cmp364, label %if.then366, label %if.end367

if.else362.thread:                                ; preds = %lor.lhs.false346
  %colormap_entries3631425 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %56 = load i32, i32* %colormap_entries3631425, align 4, !tbaa !114
  %cmp3641426 = icmp ult i32 %56, 256
  br i1 %cmp3641426, label %if.then366, label %for.body.i1248.preheader

if.then366:                                       ; preds = %if.else362.thread, %if.else362
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i64 0, i64 0)) #14
  unreachable

if.end367:                                        ; preds = %if.else362
  br i1 %cmp344, label %land.lhs.true377, label %lor.lhs.false372

lor.lhs.false372:                                 ; preds = %if.end367
  %num_trans373.phi.trans.insert = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 57
  %.pre = load i16, i16* %num_trans373.phi.trans.insert, align 8, !tbaa !110
  %cmp375.not = icmp eq i16 %.pre, 0
  br i1 %cmp375.not, label %for.body.i1248.preheader, label %land.lhs.true377

for.body.i1248.preheader:                         ; preds = %if.else362.thread, %if.then.i, %png_gamma_not_sRGB.exit, %lor.lhs.false372
  br label %for.body.i1248

land.lhs.true377:                                 ; preds = %lor.lhs.false372, %if.end367
  %gamma379 = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace, i64 0, i32 0
  %57 = load i32, i32* %gamma379, align 8, !tbaa !130
  %cmp.i = icmp slt i32 %57, 100000
  br i1 %cmp.i, label %if.then.i, label %for.body.i1244.preheader

if.then.i:                                        ; preds = %land.lhs.true377
  %cmp1.i = icmp eq i32 %57, 0
  br i1 %cmp1.i, label %for.body.i1248.preheader, label %png_gamma_not_sRGB.exit

png_gamma_not_sRGB.exit:                          ; preds = %if.then.i
  %mul.i = mul nsw i32 %57, 11
  %add.i = add nsw i32 %mul.i, 2
  %div.i = sdiv i32 %add.i, 5
  %call.i = tail call i32 @png_gamma_significant(i32 %div.i) #13
  %cmp381.not = icmp eq i32 %call.i, 0
  br i1 %cmp381.not, label %for.body.i1248.preheader, label %for.body.i1244.preheader

for.body.i1244.preheader:                         ; preds = %land.lhs.true377, %png_gamma_not_sRGB.exit
  br label %for.body.i1244

for.body.i1244:                                   ; preds = %for.body.i1244.preheader, %for.body.i1244
  %i.08.i1241 = phi i32 [ %inc.i1242, %for.body.i1244 ], [ 0, %for.body.i1244.preheader ]
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %i.08.i1241, i32 %i.08.i1241, i32 %i.08.i1241, i32 %i.08.i1241, i32 255, i32 3) #13
  %inc.i1242 = add nuw nsw i32 %i.08.i1241, 1
  %exitcond.not.i1243 = icmp eq i32 %inc.i1242, 256
  br i1 %exitcond.not.i1243, label %if.end387, label %for.body.i1244, !llvm.loop !139

for.body.i1248:                                   ; preds = %for.body.i1248.preheader, %for.body.i1248
  %i.08.i1245 = phi i32 [ %inc.i1246, %for.body.i1248 ], [ 0, %for.body.i1248.preheader ]
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %i.08.i1245, i32 %i.08.i1245, i32 %i.08.i1245, i32 %i.08.i1245, i32 255, i32 1) #13
  %inc.i1246 = add nuw nsw i32 %i.08.i1245, 1
  %exitcond.not.i1247 = icmp eq i32 %inc.i1246, 256
  br i1 %exitcond.not.i1247, label %if.end387, label %for.body.i1248, !llvm.loop !133

if.end387:                                        ; preds = %for.body.i1244, %for.body.i1248
  %cmp400 = phi i1 [ false, %for.body.i1248 ], [ true, %for.body.i1244 ]
  %data_encoding.0 = phi i32 [ 1, %for.body.i1248 ], [ 3, %for.body.i1244 ]
  %58 = load i8, i8* %color_type, align 1, !tbaa !20
  %cmp390 = icmp eq i8 %58, 6
  br i1 %cmp390, label %if.then397, label %lor.lhs.false392

lor.lhs.false392:                                 ; preds = %if.end387
  %num_trans393 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 57
  %59 = load i16, i16* %num_trans393, align 8, !tbaa !110
  %cmp395.not = icmp eq i16 %59, 0
  br i1 %cmp395.not, label %if.end787, label %if.then397

if.then397:                                       ; preds = %lor.lhs.false392, %if.end387
  %60 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c398, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %60) #13
  br i1 %cmp400, label %if.then402, label %if.else417

if.then402:                                       ; preds = %if.then397
  br i1 %cmp.not, label %if.then405, label %if.end409

if.then405:                                       ; preds = %if.then402
  %idxprom406 = zext i32 %back_g.0 to i64
  %arrayidx407 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom406
  %61 = load i16, i16* %arrayidx407, align 2, !tbaa !134
  %conv408 = zext i16 %61 to i32
  br label %if.end409

if.end409:                                        ; preds = %if.then405, %if.then402
  %gray399.0 = phi i32 [ %conv408, %if.then405 ], [ %back_g.0, %if.then402 ]
  %gamma411 = getelementptr inbounds %struct.png_colorspace, %struct.png_colorspace* %colorspace, i64 0, i32 0
  %62 = load i32, i32* %gamma411, align 8, !tbaa !130
  %call412 = tail call zeroext i16 @png_gamma_16bit_correct(i32 %gray399.0, i32 %62) #13
  %conv413 = zext i16 %call412 to i32
  %mul414 = mul nuw nsw i32 %conv413, 255
  %add415 = add nuw nsw i32 %mul414, 32895
  %shr416 = lshr i32 %add415, 16
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %shr416, i32 %back_g.0, i32 %back_g.0, i32 %back_g.0, i32 0, i32 %cond)
  br label %if.end441

if.else417:                                       ; preds = %if.then397
  br i1 %cmp.not, label %if.end441, label %if.then420

if.then420:                                       ; preds = %if.else417
  %mul421 = mul nuw nsw i32 %back_g.0, 255
  %shr422 = lshr i32 %mul421, 15
  %idxprom423 = zext i32 %shr422 to i64
  %arrayidx424 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom423
  %63 = load i16, i16* %arrayidx424, align 2, !tbaa !134
  %conv425 = zext i16 %63 to i32
  %and427 = and i32 %mul421, 32767
  %arrayidx431 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom423
  %64 = load i8, i8* %arrayidx431, align 1, !tbaa !39
  %conv432 = zext i8 %64 to i32
  %mul433 = mul nuw nsw i32 %and427, %conv432
  %shr434 = lshr i32 %mul433, 12
  %add435 = add nuw nsw i32 %shr434, %conv425
  %shr436 = lshr i32 %add435, 8
  %conv439 = and i32 %shr436, 255
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %conv439, i32 %back_g.0, i32 %back_g.0, i32 %back_g.0, i32 0, i32 2)
  br label %if.end441

if.end441:                                        ; preds = %if.else417, %if.then420, %if.end409
  %gray399.1 = phi i32 [ %shr416, %if.end409 ], [ %conv439, %if.then420 ], [ %back_g.0, %if.else417 ]
  store i8 0, i8* %60, align 2, !tbaa !135
  %conv443 = trunc i32 %gray399.1 to i16
  %red446 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c398, i64 0, i32 1
  %65 = insertelement <4 x i16> poison, i16 %conv443, i32 0
  %66 = shufflevector <4 x i16> %65, <4 x i16> undef, <4 x i32> zeroinitializer
  %67 = bitcast i16* %red446 to <4 x i16>*
  store <4 x i16> %66, <4 x i16>* %67, align 2, !tbaa !134
  call void @png_set_background_fixed(%struct.png_struct_def* nonnull %3, %struct.png_color_16_struct* nonnull %c398, i32 1, i32 0, i32 0) #13
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %60) #13
  br label %land.lhs.true775

if.else450:                                       ; preds = %sw.bb337
  %cmp453 = icmp eq i8 %5, 6
  br i1 %cmp453, label %if.then460, label %lor.lhs.false455

lor.lhs.false455:                                 ; preds = %if.else450
  %num_trans456 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 57
  %68 = load i16, i16* %num_trans456, align 8, !tbaa !110
  %cmp458.not = icmp eq i16 %68, 0
  br i1 %cmp458.not, label %if.else642, label %if.then460

if.then460:                                       ; preds = %lor.lhs.false455, %if.else450
  %and461 = and i32 %4, 1
  %cmp462.not = icmp eq i32 %and461, 0
  br i1 %cmp462.not, label %if.else498, label %if.then464

if.then464:                                       ; preds = %if.then460
  %colormap_entries465 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %69 = load i32, i32* %colormap_entries465, align 4, !tbaa !114
  %cmp466 = icmp ult i32 %69, 244
  br i1 %cmp466, label %if.then468, label %if.end469

if.then468:                                       ; preds = %if.then464
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i64 0, i64 0)) #14
  unreachable

if.end469:                                        ; preds = %if.then464
  %call470 = tail call fastcc i32 @make_rgb_colormap(%struct.png_image_read_control* nonnull %0)
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* nonnull %0, i32 %call470, i32 255, i32 255, i32 255, i32 0, i32 1)
  %inc471 = add i32 %call470, 1
  br label %for.cond477.preheader

for.cond477.preheader:                            ; preds = %if.end469, %for.cond477.preheader
  %cmap_entries.11481 = phi i32 [ %inc471, %if.end469 ], [ %inc485.2.2, %for.cond477.preheader ]
  %r.01480 = phi i32 [ 0, %if.end469 ], [ %or496, %for.cond477.preheader ]
  %inc485 = add i32 %cmap_entries.11481, 1
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %cmap_entries.11481, i32 %r.01480, i32 0, i32 0, i32 128, i32 1)
  %inc485.1 = add i32 %cmap_entries.11481, 2
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %inc485, i32 %r.01480, i32 0, i32 127, i32 128, i32 1)
  %inc485.2 = add i32 %cmap_entries.11481, 3
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %inc485.1, i32 %r.01480, i32 0, i32 255, i32 128, i32 1)
  %inc485.11492 = add i32 %cmap_entries.11481, 4
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %inc485.2, i32 %r.01480, i32 127, i32 0, i32 128, i32 1)
  %inc485.1.1 = add i32 %cmap_entries.11481, 5
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %inc485.11492, i32 %r.01480, i32 127, i32 127, i32 128, i32 1)
  %inc485.2.1 = add i32 %cmap_entries.11481, 6
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %inc485.1.1, i32 %r.01480, i32 127, i32 255, i32 128, i32 1)
  %inc485.21493 = add i32 %cmap_entries.11481, 7
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %inc485.2.1, i32 %r.01480, i32 255, i32 0, i32 128, i32 1)
  %inc485.1.2 = add i32 %cmap_entries.11481, 8
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %inc485.21493, i32 %r.01480, i32 255, i32 127, i32 128, i32 1)
  %inc485.2.2 = add i32 %cmap_entries.11481, 9
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %inc485.1.2, i32 %r.01480, i32 255, i32 255, i32 128, i32 1)
  %shl495 = shl nuw nsw i32 %r.01480, 1
  %or496 = or i32 %shl495, 127
  %cmp473 = icmp ult i32 %or496, 256
  br i1 %cmp473, label %for.cond477.preheader, label %land.lhs.true775, !llvm.loop !140

if.else498:                                       ; preds = %if.then460
  %and499 = and i32 %4, 3
  %add500 = add nuw nsw i32 %and499, 1
  %shr502 = lshr exact i32 %and, 2
  %add503 = add nuw nsw i32 %shr502, 1
  %mul504 = mul nuw nsw i32 %add503, %add500
  %colormap_entries508 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %70 = load i32, i32* %colormap_entries508, align 4, !tbaa !114
  %cmp509 = icmp ult i32 %70, 244
  br i1 %cmp509, label %if.then511, label %if.end512

if.then511:                                       ; preds = %if.else498
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i64 0, i64 0)) #14
  unreachable

if.end512:                                        ; preds = %if.else498
  %call513 = tail call fastcc i32 @make_rgb_colormap(%struct.png_image_read_control* nonnull %0)
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* nonnull %0, i32 %call513, i32 %back_r.0, i32 %back_g.0, i32 %back_b.0, i32 0, i32 %cond)
  br i1 %cmp.not, label %if.end575, label %if.then516

if.then516:                                       ; preds = %if.end512
  %mul517 = mul nuw nsw i32 %back_r.0, 255
  %shr518 = lshr i32 %mul517, 15
  %idxprom519 = zext i32 %shr518 to i64
  %arrayidx520 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom519
  %71 = load i16, i16* %arrayidx520, align 2, !tbaa !134
  %conv521 = zext i16 %71 to i32
  %and523 = and i32 %mul517, 32767
  %arrayidx527 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom519
  %72 = load i8, i8* %arrayidx527, align 1, !tbaa !39
  %conv528 = zext i8 %72 to i32
  %mul529 = mul nuw nsw i32 %and523, %conv528
  %shr530 = lshr i32 %mul529, 12
  %add531 = add nuw nsw i32 %shr530, %conv521
  %shr532 = lshr i32 %add531, 8
  %conv535 = and i32 %shr532, 255
  %mul536 = mul nuw nsw i32 %back_g.0, 255
  %shr537 = lshr i32 %mul536, 15
  %idxprom538 = zext i32 %shr537 to i64
  %arrayidx539 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom538
  %73 = load i16, i16* %arrayidx539, align 2, !tbaa !134
  %conv540 = zext i16 %73 to i32
  %and542 = and i32 %mul536, 32767
  %arrayidx546 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom538
  %74 = load i8, i8* %arrayidx546, align 1, !tbaa !39
  %conv547 = zext i8 %74 to i32
  %mul548 = mul nuw nsw i32 %and542, %conv547
  %shr549 = lshr i32 %mul548, 12
  %add550 = add nuw nsw i32 %shr549, %conv540
  %shr551 = lshr i32 %add550, 8
  %conv554 = and i32 %shr551, 255
  %mul555 = mul nuw nsw i32 %back_b.0, 255
  %shr556 = lshr i32 %mul555, 15
  %idxprom557 = zext i32 %shr556 to i64
  %arrayidx558 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom557
  %75 = load i16, i16* %arrayidx558, align 2, !tbaa !134
  %conv559 = zext i16 %75 to i32
  %and561 = and i32 %mul555, 32767
  %arrayidx565 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom557
  %76 = load i8, i8* %arrayidx565, align 1, !tbaa !39
  %conv566 = zext i8 %76 to i32
  %mul567 = mul nuw nsw i32 %and561, %conv566
  %shr568 = lshr i32 %mul567, 12
  %add569 = add nuw nsw i32 %shr568, %conv559
  %shr570 = lshr i32 %add569, 8
  %conv573 = and i32 %shr570, 255
  br label %if.end575

if.end575:                                        ; preds = %if.end512, %if.then516
  %r505.0 = phi i32 [ %conv535, %if.then516 ], [ %back_r.0, %if.end512 ]
  %g506.0 = phi i32 [ %conv554, %if.then516 ], [ %back_g.0, %if.end512 ]
  %b507.0 = phi i32 [ %conv573, %if.then516 ], [ %back_g.0, %if.end512 ]
  %colormap = getelementptr inbounds i8, i8* %argument, i64 24
  %77 = bitcast i8* %colormap to i8**
  %78 = load i8*, i8** %77, align 8, !tbaa !123
  %mul576 = mul i32 %call513, %mul504
  %idx.ext = zext i32 %mul576 to i64
  %add.ptr = getelementptr inbounds i8, i8* %78, i64 %idx.ext
  %mul578 = mul nuw nsw i32 %r505.0, 5
  %add579 = add nuw nsw i32 %mul578, 130
  %shr580 = lshr i32 %add579, 8
  %mul581 = mul nuw nsw i32 %shr580, 6
  %mul582 = mul nuw nsw i32 %g506.0, 5
  %add583 = add nuw nsw i32 %mul582, 130
  %shr584 = lshr i32 %add583, 8
  %add585 = add nuw nsw i32 %mul581, %shr584
  %mul586 = mul nuw nsw i32 %add585, 6
  %mul587 = mul nuw nsw i32 %b507.0, 5
  %add588 = add nuw nsw i32 %mul587, 130
  %shr589 = lshr i32 %add588, 8
  %add590 = add nuw nsw i32 %mul586, %shr589
  %conv592 = and i32 %add590, 255
  %mul593 = mul nuw nsw i32 %conv592, %mul504
  %idx.ext594 = zext i32 %mul593 to i64
  %add.ptr595 = getelementptr inbounds i8, i8* %78, i64 %idx.ext594
  %conv596 = zext i32 %mul504 to i64
  %bcmp = tail call i32 @bcmp(i8* nonnull dereferenceable(1) %add.ptr, i8* nonnull dereferenceable(1) %add.ptr595, i64 %conv596)
  %cmp598.not = icmp eq i32 %bcmp, 0
  br i1 %cmp598.not, label %if.else630, label %if.then600

if.then600:                                       ; preds = %if.end575
  %inc601 = add i32 %call513, 1
  br label %for.cond606.preheader

for.cond606.preheader:                            ; preds = %if.then600, %for.inc626
  %cmap_entries.41475 = phi i32 [ %inc601, %if.then600 ], [ %inc614, %for.inc626 ]
  %r505.11474 = phi i32 [ 0, %if.then600 ], [ %or628, %for.inc626 ]
  %idxprom.i1403 = zext i32 %r505.11474 to i64
  %arrayidx.i1404 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom.i1403
  %79 = load i16, i16* %arrayidx.i1404, align 2, !tbaa !134
  %conv6.i = zext i16 %79 to i32
  %mul.i1251 = shl nuw nsw i32 %conv6.i, 7
  br label %for.cond610.preheader

for.cond610.preheader:                            ; preds = %for.cond606.preheader, %for.inc622
  %cmap_entries.51473 = phi i32 [ %cmap_entries.41475, %for.cond606.preheader ], [ %inc614, %for.inc622 ]
  %g506.11472 = phi i32 [ 0, %for.cond606.preheader ], [ %or624, %for.inc622 ]
  %idxprom.i1411 = zext i32 %g506.11472 to i64
  %arrayidx.i1412 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom.i1411
  br label %decode_gamma.exit

decode_gamma.exit:                                ; preds = %for.cond610.preheader, %png_colormap_compose.exit1311
  %cmap_entries.61471 = phi i32 [ %cmap_entries.51473, %for.cond610.preheader ], [ %inc614, %png_colormap_compose.exit1311 ]
  %b507.11470 = phi i32 [ 0, %for.cond610.preheader ], [ %or620, %png_colormap_compose.exit1311 ]
  %inc614 = add i32 %cmap_entries.61471, 1
  %call1.i = tail call fastcc i32 @decode_gamma(%struct.png_image_read_control* %0, i32 %back_r.0, i32 %cond) #13
  %mul2.i = mul i32 %call1.i, 127
  %add.i1252 = add i32 %mul2.i, %mul.i1251
  br i1 %cmp.not, label %if.else.i, label %if.then.i1254

if.then.i1254:                                    ; preds = %decode_gamma.exit
  %mul3.i = mul i32 %add.i1252, 257
  %shr.i = lshr i32 %mul3.i, 16
  %add4.i = add i32 %mul3.i, 32768
  %add5.i = add i32 %add4.i, %shr.i
  %shr6.i = lshr i32 %add5.i, 16
  br label %decode_gamma.exit1414

if.else.i:                                        ; preds = %decode_gamma.exit
  %shr7.i = lshr i32 %add.i1252, 15
  %idxprom.i = zext i32 %shr7.i to i64
  %arrayidx.i = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom.i
  %80 = load i16, i16* %arrayidx.i, align 2, !tbaa !134
  %conv.i = zext i16 %80 to i32
  %and.i = and i32 %add.i1252, 32767
  %arrayidx10.i = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom.i
  %81 = load i8, i8* %arrayidx10.i, align 1, !tbaa !39
  %conv11.i = zext i8 %81 to i32
  %mul12.i = mul nuw nsw i32 %and.i, %conv11.i
  %shr13.i = lshr i32 %mul12.i, 12
  %add14.i = add nuw nsw i32 %shr13.i, %conv.i
  %shr15.i = lshr i32 %add14.i, 8
  %conv18.i = and i32 %shr15.i, 255
  br label %decode_gamma.exit1414

decode_gamma.exit1414:                            ; preds = %if.then.i1254, %if.else.i
  %f.0.i = phi i32 [ %shr6.i, %if.then.i1254 ], [ %conv18.i, %if.else.i ]
  %82 = load i16, i16* %arrayidx.i1412, align 2, !tbaa !134
  %conv6.i1413 = zext i16 %82 to i32
  %call1.i1257 = tail call fastcc i32 @decode_gamma(%struct.png_image_read_control* %0, i32 %back_g.0, i32 %cond) #13
  %mul.i1258 = shl nuw nsw i32 %conv6.i1413, 7
  %mul2.i1259 = mul i32 %call1.i1257, 127
  %add.i1260 = add i32 %mul2.i1259, %mul.i1258
  br i1 %cmp.not, label %if.else.i1280, label %if.then.i1267

if.then.i1267:                                    ; preds = %decode_gamma.exit1414
  %mul3.i1262 = mul i32 %add.i1260, 257
  %shr.i1263 = lshr i32 %mul3.i1262, 16
  %add4.i1264 = add i32 %mul3.i1262, 32768
  %add5.i1265 = add i32 %add4.i1264, %shr.i1263
  %shr6.i1266 = lshr i32 %add5.i1265, 16
  br label %decode_gamma.exit1424

if.else.i1280:                                    ; preds = %decode_gamma.exit1414
  %shr7.i1268 = lshr i32 %add.i1260, 15
  %idxprom.i1269 = zext i32 %shr7.i1268 to i64
  %arrayidx.i1270 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom.i1269
  %83 = load i16, i16* %arrayidx.i1270, align 2, !tbaa !134
  %conv.i1271 = zext i16 %83 to i32
  %and.i1272 = and i32 %add.i1260, 32767
  %arrayidx10.i1273 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom.i1269
  %84 = load i8, i8* %arrayidx10.i1273, align 1, !tbaa !39
  %conv11.i1274 = zext i8 %84 to i32
  %mul12.i1275 = mul nuw nsw i32 %and.i1272, %conv11.i1274
  %shr13.i1276 = lshr i32 %mul12.i1275, 12
  %add14.i1277 = add nuw nsw i32 %shr13.i1276, %conv.i1271
  %shr15.i1278 = lshr i32 %add14.i1277, 8
  %conv18.i1279 = and i32 %shr15.i1278, 255
  br label %decode_gamma.exit1424

decode_gamma.exit1424:                            ; preds = %if.then.i1267, %if.else.i1280
  %f.0.i1281 = phi i32 [ %shr6.i1266, %if.then.i1267 ], [ %conv18.i1279, %if.else.i1280 ]
  %idxprom.i1421 = zext i32 %b507.11470 to i64
  %arrayidx.i1422 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom.i1421
  %85 = load i16, i16* %arrayidx.i1422, align 2, !tbaa !134
  %conv6.i1423 = zext i16 %85 to i32
  %call1.i1285 = tail call fastcc i32 @decode_gamma(%struct.png_image_read_control* %0, i32 %back_b.0, i32 %cond) #13
  %mul.i1286 = shl nuw nsw i32 %conv6.i1423, 7
  %mul2.i1287 = mul i32 %call1.i1285, 127
  %add.i1288 = add i32 %mul2.i1287, %mul.i1286
  br i1 %cmp.not, label %if.else.i1308, label %if.then.i1295

if.then.i1295:                                    ; preds = %decode_gamma.exit1424
  %mul3.i1290 = mul i32 %add.i1288, 257
  %shr.i1291 = lshr i32 %mul3.i1290, 16
  %add4.i1292 = add i32 %mul3.i1290, 32768
  %add5.i1293 = add i32 %add4.i1292, %shr.i1291
  %shr6.i1294 = lshr i32 %add5.i1293, 16
  br label %png_colormap_compose.exit1311

if.else.i1308:                                    ; preds = %decode_gamma.exit1424
  %shr7.i1296 = lshr i32 %add.i1288, 15
  %idxprom.i1297 = zext i32 %shr7.i1296 to i64
  %arrayidx.i1298 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom.i1297
  %86 = load i16, i16* %arrayidx.i1298, align 2, !tbaa !134
  %conv.i1299 = zext i16 %86 to i32
  %and.i1300 = and i32 %add.i1288, 32767
  %arrayidx10.i1301 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom.i1297
  %87 = load i8, i8* %arrayidx10.i1301, align 1, !tbaa !39
  %conv11.i1302 = zext i8 %87 to i32
  %mul12.i1303 = mul nuw nsw i32 %and.i1300, %conv11.i1302
  %shr13.i1304 = lshr i32 %mul12.i1303, 12
  %add14.i1305 = add nuw nsw i32 %shr13.i1304, %conv.i1299
  %shr15.i1306 = lshr i32 %add14.i1305, 8
  %conv18.i1307 = and i32 %shr15.i1306, 255
  br label %png_colormap_compose.exit1311

png_colormap_compose.exit1311:                    ; preds = %if.then.i1295, %if.else.i1308
  %f.0.i1309 = phi i32 [ %shr6.i1294, %if.then.i1295 ], [ %conv18.i1307, %if.else.i1308 ]
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %cmap_entries.61471, i32 %f.0.i, i32 %f.0.i1281, i32 %f.0.i1309, i32 0, i32 %cond)
  %shl619 = shl nuw nsw i32 %b507.11470, 1
  %or620 = or i32 %shl619, 127
  %cmp611 = icmp ult i32 %or620, 256
  br i1 %cmp611, label %decode_gamma.exit, label %for.inc622, !llvm.loop !141

for.inc622:                                       ; preds = %png_colormap_compose.exit1311
  %shl623 = shl i32 %g506.11472, 1
  %or624 = or i32 %shl623, 127
  %cmp607 = icmp ult i32 %or624, 256
  br i1 %cmp607, label %for.cond610.preheader, label %for.inc626, !llvm.loop !142

for.inc626:                                       ; preds = %for.inc622
  %shl627 = shl i32 %r505.11474, 1
  %or628 = or i32 %shl627, 127
  %cmp603 = icmp ult i32 %or628, 256
  br i1 %cmp603, label %for.cond606.preheader, label %land.lhs.true775, !llvm.loop !143

if.else630:                                       ; preds = %if.end575
  %88 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c631, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %88) #13
  store i8 0, i8* %88, align 2, !tbaa !135
  %conv633 = trunc i32 %back_r.0 to i16
  %red634 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c631, i64 0, i32 1
  store i16 %conv633, i16* %red634, align 2, !tbaa !144
  %conv635 = trunc i32 %back_g.0 to i16
  %green636 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c631, i64 0, i32 2
  store i16 %conv635, i16* %green636, align 2, !tbaa !145
  %gray637 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c631, i64 0, i32 4
  store i16 %conv635, i16* %gray637, align 2, !tbaa !146
  %conv638 = trunc i32 %back_b.0 to i16
  %blue639 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c631, i64 0, i32 3
  store i16 %conv638, i16* %blue639, align 2, !tbaa !147
  call void @png_set_background_fixed(%struct.png_struct_def* nonnull %3, %struct.png_color_16_struct* nonnull %c631, i32 1, i32 0, i32 0) #13
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %88) #13
  br label %sw.bb788

if.else642:                                       ; preds = %lor.lhs.false455
  %colormap_entries643 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %89 = load i32, i32* %colormap_entries643, align 4, !tbaa !114
  %cmp644 = icmp ult i32 %89, 216
  br i1 %cmp644, label %if.then646, label %if.end647

if.then646:                                       ; preds = %if.else642
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0)) #14
  unreachable

if.end647:                                        ; preds = %if.else642
  %call648 = tail call fastcc i32 @make_rgb_colormap(%struct.png_image_read_control* nonnull %0)
  br label %sw.bb788

sw.bb651:                                         ; preds = %if.end62
  %num_trans653 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 57
  %90 = load i16, i16* %num_trans653, align 8, !tbaa !110
  %cmp656.not = icmp eq i16 %90, 0
  br i1 %cmp656.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %sw.bb651
  %trans_alpha = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 91
  %91 = load i8*, i8** %trans_alpha, align 8, !tbaa !79
  br label %cond.end

cond.end:                                         ; preds = %sw.bb651, %cond.true
  %cond658 = phi i8* [ %91, %cond.true ], [ null, %sw.bb651 ]
  %palette = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 54
  %92 = load %struct.png_color_struct*, %struct.png_color_struct** %palette, align 8, !tbaa !78
  %cmp660 = icmp ne i8* %cond658, null
  %and662 = and i32 %4, 1
  %cmp663 = icmp eq i32 %and662, 0
  %93 = and i1 %cmp663, %cmp660
  %cmp666 = icmp eq i8* %cond658, null
  %num_palette = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 55
  %94 = load i16, i16* %num_palette, align 8, !tbaa !67
  %conv670 = zext i16 %94 to i32
  %95 = icmp ult i32 %conv670, 256
  %spec.store.select = select i1 %95, i32 %conv670, i32 256
  %colormap_entries675 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %96 = load i32, i32* %colormap_entries675, align 4, !tbaa !114
  %cmp676 = icmp ugt i32 %spec.store.select, %96
  br i1 %cmp676, label %if.then678, label %for.cond680.preheader

for.cond680.preheader:                            ; preds = %cond.end
  %cmp6811482.not = icmp eq i32 %spec.store.select, 0
  br i1 %cmp6811482.not, label %for.end766, label %for.body683.preheader

for.body683.preheader:                            ; preds = %for.cond680.preheader
  %97 = zext i16 %90 to i64
  %98 = select i1 %cmp666, i64 0, i64 %97
  %wide.trip.count = zext i32 %spec.store.select to i64
  br label %for.body683

if.then678:                                       ; preds = %cond.end
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0)) #14
  unreachable

for.body683:                                      ; preds = %for.body683.preheader, %for.inc764
  %indvars.iv1494 = phi i64 [ 0, %for.body683.preheader ], [ %indvars.iv.next1495, %for.inc764 ]
  %cmp687 = icmp ult i64 %indvars.iv1494, %98
  %or.cond1235 = and i1 %93, %cmp687
  br i1 %or.cond1235, label %land.lhs.true689, label %if.else741

land.lhs.true689:                                 ; preds = %for.body683
  %arrayidx691 = getelementptr inbounds i8, i8* %cond658, i64 %indvars.iv1494
  %99 = load i8, i8* %arrayidx691, align 1, !tbaa !39
  %conv692 = zext i8 %99 to i32
  switch i8 %99, label %if.else702 [
    i8 -1, label %if.else741
    i8 0, label %if.then701
  ]

if.then701:                                       ; preds = %land.lhs.true689
  %100 = trunc i64 %indvars.iv1494 to i32
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %100, i32 %back_r.0, i32 %back_g.0, i32 %back_b.0, i32 0, i32 %cond)
  br label %for.inc764

if.else702:                                       ; preds = %land.lhs.true689
  %red705 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %92, i64 %indvars.iv1494, i32 0
  %101 = load i8, i8* %red705, align 1, !tbaa !128
  %conv706 = zext i8 %101 to i32
  %call.i1312 = tail call fastcc i32 @decode_gamma(%struct.png_image_read_control* %0, i32 %conv706, i32 3) #13
  %call1.i1313 = tail call fastcc i32 @decode_gamma(%struct.png_image_read_control* %0, i32 %back_r.0, i32 %cond) #13
  %mul.i1314 = mul i32 %call.i1312, %conv692
  %sub.i = xor i32 %conv692, 255
  %mul2.i1315 = mul i32 %call1.i1313, %sub.i
  %add.i1316 = add i32 %mul2.i1315, %mul.i1314
  br i1 %cmp.not, label %if.else.i1336, label %if.then.i1323

if.then.i1323:                                    ; preds = %if.else702
  %mul3.i1318 = mul i32 %add.i1316, 257
  %shr.i1319 = lshr i32 %mul3.i1318, 16
  %add4.i1320 = add i32 %mul3.i1318, 32768
  %add5.i1321 = add i32 %add4.i1320, %shr.i1319
  %shr6.i1322 = lshr i32 %add5.i1321, 16
  br label %png_colormap_compose.exit1339

if.else.i1336:                                    ; preds = %if.else702
  %shr7.i1324 = lshr i32 %add.i1316, 15
  %idxprom.i1325 = zext i32 %shr7.i1324 to i64
  %arrayidx.i1326 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom.i1325
  %102 = load i16, i16* %arrayidx.i1326, align 2, !tbaa !134
  %conv.i1327 = zext i16 %102 to i32
  %and.i1328 = and i32 %add.i1316, 32767
  %arrayidx10.i1329 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom.i1325
  %103 = load i8, i8* %arrayidx10.i1329, align 1, !tbaa !39
  %conv11.i1330 = zext i8 %103 to i32
  %mul12.i1331 = mul nuw nsw i32 %and.i1328, %conv11.i1330
  %shr13.i1332 = lshr i32 %mul12.i1331, 12
  %add14.i1333 = add nuw nsw i32 %shr13.i1332, %conv.i1327
  %shr15.i1334 = lshr i32 %add14.i1333, 8
  %conv18.i1335 = and i32 %shr15.i1334, 255
  br label %png_colormap_compose.exit1339

png_colormap_compose.exit1339:                    ; preds = %if.then.i1323, %if.else.i1336
  %f.0.i1337 = phi i32 [ %shr6.i1322, %if.then.i1323 ], [ %conv18.i1335, %if.else.i1336 ]
  %green713 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %92, i64 %indvars.iv1494, i32 1
  %104 = load i8, i8* %green713, align 1, !tbaa !126
  %conv714 = zext i8 %104 to i32
  %105 = load i8, i8* %arrayidx691, align 1, !tbaa !39
  %conv717 = zext i8 %105 to i32
  %call.i1340 = tail call fastcc i32 @decode_gamma(%struct.png_image_read_control* %0, i32 %conv714, i32 3) #13
  %call1.i1341 = tail call fastcc i32 @decode_gamma(%struct.png_image_read_control* %0, i32 %back_g.0, i32 %cond) #13
  %mul.i1342 = mul i32 %call.i1340, %conv717
  %sub.i1343 = xor i32 %conv717, 255
  %mul2.i1344 = mul i32 %call1.i1341, %sub.i1343
  %add.i1345 = add i32 %mul2.i1344, %mul.i1342
  br i1 %cmp.not, label %if.else.i1365, label %if.then.i1352

if.then.i1352:                                    ; preds = %png_colormap_compose.exit1339
  %mul3.i1347 = mul i32 %add.i1345, 257
  %shr.i1348 = lshr i32 %mul3.i1347, 16
  %add4.i1349 = add i32 %mul3.i1347, 32768
  %add5.i1350 = add i32 %add4.i1349, %shr.i1348
  %shr6.i1351 = lshr i32 %add5.i1350, 16
  br label %png_colormap_compose.exit1368

if.else.i1365:                                    ; preds = %png_colormap_compose.exit1339
  %shr7.i1353 = lshr i32 %add.i1345, 15
  %idxprom.i1354 = zext i32 %shr7.i1353 to i64
  %arrayidx.i1355 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom.i1354
  %106 = load i16, i16* %arrayidx.i1355, align 2, !tbaa !134
  %conv.i1356 = zext i16 %106 to i32
  %and.i1357 = and i32 %add.i1345, 32767
  %arrayidx10.i1358 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom.i1354
  %107 = load i8, i8* %arrayidx10.i1358, align 1, !tbaa !39
  %conv11.i1359 = zext i8 %107 to i32
  %mul12.i1360 = mul nuw nsw i32 %and.i1357, %conv11.i1359
  %shr13.i1361 = lshr i32 %mul12.i1360, 12
  %add14.i1362 = add nuw nsw i32 %shr13.i1361, %conv.i1356
  %shr15.i1363 = lshr i32 %add14.i1362, 8
  %conv18.i1364 = and i32 %shr15.i1363, 255
  br label %png_colormap_compose.exit1368

png_colormap_compose.exit1368:                    ; preds = %if.then.i1352, %if.else.i1365
  %f.0.i1366 = phi i32 [ %shr6.i1351, %if.then.i1352 ], [ %conv18.i1364, %if.else.i1365 ]
  %blue721 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %92, i64 %indvars.iv1494, i32 2
  %108 = load i8, i8* %blue721, align 1, !tbaa !129
  %conv722 = zext i8 %108 to i32
  %109 = load i8, i8* %arrayidx691, align 1, !tbaa !39
  %conv725 = zext i8 %109 to i32
  %call.i1369 = tail call fastcc i32 @decode_gamma(%struct.png_image_read_control* %0, i32 %conv722, i32 3) #13
  %call1.i1370 = tail call fastcc i32 @decode_gamma(%struct.png_image_read_control* %0, i32 %back_b.0, i32 %cond) #13
  %mul.i1371 = mul i32 %call.i1369, %conv725
  %sub.i1372 = xor i32 %conv725, 255
  %mul2.i1373 = mul i32 %call1.i1370, %sub.i1372
  %add.i1374 = add i32 %mul2.i1373, %mul.i1371
  br i1 %cmp.not, label %cond.false734, label %cond.true729

cond.true729:                                     ; preds = %png_colormap_compose.exit1368
  %mul3.i1376 = mul i32 %add.i1374, 257
  %shr.i1377 = lshr i32 %mul3.i1376, 16
  %add4.i1378 = add i32 %mul3.i1376, 32768
  %add5.i1379 = add i32 %add4.i1378, %shr.i1377
  %shr6.i1380 = lshr i32 %add5.i1379, 16
  %110 = load i8, i8* %arrayidx691, align 1, !tbaa !39
  %conv732 = zext i8 %110 to i32
  %mul733 = mul nuw nsw i32 %conv732, 257
  br label %cond.end738

cond.false734:                                    ; preds = %png_colormap_compose.exit1368
  %shr7.i1382 = lshr i32 %add.i1374, 15
  %idxprom.i1383 = zext i32 %shr7.i1382 to i64
  %arrayidx.i1384 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom.i1383
  %111 = load i16, i16* %arrayidx.i1384, align 2, !tbaa !134
  %conv.i1385 = zext i16 %111 to i32
  %and.i1386 = and i32 %add.i1374, 32767
  %arrayidx10.i1387 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom.i1383
  %112 = load i8, i8* %arrayidx10.i1387, align 1, !tbaa !39
  %conv11.i1388 = zext i8 %112 to i32
  %mul12.i1389 = mul nuw nsw i32 %and.i1386, %conv11.i1388
  %shr13.i1390 = lshr i32 %mul12.i1389, 12
  %add14.i1391 = add nuw nsw i32 %shr13.i1390, %conv.i1385
  %shr15.i1392 = lshr i32 %add14.i1391, 8
  %conv18.i1393 = and i32 %shr15.i1392, 255
  %113 = load i8, i8* %arrayidx691, align 1, !tbaa !39
  %conv737 = zext i8 %113 to i32
  br label %cond.end738

cond.end738:                                      ; preds = %cond.false734, %cond.true729
  %f.0.i13951499 = phi i32 [ %shr6.i1380, %cond.true729 ], [ %conv18.i1393, %cond.false734 ]
  %cond739 = phi i32 [ %mul733, %cond.true729 ], [ %conv737, %cond.false734 ]
  %114 = trunc i64 %indvars.iv1494 to i32
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %114, i32 %f.0.i1337, i32 %f.0.i1366, i32 %f.0.i13951499, i32 %cond739, i32 %cond)
  br label %for.inc764

if.else741:                                       ; preds = %land.lhs.true689, %for.body683
  %red744 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %92, i64 %indvars.iv1494, i32 0
  %115 = load i8, i8* %red744, align 1, !tbaa !128
  %conv745 = zext i8 %115 to i32
  %green748 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %92, i64 %indvars.iv1494, i32 1
  %116 = load i8, i8* %green748, align 1, !tbaa !126
  %conv749 = zext i8 %116 to i32
  %blue752 = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %92, i64 %indvars.iv1494, i32 2
  %117 = load i8, i8* %blue752, align 1, !tbaa !129
  %conv753 = zext i8 %117 to i32
  br i1 %cmp687, label %cond.true756, label %cond.end761

cond.true756:                                     ; preds = %if.else741
  %arrayidx758 = getelementptr inbounds i8, i8* %cond658, i64 %indvars.iv1494
  %118 = load i8, i8* %arrayidx758, align 1, !tbaa !39
  %conv759 = zext i8 %118 to i32
  br label %cond.end761

cond.end761:                                      ; preds = %if.else741, %cond.true756
  %cond762 = phi i32 [ %conv759, %cond.true756 ], [ 255, %if.else741 ]
  %119 = trunc i64 %indvars.iv1494 to i32
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %0, i32 %119, i32 %conv745, i32 %conv749, i32 %conv753, i32 %cond762, i32 3)
  br label %for.inc764

for.inc764:                                       ; preds = %cond.end761, %cond.end738, %if.then701
  %indvars.iv.next1495 = add nuw nsw i64 %indvars.iv1494, 1
  %exitcond1496.not = icmp eq i64 %indvars.iv.next1495, %wide.trip.count
  br i1 %exitcond1496.not, label %for.end766, label %for.body683, !llvm.loop !148

for.end766:                                       ; preds = %for.inc764, %for.cond680.preheader
  %bit_depth767 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 64
  %120 = load i8, i8* %bit_depth767, align 8, !tbaa !26
  %cmp769 = icmp ult i8 %120, 8
  br i1 %cmp769, label %if.then771, label %sw.bb789

if.then771:                                       ; preds = %for.end766
  tail call void @png_set_packing(%struct.png_struct_def* nonnull %3) #13
  br label %sw.bb789

sw.default:                                       ; preds = %if.end62
  tail call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0)) #14
  unreachable

land.lhs.true775:                                 ; preds = %for.cond477.preheader, %for.inc626, %if.end360, %if.end156, %if.end441
  %background_index.2 = phi i32 [ 231, %if.end360 ], [ 254, %if.end156 ], [ 256, %if.end441 ], [ %call513, %for.inc626 ], [ %call470, %for.cond477.preheader ]
  %data_encoding.1 = phi i32 [ 1, %if.end360 ], [ 1, %if.end156 ], [ %data_encoding.0, %if.end441 ], [ 1, %for.inc626 ], [ 1, %for.cond477.preheader ]
  %output_processing.2 = phi i32 [ 1, %if.end360 ], [ 2, %if.end156 ], [ 0, %if.end441 ], [ 4, %for.inc626 ], [ 4, %for.cond477.preheader ]
  %cmap_entries.8 = phi i32 [ %call361, %if.end360 ], [ 256, %if.end156 ], [ 256, %if.end441 ], [ %inc614, %for.inc626 ], [ %inc485.2.2, %for.cond477.preheader ]
  %num_trans776 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 57
  %121 = load i16, i16* %num_trans776, align 8, !tbaa !110
  %cmp778.not = icmp eq i16 %121, 0
  br i1 %cmp778.not, label %if.end787, label %land.lhs.true780

land.lhs.true780:                                 ; preds = %land.lhs.true775
  %122 = load i8, i8* %color_type, align 1, !tbaa !20
  %123 = and i8 %122, 4
  %cmp784 = icmp eq i8 %123, 0
  br i1 %cmp784, label %if.then786, label %if.end787

if.then786:                                       ; preds = %land.lhs.true780
  call void @png_set_tRNS_to_alpha(%struct.png_struct_def* nonnull %3) #13
  br label %if.end787

if.end787:                                        ; preds = %lor.lhs.false392, %if.then786, %land.lhs.true780, %land.lhs.true775
  %cmap_entries.81441 = phi i32 [ %cmap_entries.8, %if.then786 ], [ %cmap_entries.8, %land.lhs.true780 ], [ %cmap_entries.8, %land.lhs.true775 ], [ 256, %lor.lhs.false392 ]
  %output_processing.21440 = phi i32 [ %output_processing.2, %if.then786 ], [ %output_processing.2, %land.lhs.true780 ], [ %output_processing.2, %land.lhs.true775 ], [ 0, %lor.lhs.false392 ]
  %data_encoding.11439 = phi i32 [ %data_encoding.1, %if.then786 ], [ %data_encoding.1, %land.lhs.true780 ], [ %data_encoding.1, %land.lhs.true775 ], [ %data_encoding.0, %lor.lhs.false392 ]
  %background_index.21438 = phi i32 [ %background_index.2, %if.then786 ], [ %background_index.2, %land.lhs.true780 ], [ %background_index.2, %land.lhs.true775 ], [ 256, %lor.lhs.false392 ]
  switch i32 %data_encoding.11439, label %sw.default796 [
    i32 1, label %sw.bb788
    i32 3, label %sw.bb789
  ]

sw.bb788:                                         ; preds = %for.end331, %if.end647, %if.end169, %if.end212, %if.end146, %make_gray_colormap.exit, %if.else630, %if.end787
  %background_index.214381451 = phi i32 [ %background_index.21438, %if.end787 ], [ 256, %if.end647 ], [ 231, %if.end169 ], [ 256, %if.end212 ], [ 256, %if.end146 ], [ 256, %make_gray_colormap.exit ], [ 256, %if.else630 ], [ 231, %for.end331 ]
  %output_processing.214401449 = phi i32 [ %output_processing.21440, %if.end787 ], [ 3, %if.end647 ], [ 1, %if.end169 ], [ 0, %if.end212 ], [ 0, %if.end146 ], [ 0, %make_gray_colormap.exit ], [ 3, %if.else630 ], [ 1, %for.end331 ]
  %cmap_entries.814411447 = phi i32 [ %cmap_entries.81441, %if.end787 ], [ %call648, %if.end647 ], [ %call170, %if.end169 ], [ 256, %if.end212 ], [ 256, %if.end146 ], [ 256, %make_gray_colormap.exit ], [ %call513, %if.else630 ], [ %inc271, %for.end331 ]
  call void @png_set_alpha_mode_fixed(%struct.png_struct_def* %3, i32 0, i32 220000) #13
  br label %sw.bb789

sw.bb789:                                         ; preds = %if.then102, %for.end, %if.then771, %for.end766, %if.end787, %sw.bb788
  %background_index.214381450 = phi i32 [ %background_index.21438, %if.end787 ], [ %background_index.214381451, %sw.bb788 ], [ 256, %for.end766 ], [ 256, %if.then771 ], [ 256, %for.end ], [ 256, %if.then102 ]
  %output_processing.214401448 = phi i32 [ %output_processing.21440, %if.end787 ], [ %output_processing.214401449, %sw.bb788 ], [ 0, %for.end766 ], [ 0, %if.then771 ], [ 0, %for.end ], [ 0, %if.then102 ]
  %cmap_entries.814411446 = phi i32 [ %cmap_entries.81441, %if.end787 ], [ %cmap_entries.814411447, %sw.bb788 ], [ %spec.store.select, %for.end766 ], [ %spec.store.select, %if.then771 ], [ %shl, %for.end ], [ %shl, %if.then102 ]
  %bit_depth790 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 64
  %124 = load i8, i8* %bit_depth790, align 8, !tbaa !26
  %cmp792 = icmp ugt i8 %124, 8
  br i1 %cmp792, label %if.then794, label %sw.epilog797

if.then794:                                       ; preds = %sw.bb789
  call void @png_set_scale_16(%struct.png_struct_def* nonnull %3) #13
  br label %sw.epilog797

sw.default796:                                    ; preds = %if.end787
  call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i64 0, i64 0)) #14
  unreachable

sw.epilog797:                                     ; preds = %sw.bb789, %if.then794
  %cmp798 = icmp ugt i32 %cmap_entries.814411446, 256
  br i1 %cmp798, label %if.then804, label %lor.lhs.false800

lor.lhs.false800:                                 ; preds = %sw.epilog797
  %colormap_entries801 = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 6
  %125 = load i32, i32* %colormap_entries801, align 4, !tbaa !114
  %cmp802 = icmp ugt i32 %cmap_entries.814411446, %125
  br i1 %cmp802, label %if.then804, label %if.end805

if.then804:                                       ; preds = %lor.lhs.false800, %sw.epilog797
  call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0)) #14
  unreachable

if.end805:                                        ; preds = %lor.lhs.false800
  store i32 %cmap_entries.814411446, i32* %colormap_entries801, align 4, !tbaa !114
  switch i32 %output_processing.214401448, label %sw.default835 [
    i32 0, label %sw.bb807
    i32 1, label %sw.bb812
    i32 2, label %sw.bb817
    i32 3, label %sw.bb825
    i32 4, label %sw.bb830
  ]

sw.bb807:                                         ; preds = %if.end805
  %cmp808.not = icmp eq i32 %background_index.214381450, 256
  br i1 %cmp808.not, label %sw.epilog836, label %bad_background

sw.bb812:                                         ; preds = %if.end805
  %cmp813.not = icmp eq i32 %background_index.214381450, 231
  br i1 %cmp813.not, label %sw.epilog836, label %bad_background

sw.bb817:                                         ; preds = %if.end805
  %cmp821 = icmp ne i32 %background_index.214381450, 254
  %126 = icmp ult i32 %cmap_entries.814411446, 255
  %127 = or i1 %cmp821, %126
  br i1 %127, label %bad_background, label %sw.epilog836

sw.bb825:                                         ; preds = %if.end805
  %cmp826.not = icmp eq i32 %background_index.214381450, 256
  br i1 %cmp826.not, label %sw.epilog836, label %bad_background

sw.bb830:                                         ; preds = %if.end805
  %cmp831.not = icmp eq i32 %background_index.214381450, 216
  br i1 %cmp831.not, label %sw.epilog836, label %bad_background

sw.default835:                                    ; preds = %if.end805
  call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.47, i64 0, i64 0)) #14
  unreachable

bad_background:                                   ; preds = %sw.bb830, %sw.bb825, %sw.bb817, %sw.bb812, %sw.bb807
  call void @png_error(%struct.png_struct_def* nonnull %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i64 0, i64 0)) #14
  unreachable

sw.epilog836:                                     ; preds = %sw.bb830, %sw.bb825, %sw.bb817, %sw.bb812, %sw.bb807
  %colormap_processing = getelementptr inbounds i8, i8* %argument, i64 72
  %128 = bitcast i8* %colormap_processing to i32*
  store i32 %output_processing.214401448, i32* %128, align 8, !tbaa !149
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @png_image_read_colormapped(i8* %argument) #0 {
entry:
  %image1 = bitcast i8* %argument to %struct.png_image**
  %0 = load %struct.png_image*, %struct.png_image** %image1, align 8, !tbaa !119
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 0
  %1 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %png_ptr2 = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 0
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr2, align 8, !tbaa !101
  %info_ptr3 = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 1
  %3 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr3, align 8, !tbaa !104
  tail call void @png_set_keep_unknown_chunks(%struct.png_struct_def* %2, i32 1, i8* null, i32 -1) #13
  tail call void @png_set_keep_unknown_chunks(%struct.png_struct_def* %2, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @png_image_skip_unused_chunks.chunks_to_process, i64 0, i64 0), i32 6) #13
  %colormap_processing = getelementptr inbounds i8, i8* %argument, i64 72
  %4 = bitcast i8* %colormap_processing to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !149
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @png_set_interlace_handling(%struct.png_struct_def* %2) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %passes.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  %cmp.not.i = icmp eq %struct.png_struct_def* %2, null
  br i1 %cmp.not.i, label %png_read_update_info.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 16
  %6 = load i32, i32* %flags.i, align 8, !tbaa !18, !alias.scope !150, !noalias !153
  %and.i = and i32 %6, 64
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i
  tail call void @png_read_start_row(%struct.png_struct_def* nonnull %2) #13, !noalias !153
  tail call void @png_read_transform_info(%struct.png_struct_def* nonnull %2, %struct.png_info_def* %3) #13
  br label %png_read_update_info.exit

if.else.i:                                        ; preds = %if.then.i
  tail call void @png_app_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0)) #13
  br label %png_read_update_info.exit

png_read_update_info.exit:                        ; preds = %if.end, %if.then2.i, %if.else.i
  %7 = load i32, i32* %4, align 8, !tbaa !149
  switch i32 %7, label %bad_output [
    i32 0, label %sw.bb
    i32 2, label %sw.bb16
    i32 1, label %sw.bb16
    i32 3, label %sw.bb34
    i32 4, label %sw.bb54
  ]

sw.bb:                                            ; preds = %png_read_update_info.exit
  %color_type = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %3, i64 0, i32 8
  %8 = load i8, i8* %color_type, align 1, !tbaa !155
  switch i8 %8, label %bad_output [
    i8 3, label %land.lhs.true
    i8 0, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %sw.bb, %sw.bb
  %bit_depth = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %3, i64 0, i32 7
  %9 = load i8, i8* %bit_depth, align 4, !tbaa !156
  %cmp12 = icmp eq i8 %9, 8
  br i1 %cmp12, label %sw.epilog, label %bad_output

sw.bb16:                                          ; preds = %png_read_update_info.exit, %png_read_update_info.exit
  %color_type17 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %3, i64 0, i32 8
  %10 = load i8, i8* %color_type17, align 1, !tbaa !155
  %cmp19 = icmp eq i8 %10, 4
  br i1 %cmp19, label %land.lhs.true21, label %bad_output

land.lhs.true21:                                  ; preds = %sw.bb16
  %bit_depth22 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %3, i64 0, i32 7
  %11 = load i8, i8* %bit_depth22, align 4, !tbaa !156
  %cmp24 = icmp eq i8 %11, 8
  br i1 %cmp24, label %land.lhs.true26, label %bad_output

land.lhs.true26:                                  ; preds = %land.lhs.true21
  %screen_gamma = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 82
  %12 = load i32, i32* %screen_gamma, align 4, !tbaa !157
  %cmp27 = icmp eq i32 %12, 220000
  br i1 %cmp27, label %land.lhs.true29, label %bad_output

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %colormap_entries = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 6
  %13 = load i32, i32* %colormap_entries, align 4, !tbaa !114
  %cmp30 = icmp eq i32 %13, 256
  br i1 %cmp30, label %sw.epilog, label %bad_output

sw.bb34:                                          ; preds = %png_read_update_info.exit
  %color_type35 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %3, i64 0, i32 8
  %14 = load i8, i8* %color_type35, align 1, !tbaa !155
  %cmp37 = icmp eq i8 %14, 2
  br i1 %cmp37, label %land.lhs.true39, label %bad_output

land.lhs.true39:                                  ; preds = %sw.bb34
  %bit_depth40 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %3, i64 0, i32 7
  %15 = load i8, i8* %bit_depth40, align 4, !tbaa !156
  %cmp42 = icmp eq i8 %15, 8
  br i1 %cmp42, label %land.lhs.true44, label %bad_output

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %screen_gamma45 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 82
  %16 = load i32, i32* %screen_gamma45, align 4, !tbaa !157
  %cmp46 = icmp eq i32 %16, 220000
  br i1 %cmp46, label %land.lhs.true48, label %bad_output

land.lhs.true48:                                  ; preds = %land.lhs.true44
  %colormap_entries49 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 6
  %17 = load i32, i32* %colormap_entries49, align 4, !tbaa !114
  %cmp50 = icmp eq i32 %17, 216
  br i1 %cmp50, label %sw.epilog, label %bad_output

sw.bb54:                                          ; preds = %png_read_update_info.exit
  %color_type55 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %3, i64 0, i32 8
  %18 = load i8, i8* %color_type55, align 1, !tbaa !155
  %cmp57 = icmp eq i8 %18, 6
  br i1 %cmp57, label %land.lhs.true59, label %bad_output

land.lhs.true59:                                  ; preds = %sw.bb54
  %bit_depth60 = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %3, i64 0, i32 7
  %19 = load i8, i8* %bit_depth60, align 4, !tbaa !156
  %cmp62 = icmp eq i8 %19, 8
  br i1 %cmp62, label %land.lhs.true64, label %bad_output

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %screen_gamma65 = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 82
  %20 = load i32, i32* %screen_gamma65, align 4, !tbaa !157
  %cmp66 = icmp eq i32 %20, 220000
  br i1 %cmp66, label %land.lhs.true68, label %bad_output

land.lhs.true68:                                  ; preds = %land.lhs.true64
  %colormap_entries69 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 6
  %21 = load i32, i32* %colormap_entries69, align 4, !tbaa !114
  %cmp70 = icmp eq i32 %21, 244
  br i1 %cmp70, label %sw.epilog, label %bad_output

bad_output:                                       ; preds = %sw.bb, %png_read_update_info.exit, %sw.bb54, %land.lhs.true59, %land.lhs.true64, %land.lhs.true68, %sw.bb34, %land.lhs.true39, %land.lhs.true44, %land.lhs.true48, %sw.bb16, %land.lhs.true21, %land.lhs.true26, %land.lhs.true29, %land.lhs.true
  tail call void @png_error(%struct.png_struct_def* %2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i64 0, i64 0)) #14
  unreachable

sw.epilog:                                        ; preds = %land.lhs.true68, %land.lhs.true48, %land.lhs.true29, %land.lhs.true
  %buffer = getelementptr inbounds i8, i8* %argument, i64 8
  %22 = bitcast i8* %buffer to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !121
  %row_stride = getelementptr inbounds i8, i8* %argument, i64 16
  %24 = bitcast i8* %row_stride to i32*
  %25 = load i32, i32* %24, align 8, !tbaa !122
  %conv74 = sext i32 %25 to i64
  %cmp75 = icmp slt i32 %25, 0
  br i1 %cmp75, label %if.then77, label %if.end80

if.then77:                                        ; preds = %sw.epilog
  %height = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 3
  %26 = load i32, i32* %height, align 8, !tbaa !106
  %sub = add i32 %26, -1
  %conv78 = zext i32 %sub to i64
  %27 = mul nsw i64 %conv74, %conv78
  %mul = sub nsw i64 0, %27
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %mul
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %sw.epilog
  %first_row.0 = phi i8* [ %add.ptr, %if.then77 ], [ %23, %sw.epilog ]
  %first_row81 = getelementptr inbounds i8, i8* %argument, i64 48
  %28 = bitcast i8* %first_row81 to i8**
  store i8* %first_row.0, i8** %28, align 8, !tbaa !158
  %row_bytes82 = getelementptr inbounds i8, i8* %argument, i64 56
  %29 = bitcast i8* %row_bytes82 to i64*
  store i64 %conv74, i64* %29, align 8, !tbaa !159
  %cmp83 = icmp eq i32 %passes.0, 0
  br i1 %cmp83, label %if.then85, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end80
  %cmp92170 = icmp sgt i32 %passes.0, 0
  br i1 %cmp92170, label %while.body.lr.ph, label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %height94 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 3
  br label %while.body

if.then85:                                        ; preds = %if.end80
  %call86 = tail call i64 @png_get_rowbytes(%struct.png_struct_def* %2, %struct.png_info_def* nonnull %3) #13
  %call87 = tail call noalias i8* @png_malloc(%struct.png_struct_def* %2, i64 %call86) #13
  %local_row = getelementptr inbounds i8, i8* %argument, i64 40
  %30 = bitcast i8* %local_row to i8**
  store i8* %call87, i8** %30, align 8, !tbaa !125
  %call88 = tail call i32 @png_safe_execute(%struct.png_image* nonnull %0, i32 (i8*)* nonnull @png_image_read_and_map, i8* nonnull %argument) #13
  store i8* null, i8** %30, align 8, !tbaa !125
  tail call void @png_free(%struct.png_struct_def* %2, i8* %call87) #13
  br label %cleanup

while.cond.loopexit:                              ; preds = %for.body, %while.body
  %cmp92 = icmp sgt i32 %dec171.in, 1
  br i1 %cmp92, label %while.cond.loopexit.while.body_crit_edge, label %cleanup, !llvm.loop !160

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  %.pre = load i8*, i8** %28, align 8, !tbaa !158
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %31 = phi i8* [ %first_row.0, %while.body.lr.ph ], [ %.pre, %while.cond.loopexit.while.body_crit_edge ]
  %dec171.in = phi i32 [ %passes.0, %while.body.lr.ph ], [ %dec171, %while.cond.loopexit.while.body_crit_edge ]
  %dec171 = add nsw i32 %dec171.in, -1
  %32 = load i32, i32* %height94, align 8, !tbaa !106
  %cmp97.not166 = icmp eq i32 %32, 0
  br i1 %cmp97.not166, label %while.cond.loopexit, label %for.body

for.body:                                         ; preds = %while.body, %for.body
  %row95.0168 = phi i8* [ %add.ptr99, %for.body ], [ %31, %while.body ]
  %y.0167 = phi i32 [ %dec100, %for.body ], [ %32, %while.body ]
  tail call void @png_read_row(%struct.png_struct_def* %2, i8* %row95.0168, i8* null)
  %add.ptr99 = getelementptr inbounds i8, i8* %row95.0168, i64 %conv74
  %dec100 = add i32 %y.0167, -1
  %cmp97.not = icmp eq i32 %dec100, 0
  br i1 %cmp97.not, label %while.cond.loopexit, label %for.body, !llvm.loop !161

cleanup:                                          ; preds = %while.cond.loopexit, %while.cond.preheader, %if.then85
  %retval.0 = phi i32 [ %call88, %if.then85 ], [ 1, %while.cond.preheader ], [ 1, %while.cond.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal i32 @png_image_read_direct(i8* %argument) #0 {
entry:
  %gtest = alloca i32, align 4
  %c = alloca %struct.png_color_16_struct, align 2
  %image1 = bitcast i8* %argument to %struct.png_image**
  %0 = load %struct.png_image*, %struct.png_image** %image1, align 8, !tbaa !119
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 0
  %1 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %png_ptr2 = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 0
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr2, align 8, !tbaa !101
  %info_ptr4 = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 1
  %3 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr4, align 8, !tbaa !104
  %format5 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 4
  %4 = load i32, i32* %format5, align 4, !tbaa !111
  %and = and i32 %4, 4
  %cmp.not = icmp eq i32 %and, 0
  tail call void @png_set_expand(%struct.png_struct_def* %2) #13
  %color_type.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 63
  %5 = load i8, i8* %color_type.i, align 1, !tbaa !20, !alias.scope !162
  %6 = and i8 %5, 2
  %7 = zext i8 %6 to i32
  %8 = and i8 %5, 4
  %cmp5.not.i = icmp eq i8 %8, 0
  br i1 %cmp5.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %entry
  %or8.i = or i32 %7, 1
  br label %png_image_format.exit

if.else.i:                                        ; preds = %entry
  %num_trans.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 57
  %9 = load i16, i16* %num_trans.i, align 8, !tbaa !110, !alias.scope !162
  %cmp10.not.i = icmp ne i16 %9, 0
  %or13.i = zext i1 %cmp10.not.i to i32
  %spec.select40.i = or i32 %or13.i, %7
  br label %png_image_format.exit

png_image_format.exit:                            ; preds = %if.then7.i, %if.else.i
  %format.1.i = phi i32 [ %or8.i, %if.then7.i ], [ %spec.select40.i, %if.else.i ]
  %bit_depth.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 64
  %10 = load i8, i8* %bit_depth.i, align 8, !tbaa !26, !alias.scope !162
  %cmp17.i = icmp eq i8 %10, 16
  %or20.i = or i32 %format.1.i, 4
  %spec.select41.i = select i1 %cmp17.i, i32 %or20.i, i32 %format.1.i
  %and6 = and i32 %spec.select41.i, -9
  %xor = xor i32 %and6, %4
  %and7 = and i32 %xor, 2
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.end20, label %if.then

if.then:                                          ; preds = %png_image_format.exit
  %and10 = and i32 %4, 2
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then
  tail call void @png_set_gray_to_rgb(%struct.png_struct_def* nonnull %2) #13
  br label %if.end18

if.else:                                          ; preds = %if.then
  %and14 = and i32 %spec.select41.i, 1
  tail call void @png_set_rgb_to_gray_fixed(%struct.png_struct_def* nonnull %2, i32 1, i32 -1, i32 -1) #13
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13
  %do_local_background.1 = phi i32 [ 0, %if.then13 ], [ %and14, %if.else ]
  %and19 = and i32 %xor, -3
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %png_image_format.exit
  %change.0 = phi i32 [ %and19, %if.end18 ], [ %xor, %png_image_format.exit ]
  %do_local_background.2 = phi i32 [ %do_local_background.1, %if.end18 ], [ 0, %png_image_format.exit ]
  %and21 = and i32 %spec.select41.i, 4
  %cmp22.not = icmp eq i32 %and21, 0
  br i1 %cmp22.not, label %if.else28, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %flags = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 5
  %11 = load i32, i32* %flags, align 8, !tbaa !113
  %and24 = and i32 %11, 4
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %if.end29, label %if.else28

if.else28:                                        ; preds = %land.lhs.true, %if.end20
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true, %if.else28
  %input_gamma_default.0 = phi i32 [ -1, %if.else28 ], [ 100000, %land.lhs.true ]
  tail call void @png_set_alpha_mode_fixed(%struct.png_struct_def* nonnull %2, i32 0, i32 %input_gamma_default.0) #13
  %and33 = and i32 %spec.select41.i, 1
  %cmp34.not = icmp eq i32 %and33, 0
  %narrow.demorgan = or i1 %cmp.not, %cmp34.not
  %narrow = xor i1 %narrow.demorgan, true
  %mode.1 = zext i1 %narrow to i32
  %output_gamma.0 = select i1 %cmp.not, i32 -1, i32 100000
  %and41 = and i32 %change.0, 64
  %cmp42.not = icmp eq i32 %and41, 0
  %and45 = and i32 %change.0, -65
  %spec.select462 = select i1 %cmp42.not, i32 %mode.1, i32 2
  %cmp47.not = icmp eq i32 %do_local_background.2, 0
  br i1 %cmp47.not, label %if.end64, label %if.then49

if.then49:                                        ; preds = %if.end29
  %12 = bitcast i32* %gtest to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #13
  %gamma = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 149, i32 0
  %13 = load i32, i32* %gamma, align 8, !tbaa !130
  %call50 = call i32 @png_muldiv(i32* nonnull %gtest, i32 %output_gamma.0, i32 %13, i32 100000) #13
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %if.else58, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.then49
  %14 = load i32, i32* %gtest, align 4, !tbaa !115
  %call54 = call i32 @png_gamma_significant(i32 %14) #13
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.end63, label %if.else58

if.else58:                                        ; preds = %land.lhs.true53, %if.then49
  %cmp59 = icmp eq i32 %spec.select462, 1
  %spec.select464 = select i1 %cmp59, i32 0, i32 %spec.select462
  %spec.select465 = select i1 %cmp59, i32 2, i32 1
  br label %if.end63

if.end63:                                         ; preds = %if.else58, %land.lhs.true53
  %mode.3 = phi i32 [ %spec.select462, %land.lhs.true53 ], [ %spec.select464, %if.else58 ]
  %do_local_background.3 = phi i32 [ 0, %land.lhs.true53 ], [ %spec.select465, %if.else58 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #13
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end29
  %mode.4 = phi i32 [ %mode.3, %if.end63 ], [ %spec.select462, %if.end29 ]
  %do_local_background.4 = phi i32 [ %do_local_background.3, %if.end63 ], [ 0, %if.end29 ]
  %and65 = and i32 %change.0, 4
  %cmp66.not = icmp eq i32 %and65, 0
  br i1 %cmp66.not, label %if.end75, label %if.then68

if.then68:                                        ; preds = %if.end64
  br i1 %cmp.not, label %if.else72, label %if.then71

if.then71:                                        ; preds = %if.then68
  call void @png_set_expand_16(%struct.png_struct_def* nonnull %2) #13
  br label %if.end73

if.else72:                                        ; preds = %if.then68
  call void @png_set_scale_16(%struct.png_struct_def* nonnull %2) #13
  br label %if.end73

if.end73:                                         ; preds = %if.else72, %if.then71
  %and74 = and i32 %change.0, -69
  br label %if.end75

if.end75:                                         ; preds = %if.end73, %if.end64
  %change.2 = phi i32 [ %and74, %if.end73 ], [ %and45, %if.end64 ]
  %and76 = and i32 %change.2, 1
  %cmp77.not = icmp eq i32 %and76, 0
  br i1 %cmp77.not, label %if.end126, label %if.then79

if.then79:                                        ; preds = %if.end75
  br i1 %cmp34.not, label %if.else111, label %if.then83

if.then83:                                        ; preds = %if.then79
  %cmp84.not = icmp eq i32 %do_local_background.4, 0
  br i1 %cmp84.not, label %if.else87, label %if.end124

if.else87:                                        ; preds = %if.then83
  br i1 %cmp.not, label %if.else91, label %if.then90

if.then90:                                        ; preds = %if.else87
  call void @png_set_strip_alpha(%struct.png_struct_def* nonnull %2) #13
  br label %if.end124

if.else91:                                        ; preds = %if.else87
  %background = getelementptr inbounds i8, i8* %argument, i64 32
  %15 = bitcast i8* %background to %struct.png_color_struct**
  %16 = load %struct.png_color_struct*, %struct.png_color_struct** %15, align 8, !tbaa !124
  %cmp92.not = icmp eq %struct.png_color_struct* %16, null
  br i1 %cmp92.not, label %if.end124, label %if.then94

if.then94:                                        ; preds = %if.else91
  %17 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %17) #13
  store i8 0, i8* %17, align 2, !tbaa !135
  %red = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %16, i64 0, i32 0
  %18 = load i8, i8* %red, align 1, !tbaa !128
  %conv96 = zext i8 %18 to i16
  %red97 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c, i64 0, i32 1
  store i16 %conv96, i16* %red97, align 2, !tbaa !144
  %green = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %16, i64 0, i32 1
  %19 = load i8, i8* %green, align 1, !tbaa !126
  %conv99 = zext i8 %19 to i16
  %green100 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c, i64 0, i32 2
  store i16 %conv99, i16* %green100, align 2, !tbaa !145
  %blue = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %16, i64 0, i32 2
  %20 = load i8, i8* %blue, align 1, !tbaa !129
  %conv102 = zext i8 %20 to i16
  %blue103 = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c, i64 0, i32 3
  store i16 %conv102, i16* %blue103, align 2, !tbaa !147
  %gray = getelementptr inbounds %struct.png_color_16_struct, %struct.png_color_16_struct* %c, i64 0, i32 4
  store i16 %conv99, i16* %gray, align 2, !tbaa !146
  call void @png_set_background_fixed(%struct.png_struct_def* nonnull %2, %struct.png_color_16_struct* nonnull %c, i32 1, i32 0, i32 0) #13
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %17) #13
  br label %if.end124

if.else111:                                       ; preds = %if.then79
  %filler.0 = select i1 %cmp.not, i32 255, i32 65535
  %and117 = and i32 %4, 32
  %cmp118.not = icmp eq i32 %and117, 0
  %and121 = and i32 %change.2, -97
  %and117.lobit = lshr exact i32 %and117, 5
  %21 = xor i32 %and117.lobit, 1
  %change.3 = select i1 %cmp118.not, i32 %change.2, i32 %and121
  call void @png_set_add_alpha(%struct.png_struct_def* nonnull %2, i32 %filler.0, i32 %21) #13
  br label %if.end124

if.end124:                                        ; preds = %if.else91, %if.then83, %if.then94, %if.then90, %if.else111
  %mode.5 = phi i32 [ %mode.4, %if.then90 ], [ %mode.4, %if.then94 ], [ %mode.4, %if.else111 ], [ %mode.4, %if.then83 ], [ 2, %if.else91 ]
  %change.4 = phi i32 [ %change.2, %if.then90 ], [ %change.2, %if.then94 ], [ %change.3, %if.else111 ], [ %change.2, %if.then83 ], [ %change.2, %if.else91 ]
  %do_local_background.5 = phi i32 [ 0, %if.then90 ], [ 0, %if.then94 ], [ %do_local_background.4, %if.else111 ], [ 2, %if.then83 ], [ 0, %if.else91 ]
  %do_local_compose.0 = phi i32 [ 0, %if.then90 ], [ 0, %if.then94 ], [ 0, %if.else111 ], [ 0, %if.then83 ], [ 1, %if.else91 ]
  %and125 = and i32 %change.4, -2
  br label %if.end126

if.end126:                                        ; preds = %if.end124, %if.end75
  %mode.6 = phi i32 [ %mode.5, %if.end124 ], [ %mode.4, %if.end75 ]
  %change.5 = phi i32 [ %and125, %if.end124 ], [ %change.2, %if.end75 ]
  %do_local_background.6 = phi i32 [ %do_local_background.5, %if.end124 ], [ %do_local_background.4, %if.end75 ]
  %do_local_compose.1 = phi i32 [ %do_local_compose.0, %if.end124 ], [ 0, %if.end75 ]
  call void @png_set_alpha_mode_fixed(%struct.png_struct_def* nonnull %2, i32 %mode.6, i32 %output_gamma.0) #13
  %and127 = and i32 %change.5, 16
  %cmp128.not = icmp eq i32 %and127, 0
  br i1 %cmp128.not, label %if.end139, label %if.then130

if.then130:                                       ; preds = %if.end126
  %and131 = and i32 %4, 2
  %cmp132.not = icmp eq i32 %and131, 0
  br i1 %cmp132.not, label %if.else135, label %if.then134

if.then134:                                       ; preds = %if.then130
  call void @png_set_bgr(%struct.png_struct_def* nonnull %2) #13
  br label %if.end137

if.else135:                                       ; preds = %if.then130
  %and136 = and i32 %4, -17
  br label %if.end137

if.end137:                                        ; preds = %if.else135, %if.then134
  %format.0 = phi i32 [ %4, %if.then134 ], [ %and136, %if.else135 ]
  %and138 = and i32 %change.5, -17
  br label %if.end139

if.end139:                                        ; preds = %if.end137, %if.end126
  %change.6 = phi i32 [ %and138, %if.end137 ], [ %change.5, %if.end126 ]
  %format.1 = phi i32 [ %format.0, %if.end137 ], [ %4, %if.end126 ]
  %and140 = and i32 %change.6, 32
  %cmp141.not = icmp eq i32 %and140, 0
  br i1 %cmp141.not, label %if.end156, label %if.then143

if.then143:                                       ; preds = %if.end139
  %and144 = and i32 %format.1, 1
  %cmp145.not = icmp eq i32 %and144, 0
  br i1 %cmp145.not, label %if.else152, label %if.then147

if.then147:                                       ; preds = %if.then143
  %cmp148.not = icmp eq i32 %do_local_background.6, 2
  br i1 %cmp148.not, label %if.end154, label %if.then150

if.then150:                                       ; preds = %if.then147
  call void @png_set_swap_alpha(%struct.png_struct_def* nonnull %2) #13
  br label %if.end154

if.else152:                                       ; preds = %if.then143
  %and153 = and i32 %format.1, -33
  br label %if.end154

if.end154:                                        ; preds = %if.then147, %if.then150, %if.else152
  %format.2 = phi i32 [ %format.1, %if.then150 ], [ %format.1, %if.then147 ], [ %and153, %if.else152 ]
  %and155 = and i32 %change.6, -33
  br label %if.end156

if.end156:                                        ; preds = %if.end154, %if.end139
  %change.7 = phi i32 [ %and155, %if.end154 ], [ %change.6, %if.end139 ]
  %format.3 = phi i32 [ %format.2, %if.end154 ], [ %format.1, %if.end139 ]
  br i1 %cmp.not, label %if.end165, label %if.then163

if.then163:                                       ; preds = %if.end156
  call void @png_set_swap(%struct.png_struct_def* nonnull %2) #13
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.end156
  %cmp166.not = icmp eq i32 %change.7, 0
  br i1 %cmp166.not, label %if.end169, label %if.then168

if.then168:                                       ; preds = %if.end165
  call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.54, i64 0, i64 0)) #14
  unreachable

if.end169:                                        ; preds = %if.end165
  call void @png_set_keep_unknown_chunks(%struct.png_struct_def* nonnull %2, i32 1, i8* null, i32 -1) #13
  call void @png_set_keep_unknown_chunks(%struct.png_struct_def* nonnull %2, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @png_image_skip_unused_chunks.chunks_to_process, i64 0, i64 0), i32 6) #13
  %cmp170 = icmp eq i32 %do_local_compose.1, 0
  %cmp173 = icmp ne i32 %do_local_background.6, 2
  %or.cond = and i1 %cmp173, %cmp170
  br i1 %or.cond, label %if.then175, label %if.then.i

if.then175:                                       ; preds = %if.end169
  %call176 = call i32 @png_set_interlace_handling(%struct.png_struct_def* nonnull %2) #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.end169, %if.then175
  %passes.0 = phi i32 [ %call176, %if.then175 ], [ 0, %if.end169 ]
  %flags.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 16
  %22 = load i32, i32* %flags.i, align 8, !tbaa !18, !alias.scope !165, !noalias !168
  %and.i = and i32 %22, 64
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i473

if.then2.i:                                       ; preds = %if.then.i
  call void @png_read_start_row(%struct.png_struct_def* nonnull %2) #13, !noalias !168
  call void @png_read_transform_info(%struct.png_struct_def* nonnull %2, %struct.png_info_def* %3) #13
  br label %png_read_update_info.exit

if.else.i473:                                     ; preds = %if.then.i
  call void @png_app_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0)) #13
  br label %png_read_update_info.exit

png_read_update_info.exit:                        ; preds = %if.then2.i, %if.else.i473
  %color_type = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %3, i64 0, i32 8
  %23 = load i8, i8* %color_type, align 1, !tbaa !155
  %24 = and i8 %23, 2
  %25 = zext i8 %24 to i32
  %26 = and i8 %23, 4
  %cmp187.not = icmp eq i8 %26, 0
  br i1 %cmp187.not, label %if.else202, label %if.then189

if.then189:                                       ; preds = %png_read_update_info.exit
  br i1 %cmp170, label %if.then192, label %if.end207

if.then192:                                       ; preds = %if.then189
  %and195 = and i32 %format.3, 1
  %cmp196.not = icmp ne i32 %and195, 0
  %27 = or i1 %cmp173, %cmp196.not
  %or199 = zext i1 %27 to i32
  %spec.select472 = or i32 %25, %or199
  br label %if.end207

if.else202:                                       ; preds = %png_read_update_info.exit
  br i1 %cmp170, label %if.end207, label %if.then205

if.then205:                                       ; preds = %if.else202
  call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0)) #14
  unreachable

if.end207:                                        ; preds = %if.then192, %if.else202, %if.then189
  %info_format.1 = phi i32 [ %25, %if.then189 ], [ %25, %if.else202 ], [ %spec.select472, %if.then192 ]
  %and208 = and i32 %format.3, 64
  %28 = or i32 %info_format.1, %and208
  %bit_depth = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %3, i64 0, i32 7
  %29 = load i8, i8* %bit_depth, align 4, !tbaa !156
  %cmp215 = icmp eq i8 %29, 16
  %or218 = or i32 %28, 4
  %info_format.3 = select i1 %cmp215, i32 %or218, i32 %28
  %transformations = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 17
  %30 = load i32, i32* %transformations, align 4, !tbaa !35
  %and220 = shl i32 %30, 4
  %31 = and i32 %and220, 16
  %32 = or i32 %31, %info_format.3
  %cmp226 = icmp eq i32 %do_local_background.6, 2
  %and229 = and i32 %format.3, 32
  %cmp230.not = icmp ne i32 %and229, 0
  %33 = and i1 %cmp226, %cmp230.not
  %or233 = or i32 %32, 32
  %info_format.5 = select i1 %33, i32 %or233, i32 %32
  %and237 = and i32 %30, 131072
  %cmp238.not = icmp eq i32 %and237, 0
  br i1 %cmp238.not, label %lor.lhs.false240, label %if.then250

lor.lhs.false240:                                 ; preds = %if.end207
  %and242 = and i32 %30, 16777216
  %cmp243.not = icmp eq i32 %and242, 0
  br i1 %cmp243.not, label %if.end256, label %land.lhs.true245

land.lhs.true245:                                 ; preds = %lor.lhs.false240
  %34 = load i32, i32* %flags.i, align 8, !tbaa !18
  %35 = trunc i32 %34 to i8
  %cmp248 = icmp slt i8 %35, 0
  %cmp226.not474 = xor i1 %cmp226, true
  %brmerge = or i1 %cmp248, %cmp226.not474
  %info_format.5.mux = select i1 %cmp248, i32 %info_format.5, i32 %or233
  br i1 %brmerge, label %if.end256, label %if.then253

if.then250:                                       ; preds = %if.end207
  br i1 %cmp226, label %if.then253, label %if.end256

if.then253:                                       ; preds = %land.lhs.true245, %if.then250
  call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i64 0, i64 0)) #14
  unreachable

if.end256:                                        ; preds = %land.lhs.true245, %if.then250, %lor.lhs.false240
  %info_format.6 = phi i32 [ %info_format.5.mux, %land.lhs.true245 ], [ %info_format.5, %lor.lhs.false240 ], [ %or233, %if.then250 ]
  %cmp257.not = icmp eq i32 %info_format.6, %format.3
  br i1 %cmp257.not, label %if.end260, label %if.then259

if.then259:                                       ; preds = %if.end256
  call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0)) #14
  unreachable

if.end260:                                        ; preds = %if.end256
  %buffer = getelementptr inbounds i8, i8* %argument, i64 8
  %36 = bitcast i8* %buffer to i8**
  %37 = load i8*, i8** %36, align 8, !tbaa !121
  %row_stride = getelementptr inbounds i8, i8* %argument, i64 16
  %38 = bitcast i8* %row_stride to i32*
  %39 = load i32, i32* %38, align 8, !tbaa !122
  %conv261 = sext i32 %39 to i64
  %not.cmp.not = xor i1 %cmp.not, true
  %mul = zext i1 %not.cmp.not to i64
  %spec.select471 = shl nsw i64 %conv261, %mul
  %cmp266 = icmp slt i64 %spec.select471, 0
  br i1 %cmp266, label %if.then268, label %if.end272

if.then268:                                       ; preds = %if.end260
  %height = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 3
  %40 = load i32, i32* %height, align 8, !tbaa !106
  %sub = add i32 %40, -1
  %conv269 = zext i32 %sub to i64
  %41 = mul i64 %spec.select471, %conv269
  %mul271 = sub i64 0, %41
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %mul271
  br label %if.end272

if.end272:                                        ; preds = %if.then268, %if.end260
  %first_row.0 = phi i8* [ %add.ptr, %if.then268 ], [ %37, %if.end260 ]
  %first_row273 = getelementptr inbounds i8, i8* %argument, i64 48
  %42 = bitcast i8* %first_row273 to i8**
  store i8* %first_row.0, i8** %42, align 8, !tbaa !158
  %row_bytes274 = getelementptr inbounds i8, i8* %argument, i64 56
  %43 = bitcast i8* %row_bytes274 to i64*
  store i64 %spec.select471, i64* %43, align 8, !tbaa !159
  br i1 %cmp170, label %if.else282, label %if.then277

if.then277:                                       ; preds = %if.end272
  %call278 = call i64 @png_get_rowbytes(%struct.png_struct_def* nonnull %2, %struct.png_info_def* nonnull %3) #13
  %call279 = call noalias i8* @png_malloc(%struct.png_struct_def* nonnull %2, i64 %call278) #13
  %local_row = getelementptr inbounds i8, i8* %argument, i64 40
  %44 = bitcast i8* %local_row to i8**
  store i8* %call279, i8** %44, align 8, !tbaa !125
  %call280 = call i32 @png_safe_execute(%struct.png_image* nonnull %0, i32 (i8*)* nonnull @png_image_read_composite, i8* nonnull %argument) #13
  store i8* null, i8** %44, align 8, !tbaa !125
  call void @png_free(%struct.png_struct_def* nonnull %2, i8* %call279) #13
  br label %cleanup

if.else282:                                       ; preds = %if.end272
  br i1 %cmp226, label %if.then285, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else282
  %cmp296479 = icmp sgt i32 %passes.0, 0
  br i1 %cmp296479, label %while.body.lr.ph, label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %height298 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 3
  br label %while.body

if.then285:                                       ; preds = %if.else282
  %call288 = call i64 @png_get_rowbytes(%struct.png_struct_def* nonnull %2, %struct.png_info_def* nonnull %3) #13
  %call289 = call noalias i8* @png_malloc(%struct.png_struct_def* nonnull %2, i64 %call288) #13
  %local_row290 = getelementptr inbounds i8, i8* %argument, i64 40
  %45 = bitcast i8* %local_row290 to i8**
  store i8* %call289, i8** %45, align 8, !tbaa !125
  %call291 = call i32 @png_safe_execute(%struct.png_image* nonnull %0, i32 (i8*)* nonnull @png_image_read_background, i8* nonnull %argument) #13
  store i8* null, i8** %45, align 8, !tbaa !125
  call void @png_free(%struct.png_struct_def* nonnull %2, i8* %call289) #13
  br label %cleanup

while.cond.loopexit:                              ; preds = %for.body, %while.body
  %cmp296 = icmp sgt i32 %dec480.in, 1
  br i1 %cmp296, label %while.cond.loopexit.while.body_crit_edge, label %cleanup, !llvm.loop !170

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  %.pre = load i8*, i8** %42, align 8, !tbaa !158
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %46 = phi i8* [ %first_row.0, %while.body.lr.ph ], [ %.pre, %while.cond.loopexit.while.body_crit_edge ]
  %dec480.in = phi i32 [ %passes.0, %while.body.lr.ph ], [ %dec480, %while.cond.loopexit.while.body_crit_edge ]
  %dec480 = add nsw i32 %dec480.in, -1
  %47 = load i32, i32* %height298, align 8, !tbaa !106
  %cmp301.not475 = icmp eq i32 %47, 0
  br i1 %cmp301.not475, label %while.cond.loopexit, label %for.body

for.body:                                         ; preds = %while.body, %for.body
  %row299.0477 = phi i8* [ %add.ptr303, %for.body ], [ %46, %while.body ]
  %y.0476 = phi i32 [ %dec304, %for.body ], [ %47, %while.body ]
  call void @png_read_row(%struct.png_struct_def* %2, i8* %row299.0477, i8* null)
  %add.ptr303 = getelementptr inbounds i8, i8* %row299.0477, i64 %spec.select471
  %dec304 = add i32 %y.0476, -1
  %cmp301.not = icmp eq i32 %dec304, 0
  br i1 %cmp301.not, label %while.cond.loopexit, label %for.body, !llvm.loop !171

cleanup:                                          ; preds = %while.cond.loopexit, %while.cond.preheader, %if.then285, %if.then277
  %retval.0 = phi i32 [ %call280, %if.then277 ], [ %call291, %if.then285 ], [ 1, %while.cond.preheader ], [ 1, %while.cond.loopexit ]
  ret i32 %retval.0
}

declare dso_local void @png_image_free(%struct.png_image*) local_unnamed_addr #2

declare dso_local void @png_destroy_gamma_table(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @t_png_free(%struct.png_struct_def*, i8*) local_unnamed_addr #2

declare dso_local void @png_free(%struct.png_struct_def*, i8*) local_unnamed_addr #2

declare dso_local void @png_zfree(i8*, i8*) local_unnamed_addr #2

declare dso_local i32 @inflateEnd(%struct.z_stream_s*) local_unnamed_addr #2

; Function Attrs: noreturn
declare dso_local void @png_safe_error(%struct.png_struct_def*, i8*) #3

declare dso_local void @png_safe_warning(%struct.png_struct_def*, i8*) #2

declare dso_local noalias %struct.png_info_def* @png_create_info_struct(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local noalias i8* @png_malloc_warn(%struct.png_struct_def*, i64) local_unnamed_addr #2

declare dso_local void @png_set_benign_errors(%struct.png_struct_def*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @png_create_colormap_entry(%struct.png_image_read_control* nocapture %display, i32 %ip, i32 %red, i32 %green, i32 %blue, i32 %alpha, i32 %encoding) unnamed_addr #0 {
entry:
  %image1 = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 0
  %0 = load %struct.png_image*, %struct.png_image** %image1, align 8, !tbaa !119
  %format = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 4
  %1 = load i32, i32* %format, align 4, !tbaa !111
  %and = and i32 %1, 4
  %cmp = icmp ne i32 %and, 0
  %cond = select i1 %cmp, i32 2, i32 1
  %and3 = and i32 %1, 2
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %cmp5 = icmp ne i32 %red, %green
  %cmp6 = icmp ne i32 %green, %blue
  %2 = or i1 %cmp5, %cmp6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %2, %land.rhs ]
  %cmp7 = icmp ugt i32 %ip, 255
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 0
  %4 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %png_ptr = getelementptr inbounds %struct.png_control, %struct.png_control* %4, i64 0, i32 0
  %5 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !101
  tail call void @png_error(%struct.png_struct_def* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i64 0, i64 0)) #14
  unreachable

if.end:                                           ; preds = %land.end
  %cmp8 = icmp eq i32 %encoding, 3
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %file_encoding = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 8
  %6 = load i32, i32* %file_encoding, align 8, !tbaa !172
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then9
  %opaque.i = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 0
  %7 = load %struct.png_control*, %struct.png_control** %opaque.i, align 8, !tbaa !100
  %png_ptr.i = getelementptr inbounds %struct.png_control, %struct.png_control* %7, i64 0, i32 0
  %8 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.i, align 8, !tbaa !101
  %gamma.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %8, i64 0, i32 149, i32 0
  %9 = load i32, i32* %gamma.i, align 8, !tbaa !130
  %call.i = tail call i32 @png_gamma_significant(i32 %9) #13
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end14.thread, label %if.then.i

if.then.i:                                        ; preds = %if.then11
  %cmp.i.i = icmp slt i32 %9, 100000
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then3.i

if.then.i.i:                                      ; preds = %if.then.i
  %cmp1.i.i = icmp eq i32 %9, 0
  br i1 %cmp1.i.i, label %if.end14.thread515, label %png_gamma_not_sRGB.exit.i

png_gamma_not_sRGB.exit.i:                        ; preds = %if.then.i.i
  %mul.i.i = mul nsw i32 %9, 11
  %add.i.i = add nsw i32 %mul.i.i, 2
  %div.i.i = sdiv i32 %add.i.i, 5
  %call.i.i = tail call i32 @png_gamma_significant(i32 %div.i.i) #13
  %cmp2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp2.not.i, label %if.end14.thread515, label %if.then3.i

if.then3.i:                                       ; preds = %png_gamma_not_sRGB.exit.i, %if.then.i
  store i32 3, i32* %file_encoding, align 8, !tbaa !172
  %call4.i = tail call i32 @png_reciprocal(i32 %9) #13
  %gamma_to_linear.i = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 9
  store i32 %call4.i, i32* %gamma_to_linear.i, align 4, !tbaa !173
  %.pre = load i32, i32* %file_encoding, align 8, !tbaa !172
  br label %if.end14

if.end14.thread515:                               ; preds = %if.then.i.i, %png_gamma_not_sRGB.exit.i
  store i32 1, i32* %file_encoding, align 8, !tbaa !172
  br label %land.lhs.true

if.end14.thread:                                  ; preds = %if.then11
  store i32 4, i32* %file_encoding, align 8, !tbaa !172
  br label %if.then86

if.end14:                                         ; preds = %if.then9, %if.then3.i, %if.end
  %encoding.addr.0 = phi i32 [ %encoding, %if.end ], [ %.pre, %if.then3.i ], [ %6, %if.then9 ]
  switch i32 %encoding.addr.0, label %if.end225 [
    i32 3, label %if.then16
    i32 4, label %if.then86
    i32 1, label %land.lhs.true
    i32 2, label %if.then115
  ]

if.then16:                                        ; preds = %if.end14
  %gamma_to_linear = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 9
  %10 = load i32, i32* %gamma_to_linear, align 4, !tbaa !173
  %mul = mul i32 %red, 257
  %call = tail call zeroext i16 @png_gamma_16bit_correct(i32 %mul, i32 %10) #13
  %conv = zext i16 %call to i32
  %mul17 = mul i32 %green, 257
  %call18 = tail call zeroext i16 @png_gamma_16bit_correct(i32 %mul17, i32 %10) #13
  %conv19 = zext i16 %call18 to i32
  %mul20 = mul i32 %blue, 257
  %call21 = tail call zeroext i16 @png_gamma_16bit_correct(i32 %mul20, i32 %10) #13
  %conv22 = zext i16 %call21 to i32
  %or.cond = or i1 %cmp, %3
  br i1 %or.cond, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then16
  %mul28 = mul i32 %alpha, 257
  br label %if.then115

if.else:                                          ; preds = %if.then16
  %mul29 = mul nuw nsw i32 %conv, 255
  %shr = lshr i32 %mul29, 15
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2, !tbaa !134
  %conv30 = zext i16 %11 to i32
  %and32 = and i32 %mul29, 32767
  %arrayidx36 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx36, align 1, !tbaa !39
  %conv37 = zext i8 %12 to i32
  %mul38 = mul nuw nsw i32 %and32, %conv37
  %shr39 = lshr i32 %mul38, 12
  %add = add nuw nsw i32 %shr39, %conv30
  %shr40 = lshr i32 %add, 8
  %conv43 = and i32 %shr40, 255
  %mul44 = mul nuw nsw i32 %conv19, 255
  %shr45 = lshr i32 %mul44, 15
  %idxprom46 = zext i32 %shr45 to i64
  %arrayidx47 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom46
  %13 = load i16, i16* %arrayidx47, align 2, !tbaa !134
  %conv48 = zext i16 %13 to i32
  %and50 = and i32 %mul44, 32767
  %arrayidx54 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom46
  %14 = load i8, i8* %arrayidx54, align 1, !tbaa !39
  %conv55 = zext i8 %14 to i32
  %mul56 = mul nuw nsw i32 %and50, %conv55
  %shr57 = lshr i32 %mul56, 12
  %add58 = add nuw nsw i32 %shr57, %conv48
  %shr59 = lshr i32 %add58, 8
  %conv62 = and i32 %shr59, 255
  %mul63 = mul nuw nsw i32 %conv22, 255
  %shr64 = lshr i32 %mul63, 15
  %idxprom65 = zext i32 %shr64 to i64
  %arrayidx66 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom65
  %15 = load i16, i16* %arrayidx66, align 2, !tbaa !134
  %conv67 = zext i16 %15 to i32
  %and69 = and i32 %mul63, 32767
  %arrayidx73 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom65
  %16 = load i8, i8* %arrayidx73, align 1, !tbaa !39
  %conv74 = zext i8 %16 to i32
  %mul75 = mul nuw nsw i32 %and69, %conv74
  %shr76 = lshr i32 %mul75, 12
  %add77 = add nuw nsw i32 %shr76, %conv67
  %shr78 = lshr i32 %add77, 8
  %conv81 = and i32 %shr78, 255
  br label %if.end225

if.then86:                                        ; preds = %if.end14.thread, %if.end14
  %mul87 = mul i32 %red, 257
  %mul88 = mul i32 %green, 257
  %mul89 = mul i32 %blue, 257
  %mul90 = mul i32 %alpha, 257
  br label %if.then115

land.lhs.true:                                    ; preds = %if.end14.thread515, %if.end14
  %or.cond358 = or i1 %cmp, %3
  br i1 %or.cond358, label %if.then99, label %if.end225

if.then99:                                        ; preds = %land.lhs.true
  %idxprom100 = zext i32 %red to i64
  %arrayidx101 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom100
  %17 = load i16, i16* %arrayidx101, align 2, !tbaa !134
  %conv102 = zext i16 %17 to i32
  %idxprom103 = zext i32 %green to i64
  %arrayidx104 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom103
  %18 = load i16, i16* %arrayidx104, align 2, !tbaa !134
  %conv105 = zext i16 %18 to i32
  %idxprom106 = zext i32 %blue to i64
  %arrayidx107 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom106
  %19 = load i16, i16* %arrayidx107, align 2, !tbaa !134
  %conv108 = zext i16 %19 to i32
  %mul109 = mul i32 %alpha, 257
  br label %if.then115

if.then115:                                       ; preds = %if.end14, %if.then27, %if.then99, %if.then86
  %red.addr.1502 = phi i32 [ %conv, %if.then27 ], [ %conv102, %if.then99 ], [ %mul87, %if.then86 ], [ %red, %if.end14 ]
  %green.addr.1501 = phi i32 [ %conv19, %if.then27 ], [ %conv105, %if.then99 ], [ %mul88, %if.then86 ], [ %green, %if.end14 ]
  %blue.addr.1500 = phi i32 [ %conv22, %if.then27 ], [ %conv108, %if.then99 ], [ %mul89, %if.then86 ], [ %blue, %if.end14 ]
  %alpha.addr.1499 = phi i32 [ %mul28, %if.then27 ], [ %mul109, %if.then99 ], [ %mul90, %if.then86 ], [ %alpha, %if.end14 ]
  br i1 %3, label %if.then118, label %if.else159

if.then118:                                       ; preds = %if.then115
  %mul119 = mul i32 %red.addr.1502, 6968
  %mul120 = mul i32 %green.addr.1501, 23434
  %add121 = add i32 %mul120, %mul119
  %mul122 = mul i32 %blue.addr.1500, 2366
  %add123 = add i32 %add121, %mul122
  br i1 %cmp, label %if.then126, label %if.else129

if.then126:                                       ; preds = %if.then118
  %add127 = add i32 %add123, 16384
  %shr128 = lshr i32 %add127, 15
  br label %if.end225

if.else129:                                       ; preds = %if.then118
  %add130 = add i32 %add123, 128
  %shr131 = lshr i32 %add130, 8
  %mul132 = mul nuw i32 %shr131, 255
  %add133 = add nuw i32 %mul132, 64
  %shr134 = lshr i32 %add133, 7
  %shr135 = lshr i32 %add133, 22
  %idxprom136 = zext i32 %shr135 to i64
  %arrayidx137 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom136
  %20 = load i16, i16* %arrayidx137, align 2, !tbaa !134
  %conv138 = zext i16 %20 to i32
  %and141 = and i32 %shr134, 32767
  %arrayidx146 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom136
  %21 = load i8, i8* %arrayidx146, align 1, !tbaa !39
  %conv147 = zext i8 %21 to i32
  %mul148 = mul nuw nsw i32 %and141, %conv147
  %shr149 = lshr i32 %mul148, 12
  %add150 = add nuw nsw i32 %shr149, %conv138
  %shr151 = lshr i32 %add150, 8
  %conv154 = and i32 %shr151, 255
  %mul155 = mul i32 %alpha.addr.1499, 255
  %add156 = add i32 %mul155, 32895
  %shr157 = lshr i32 %add156, 16
  br label %if.end225

if.else159:                                       ; preds = %if.then115
  br i1 %cmp, label %if.end225, label %if.then162

if.then162:                                       ; preds = %if.else159
  %mul163 = mul i32 %red.addr.1502, 255
  %shr164 = lshr i32 %mul163, 15
  %idxprom165 = zext i32 %shr164 to i64
  %arrayidx166 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom165
  %22 = load i16, i16* %arrayidx166, align 2, !tbaa !134
  %conv167 = zext i16 %22 to i32
  %and169 = and i32 %mul163, 32767
  %arrayidx173 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom165
  %23 = load i8, i8* %arrayidx173, align 1, !tbaa !39
  %conv174 = zext i8 %23 to i32
  %mul175 = mul nuw nsw i32 %and169, %conv174
  %shr176 = lshr i32 %mul175, 12
  %add177 = add nuw nsw i32 %shr176, %conv167
  %shr178 = lshr i32 %add177, 8
  %conv181 = and i32 %shr178, 255
  %mul182 = mul i32 %green.addr.1501, 255
  %shr183 = lshr i32 %mul182, 15
  %idxprom184 = zext i32 %shr183 to i64
  %arrayidx185 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom184
  %24 = load i16, i16* %arrayidx185, align 2, !tbaa !134
  %conv186 = zext i16 %24 to i32
  %and188 = and i32 %mul182, 32767
  %arrayidx192 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom184
  %25 = load i8, i8* %arrayidx192, align 1, !tbaa !39
  %conv193 = zext i8 %25 to i32
  %mul194 = mul nuw nsw i32 %and188, %conv193
  %shr195 = lshr i32 %mul194, 12
  %add196 = add nuw nsw i32 %shr195, %conv186
  %shr197 = lshr i32 %add196, 8
  %conv200 = and i32 %shr197, 255
  %mul201 = mul i32 %blue.addr.1500, 255
  %shr202 = lshr i32 %mul201, 15
  %idxprom203 = zext i32 %shr202 to i64
  %arrayidx204 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom203
  %26 = load i16, i16* %arrayidx204, align 2, !tbaa !134
  %conv205 = zext i16 %26 to i32
  %and207 = and i32 %mul201, 32767
  %arrayidx211 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom203
  %27 = load i8, i8* %arrayidx211, align 1, !tbaa !39
  %conv212 = zext i8 %27 to i32
  %mul213 = mul nuw nsw i32 %and207, %conv212
  %shr214 = lshr i32 %mul213, 12
  %add215 = add nuw nsw i32 %shr214, %conv205
  %shr216 = lshr i32 %add215, 8
  %conv219 = and i32 %shr216, 255
  %mul220 = mul i32 %alpha.addr.1499, 255
  %add221 = add i32 %mul220, 32895
  %shr222 = lshr i32 %add221, 16
  br label %if.end225

if.end225:                                        ; preds = %if.end14, %if.else, %land.lhs.true, %if.then126, %if.else129, %if.then162, %if.else159
  %encoding.addr.4 = phi i32 [ 1, %if.then162 ], [ 2, %if.else159 ], [ 2, %if.then126 ], [ 1, %if.else129 ], [ 1, %land.lhs.true ], [ 1, %if.else ], [ %encoding.addr.0, %if.end14 ]
  %alpha.addr.3 = phi i32 [ %shr222, %if.then162 ], [ %alpha.addr.1499, %if.else159 ], [ %alpha.addr.1499, %if.then126 ], [ %shr157, %if.else129 ], [ %alpha, %land.lhs.true ], [ %alpha, %if.else ], [ %alpha, %if.end14 ]
  %blue.addr.2 = phi i32 [ %conv219, %if.then162 ], [ %blue.addr.1500, %if.else159 ], [ %shr128, %if.then126 ], [ %conv154, %if.else129 ], [ %blue, %land.lhs.true ], [ %conv81, %if.else ], [ %blue, %if.end14 ]
  %green.addr.2 = phi i32 [ %conv200, %if.then162 ], [ %green.addr.1501, %if.else159 ], [ %shr128, %if.then126 ], [ %conv154, %if.else129 ], [ %green, %land.lhs.true ], [ %conv62, %if.else ], [ %green, %if.end14 ]
  %red.addr.2 = phi i32 [ %conv181, %if.then162 ], [ %red.addr.1502, %if.else159 ], [ %shr128, %if.then126 ], [ %conv154, %if.else129 ], [ %red, %land.lhs.true ], [ %conv43, %if.else ], [ %red, %if.end14 ]
  %cmp226.not = icmp eq i32 %encoding.addr.4, %cond
  br i1 %cmp226.not, label %if.end231, label %if.then228

if.then228:                                       ; preds = %if.end225
  %opaque229 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 0
  %28 = load %struct.png_control*, %struct.png_control** %opaque229, align 8, !tbaa !100
  %png_ptr230 = getelementptr inbounds %struct.png_control, %struct.png_control* %28, i64 0, i32 0
  %29 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr230, align 8, !tbaa !101
  tail call void @png_error(%struct.png_struct_def* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0)) #14
  unreachable

if.end231:                                        ; preds = %if.end225
  %30 = load i32, i32* %format, align 4, !tbaa !111
  %31 = and i32 %30, 33
  %32 = icmp eq i32 %31, 33
  %land.ext242 = zext i1 %32 to i32
  %and244 = lshr i32 %30, 3
  %33 = and i32 %and244, 2
  %colormap = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 3
  br i1 %cmp, label %if.then250, label %if.else314

if.then250:                                       ; preds = %if.end231
  %34 = bitcast i8** %colormap to i16**
  %35 = load i16*, i16** %34, align 8, !tbaa !123
  %and253 = and i32 %30, 3
  %add254 = add nuw nsw i32 %and253, 1
  %mul255 = mul nuw nsw i32 %add254, %ip
  %idx.ext = zext i32 %mul255 to i64
  %add.ptr = getelementptr inbounds i16, i16* %35, i64 %idx.ext
  switch i32 %and253, label %sw.epilog491 [
    i32 3, label %sw.bb
    i32 2, label %sw.bb263
    i32 1, label %sw.bb293
    i32 0, label %sw.bb298
  ]

sw.bb:                                            ; preds = %if.then250
  %conv259 = trunc i32 %alpha.addr.3 to i16
  %36 = select i1 %32, i64 0, i64 3
  %arrayidx262 = getelementptr inbounds i16, i16* %add.ptr, i64 %36
  store i16 %conv259, i16* %arrayidx262, align 2, !tbaa !134
  br label %sw.bb263

sw.bb263:                                         ; preds = %if.then250, %sw.bb
  %cmp264 = icmp ult i32 %alpha.addr.3, 65535
  br i1 %cmp264, label %if.then266, label %if.end280

if.then266:                                       ; preds = %sw.bb263
  %cmp267.not = icmp eq i32 %alpha.addr.3, 0
  br i1 %cmp267.not, label %if.end280, label %if.then269

if.then269:                                       ; preds = %if.then266
  %mul270 = mul i32 %blue.addr.2, %alpha.addr.3
  %add271 = add i32 %mul270, 32767
  %div = udiv i32 %add271, 65535
  %mul272 = mul i32 %green.addr.2, %alpha.addr.3
  %add273 = add i32 %mul272, 32767
  %div274 = udiv i32 %add273, 65535
  %mul275 = mul i32 %red.addr.2, %alpha.addr.3
  %add276 = add i32 %mul275, 32767
  %div277 = udiv i32 %add276, 65535
  br label %if.end280

if.end280:                                        ; preds = %if.then266, %if.then269, %sw.bb263
  %blue.addr.3 = phi i32 [ %div, %if.then269 ], [ %blue.addr.2, %sw.bb263 ], [ 0, %if.then266 ]
  %green.addr.3 = phi i32 [ %div274, %if.then269 ], [ %green.addr.2, %sw.bb263 ], [ 0, %if.then266 ]
  %red.addr.3 = phi i32 [ %div277, %if.then269 ], [ %red.addr.2, %sw.bb263 ], [ 0, %if.then266 ]
  %conv281 = trunc i32 %blue.addr.3 to i16
  %37 = or i32 %33, %land.ext242
  %add282 = xor i32 %37, 2
  %idxprom283 = zext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds i16, i16* %add.ptr, i64 %idxprom283
  store i16 %conv281, i16* %arrayidx284, align 2, !tbaa !134
  %conv285 = trunc i32 %green.addr.3 to i16
  %idxprom287 = select i1 %32, i64 2, i64 1
  %arrayidx288 = getelementptr inbounds i16, i16* %add.ptr, i64 %idxprom287
  store i16 %conv285, i16* %arrayidx288, align 2, !tbaa !134
  %conv289 = trunc i32 %red.addr.3 to i16
  %idxprom291 = zext i32 %37 to i64
  %arrayidx292 = getelementptr inbounds i16, i16* %add.ptr, i64 %idxprom291
  store i16 %conv289, i16* %arrayidx292, align 2, !tbaa !134
  br label %if.end357

sw.bb293:                                         ; preds = %if.then250
  %conv294 = trunc i32 %alpha.addr.3 to i16
  %xor295 = xor i32 %land.ext242, 1
  %idxprom296 = zext i32 %xor295 to i64
  %arrayidx297 = getelementptr inbounds i16, i16* %add.ptr, i64 %idxprom296
  store i16 %conv294, i16* %arrayidx297, align 2, !tbaa !134
  br label %sw.bb298

sw.bb298:                                         ; preds = %if.then250, %sw.bb293
  %cmp299 = icmp ult i32 %alpha.addr.3, 65535
  br i1 %cmp299, label %if.then301, label %if.end310

if.then301:                                       ; preds = %sw.bb298
  %cmp302.not = icmp eq i32 %alpha.addr.3, 0
  br i1 %cmp302.not, label %if.end310, label %if.then304

if.then304:                                       ; preds = %if.then301
  %mul305 = mul i32 %green.addr.2, %alpha.addr.3
  %add306 = add i32 %mul305, 32767
  %div307 = udiv i32 %add306, 65535
  br label %if.end310

if.end310:                                        ; preds = %if.then301, %if.then304, %sw.bb298
  %green.addr.4 = phi i32 [ %div307, %if.then304 ], [ %green.addr.2, %sw.bb298 ], [ 0, %if.then301 ]
  %conv311 = trunc i32 %green.addr.4 to i16
  %idxprom312 = zext i1 %32 to i64
  %arrayidx313 = getelementptr inbounds i16, i16* %add.ptr, i64 %idxprom312
  store i16 %conv311, i16* %arrayidx313, align 2, !tbaa !134
  br label %if.end357

sw.epilog491:                                     ; preds = %if.then250
  unreachable

if.else314:                                       ; preds = %if.end231
  %38 = load i8*, i8** %colormap, align 8, !tbaa !123
  %and318 = and i32 %30, 3
  %add319 = add nuw nsw i32 %and318, 1
  %mul320 = mul nuw nsw i32 %add319, %ip
  %idx.ext321 = zext i32 %mul320 to i64
  %add.ptr322 = getelementptr inbounds i8, i8* %38, i64 %idx.ext321
  switch i32 %and318, label %sw.epilog356492 [
    i32 3, label %sw.bb326
    i32 2, label %sw.bb332
    i32 1, label %sw.bb346
    i32 0, label %sw.bb351
  ]

sw.bb326:                                         ; preds = %if.else314
  %conv327 = trunc i32 %alpha.addr.3 to i8
  %39 = select i1 %32, i64 0, i64 3
  %arrayidx331 = getelementptr inbounds i8, i8* %add.ptr322, i64 %39
  store i8 %conv327, i8* %arrayidx331, align 1, !tbaa !39
  br label %sw.bb332

sw.bb332:                                         ; preds = %if.else314, %sw.bb326
  %conv333 = trunc i32 %blue.addr.2 to i8
  %40 = or i32 %33, %land.ext242
  %add335 = xor i32 %40, 2
  %idxprom336 = zext i32 %add335 to i64
  %arrayidx337 = getelementptr inbounds i8, i8* %add.ptr322, i64 %idxprom336
  store i8 %conv333, i8* %arrayidx337, align 1, !tbaa !39
  %conv338 = trunc i32 %green.addr.2 to i8
  %idxprom340 = select i1 %32, i64 2, i64 1
  %arrayidx341 = getelementptr inbounds i8, i8* %add.ptr322, i64 %idxprom340
  store i8 %conv338, i8* %arrayidx341, align 1, !tbaa !39
  %conv342 = trunc i32 %red.addr.2 to i8
  %idxprom344 = zext i32 %40 to i64
  %arrayidx345 = getelementptr inbounds i8, i8* %add.ptr322, i64 %idxprom344
  store i8 %conv342, i8* %arrayidx345, align 1, !tbaa !39
  br label %if.end357

sw.bb346:                                         ; preds = %if.else314
  %conv347 = trunc i32 %alpha.addr.3 to i8
  %xor348 = xor i32 %land.ext242, 1
  %idxprom349 = zext i32 %xor348 to i64
  %arrayidx350 = getelementptr inbounds i8, i8* %add.ptr322, i64 %idxprom349
  store i8 %conv347, i8* %arrayidx350, align 1, !tbaa !39
  br label %sw.bb351

sw.bb351:                                         ; preds = %if.else314, %sw.bb346
  %conv352 = trunc i32 %green.addr.2 to i8
  %idxprom353 = zext i1 %32 to i64
  %arrayidx354 = getelementptr inbounds i8, i8* %add.ptr322, i64 %idxprom353
  store i8 %conv352, i8* %arrayidx354, align 1, !tbaa !39
  br label %if.end357

sw.epilog356492:                                  ; preds = %if.else314
  unreachable

if.end357:                                        ; preds = %sw.bb332, %sw.bb351, %if.end280, %if.end310
  ret void
}

declare dso_local void @png_set_background_fixed(%struct.png_struct_def*, %struct.png_color_16_struct*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @make_ga_colormap(%struct.png_image_read_control* nocapture %display) unnamed_addr #0 {
entry:
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %mul = shl nuw nsw i32 %i.038, 8
  %add = or i32 %mul, 115
  %div = udiv i32 %add, 231
  %inc = add nuw nsw i32 %i.038, 1
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %i.038, i32 %div, i32 %div, i32 %div, i32 255, i32 1)
  %exitcond39.not = icmp eq i32 %inc, 231
  br i1 %exitcond39.not, label %while.end, label %while.body, !llvm.loop !174

while.end:                                        ; preds = %while.body
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 231, i32 255, i32 255, i32 255, i32 0, i32 1)
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %while.end, %for.cond3.preheader
  %i.137 = phi i32 [ 232, %while.end ], [ %inc6.5, %for.cond3.preheader ]
  %a.036 = phi i32 [ 1, %while.end ], [ %inc13, %for.cond3.preheader ]
  %mul10 = mul nuw nsw i32 %a.036, 51
  %inc6 = or i32 %i.137, 1
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %i.137, i32 0, i32 0, i32 0, i32 %mul10, i32 1)
  %inc6.1 = add nuw nsw i32 %i.137, 2
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %inc6, i32 51, i32 51, i32 51, i32 %mul10, i32 1)
  %inc6.2 = add nuw nsw i32 %i.137, 3
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %inc6.1, i32 102, i32 102, i32 102, i32 %mul10, i32 1)
  %inc6.3 = add nuw nsw i32 %i.137, 4
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %inc6.2, i32 153, i32 153, i32 153, i32 %mul10, i32 1)
  %inc6.4 = add nuw nsw i32 %i.137, 5
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %inc6.3, i32 204, i32 204, i32 204, i32 %mul10, i32 1)
  %inc6.5 = add nuw nsw i32 %i.137, 6
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %inc6.4, i32 255, i32 255, i32 255, i32 %mul10, i32 1)
  %inc13 = add nuw nsw i32 %a.036, 1
  %exitcond.not = icmp eq i32 %inc13, 5
  br i1 %exitcond.not, label %for.end14, label %for.cond3.preheader, !llvm.loop !175

for.end14:                                        ; preds = %for.cond3.preheader
  ret i32 256
}

declare dso_local void @png_set_rgb_to_gray_fixed(%struct.png_struct_def*, i32, i32, i32) local_unnamed_addr #2

declare dso_local zeroext i16 @png_gamma_16bit_correct(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @make_rgb_colormap(%struct.png_image_read_control* nocapture %display) unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.end12
  %r.032 = phi i32 [ 0, %entry ], [ %inc14, %for.end12 ]
  %i.031 = phi i32 [ 0, %entry ], [ %inc.5, %for.end12 ]
  %mul = mul nuw nsw i32 %r.032, 51
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.cond4.preheader
  %g.030 = phi i32 [ 0, %for.cond1.preheader ], [ %inc11, %for.cond4.preheader ]
  %i.129 = phi i32 [ %i.031, %for.cond1.preheader ], [ %inc.5, %for.cond4.preheader ]
  %mul7 = mul nuw nsw i32 %g.030, 51
  %inc = add i32 %i.129, 1
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %i.129, i32 %mul, i32 %mul7, i32 0, i32 255, i32 1)
  %inc.1 = add i32 %i.129, 2
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %inc, i32 %mul, i32 %mul7, i32 51, i32 255, i32 1)
  %inc.2 = add i32 %i.129, 3
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %inc.1, i32 %mul, i32 %mul7, i32 102, i32 255, i32 1)
  %inc.3 = add i32 %i.129, 4
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %inc.2, i32 %mul, i32 %mul7, i32 153, i32 255, i32 1)
  %inc.4 = add i32 %i.129, 5
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %inc.3, i32 %mul, i32 %mul7, i32 204, i32 255, i32 1)
  %inc.5 = add i32 %i.129, 6
  tail call fastcc void @png_create_colormap_entry(%struct.png_image_read_control* %display, i32 %inc.4, i32 %mul, i32 %mul7, i32 255, i32 255, i32 1)
  %inc11 = add nuw nsw i32 %g.030, 1
  %exitcond.not = icmp eq i32 %inc11, 6
  br i1 %exitcond.not, label %for.end12, label %for.cond4.preheader, !llvm.loop !176

for.end12:                                        ; preds = %for.cond4.preheader
  %inc14 = add nuw nsw i32 %r.032, 1
  %exitcond33.not = icmp eq i32 %inc14, 6
  br i1 %exitcond33.not, label %for.end15, label %for.cond1.preheader, !llvm.loop !177

for.end15:                                        ; preds = %for.end12
  ret i32 %inc.5
}

declare dso_local void @png_set_tRNS_to_alpha(%struct.png_struct_def*) local_unnamed_addr #2

declare dso_local void @png_set_alpha_mode_fixed(%struct.png_struct_def*, i32, i32) local_unnamed_addr #2

declare dso_local i32 @png_gamma_significant(i32) local_unnamed_addr #2

declare dso_local i32 @png_reciprocal(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decode_gamma(%struct.png_image_read_control* nocapture %display, i32 %value, i32 %encoding) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %encoding, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %file_encoding = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 8
  %0 = load i32, i32* %file_encoding, align 8, !tbaa !172
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %encoding.addr.0 = phi i32 [ %0, %if.then ], [ %encoding, %entry ]
  %cmp1 = icmp eq i32 %encoding.addr.0, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %image.i = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 0
  %1 = load %struct.png_image*, %struct.png_image** %image.i, align 8, !tbaa !119
  %opaque.i = getelementptr inbounds %struct.png_image, %struct.png_image* %1, i64 0, i32 0
  %2 = load %struct.png_control*, %struct.png_control** %opaque.i, align 8, !tbaa !100
  %png_ptr.i = getelementptr inbounds %struct.png_control, %struct.png_control* %2, i64 0, i32 0
  %3 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr.i, align 8, !tbaa !101
  %gamma.i = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %3, i64 0, i32 149, i32 0
  %4 = load i32, i32* %gamma.i, align 8, !tbaa !130
  %call.i = tail call i32 @png_gamma_significant(i32 %4) #13
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end4.thread19, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  %cmp.i.i = icmp slt i32 %4, 100000
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then3.i

if.then.i.i:                                      ; preds = %if.then.i
  %cmp1.i.i = icmp eq i32 %4, 0
  br i1 %cmp1.i.i, label %if.end4.thread, label %png_gamma_not_sRGB.exit.i

png_gamma_not_sRGB.exit.i:                        ; preds = %if.then.i.i
  %mul.i.i = mul nsw i32 %4, 11
  %add.i.i = add nsw i32 %mul.i.i, 2
  %div.i.i = sdiv i32 %add.i.i, 5
  %call.i.i = tail call i32 @png_gamma_significant(i32 %div.i.i) #13
  %cmp2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp2.not.i, label %if.end4.thread, label %if.then3.i

if.then3.i:                                       ; preds = %png_gamma_not_sRGB.exit.i, %if.then.i
  %file_encoding.i = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 8
  store i32 3, i32* %file_encoding.i, align 8, !tbaa !172
  %call4.i = tail call i32 @png_reciprocal(i32 %4) #13
  %gamma_to_linear.i = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 9
  store i32 %call4.i, i32* %gamma_to_linear.i, align 4, !tbaa !173
  %.pre = load i32, i32* %file_encoding.i, align 8, !tbaa !172
  br label %if.end4

if.end4.thread:                                   ; preds = %if.then.i.i, %png_gamma_not_sRGB.exit.i
  %file_encoding5.i = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 8
  store i32 1, i32* %file_encoding5.i, align 8, !tbaa !172
  br label %sw.bb5

if.end4.thread19:                                 ; preds = %if.then2
  %file_encoding7.i = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 8
  store i32 4, i32* %file_encoding7.i, align 8, !tbaa !172
  br label %sw.bb7

if.end4:                                          ; preds = %if.then3.i, %if.end
  %encoding.addr.1 = phi i32 [ %encoding.addr.0, %if.end ], [ %.pre, %if.then3.i ]
  switch i32 %encoding.addr.1, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.epilog
    i32 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end4
  %mul = mul i32 %value, 257
  %gamma_to_linear = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 9
  %5 = load i32, i32* %gamma_to_linear, align 4, !tbaa !173
  %call = tail call zeroext i16 @png_gamma_16bit_correct(i32 %mul, i32 %5) #13
  %conv = zext i16 %call to i32
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end4.thread, %if.end4
  %idxprom = zext i32 %value to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !134
  %conv6 = zext i16 %6 to i32
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end4.thread19, %if.end4
  %mul8 = mul i32 %value, 257
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  %image = getelementptr inbounds %struct.png_image_read_control, %struct.png_image_read_control* %display, i64 0, i32 0
  %7 = load %struct.png_image*, %struct.png_image** %image, align 8, !tbaa !119
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %7, i64 0, i32 0
  %8 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %png_ptr = getelementptr inbounds %struct.png_control, %struct.png_control* %8, i64 0, i32 0
  %9 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr, align 8, !tbaa !101
  tail call void @png_error(%struct.png_struct_def* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i64 0, i64 0)) #14
  unreachable

sw.epilog:                                        ; preds = %sw.bb7, %if.end4, %sw.bb5, %sw.bb
  %value.addr.0 = phi i32 [ %mul8, %sw.bb7 ], [ %value, %if.end4 ], [ %conv6, %sw.bb5 ], [ %conv, %sw.bb ]
  ret i32 %value.addr.0
}

declare dso_local noalias i8* @png_malloc(%struct.png_struct_def*, i64) local_unnamed_addr #2

declare dso_local i64 @png_get_rowbytes(%struct.png_struct_def*, %struct.png_info_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @png_image_read_and_map(i8* nocapture readonly %argument) #0 {
entry:
  %image1 = bitcast i8* %argument to %struct.png_image**
  %0 = load %struct.png_image*, %struct.png_image** %image1, align 8, !tbaa !119
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 0
  %1 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %png_ptr2 = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 0
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr2, align 8, !tbaa !101
  %interlaced = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 60
  %3 = load i8, i8* %interlaced, align 4, !tbaa !34
  switch i8 %3, label %sw.default [
    i8 0, label %sw.epilog
    i8 1, label %sw.bb3
  ]

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0)) #14
  unreachable

sw.epilog:                                        ; preds = %entry, %sw.bb3
  %passes.0 = phi i32 [ 7, %sw.bb3 ], [ 1, %entry ]
  %height4 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 3
  %4 = load i32, i32* %height4, align 8, !tbaa !106
  %width5 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 2
  %5 = load i32, i32* %width5, align 4, !tbaa !105
  %colormap_processing = getelementptr inbounds i8, i8* %argument, i64 72
  %6 = bitcast i8* %colormap_processing to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !149
  %first_row6 = getelementptr inbounds i8, i8* %argument, i64 48
  %8 = bitcast i8* %first_row6 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !158
  %row_bytes = getelementptr inbounds i8, i8* %argument, i64 56
  %10 = bitcast i8* %row_bytes to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !159
  %local_row = getelementptr inbounds i8, i8* %argument, i64 40
  %12 = bitcast i8* %local_row to i8**
  %idx.ext = zext i32 %5 to i64
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %sw.epilog
  %13 = phi i8 [ %3, %sw.epilog ], [ %.pre, %cleanup.for.body_crit_edge ]
  %pass.0376 = phi i32 [ 0, %sw.epilog ], [ %inc, %cleanup.for.body_crit_edge ]
  %cmp10 = icmp eq i8 %13, 1
  br i1 %cmp10, label %if.then, label %if.end56

if.then:                                          ; preds = %for.body
  %cmp12 = icmp ugt i32 %pass.0376, 1
  %sub = sub nuw nsw i32 7, %pass.0376
  %shr = ashr i32 %sub, 1
  %cond = select i1 %cmp12, i32 %shr, i32 3
  %notmask = shl nsw i32 -1, %cond
  %sub14 = xor i32 %notmask, -1
  %and = and i32 %pass.0376, 1
  %add = add nuw nsw i32 %pass.0376, 1
  %14 = lshr i32 %add, 1
  %sub16 = sub nsw i32 3, %14
  %shl17 = shl nuw nsw i32 %and, %sub16
  %and18 = and i32 %shl17, 7
  %sub19 = add i32 %5, %sub14
  %add20 = sub i32 %sub19, %and18
  %shr29 = lshr i32 %add20, %cond
  %cmp30 = icmp eq i32 %shr29, 0
  br i1 %cmp30, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %shl41 = shl nuw nsw i32 1, %shr
  %and42 = xor i32 %and, 1
  %15 = lshr i32 %pass.0376, 1
  %sub44 = sub nsw i32 3, %15
  %shl45 = shl i32 %and42, %sub44
  %and46 = and i32 %shl45, 7
  %cmp47 = icmp ugt i32 %pass.0376, 2
  %sub50 = add nsw i32 %pass.0376, -1
  %shr51 = ashr i32 %sub50, 1
  %shr52 = lshr i32 8, %shr51
  %cond55 = select i1 %cmp47, i32 %shr52, i32 8
  br label %if.end56

if.end56:                                         ; preds = %for.body, %if.end
  %y.0 = phi i32 [ %and46, %if.end ], [ 0, %for.body ]
  %stepy.0 = phi i32 [ %cond55, %if.end ], [ 1, %for.body ]
  %stepx.0 = phi i32 [ %shl41, %if.end ], [ 1, %for.body ]
  %startx.0 = phi i32 [ %and18, %if.end ], [ 0, %for.body ]
  %cmp58374 = icmp ult i32 %y.0, %4
  br i1 %cmp58374, label %for.body60.lr.ph, label %cleanup

for.body60.lr.ph:                                 ; preds = %if.end56
  %idx.ext63 = zext i32 %startx.0 to i64
  %idx.ext235 = zext i32 %stepx.0 to i64
  %cmp155359 = icmp ult i32 %startx.0, %5
  %cmp126364 = icmp ult i32 %startx.0, %5
  %cmp101367 = icmp ult i32 %startx.0, %5
  %cmp67371 = icmp ult i32 %startx.0, %5
  br label %for.body60

for.body60:                                       ; preds = %for.body60.lr.ph, %sw.epilog239
  %y.1375 = phi i32 [ %y.0, %for.body60.lr.ph ], [ %add241, %sw.epilog239 ]
  %16 = load i8*, i8** %12, align 8, !tbaa !125
  %conv61 = zext i32 %y.1375 to i64
  %mul = mul nsw i64 %11, %conv61
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %mul
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  tail call void @png_read_row(%struct.png_struct_def* %2, i8* %16, i8* null)
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext63
  switch i32 %7, label %sw.epilog239 [
    i32 1, label %for.cond66.preheader
    i32 2, label %for.cond100.preheader
    i32 3, label %for.cond125.preheader
    i32 4, label %for.cond154.preheader
  ]

for.cond154.preheader:                            ; preds = %for.body60
  br i1 %cmp155359, label %for.body157, label %sw.epilog239

for.cond125.preheader:                            ; preds = %for.body60
  br i1 %cmp126364, label %for.body128, label %sw.epilog239

for.cond100.preheader:                            ; preds = %for.body60
  br i1 %cmp101367, label %for.body103, label %sw.epilog239

for.cond66.preheader:                             ; preds = %for.body60
  br i1 %cmp67371, label %for.body69, label %sw.epilog239

for.body69:                                       ; preds = %for.cond66.preheader, %if.end95
  %outrow.0373 = phi i8* [ %add.ptr98, %if.end95 ], [ %add.ptr64, %for.cond66.preheader ]
  %inrow.0372 = phi i8* [ %incdec.ptr71, %if.end95 ], [ %16, %for.cond66.preheader ]
  %incdec.ptr = getelementptr inbounds i8, i8* %inrow.0372, i64 1
  %17 = load i8, i8* %inrow.0372, align 1, !tbaa !39
  %conv70 = zext i8 %17 to i32
  %incdec.ptr71 = getelementptr inbounds i8, i8* %inrow.0372, i64 2
  %18 = load i8, i8* %incdec.ptr, align 1, !tbaa !39
  %conv72 = zext i8 %18 to i32
  %cmp74 = icmp ugt i8 %18, -27
  br i1 %cmp74, label %if.then76, label %if.else80

if.then76:                                        ; preds = %for.body69
  %mul77 = mul nuw nsw i32 %conv70, 231
  %add78 = add nuw nsw i32 %mul77, 128
  %shr79 = lshr i32 %add78, 8
  br label %if.end95

if.else80:                                        ; preds = %for.body69
  %cmp81 = icmp ult i8 %18, 26
  br i1 %cmp81, label %if.end95, label %if.else84

if.else84:                                        ; preds = %if.else80
  %mul85 = mul nuw nsw i32 %conv72, 5
  %add86 = add nuw nsw i32 %mul85, 130
  %shr87 = lshr i32 %add86, 8
  %mul88 = mul nuw nsw i32 %shr87, 6
  %mul90 = mul nuw nsw i32 %conv70, 5
  %add91 = add nuw nsw i32 %mul90, 130
  %shr92 = lshr i32 %add91, 8
  %add89 = add nuw nsw i32 %shr92, 226
  %add93 = add nuw nsw i32 %add89, %mul88
  br label %if.end95

if.end95:                                         ; preds = %if.else80, %if.else84, %if.then76
  %entry73.0 = phi i32 [ %shr79, %if.then76 ], [ %add93, %if.else84 ], [ 231, %if.else80 ]
  %conv96 = trunc i32 %entry73.0 to i8
  store i8 %conv96, i8* %outrow.0373, align 1, !tbaa !39
  %add.ptr98 = getelementptr inbounds i8, i8* %outrow.0373, i64 %idx.ext235
  %cmp67 = icmp ult i8* %add.ptr98, %add.ptr62
  br i1 %cmp67, label %for.body69, label %sw.epilog239, !llvm.loop !178

for.body103:                                      ; preds = %for.cond100.preheader, %for.body103
  %outrow.1369 = phi i8* [ %add.ptr122, %for.body103 ], [ %add.ptr64, %for.cond100.preheader ]
  %inrow.1368 = phi i8* [ %incdec.ptr107, %for.body103 ], [ %16, %for.cond100.preheader ]
  %incdec.ptr105 = getelementptr inbounds i8, i8* %inrow.1368, i64 1
  %19 = load i8, i8* %inrow.1368, align 1, !tbaa !39
  %incdec.ptr107 = getelementptr inbounds i8, i8* %inrow.1368, i64 2
  %20 = load i8, i8* %incdec.ptr105, align 1, !tbaa !39
  %cmp109 = icmp eq i8 %20, 0
  %cmp114.not = icmp eq i8 %19, -2
  %. = select i1 %cmp114.not, i8 -1, i8 %19
  %.sink = select i1 %cmp109, i8 -2, i8 %.
  store i8 %.sink, i8* %outrow.1369, align 1, !tbaa !39
  %add.ptr122 = getelementptr inbounds i8, i8* %outrow.1369, i64 %idx.ext235
  %cmp101 = icmp ult i8* %add.ptr122, %add.ptr62
  br i1 %cmp101, label %for.body103, label %sw.epilog239, !llvm.loop !179

for.body128:                                      ; preds = %for.cond125.preheader, %for.body128
  %outrow.2366 = phi i8* [ %add.ptr151, %for.body128 ], [ %add.ptr64, %for.cond125.preheader ]
  %inrow.2365 = phi i8* [ %add.ptr148, %for.body128 ], [ %16, %for.cond125.preheader ]
  %21 = load i8, i8* %inrow.2365, align 1, !tbaa !39
  %conv129 = zext i8 %21 to i16
  %mul130 = mul nuw nsw i16 %conv129, 5
  %add131 = add nuw nsw i16 %mul130, 130
  %22 = lshr i16 %add131, 8
  %mul133 = mul nuw nsw i16 %22, 6
  %arrayidx134 = getelementptr inbounds i8, i8* %inrow.2365, i64 1
  %23 = load i8, i8* %arrayidx134, align 1, !tbaa !39
  %conv135 = zext i8 %23 to i16
  %mul136 = mul nuw nsw i16 %conv135, 5
  %add137 = add nuw nsw i16 %mul136, 130
  %24 = lshr i16 %add137, 8
  %add139 = add nuw nsw i16 %mul133, %24
  %mul140 = mul nuw nsw i16 %add139, 6
  %arrayidx141 = getelementptr inbounds i8, i8* %inrow.2365, i64 2
  %25 = load i8, i8* %arrayidx141, align 1, !tbaa !39
  %conv142 = zext i8 %25 to i16
  %mul143 = mul nuw nsw i16 %conv142, 5
  %add144 = add nuw nsw i16 %mul143, 130
  %26 = lshr i16 %add144, 8
  %add146 = add nuw nsw i16 %mul140, %26
  %conv147 = trunc i16 %add146 to i8
  store i8 %conv147, i8* %outrow.2366, align 1, !tbaa !39
  %add.ptr148 = getelementptr inbounds i8, i8* %inrow.2365, i64 3
  %add.ptr151 = getelementptr inbounds i8, i8* %outrow.2366, i64 %idx.ext235
  %cmp126 = icmp ult i8* %add.ptr151, %add.ptr62
  br i1 %cmp126, label %for.body128, label %sw.epilog239, !llvm.loop !180

for.body157:                                      ; preds = %for.cond154.preheader, %if.end232
  %outrow.3362 = phi i8* [ %add.ptr236, %if.end232 ], [ %add.ptr64, %for.cond154.preheader ]
  %inrow.3360 = phi i8* [ %add.ptr233, %if.end232 ], [ %16, %for.cond154.preheader ]
  %arrayidx159 = getelementptr inbounds i8, i8* %inrow.3360, i64 3
  %27 = load i8, i8* %arrayidx159, align 1, !tbaa !39
  %cmp161 = icmp ugt i8 %27, -61
  br i1 %cmp161, label %if.then163, label %if.else184

if.then163:                                       ; preds = %for.body157
  %28 = bitcast i8* %inrow.3360 to <2 x i8>*
  %29 = load <2 x i8>, <2 x i8>* %28, align 1, !tbaa !39
  %30 = zext <2 x i8> %29 to <2 x i16>
  %31 = mul nuw nsw <2 x i16> %30, <i16 5, i16 5>
  %32 = add nuw nsw <2 x i16> %31, <i16 130, i16 130>
  %33 = lshr <2 x i16> %32, <i16 8, i16 8>
  %34 = extractelement <2 x i16> %33, i32 0
  %mul169 = mul nuw nsw i16 %34, 6
  %35 = extractelement <2 x i16> %33, i32 1
  %add175 = add nuw nsw i16 %mul169, %35
  %mul176 = mul nuw nsw i16 %add175, 6
  %arrayidx177 = getelementptr inbounds i8, i8* %inrow.3360, i64 2
  %36 = load i8, i8* %arrayidx177, align 1, !tbaa !39
  %conv178 = zext i8 %36 to i16
  %mul179 = mul nuw nsw i16 %conv178, 5
  %add180 = add nuw nsw i16 %mul179, 130
  %37 = lshr i16 %add180, 8
  %add182 = add nuw nsw i16 %mul176, %37
  %conv183 = trunc i16 %add182 to i8
  br label %if.end232

if.else184:                                       ; preds = %for.body157
  %cmp185 = icmp ult i8 %27, 64
  br i1 %cmp185, label %if.end232, label %if.else188

if.else188:                                       ; preds = %if.else184
  %38 = load i8, i8* %inrow.3360, align 1, !tbaa !39
  %tobool.not = icmp sgt i8 %38, -1
  %spec.select = select i1 %tobool.not, i32 217, i32 226
  %39 = and i8 %38, 64
  %tobool198.not = icmp eq i8 %39, 0
  %add200 = add nuw nsw i32 %spec.select, 9
  %back_i.1 = select i1 %tobool198.not, i32 %spec.select, i32 %add200
  %add207 = add nuw nsw i32 %back_i.1, 3
  %spec.select354 = select i1 %tobool.not, i32 %back_i.1, i32 %add207
  %add214 = add nuw nsw i32 %spec.select354, 3
  %back_i.3 = select i1 %tobool198.not, i32 %spec.select354, i32 %add214
  %not.tobool.not = xor i1 %tobool.not, true
  %add221 = zext i1 %not.tobool.not to i32
  %not.tobool198.not = xor i1 %tobool198.not, true
  %add228 = zext i1 %not.tobool198.not to i32
  %spec.select355 = add nuw nsw i32 %add228, %add221
  %back_i.5 = add nuw nsw i32 %spec.select355, %back_i.3
  %conv230 = trunc i32 %back_i.5 to i8
  br label %if.end232

if.end232:                                        ; preds = %if.else184, %if.else188, %if.then163
  %.sink388 = phi i8 [ %conv230, %if.else188 ], [ %conv183, %if.then163 ], [ -40, %if.else184 ]
  store i8 %.sink388, i8* %outrow.3362, align 1, !tbaa !39
  %add.ptr233 = getelementptr inbounds i8, i8* %inrow.3360, i64 4
  %add.ptr236 = getelementptr inbounds i8, i8* %outrow.3362, i64 %idx.ext235
  %cmp155 = icmp ult i8* %add.ptr236, %add.ptr62
  br i1 %cmp155, label %for.body157, label %sw.epilog239, !llvm.loop !181

sw.epilog239:                                     ; preds = %if.end232, %for.body128, %for.body103, %if.end95, %for.cond154.preheader, %for.cond125.preheader, %for.cond100.preheader, %for.cond66.preheader, %for.body60
  %add241 = add i32 %y.1375, %stepy.0
  %cmp58 = icmp ult i32 %add241, %4
  br i1 %cmp58, label %for.body60, label %cleanup, !llvm.loop !182

cleanup:                                          ; preds = %sw.epilog239, %if.end56, %if.then
  %inc = add nuw nsw i32 %pass.0376, 1
  %exitcond.not = icmp eq i32 %inc, %passes.0
  br i1 %exitcond.not, label %for.end247, label %cleanup.for.body_crit_edge, !llvm.loop !183

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  %.pre = load i8, i8* %interlaced, align 4, !tbaa !34
  br label %for.body

for.end247:                                       ; preds = %cleanup
  ret i32 1
}

declare dso_local void @png_set_keep_unknown_chunks(%struct.png_struct_def*, i32, i8*, i32) local_unnamed_addr #2

declare dso_local i32 @png_muldiv(i32*, i32, i32, i32) local_unnamed_addr #2

declare dso_local void @png_set_add_alpha(%struct.png_struct_def*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @png_image_read_composite(i8* nocapture readonly %argument) #0 {
entry:
  %image1 = bitcast i8* %argument to %struct.png_image**
  %0 = load %struct.png_image*, %struct.png_image** %image1, align 8, !tbaa !119
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 0
  %1 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %png_ptr2 = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 0
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr2, align 8, !tbaa !101
  %interlaced = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 60
  %3 = load i8, i8* %interlaced, align 4, !tbaa !34
  switch i8 %3, label %sw.default [
    i8 0, label %sw.epilog
    i8 1, label %sw.bb3
  ]

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0)) #14
  unreachable

sw.epilog:                                        ; preds = %entry, %sw.bb3
  %passes.0 = phi i32 [ 7, %sw.bb3 ], [ 1, %entry ]
  %height4 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 3
  %4 = load i32, i32* %height4, align 8, !tbaa !106
  %width5 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 2
  %5 = load i32, i32* %width5, align 4, !tbaa !105
  %row_bytes = getelementptr inbounds i8, i8* %argument, i64 56
  %6 = bitcast i8* %row_bytes to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !159
  %format = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 4
  %8 = load i32, i32* %format, align 4, !tbaa !111
  %and = and i32 %8, 2
  %9 = or i32 %and, 1
  %local_row = getelementptr inbounds i8, i8* %argument, i64 40
  %10 = bitcast i8* %local_row to i8**
  %first_row = getelementptr inbounds i8, i8* %argument, i64 48
  %11 = bitcast i8* %first_row to i8**
  %mul67 = mul i32 %9, %5
  %idx.ext = zext i32 %mul67 to i64
  %idxprom = zext i32 %9 to i64
  %add121 = add nuw nsw i32 %9, 1
  %idx.ext122 = zext i32 %add121 to i64
  %exitcond.not.not.not = icmp eq i32 %and, 0
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %sw.epilog
  %12 = phi i8 [ %3, %sw.epilog ], [ %.pre, %cleanup.for.body_crit_edge ]
  %pass.0219 = phi i32 [ 0, %sw.epilog ], [ %inc135, %cleanup.for.body_crit_edge ]
  %cmp11 = icmp eq i8 %12, 1
  br i1 %cmp11, label %if.then, label %if.end60

if.then:                                          ; preds = %for.body
  %cmp13 = icmp ugt i32 %pass.0219, 1
  %sub = sub nuw nsw i32 7, %pass.0219
  %shr = ashr i32 %sub, 1
  %cond15 = select i1 %cmp13, i32 %shr, i32 3
  %notmask = shl nsw i32 -1, %cond15
  %sub16 = xor i32 %notmask, -1
  %and17 = and i32 %pass.0219, 1
  %add = add nuw nsw i32 %pass.0219, 1
  %13 = lshr i32 %add, 1
  %sub19 = sub nsw i32 3, %13
  %shl20 = shl nuw nsw i32 %and17, %sub19
  %and21 = and i32 %shl20, 7
  %sub22 = add i32 %5, %sub16
  %add23 = sub i32 %sub22, %and21
  %shr32 = lshr i32 %add23, %cond15
  %cmp33 = icmp eq i32 %shr32, 0
  br i1 %cmp33, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %mul = mul nuw nsw i32 %and21, %9
  %mul45 = shl i32 %9, %shr
  %and46 = xor i32 %and17, 1
  %14 = lshr i32 %pass.0219, 1
  %sub48 = sub nsw i32 3, %14
  %shl49 = shl i32 %and46, %sub48
  %and50 = and i32 %shl49, 7
  %cmp51 = icmp ugt i32 %pass.0219, 2
  %sub54 = add nsw i32 %pass.0219, -1
  %shr55 = ashr i32 %sub54, 1
  %shr56 = lshr i32 8, %shr55
  %cond59 = select i1 %cmp51, i32 %shr56, i32 8
  br label %if.end60

if.end60:                                         ; preds = %for.body, %if.end
  %startx.0 = phi i32 [ %mul, %if.end ], [ 0, %for.body ]
  %stepx.0 = phi i32 [ %mul45, %if.end ], [ %9, %for.body ]
  %stepy.0 = phi i32 [ %cond59, %if.end ], [ 1, %for.body ]
  %y.0 = phi i32 [ %and50, %if.end ], [ 0, %for.body ]
  %cmp62217 = icmp ult i32 %y.0, %4
  br i1 %cmp62217, label %for.body64.lr.ph, label %cleanup

for.body64.lr.ph:                                 ; preds = %if.end60
  %idx.ext69 = zext i32 %startx.0 to i64
  %idx.ext125 = zext i32 %stepx.0 to i64
  %cmp72213 = icmp ult i32 %startx.0, %mul67
  br label %for.body64

for.body64:                                       ; preds = %for.body64.lr.ph, %for.end127
  %y.1218 = phi i32 [ %y.0, %for.body64.lr.ph ], [ %add129, %for.end127 ]
  %15 = load i8*, i8** %10, align 8, !tbaa !125
  tail call void @png_read_row(%struct.png_struct_def* %2, i8* %15, i8* null)
  %16 = load i8*, i8** %11, align 8, !tbaa !158
  %conv65 = zext i32 %y.1218 to i64
  %mul66 = mul nsw i64 %7, %conv65
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %mul66
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  br i1 %cmp72213, label %for.body74.preheader, label %for.end127

for.body74.preheader:                             ; preds = %for.body64
  %add.ptr70 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext69
  br label %for.body74

for.body74:                                       ; preds = %for.body74.preheader, %if.end120
  %outrow.0215 = phi i8* [ %add.ptr126, %if.end120 ], [ %add.ptr70, %for.body74.preheader ]
  %inrow.0214 = phi i8* [ %add.ptr123, %if.end120 ], [ %15, %for.body74.preheader ]
  %arrayidx = getelementptr inbounds i8, i8* %inrow.0214, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %cmp76.not = icmp eq i8 %17, 0
  br i1 %cmp76.not, label %if.end120, label %for.cond79.preheader

for.cond79.preheader:                             ; preds = %for.body74
  %cmp87.not = icmp eq i8 %17, -1
  %18 = xor i8 %17, -1
  %sub92 = zext i8 %18 to i32
  %19 = load i8, i8* %inrow.0214, align 1, !tbaa !39
  br i1 %cmp87.not, label %if.end116, label %if.then89

if.then89:                                        ; preds = %for.cond79.preheader
  %conv85 = zext i8 %19 to i32
  %mul90 = mul nuw nsw i32 %conv85, 65535
  %20 = load i8, i8* %outrow.0215, align 1, !tbaa !39
  %idxprom95 = zext i8 %20 to i64
  %arrayidx96 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom95
  %21 = load i16, i16* %arrayidx96, align 2, !tbaa !134
  %conv97 = zext i16 %21 to i32
  %mul98 = mul nuw nsw i32 %conv97, %sub92
  %add99 = add nuw nsw i32 %mul98, %mul90
  %shr100 = lshr i32 %add99, 15
  %idxprom101 = zext i32 %shr100 to i64
  %arrayidx102 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom101
  %22 = load i16, i16* %arrayidx102, align 2, !tbaa !134
  %conv103 = zext i16 %22 to i32
  %and104 = and i32 %add99, 32767
  %arrayidx107 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom101
  %23 = load i8, i8* %arrayidx107, align 1, !tbaa !39
  %conv108 = zext i8 %23 to i32
  %mul109 = mul nuw nsw i32 %and104, %conv108
  %shr110 = lshr i32 %mul109, 12
  %add111 = add nuw nsw i32 %shr110, %conv103
  %shr112 = lshr i32 %add111, 8
  %conv114 = trunc i32 %shr112 to i8
  br label %if.end116

if.end116:                                        ; preds = %if.then89, %for.cond79.preheader
  %component.0 = phi i8 [ %conv114, %if.then89 ], [ %19, %for.cond79.preheader ]
  store i8 %component.0, i8* %outrow.0215, align 1, !tbaa !39
  br i1 %exitcond.not.not.not, label %if.end120, label %for.body82.1, !llvm.loop !184

if.end120:                                        ; preds = %if.end116, %if.end116.2, %for.body74
  %add.ptr123 = getelementptr inbounds i8, i8* %inrow.0214, i64 %idx.ext122
  %add.ptr126 = getelementptr inbounds i8, i8* %outrow.0215, i64 %idx.ext125
  %cmp72 = icmp ult i8* %add.ptr126, %add.ptr68
  br i1 %cmp72, label %for.body74, label %for.end127, !llvm.loop !185

for.end127:                                       ; preds = %if.end120, %for.body64
  %add129 = add i32 %y.1218, %stepy.0
  %cmp62 = icmp ult i32 %add129, %4
  br i1 %cmp62, label %for.body64, label %cleanup, !llvm.loop !186

cleanup:                                          ; preds = %for.end127, %if.end60, %if.then
  %inc135 = add nuw nsw i32 %pass.0219, 1
  %exitcond222.not = icmp eq i32 %inc135, %passes.0
  br i1 %exitcond222.not, label %for.end136, label %cleanup.for.body_crit_edge, !llvm.loop !187

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  %.pre = load i8, i8* %interlaced, align 4, !tbaa !34
  br label %for.body

for.end136:                                       ; preds = %cleanup
  ret i32 1

for.body82.1:                                     ; preds = %if.end116
  %arrayidx84.1 = getelementptr inbounds i8, i8* %inrow.0214, i64 1
  %24 = load i8, i8* %arrayidx84.1, align 1, !tbaa !39
  br i1 %cmp87.not, label %if.end116.1, label %if.then89.1

if.then89.1:                                      ; preds = %for.body82.1
  %conv85.1 = zext i8 %24 to i32
  %mul90.1 = mul nuw nsw i32 %conv85.1, 65535
  %arrayidx94.1 = getelementptr inbounds i8, i8* %outrow.0215, i64 1
  %25 = load i8, i8* %arrayidx94.1, align 1, !tbaa !39
  %idxprom95.1 = zext i8 %25 to i64
  %arrayidx96.1 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom95.1
  %26 = load i16, i16* %arrayidx96.1, align 2, !tbaa !134
  %conv97.1 = zext i16 %26 to i32
  %mul98.1 = mul nuw nsw i32 %conv97.1, %sub92
  %add99.1 = add nuw nsw i32 %mul98.1, %mul90.1
  %shr100.1 = lshr i32 %add99.1, 15
  %idxprom101.1 = zext i32 %shr100.1 to i64
  %arrayidx102.1 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom101.1
  %27 = load i16, i16* %arrayidx102.1, align 2, !tbaa !134
  %conv103.1 = zext i16 %27 to i32
  %and104.1 = and i32 %add99.1, 32767
  %arrayidx107.1 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom101.1
  %28 = load i8, i8* %arrayidx107.1, align 1, !tbaa !39
  %conv108.1 = zext i8 %28 to i32
  %mul109.1 = mul nuw nsw i32 %and104.1, %conv108.1
  %shr110.1 = lshr i32 %mul109.1, 12
  %add111.1 = add nuw nsw i32 %shr110.1, %conv103.1
  %shr112.1 = lshr i32 %add111.1, 8
  %conv114.1 = trunc i32 %shr112.1 to i8
  br label %if.end116.1

if.end116.1:                                      ; preds = %if.then89.1, %for.body82.1
  %component.0.1 = phi i8 [ %conv114.1, %if.then89.1 ], [ %24, %for.body82.1 ]
  %arrayidx119.1 = getelementptr inbounds i8, i8* %outrow.0215, i64 1
  store i8 %component.0.1, i8* %arrayidx119.1, align 1, !tbaa !39
  %arrayidx84.2 = getelementptr inbounds i8, i8* %inrow.0214, i64 2
  %29 = load i8, i8* %arrayidx84.2, align 1, !tbaa !39
  br i1 %cmp87.not, label %if.end116.2, label %if.then89.2

if.then89.2:                                      ; preds = %if.end116.1
  %conv85.2 = zext i8 %29 to i32
  %mul90.2 = mul nuw nsw i32 %conv85.2, 65535
  %arrayidx94.2 = getelementptr inbounds i8, i8* %outrow.0215, i64 2
  %30 = load i8, i8* %arrayidx94.2, align 1, !tbaa !39
  %idxprom95.2 = zext i8 %30 to i64
  %arrayidx96.2 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom95.2
  %31 = load i16, i16* %arrayidx96.2, align 2, !tbaa !134
  %conv97.2 = zext i16 %31 to i32
  %mul98.2 = mul nuw nsw i32 %conv97.2, %sub92
  %add99.2 = add nuw nsw i32 %mul98.2, %mul90.2
  %shr100.2 = lshr i32 %add99.2, 15
  %idxprom101.2 = zext i32 %shr100.2 to i64
  %arrayidx102.2 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom101.2
  %32 = load i16, i16* %arrayidx102.2, align 2, !tbaa !134
  %conv103.2 = zext i16 %32 to i32
  %and104.2 = and i32 %add99.2, 32767
  %arrayidx107.2 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom101.2
  %33 = load i8, i8* %arrayidx107.2, align 1, !tbaa !39
  %conv108.2 = zext i8 %33 to i32
  %mul109.2 = mul nuw nsw i32 %and104.2, %conv108.2
  %shr110.2 = lshr i32 %mul109.2, 12
  %add111.2 = add nuw nsw i32 %shr110.2, %conv103.2
  %shr112.2 = lshr i32 %add111.2, 8
  %conv114.2 = trunc i32 %shr112.2 to i8
  br label %if.end116.2

if.end116.2:                                      ; preds = %if.then89.2, %if.end116.1
  %component.0.2 = phi i8 [ %conv114.2, %if.then89.2 ], [ %29, %if.end116.1 ]
  %arrayidx119.2 = getelementptr inbounds i8, i8* %outrow.0215, i64 2
  store i8 %component.0.2, i8* %arrayidx119.2, align 1, !tbaa !39
  br label %if.end120
}

; Function Attrs: nounwind uwtable
define internal i32 @png_image_read_background(i8* nocapture readonly %argument) #0 {
entry:
  %image1 = bitcast i8* %argument to %struct.png_image**
  %0 = load %struct.png_image*, %struct.png_image** %image1, align 8, !tbaa !119
  %opaque = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 0
  %1 = load %struct.png_control*, %struct.png_control** %opaque, align 8, !tbaa !100
  %png_ptr2 = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 0
  %2 = load %struct.png_struct_def*, %struct.png_struct_def** %png_ptr2, align 8, !tbaa !101
  %info_ptr4 = getelementptr inbounds %struct.png_control, %struct.png_control* %1, i64 0, i32 1
  %3 = load %struct.png_info_def*, %struct.png_info_def** %info_ptr4, align 8, !tbaa !104
  %height5 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 3
  %4 = load i32, i32* %height5, align 8, !tbaa !106
  %width6 = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 2
  %5 = load i32, i32* %width6, align 4, !tbaa !105
  %transformations = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 17
  %6 = load i32, i32* %transformations, align 4, !tbaa !35
  %and = and i32 %6, 6291456
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0)) #14
  unreachable

if.end:                                           ; preds = %entry
  %7 = trunc i32 %6 to i8
  %cmp9.not = icmp sgt i8 %7, -1
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  tail call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0)) #14
  unreachable

if.end11:                                         ; preds = %if.end
  %call = tail call zeroext i8 @png_get_channels(%struct.png_struct_def* nonnull %2, %struct.png_info_def* %3) #13
  %cmp12.not = icmp eq i8 %call, 2
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end11
  tail call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i64 0, i64 0)) #14
  unreachable

if.end15:                                         ; preds = %if.end11
  %format = getelementptr inbounds %struct.png_image, %struct.png_image* %0, i64 0, i32 4
  %8 = load i32, i32* %format, align 4, !tbaa !111
  %and20 = and i32 %8, 1
  %cmp21.not = icmp eq i32 %and20, 0
  %9 = and i32 %8, 5
  %.not = icmp eq i32 %9, 1
  br i1 %.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end15
  tail call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.61, i64 0, i64 0)) #14
  unreachable

if.end24:                                         ; preds = %if.end15
  %interlaced = getelementptr inbounds %struct.png_struct_def, %struct.png_struct_def* %2, i64 0, i32 60
  %10 = load i8, i8* %interlaced, align 4, !tbaa !34
  switch i8 %10, label %sw.default [
    i8 0, label %sw.epilog
    i8 1, label %sw.bb26
  ]

sw.bb26:                                          ; preds = %if.end24
  br label %sw.epilog

sw.default:                                       ; preds = %if.end24
  tail call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0)) #14
  unreachable

sw.epilog:                                        ; preds = %if.end24, %sw.bb26
  %passes.0 = phi i32 [ 7, %sw.bb26 ], [ 1, %if.end24 ]
  %bit_depth = getelementptr inbounds %struct.png_info_def, %struct.png_info_def* %3, i64 0, i32 7
  %11 = load i8, i8* %bit_depth, align 4, !tbaa !156
  switch i8 %11, label %sw.default388 [
    i8 8, label %sw.bb28
    i8 16, label %sw.bb230
  ]

sw.bb28:                                          ; preds = %sw.epilog
  %first_row29 = getelementptr inbounds i8, i8* %argument, i64 48
  %12 = bitcast i8* %first_row29 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !158
  %row_bytes = getelementptr inbounds i8, i8* %argument, i64 56
  %14 = bitcast i8* %row_bytes to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !159
  %background = getelementptr inbounds i8, i8* %argument, i64 32
  %16 = bitcast i8* %background to %struct.png_color_struct**
  %local_row157 = getelementptr inbounds i8, i8* %argument, i64 40
  %17 = bitcast i8* %local_row157 to i8**
  %idx.ext163 = zext i32 %5 to i64
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %sw.bb28
  %18 = phi i8 [ %10, %sw.bb28 ], [ %.pre606, %cleanup.for.body_crit_edge ]
  %pass.0590 = phi i32 [ 0, %sw.bb28 ], [ %inc, %cleanup.for.body_crit_edge ]
  %cmp34 = icmp eq i8 %18, 1
  br i1 %cmp34, label %if.then36, label %if.end83

if.then36:                                        ; preds = %for.body
  %cmp37 = icmp ugt i32 %pass.0590, 1
  %sub = sub nuw nsw i32 7, %pass.0590
  %shr = ashr i32 %sub, 1
  %cond = select i1 %cmp37, i32 %shr, i32 3
  %notmask571 = shl nsw i32 -1, %cond
  %sub39 = xor i32 %notmask571, -1
  %and40 = and i32 %pass.0590, 1
  %add = add nuw nsw i32 %pass.0590, 1
  %19 = lshr i32 %add, 1
  %sub42 = sub nsw i32 3, %19
  %shl43 = shl nuw nsw i32 %and40, %sub42
  %and44 = and i32 %shl43, 7
  %sub45 = add i32 %5, %sub39
  %add46 = sub i32 %sub45, %and44
  %shr55 = lshr i32 %add46, %cond
  %cmp56 = icmp eq i32 %shr55, 0
  br i1 %cmp56, label %cleanup, label %if.end59

if.end59:                                         ; preds = %if.then36
  %shl68 = shl nuw nsw i32 1, %shr
  %and69 = xor i32 %and40, 1
  %20 = lshr i32 %pass.0590, 1
  %sub71 = sub nsw i32 3, %20
  %shl72 = shl i32 %and69, %sub71
  %and73 = and i32 %shl72, 7
  %cmp74 = icmp ugt i32 %pass.0590, 2
  %sub77 = add nsw i32 %pass.0590, -1
  %shr78 = ashr i32 %sub77, 1
  %shr79 = lshr i32 8, %shr78
  %cond82 = select i1 %cmp74, i32 %shr79, i32 8
  br label %if.end83

if.end83:                                         ; preds = %for.body, %if.end59
  %y.0 = phi i32 [ %and73, %if.end59 ], [ 0, %for.body ]
  %stepy.0 = phi i32 [ %cond82, %if.end59 ], [ 1, %for.body ]
  %stepx.0 = phi i32 [ %shl68, %if.end59 ], [ 1, %for.body ]
  %startx.0 = phi i32 [ %and44, %if.end59 ], [ 0, %for.body ]
  %21 = load %struct.png_color_struct*, %struct.png_color_struct** %16, align 8, !tbaa !124
  %cmp84 = icmp eq %struct.png_color_struct* %21, null
  br i1 %cmp84, label %for.cond87.preheader, label %if.else147

for.cond87.preheader:                             ; preds = %if.end83
  %cmp88588 = icmp ult i32 %y.0, %4
  br i1 %cmp88588, label %for.body90.lr.ph, label %cleanup

for.body90.lr.ph:                                 ; preds = %for.cond87.preheader
  %idx.ext93 = zext i32 %startx.0 to i64
  %idx.ext142 = zext i32 %stepx.0 to i64
  %cmp96582 = icmp ult i32 %startx.0, %5
  br label %for.body90

for.body90:                                       ; preds = %for.body90.lr.ph, %for.end
  %y.1589 = phi i32 [ %y.0, %for.body90.lr.ph ], [ %add145, %for.end ]
  %22 = load i8*, i8** %17, align 8, !tbaa !125
  %conv91 = zext i32 %y.1589 to i64
  %mul = mul nsw i64 %15, %conv91
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %mul
  %add.ptr92 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext163
  tail call void @png_read_row(%struct.png_struct_def* %2, i8* %22, i8* null)
  br i1 %cmp96582, label %for.body98.preheader, label %for.end

for.body98.preheader:                             ; preds = %for.body90
  %add.ptr94 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext93
  br label %for.body98

for.body98:                                       ; preds = %for.body98.preheader, %if.end140
  %inrow.0586 = phi i8* [ %add.ptr141, %if.end140 ], [ %22, %for.body98.preheader ]
  %outrow.0583 = phi i8* [ %add.ptr143, %if.end140 ], [ %add.ptr94, %for.body98.preheader ]
  %arrayidx = getelementptr inbounds i8, i8* %inrow.0586, i64 1
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv99 = zext i8 %23 to i32
  %cmp100.not = icmp eq i8 %23, 0
  br i1 %cmp100.not, label %if.end140, label %if.then102

if.then102:                                       ; preds = %for.body98
  %24 = load i8, i8* %inrow.0586, align 1, !tbaa !39
  %cmp106.not = icmp eq i8 %23, -1
  br i1 %cmp106.not, label %if.end137, label %if.then108

if.then108:                                       ; preds = %if.then102
  %idxprom = zext i8 %24 to i64
  %arrayidx109 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom
  %25 = load i16, i16* %arrayidx109, align 2, !tbaa !134
  %conv110 = zext i16 %25 to i32
  %mul112 = mul nuw nsw i32 %conv110, %conv99
  %26 = load i8, i8* %outrow.0583, align 1, !tbaa !39
  %idxprom114 = zext i8 %26 to i64
  %arrayidx115 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom114
  %27 = load i16, i16* %arrayidx115, align 2, !tbaa !134
  %conv116 = zext i16 %27 to i32
  %sub118 = xor i32 %conv99, 255
  %mul119 = mul nuw nsw i32 %sub118, %conv116
  %add120 = add nuw nsw i32 %mul119, %mul112
  %shr121 = lshr i32 %add120, 15
  %idxprom122 = zext i32 %shr121 to i64
  %arrayidx123 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom122
  %28 = load i16, i16* %arrayidx123, align 2, !tbaa !134
  %conv124 = zext i16 %28 to i32
  %and125 = and i32 %add120, 32767
  %arrayidx128 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom122
  %29 = load i8, i8* %arrayidx128, align 1, !tbaa !39
  %conv129 = zext i8 %29 to i32
  %mul130 = mul nuw nsw i32 %and125, %conv129
  %shr131 = lshr i32 %mul130, 12
  %add132 = add nuw nsw i32 %shr131, %conv124
  %shr133 = lshr i32 %add132, 8
  %conv135 = trunc i32 %shr133 to i8
  br label %if.end137

if.end137:                                        ; preds = %if.then108, %if.then102
  %component.0 = phi i8 [ %conv135, %if.then108 ], [ %24, %if.then102 ]
  store i8 %component.0, i8* %outrow.0583, align 1, !tbaa !39
  br label %if.end140

if.end140:                                        ; preds = %if.end137, %for.body98
  %add.ptr141 = getelementptr inbounds i8, i8* %inrow.0586, i64 2
  %add.ptr143 = getelementptr inbounds i8, i8* %outrow.0583, i64 %idx.ext142
  %cmp96 = icmp ult i8* %add.ptr143, %add.ptr92
  br i1 %cmp96, label %for.body98, label %for.end, !llvm.loop !188

for.end:                                          ; preds = %if.end140, %for.body90
  %add145 = add i32 %y.1589, %stepy.0
  %cmp88 = icmp ult i32 %add145, %4
  br i1 %cmp88, label %for.body90, label %cleanup, !llvm.loop !189

if.else147:                                       ; preds = %if.end83
  %green = getelementptr inbounds %struct.png_color_struct, %struct.png_color_struct* %21, i64 0, i32 1
  %30 = load i8, i8* %green, align 1, !tbaa !126
  %cmp153580 = icmp ult i32 %y.0, %4
  br i1 %cmp153580, label %for.body155.lr.ph, label %cleanup

for.body155.lr.ph:                                ; preds = %if.else147
  %idxprom150 = zext i8 %30 to i64
  %arrayidx151 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom150
  %31 = load i16, i16* %arrayidx151, align 2, !tbaa !134
  %idx.ext165 = zext i32 %startx.0 to i64
  %conv189 = zext i16 %31 to i32
  %idx.ext218 = zext i32 %stepx.0 to i64
  %cmp168576 = icmp ult i32 %startx.0, %5
  br label %for.body155

for.body155:                                      ; preds = %for.body155.lr.ph, %for.end220
  %y.2581 = phi i32 [ %y.0, %for.body155.lr.ph ], [ %add222, %for.end220 ]
  %32 = load i8*, i8** %17, align 8, !tbaa !125
  %conv159 = zext i32 %y.2581 to i64
  %mul160 = mul nsw i64 %15, %conv159
  %add.ptr161 = getelementptr inbounds i8, i8* %13, i64 %mul160
  %add.ptr164 = getelementptr inbounds i8, i8* %add.ptr161, i64 %idx.ext163
  tail call void @png_read_row(%struct.png_struct_def* %2, i8* %32, i8* null)
  br i1 %cmp168576, label %for.body170.preheader, label %for.end220

for.body170.preheader:                            ; preds = %for.body155
  %add.ptr166 = getelementptr inbounds i8, i8* %add.ptr161, i64 %idx.ext165
  br label %for.body170

for.body170:                                      ; preds = %for.body170.preheader, %if.end215
  %outrow158.0579 = phi i8* [ %add.ptr219, %if.end215 ], [ %add.ptr166, %for.body170.preheader ]
  %inrow156.0577 = phi i8* [ %add.ptr216, %if.end215 ], [ %32, %for.body170.preheader ]
  %arrayidx172 = getelementptr inbounds i8, i8* %inrow156.0577, i64 1
  %33 = load i8, i8* %arrayidx172, align 1, !tbaa !39
  %conv173 = zext i8 %33 to i32
  %cmp174.not = icmp eq i8 %33, 0
  br i1 %cmp174.not, label %if.end215, label %if.then176

if.then176:                                       ; preds = %for.body170
  %34 = load i8, i8* %inrow156.0577, align 1, !tbaa !39
  %cmp181.not = icmp eq i8 %33, -1
  br i1 %cmp181.not, label %if.end215, label %if.then183

if.then183:                                       ; preds = %if.then176
  %idxprom184 = zext i8 %34 to i64
  %arrayidx185 = getelementptr inbounds [256 x i16], [256 x i16]* @png_sRGB_table, i64 0, i64 %idxprom184
  %35 = load i16, i16* %arrayidx185, align 2, !tbaa !134
  %conv186 = zext i16 %35 to i32
  %mul188 = mul nuw nsw i32 %conv186, %conv173
  %sub191 = xor i32 %conv173, 255
  %mul192 = mul nuw nsw i32 %sub191, %conv189
  %add193 = add nuw nsw i32 %mul188, %mul192
  %shr194 = lshr i32 %add193, 15
  %idxprom195 = zext i32 %shr194 to i64
  %arrayidx196 = getelementptr inbounds [512 x i16], [512 x i16]* @png_sRGB_base, i64 0, i64 %idxprom195
  %36 = load i16, i16* %arrayidx196, align 2, !tbaa !134
  %conv197 = zext i16 %36 to i32
  %and198 = and i32 %add193, 32767
  %arrayidx201 = getelementptr inbounds [512 x i8], [512 x i8]* @png_sRGB_delta, i64 0, i64 %idxprom195
  %37 = load i8, i8* %arrayidx201, align 1, !tbaa !39
  %conv202 = zext i8 %37 to i32
  %mul203 = mul nuw nsw i32 %and198, %conv202
  %shr204 = lshr i32 %mul203, 12
  %add205 = add nuw nsw i32 %shr204, %conv197
  %shr206 = lshr i32 %add205, 8
  %conv208 = trunc i32 %shr206 to i8
  br label %if.end215

if.end215:                                        ; preds = %for.body170, %if.then176, %if.then183
  %storemerge = phi i8 [ %conv208, %if.then183 ], [ %34, %if.then176 ], [ %30, %for.body170 ]
  store i8 %storemerge, i8* %outrow158.0579, align 1, !tbaa !39
  %add.ptr216 = getelementptr inbounds i8, i8* %inrow156.0577, i64 2
  %add.ptr219 = getelementptr inbounds i8, i8* %outrow158.0579, i64 %idx.ext218
  %cmp168 = icmp ult i8* %add.ptr219, %add.ptr164
  br i1 %cmp168, label %for.body170, label %for.end220, !llvm.loop !190

for.end220:                                       ; preds = %if.end215, %for.body155
  %add222 = add i32 %y.2581, %stepy.0
  %cmp153 = icmp ult i32 %add222, %4
  br i1 %cmp153, label %for.body155, label %cleanup, !llvm.loop !191

cleanup:                                          ; preds = %for.end220, %for.end, %if.else147, %for.cond87.preheader, %if.then36
  %inc = add nuw nsw i32 %pass.0590, 1
  %exitcond.not = icmp eq i32 %inc, %passes.0
  br i1 %exitcond.not, label %sw.epilog389, label %cleanup.for.body_crit_edge, !llvm.loop !192

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  %.pre606 = load i8, i8* %interlaced, align 4, !tbaa !34
  br label %for.body

sw.bb230:                                         ; preds = %sw.epilog
  %first_row232 = getelementptr inbounds i8, i8* %argument, i64 48
  %38 = bitcast i8* %first_row232 to i16**
  %39 = load i16*, i16** %38, align 8, !tbaa !158
  %row_bytes234 = getelementptr inbounds i8, i8* %argument, i64 56
  %40 = bitcast i8* %row_bytes234 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !159
  %div = sdiv i64 %41, 2
  %add239 = add nuw nsw i32 %and20, 1
  %42 = and i32 %8, 33
  %.not573 = icmp eq i32 %42, 33
  %mul331 = mul i32 %add239, %5
  %idx.ext332 = zext i32 %mul331 to i64
  %local_row334 = getelementptr inbounds i8, i8* %argument, i64 40
  %43 = bitcast i8* %local_row334 to i8**
  %44 = bitcast i8* %local_row334 to i16**
  %45 = zext i1 %.not573 to i64
  %46 = xor i1 %.not573, true
  %idxprom368 = zext i1 %46 to i64
  br label %for.body252

for.body252:                                      ; preds = %cleanup379.for.body252_crit_edge, %sw.bb230
  %47 = phi i8 [ %10, %sw.bb230 ], [ %.pre, %cleanup379.for.body252_crit_edge ]
  %pass.1599 = phi i32 [ 0, %sw.bb230 ], [ %inc386, %cleanup379.for.body252_crit_edge ]
  %cmp259 = icmp eq i8 %47, 1
  br i1 %cmp259, label %if.then261, label %if.end320

if.then261:                                       ; preds = %for.body252
  %cmp262 = icmp ugt i32 %pass.1599, 1
  %sub265 = sub nuw nsw i32 7, %pass.1599
  %shr266 = ashr i32 %sub265, 1
  %cond269 = select i1 %cmp262, i32 %shr266, i32 3
  %notmask = shl nsw i32 -1, %cond269
  %sub271 = xor i32 %notmask, -1
  %and272 = and i32 %pass.1599, 1
  %add273 = add nuw nsw i32 %pass.1599, 1
  %48 = lshr i32 %add273, 1
  %sub275 = sub nsw i32 3, %48
  %shl276 = shl nuw nsw i32 %and272, %sub275
  %and277 = and i32 %shl276, 7
  %sub278 = add i32 %5, %sub271
  %add279 = sub i32 %sub278, %and277
  %shr288 = lshr i32 %add279, %cond269
  %cmp289 = icmp eq i32 %shr288, 0
  br i1 %cmp289, label %cleanup379, label %if.end292

if.end292:                                        ; preds = %if.then261
  %mul299 = mul nuw nsw i32 %and277, %add239
  %mul303 = shl i32 %add239, %shr266
  %and305 = xor i32 %and272, 1
  %49 = lshr i32 %pass.1599, 1
  %sub307 = sub nsw i32 3, %49
  %shl308 = shl i32 %and305, %sub307
  %and309 = and i32 %shl308, 7
  %cmp310 = icmp ugt i32 %pass.1599, 2
  %sub313 = add nsw i32 %pass.1599, -1
  %shr314 = ashr i32 %sub313, 1
  %shr315 = lshr i32 8, %shr314
  %cond318 = select i1 %cmp310, i32 %shr315, i32 8
  br label %if.end320

if.end320:                                        ; preds = %for.body252, %if.end292
  %startx253.0 = phi i32 [ %mul299, %if.end292 ], [ 0, %for.body252 ]
  %stepx254.0 = phi i32 [ %mul303, %if.end292 ], [ %add239, %for.body252 ]
  %stepy255.0 = phi i32 [ %cond318, %if.end292 ], [ 1, %for.body252 ]
  %y256.0 = phi i32 [ %and309, %if.end292 ], [ 0, %for.body252 ]
  %cmp322597 = icmp ult i32 %y256.0, %4
  br i1 %cmp322597, label %for.body324.lr.ph, label %cleanup379

for.body324.lr.ph:                                ; preds = %if.end320
  %idx.ext336 = zext i32 %startx253.0 to i64
  %idx.ext373 = zext i32 %stepx254.0 to i64
  %.pre605 = load i8*, i8** %43, align 8, !tbaa !125
  %cmp339593 = icmp ult i32 %startx253.0, %mul331
  br label %for.body324

for.body324:                                      ; preds = %for.body324.lr.ph, %for.end375
  %50 = phi i8* [ %.pre605, %for.body324.lr.ph ], [ %52, %for.end375 ]
  %y256.1598 = phi i32 [ %y256.0, %for.body324.lr.ph ], [ %add377, %for.end375 ]
  %conv327 = zext i32 %y256.1598 to i64
  %mul328 = mul nsw i64 %div, %conv327
  %add.ptr329 = getelementptr inbounds i16, i16* %39, i64 %mul328
  %add.ptr333 = getelementptr inbounds i16, i16* %add.ptr329, i64 %idx.ext332
  tail call void @png_read_row(%struct.png_struct_def* %2, i8* %50, i8* null)
  %51 = load i16*, i16** %44, align 8, !tbaa !125
  %52 = bitcast i16* %51 to i8*
  br i1 %cmp339593, label %for.body341.preheader, label %for.end375

for.body341.preheader:                            ; preds = %for.body324
  %add.ptr337 = getelementptr inbounds i16, i16* %add.ptr329, i64 %idx.ext336
  br label %for.body341

for.body341:                                      ; preds = %for.body341.preheader, %if.end370
  %outrow326.0595 = phi i16* [ %add.ptr374, %if.end370 ], [ %add.ptr337, %for.body341.preheader ]
  %inrow325.0594 = phi i16* [ %add.ptr371, %if.end370 ], [ %51, %for.body341.preheader ]
  %53 = load i16, i16* %inrow325.0594, align 2, !tbaa !134
  %conv344 = zext i16 %53 to i32
  %arrayidx346 = getelementptr inbounds i16, i16* %inrow325.0594, i64 1
  %54 = load i16, i16* %arrayidx346, align 2, !tbaa !134
  switch i16 %54, label %if.then354 [
    i16 0, label %if.else360
    i16 -1, label %if.end361
  ]

if.then354:                                       ; preds = %for.body341
  %conv347 = zext i16 %54 to i32
  %mul356 = mul nuw i32 %conv347, %conv344
  %add357 = add nuw i32 %mul356, 32767
  %div358 = udiv i32 %add357, 65535
  br label %if.end361

if.else360:                                       ; preds = %for.body341
  br label %if.end361

if.end361:                                        ; preds = %for.body341, %if.then354, %if.else360
  %component342.0 = phi i32 [ %div358, %if.then354 ], [ 0, %if.else360 ], [ %conv344, %for.body341 ]
  %conv362 = trunc i32 %component342.0 to i16
  %arrayidx364 = getelementptr inbounds i16, i16* %outrow326.0595, i64 %45
  store i16 %conv362, i16* %arrayidx364, align 2, !tbaa !134
  br i1 %cmp21.not, label %if.end370, label %if.then367

if.then367:                                       ; preds = %if.end361
  %arrayidx369 = getelementptr inbounds i16, i16* %outrow326.0595, i64 %idxprom368
  store i16 %54, i16* %arrayidx369, align 2, !tbaa !134
  br label %if.end370

if.end370:                                        ; preds = %if.then367, %if.end361
  %add.ptr371 = getelementptr inbounds i16, i16* %inrow325.0594, i64 2
  %add.ptr374 = getelementptr inbounds i16, i16* %outrow326.0595, i64 %idx.ext373
  %cmp339 = icmp ult i16* %add.ptr374, %add.ptr333
  br i1 %cmp339, label %for.body341, label %for.end375, !llvm.loop !193

for.end375:                                       ; preds = %if.end370, %for.body324
  %add377 = add i32 %y256.1598, %stepy255.0
  %cmp322 = icmp ult i32 %add377, %4
  br i1 %cmp322, label %for.body324, label %cleanup379, !llvm.loop !194

cleanup379:                                       ; preds = %for.end375, %if.end320, %if.then261
  %inc386 = add nuw nsw i32 %pass.1599, 1
  %exitcond604.not = icmp eq i32 %inc386, %passes.0
  br i1 %exitcond604.not, label %sw.epilog389, label %cleanup379.for.body252_crit_edge, !llvm.loop !195

cleanup379.for.body252_crit_edge:                 ; preds = %cleanup379
  %.pre = load i8, i8* %interlaced, align 4, !tbaa !34
  br label %for.body252

sw.default388:                                    ; preds = %sw.epilog
  tail call void @png_error(%struct.png_struct_def* nonnull %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0)) #14
  unreachable

sw.epilog389:                                     ; preds = %cleanup379, %cleanup
  ret i32 1
}

declare dso_local zeroext i8 @png_get_channels(%struct.png_struct_def*, %struct.png_info_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: alwaysinline
define internal fastcc void @iso_heap_check_and_trap(i64 %0, i64 %1) unnamed_addr #10 {
entry:
  %2 = load i64, i64* @lowerbound_1, align 8
  %3 = load i64, i64* @upperbound_1, align 8
  %OffsetValWithIndex = add i64 %0, %1
  %IsoHeap.LowerCheck = icmp uge i64 %OffsetValWithIndex, %2
  %IsoHeap.UpperCheck = icmp ule i64 %OffsetValWithIndex, %3
  %IsoHeap._1_RangeCheck = and i1 %IsoHeap.LowerCheck, %IsoHeap.UpperCheck
  br i1 %IsoHeap._1_RangeCheck, label %end, label %slowpath

slowpath:                                         ; preds = %entry
  %addr_to_ptr = inttoptr i64 %0 to i8*
  %4 = call i1 @CacheUpdateandCheck_2(i8* %addr_to_ptr, i64 %1)
  ret void

end:                                              ; preds = %entry
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: alwaysinline
define internal void @sand_mem_check_and_trap(i1 %0) #10 {
entry:
  %1 = icmp eq i1 %0, false
  br i1 %1, label %trap, label %end

trap:                                             ; preds = %entry
  call void @llvm.trap()
  unreachable

end:                                              ; preds = %entry
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #12

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree norecurse nounwind uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { alwaysinline }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (git@github.com:TypeFlexer/TypeFlexer-Clang.git cbc9d60f1cbbe83fc3f1fef69a33d323ec5056a8)"}
!2 = !{!3, !8, i64 300}
!3 = !{!"png_struct_def", !4, i64 0, !6, i64 200, !6, i64 208, !7, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !4, i64 296, !4, i64 297, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !9, i64 320, !6, i64 432, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !8, i64 456, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516, !7, i64 520, !8, i64 528, !8, i64 532, !8, i64 536, !6, i64 544, !6, i64 552, !6, i64 560, !6, i64 568, !6, i64 576, !6, i64 584, !7, i64 592, !8, i64 600, !8, i64 604, !6, i64 608, !10, i64 616, !8, i64 620, !10, i64 624, !4, i64 626, !4, i64 627, !4, i64 628, !4, i64 629, !4, i64 630, !4, i64 631, !4, i64 632, !4, i64 633, !4, i64 634, !4, i64 635, !4, i64 636, !4, i64 637, !4, i64 638, !4, i64 639, !4, i64 640, !10, i64 642, !4, i64 644, !8, i64 648, !11, i64 652, !11, i64 662, !6, i64 672, !8, i64 680, !8, i64 684, !8, i64 688, !8, i64 692, !6, i64 696, !6, i64 704, !6, i64 712, !6, i64 720, !6, i64 728, !6, i64 736, !12, i64 744, !12, i64 749, !6, i64 760, !11, i64 768, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !6, i64 848, !8, i64 856, !8, i64 860, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !8, i64 896, !8, i64 900, !6, i64 904, !6, i64 912, !8, i64 920, !4, i64 924, !8, i64 956, !6, i64 960, !6, i64 968, !8, i64 976, !8, i64 980, !6, i64 984, !4, i64 992, !4, i64 993, !10, i64 994, !10, i64 996, !6, i64 1000, !8, i64 1008, !4, i64 1012, !6, i64 1016, !6, i64 1024, !6, i64 1032, !6, i64 1040, !6, i64 1048, !6, i64 1056, !6, i64 1064, !6, i64 1072, !6, i64 1080, !4, i64 1088, !8, i64 1092, !8, i64 1096, !8, i64 1100, !7, i64 1104, !13, i64 1112, !7, i64 1144, !6, i64 1152, !7, i64 1160, !8, i64 1168, !8, i64 1172, !6, i64 1176, !4, i64 1184, !14, i64 1216}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"any pointer", !4, i64 0}
!7 = !{!"long", !4, i64 0}
!8 = !{!"int", !4, i64 0}
!9 = !{!"z_stream_s", !6, i64 0, !8, i64 8, !7, i64 16, !6, i64 24, !8, i64 32, !7, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !8, i64 88, !7, i64 96, !7, i64 104}
!10 = !{!"short", !4, i64 0}
!11 = !{!"png_color_16_struct", !4, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8}
!12 = !{!"png_color_8_struct", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !4, i64 4}
!13 = !{!"png_unknown_chunk_t", !4, i64 0, !6, i64 8, !7, i64 16, !4, i64 24}
!14 = !{!"png_colorspace", !8, i64 0, !15, i64 4, !16, i64 36, !10, i64 72, !10, i64 74}
!15 = !{!"png_xy", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!16 = !{!"png_XYZ", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!17 = !{!3, !8, i64 1168}
!18 = !{!3, !8, i64 304}
!19 = !{!3, !8, i64 536}
!20 = !{!3, !4, i64 631}
!21 = !{!3, !8, i64 600}
!22 = !{!3, !8, i64 528}
!23 = !{!24, !8, i64 0}
!24 = !{!"png_row_info_struct", !8, i64 0, !7, i64 8, !4, i64 16, !4, i64 17, !4, i64 18, !4, i64 19}
!25 = !{!24, !4, i64 16}
!26 = !{!3, !4, i64 632}
!27 = !{!24, !4, i64 17}
!28 = !{!3, !4, i64 635}
!29 = !{!24, !4, i64 18}
!30 = !{!3, !4, i64 634}
!31 = !{!24, !4, i64 19}
!32 = !{!24, !7, i64 8}
!33 = !{!3, !8, i64 532}
!34 = !{!3, !4, i64 628}
!35 = !{!3, !8, i64 308}
!36 = !{!3, !4, i64 629}
!37 = !{!3, !8, i64 504}
!38 = !{!3, !6, i64 568}
!39 = !{!4, !4, i64 0}
!40 = !{!3, !6, i64 560}
!41 = !{!3, !6, i64 552}
!42 = !{!3, !8, i64 1008}
!43 = !{!3, !4, i64 1012}
!44 = !{!3, !4, i64 639}
!45 = !{!3, !4, i64 638}
!46 = !{!3, !6, i64 784}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = !{!6, !6, i64 0}
!51 = distinct !{!51, !48}
!52 = distinct !{!52, !48}
!53 = distinct !{!53, !48}
!54 = !{!55}
!55 = distinct !{!55, !56, !"png_start_read_image: %png_ptr"}
!56 = distinct !{!56, !"png_start_read_image"}
!57 = !{!3, !8, i64 508}
!58 = !{!3, !8, i64 512}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !48}
!61 = !{!62}
!62 = distinct !{!62, !63, !"png_start_read_image: %png_ptr"}
!63 = distinct !{!63, !"png_start_read_image"}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = !{!3, !8, i64 620}
!67 = !{!3, !10, i64 616}
!68 = distinct !{!68, !48}
!69 = !{!3, !6, i64 1056}
!70 = !{!71}
!71 = distinct !{!71, !72, !"png_read_destroy: %png_ptr"}
!72 = distinct !{!72, !"png_read_destroy"}
!73 = !{!3, !6, i64 1176}
!74 = !{!3, !6, i64 1152}
!75 = !{!3, !6, i64 904}
!76 = !{!3, !6, i64 912}
!77 = !{!3, !8, i64 956}
!78 = !{!3, !6, i64 608}
!79 = !{!3, !6, i64 760}
!80 = !{!3, !6, i64 832}
!81 = !{!3, !6, i64 1120}
!82 = !{!3, !6, i64 984}
!83 = !{!3, !6, i64 1000}
!84 = !{!85, !8, i64 4}
!85 = !{!"png_info_def", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 16, !6, i64 24, !10, i64 32, !10, i64 34, !4, i64 36, !4, i64 37, !4, i64 38, !4, i64 39, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44, !14, i64 52, !6, i64 128, !6, i64 136, !8, i64 144, !8, i64 148, !8, i64 152, !6, i64 160, !86, i64 168, !12, i64 176, !6, i64 184, !11, i64 192, !11, i64 202, !8, i64 212, !8, i64 216, !4, i64 220, !8, i64 224, !8, i64 228, !4, i64 232, !8, i64 236, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !8, i64 272, !8, i64 276, !6, i64 280, !6, i64 288, !4, i64 296, !4, i64 297, !8, i64 300, !6, i64 304, !8, i64 312, !6, i64 320, !8, i64 328, !4, i64 332, !6, i64 336, !6, i64 344, !6, i64 352}
!86 = !{!"png_time_struct", !10, i64 0, !4, i64 2, !4, i64 3, !4, i64 4, !4, i64 5, !4, i64 6}
!87 = !{!85, !8, i64 8}
!88 = !{!89}
!89 = distinct !{!89, !90, !"png_read_update_info: %png_ptr"}
!90 = distinct !{!90, !"png_read_update_info"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"png_read_update_info: %info_ptr"}
!93 = !{!85, !6, i64 352}
!94 = !{!85, !8, i64 300}
!95 = distinct !{!95, !48}
!96 = !{!85, !7, i64 16}
!97 = distinct !{!97, !48}
!98 = !{!99, !8, i64 8}
!99 = !{!"", !6, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !4, i64 36}
!100 = !{!99, !6, i64 0}
!101 = !{!102, !6, i64 0}
!102 = !{!"png_control", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !8, i64 40, !8, i64 40}
!103 = !{!3, !6, i64 264}
!104 = !{!102, !6, i64 8}
!105 = !{!99, !8, i64 12}
!106 = !{!99, !8, i64 16}
!107 = !{!108}
!108 = distinct !{!108, !109, !"png_image_format: %png_ptr"}
!109 = distinct !{!109, !"png_image_format"}
!110 = !{!3, !10, i64 624}
!111 = !{!99, !8, i64 20}
!112 = !{!3, !10, i64 1290}
!113 = !{!99, !8, i64 24}
!114 = !{!99, !8, i64 28}
!115 = !{!8, !8, i64 0}
!116 = !{!102, !6, i64 24}
!117 = !{!102, !7, i64 32}
!118 = !{!3, !6, i64 256}
!119 = !{!120, !6, i64 0}
!120 = !{!"", !6, i64 0, !6, i64 8, !8, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !7, i64 56, !8, i64 64, !8, i64 68, !8, i64 72}
!121 = !{!120, !6, i64 8}
!122 = !{!120, !8, i64 16}
!123 = !{!120, !6, i64 24}
!124 = !{!120, !6, i64 32}
!125 = !{!120, !6, i64 40}
!126 = !{!127, !4, i64 1}
!127 = !{!"png_color_struct", !4, i64 0, !4, i64 1, !4, i64 2}
!128 = !{!127, !4, i64 0}
!129 = !{!127, !4, i64 2}
!130 = !{!3, !8, i64 1216}
!131 = !{!3, !10, i64 776}
!132 = distinct !{!132, !48}
!133 = distinct !{!133, !48}
!134 = !{!10, !10, i64 0}
!135 = !{!11, !4, i64 0}
!136 = distinct !{!136, !48}
!137 = distinct !{!137, !48}
!138 = distinct !{!138, !48}
!139 = distinct !{!139, !48}
!140 = distinct !{!140, !48}
!141 = distinct !{!141, !48}
!142 = distinct !{!142, !48}
!143 = distinct !{!143, !48}
!144 = !{!11, !10, i64 2}
!145 = !{!11, !10, i64 4}
!146 = !{!11, !10, i64 8}
!147 = !{!11, !10, i64 6}
!148 = distinct !{!148, !48}
!149 = !{!120, !8, i64 72}
!150 = !{!151}
!151 = distinct !{!151, !152, !"png_read_update_info: %png_ptr"}
!152 = distinct !{!152, !"png_read_update_info"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"png_read_update_info: %info_ptr"}
!155 = !{!85, !4, i64 37}
!156 = !{!85, !4, i64 36}
!157 = !{!3, !8, i64 692}
!158 = !{!120, !6, i64 48}
!159 = !{!120, !7, i64 56}
!160 = distinct !{!160, !48}
!161 = distinct !{!161, !48}
!162 = !{!163}
!163 = distinct !{!163, !164, !"png_image_format: %png_ptr"}
!164 = distinct !{!164, !"png_image_format"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"png_read_update_info: %png_ptr"}
!167 = distinct !{!167, !"png_read_update_info"}
!168 = !{!169}
!169 = distinct !{!169, !167, !"png_read_update_info: %info_ptr"}
!170 = distinct !{!170, !48}
!171 = distinct !{!171, !48}
!172 = !{!120, !8, i64 64}
!173 = !{!120, !8, i64 68}
!174 = distinct !{!174, !48}
!175 = distinct !{!175, !48}
!176 = distinct !{!176, !48}
!177 = distinct !{!177, !48}
!178 = distinct !{!178, !48}
!179 = distinct !{!179, !48}
!180 = distinct !{!180, !48}
!181 = distinct !{!181, !48}
!182 = distinct !{!182, !48}
!183 = distinct !{!183, !48}
!184 = distinct !{!184, !48}
!185 = distinct !{!185, !48}
!186 = distinct !{!186, !48}
!187 = distinct !{!187, !48}
!188 = distinct !{!188, !48}
!189 = distinct !{!189, !48}
!190 = distinct !{!190, !48}
!191 = distinct !{!191, !48}
!192 = distinct !{!192, !48}
!193 = distinct !{!193, !48}
!194 = distinct !{!194, !48}
!195 = distinct !{!195, !48}
