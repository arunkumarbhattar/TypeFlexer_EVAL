; ModuleID = 'postprocessor.c'
source_filename = "postprocessor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MHD_PostProcessor = type { %struct.MHD_Connection*, i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [2 x i8], i64, i64, i64, i64, i64, i64, i8, i8, i32, i32, i32, i32 }
%struct.MHD_Connection = type { %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Daemon*, %struct.MHD_Request, %struct.MHD_Reply, %struct.MemoryPool*, i8*, i32, i8*, i8*, %struct.sockaddr_storage*, %struct._MHD_thread_handle_ID_, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i64 (%struct.MHD_Connection*, i8*, i64)*, %struct.MHD_UpgradeResponseHandle*, i8, i8, %union.MHD_ConnectionInfo }
%struct.MHD_Daemon = type { i32 (i8*, %struct.MHD_Connection*, i8*, i8*, i8*, i8*, i64*, i8**)*, i8*, i32, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, i32, %struct.MHD_Connection*, %struct.MHD_Connection*, i32, i8, %struct.MHD_UpgradeResponseHandle*, %struct.MHD_UpgradeResponseHandle*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, %struct.MHD_Connection*, i32 (i8*, %struct.sockaddr*, i32)*, i8*, void (i8*, %struct.MHD_Connection*, i8**, i32)*, i8*, void (i8*, %struct.MHD_Connection*, i8**, i32)*, i8*, i8* (i8*, i8*, %struct.MHD_Connection*)*, i8*, i64 (i8*, %struct.MHD_Connection*, i8*)*, i8*, i16, void (i8*, i8*, %struct.__va_list_tag*)*, i8*, %struct.MHD_Daemon*, i32, i8, %struct.MHD_Daemon*, i8*, i32, i64, i64, i64, i32, %struct._MHD_thread_handle_ID_, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, i32, i32, %struct.MHD_itc_, i8, i8, i8, i8, i8, i8, i32, i64, i32, i32, i8, i8*, i8*, %struct.MHD_NonceNc*, %union.pthread_mutex_t, i64, i32, i32, i32, i32, i64, %union.MHD_DaemonInfo, %union.MHD_DaemonInfo, %union.MHD_DaemonInfo, %union.MHD_DaemonInfo, %union.MHD_DaemonInfo }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.MHD_itc_ = type { i32 }
%struct.MHD_NonceNc = type { i32, i64, [77 x i8] }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.MHD_DaemonInfo = type { i64 }
%struct.MHD_Request = type { i8*, i32, i8*, i32, i8*, i64, %struct.MHD_HTTP_Req_Header*, %struct.MHD_HTTP_Req_Header*, i64, i64, i8, i64, i64, i8, i8*, i8, %struct.MHD_RqBAuth*, i8, %struct.MHD_RqDAuth*, i8, i8*, i8* }
%struct.MHD_HTTP_Req_Header = type { %struct.MHD_HTTP_Req_Header*, %struct.MHD_HTTP_Req_Header*, i8*, i64, i8*, i64, i32 }
%struct.MHD_RqBAuth = type opaque
%struct.MHD_RqDAuth = type { %struct.MHD_RqDAuthParam, %struct.MHD_RqDAuthParam, %struct.MHD_RqDAuthParam, %struct.MHD_RqDAuthParam, %struct.MHD_RqDAuthParam, %struct.MHD_RqDAuthParam, %struct.MHD_RqDAuthParam, %struct.MHD_RqDAuthParam, %struct.MHD_RqDAuthParam, %struct.MHD_RqDAuthParam, i8, i32, i32 }
%struct.MHD_RqDAuthParam = type { %struct._MHD_str_w_len, i8 }
%struct._MHD_str_w_len = type { i8*, i64 }
%struct.MHD_Reply = type { %struct.MHD_Response*, i32, i8, i64, %struct.MHD_iovec_track_, i32, %struct.MHD_Reply_Properties }
%struct.MHD_Response = type { %struct.MHD_HTTP_Res_Header*, %struct.MHD_HTTP_Res_Header*, i8*, i8*, i64 (i8*, i64, i8*, i64)*, void (i8*)*, void (i8*, %struct.MHD_Connection*, i8*, i8*, i64, i32, %struct.MHD_UpgradeResponseHandle*)*, i8*, %union.pthread_mutex_t, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, %struct.iovec*, i32 }
%struct.MHD_HTTP_Res_Header = type { %struct.MHD_HTTP_Res_Header*, %struct.MHD_HTTP_Res_Header*, i8*, i64, i8*, i64, i32 }
%struct.iovec = type { i8*, i64 }
%struct.MHD_iovec_track_ = type { %struct.iovec*, i64, i64 }
%struct.MHD_Reply_Properties = type { i8, i8, i8 }
%struct.MemoryPool = type opaque
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._MHD_thread_handle_ID_ = type { i64, i64 }
%struct.MHD_UpgradeResponseHandle = type { %struct.MHD_Connection*, i8, i8 }
%union.MHD_ConnectionInfo = type { i64 }

@mhd_panic = external dso_local global void (i8*, i8*, i32, i8*)*, align 8
@mhd_panic_cls = external dso_local global i8*, align 8
@.str = private unnamed_addr constant [16 x i8] c"postprocessor.c\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"libmicrohttpd API violation.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"application/x-www-form-urlencoded\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"multipart/form-data\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"boundary=\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GlobalTaintedAdaptorStr = internal global i8* null, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"internal error.\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"multipart/mixed\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Content-disposition: \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Content-type: \00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Content-Transfer-Encoding: \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\0D\0A--\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.MHD_PostProcessor* @MHD_create_post_processor(%struct.MHD_Connection* %connection, i64 %buffer_size, i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)* %iter, i8* %iter_cls) #0 {
entry:
  %retval = alloca %struct.MHD_PostProcessor*, align 8
  %connection.addr = alloca %struct.MHD_Connection*, align 8
  %buffer_size.addr = alloca i64, align 8
  %iter.addr = alloca i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)*, align 8
  %iter_cls.addr = alloca i8*, align 8
  %ret = alloca %struct.MHD_PostProcessor*, align 8
  %encoding = alloca i8*, align 8
  %boundary = alloca i8*, align 8
  %blen = alloca i64, align 8
  %twin = alloca i8*, align 4
  store %struct.MHD_Connection* %connection, %struct.MHD_Connection** %connection.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)* %iter, i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)** %iter.addr, align 8
  store i8* %iter_cls, i8** %iter_cls.addr, align 8
  %0 = bitcast i8** %twin to i64*
  store i64 0, i64* %0, align 4
  %1 = load i64, i64* %buffer_size.addr, align 8
  %cmp = icmp ult i64 %1, 256
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.MHD_Connection*, %struct.MHD_Connection** %connection.addr, align 8
  %cmp1 = icmp eq %struct.MHD_Connection* null, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)*, i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)** %iter.addr, align 8
  %cmp3 = icmp eq i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)* null, %3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8
  %5 = load i8*, i8** @mhd_panic_cls, align 8
  call void %4(i8* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false2
  store i8* null, i8** %encoding, align 8
  %6 = load %struct.MHD_Connection*, %struct.MHD_Connection** %connection.addr, align 8
  %call = call i32 @MHD_lookup_connection_value_n(%struct.MHD_Connection* %6, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 12, i8** %encoding, i64* null)
  %cmp4 = icmp eq i32 0, %call
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store %struct.MHD_PostProcessor* null, %struct.MHD_PostProcessor** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  store i8* null, i8** %boundary, align 8
  %7 = load i8*, i8** %encoding, align 8
  %call7 = call i32 @MHD_str_equal_caseless_n_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %7, i64 33)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %8 = load i8*, i8** %encoding, align 8
  %call9 = call i32 @MHD_str_equal_caseless_n_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %8, i64 19)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then8
  store %struct.MHD_PostProcessor* null, %struct.MHD_PostProcessor** %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.then8
  %9 = load i8*, i8** %encoding, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 19
  store i8* %arrayidx, i8** %boundary, align 8
  %10 = load i8*, i8** %boundary, align 8
  %call13 = call i8* @strstr(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #7
  store i8* %call13, i8** %boundary, align 8
  %11 = load i8*, i8** %boundary, align 8
  %12 = call i32 @c_TPtoO(i8* null)
  %13 = call i32 @c_TPtoO(i8* %11)
  %cmp14 = icmp eq i32 %12, %13
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store %struct.MHD_PostProcessor* null, %struct.MHD_PostProcessor** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end12
  %14 = load i8*, i8** %boundary, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 9
  store i8* %add.ptr, i8** %boundary, align 8
  %15 = load i8*, i8** %boundary, align 8
  %call17 = call i64 @strlen(i8* %15) #7
  store i64 %call17, i64* %blen, align 8
  %16 = load i64, i64* %blen, align 8
  %cmp18 = icmp eq i64 %16, 0
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end16
  %17 = load i64, i64* %blen, align 8
  %mul = mul i64 %17, 2
  %add = add i64 %mul, 2
  %18 = load i64, i64* %buffer_size.addr, align 8
  %cmp20 = icmp ugt i64 %add, %18
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false19, %if.end16
  store %struct.MHD_PostProcessor* null, %struct.MHD_PostProcessor** %retval, align 8
  br label %return

if.end22:                                         ; preds = %lor.lhs.false19
  %19 = load i8*, i8** %boundary, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx23, align 1
  %conv = sext i8 %20 to i32
  %cmp24 = icmp eq i32 %conv, 34
  br i1 %cmp24, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %if.end22
  %21 = load i8*, i8** %boundary, align 8
  %22 = load i64, i64* %blen, align 8
  %sub = sub i64 %22, 1
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %sub
  %23 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %23 to i32
  %cmp28 = icmp eq i32 %conv27, 34
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %land.lhs.true
  %24 = load i8*, i8** %boundary, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %boundary, align 8
  %25 = load i64, i64* %blen, align 8
  %sub31 = sub i64 %25, 2
  store i64 %sub31, i64* %blen, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true, %if.end22
  br label %if.end33

if.else:                                          ; preds = %if.end6
  store i64 0, i64* %blen, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end32
  %26 = load i64, i64* %buffer_size.addr, align 8
  %add34 = add i64 %26, 4
  store i64 %add34, i64* %buffer_size.addr, align 8
  %27 = load i64, i64* %buffer_size.addr, align 8
  %add35 = add i64 160, %27
  %add36 = add i64 %add35, 1
  %call37 = call noalias i8* @calloc(i64 1, i64 %add36) #8
  %28 = bitcast i8* %call37 to %struct.MHD_PostProcessor*
  store %struct.MHD_PostProcessor* %28, %struct.MHD_PostProcessor** %ret, align 8
  %cmp38 = icmp eq %struct.MHD_PostProcessor* null, %28
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end33
  store %struct.MHD_PostProcessor* null, %struct.MHD_PostProcessor** %retval, align 8
  br label %return

if.end41:                                         ; preds = %if.end33
  %29 = load %struct.MHD_Connection*, %struct.MHD_Connection** %connection.addr, align 8
  %30 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %ret, align 8
  %connection42 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %30, i32 0, i32 0
  store %struct.MHD_Connection* %29, %struct.MHD_Connection** %connection42, align 8
  %31 = load i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)*, i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)** %iter.addr, align 8
  %32 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %ret, align 8
  %ikvi = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %32, i32 0, i32 1
  store i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)* %31, i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)** %ikvi, align 8
  %33 = load i8*, i8** %iter_cls.addr, align 8
  %34 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %ret, align 8
  %cls = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %34, i32 0, i32 2
  store i8* %33, i8** %cls, align 8
  %35 = load i8*, i8** %encoding, align 8
  %36 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %ret, align 8
  %encoding43 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %36, i32 0, i32 3
  store i8* %35, i8** %encoding43, align 8
  %37 = load i64, i64* %buffer_size.addr, align 8
  %38 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %ret, align 8
  %buffer_size44 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %38, i32 0, i32 11
  store i64 %37, i64* %buffer_size44, align 8
  %39 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %ret, align 8
  %state = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %39, i32 0, i32 19
  store i32 2, i32* %state, align 4
  %40 = load i64, i64* %blen, align 8
  %41 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %ret, align 8
  %blen45 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %41, i32 0, i32 15
  store i64 %40, i64* %blen45, align 8
  %42 = load i8*, i8** %boundary, align 8
  %43 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %ret, align 8
  %boundary46 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %43, i32 0, i32 4
  store i8* %42, i8** %boundary46, align 8
  %44 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %ret, align 8
  %skip_rn = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %44, i32 0, i32 20
  store i32 0, i32* %skip_rn, align 8
  %45 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %ret, align 8
  store %struct.MHD_PostProcessor* %45, %struct.MHD_PostProcessor** %retval, align 8
  br label %return

return:                                           ; preds = %if.end41, %if.then40, %if.then21, %if.then15, %if.then11, %if.then5
  %46 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %retval, align 8
  ret %struct.MHD_PostProcessor* %46
}

declare dso_local i32 @MHD_lookup_connection_value_n(%struct.MHD_Connection*, i32, i8*, i64, i8**, i64*) #1

declare dso_local i32 @MHD_str_equal_caseless_n_(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #2

declare i32 @c_TPtoO(i8*)

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MHD_post_process(%struct.MHD_PostProcessor* %pp, i8* %post_data, i64 %post_data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca %struct.MHD_PostProcessor*, align 8
  %post_data.addr = alloca i8*, align 4
  %post_data_len.addr = alloca i64, align 8
  store %struct.MHD_PostProcessor* %pp, %struct.MHD_PostProcessor** %pp.addr, align 8
  %0 = ptrtoint i8* %post_data to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %post_data.addr to i64*
  store i64 %1, i64* %2, align 4
  store i64 %post_data_len, i64* %post_data_len.addr, align 8
  %3 = load i64, i64* %post_data_len.addr, align 8
  %cmp = icmp eq i64 0, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %cmp1 = icmp eq %struct.MHD_PostProcessor* null, %4
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %encoding = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %5, i32 0, i32 3
  %6 = load i8*, i8** %encoding, align 8
  %call = call i32 @MHD_str_equal_caseless_n_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %6, i64 33)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end3
  %7 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %8 = load i8*, i8** %post_data.addr, align 4
  %9 = load i64, i64* %post_data_len.addr, align 8
  %10 = ptrtoint i8* %8 to i32
  %11 = zext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %call5 = call i32 @post_process_urlencoded(%struct.MHD_PostProcessor* %7, i8* %12, i64 %9)
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %13 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %encoding7 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %13, i32 0, i32 3
  %14 = load i8*, i8** %encoding7, align 8
  %call8 = call i32 @MHD_str_equal_caseless_n_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %14, i64 19)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  %15 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %16 = load i8*, i8** %post_data.addr, align 4
  %17 = load i64, i64* %post_data_len.addr, align 8
  %18 = ptrtoint i8* %16 to i32
  %19 = zext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %call11 = call i32 @post_process_multipart(%struct.MHD_PostProcessor* %15, i8* %20, i64 %17)
  store i32 %call11, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then4, %if.then2, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_process_urlencoded(%struct.MHD_PostProcessor* %pp, i8* %post_data, i64 %post_data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca %struct.MHD_PostProcessor*, align 8
  %post_data.addr = alloca i8*, align 4
  %post_data_len.addr = alloca i64, align 8
  %kbuf = alloca i8*, align 8
  %poff = alloca i64, align 8
  %start_key = alloca i8*, align 4
  %end_key = alloca i8*, align 4
  %start_value = alloca i8*, align 4
  %end_value = alloca i8*, align 4
  %last_escape = alloca i8*, align 4
  %key_len = alloca i64, align 8
  %tmp = alloca i8*, align 4
  %key_len182 = alloca i64, align 8
  %tmp195 = alloca i8*, align 4
  store %struct.MHD_PostProcessor* %pp, %struct.MHD_PostProcessor** %pp.addr, align 8
  %0 = ptrtoint i8* %post_data to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %post_data.addr to i64*
  store i64 %1, i64* %2, align 4
  store i64 %post_data_len, i64* %post_data_len.addr, align 8
  %3 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %3, i64 1
  %4 = bitcast %struct.MHD_PostProcessor* %arrayidx to i8*
  store i8* %4, i8** %kbuf, align 8
  %5 = bitcast i8** %start_key to i64*
  store i64 0, i64* %5, align 4
  %6 = bitcast i8** %end_key to i64*
  store i64 0, i64* %6, align 4
  %7 = bitcast i8** %start_value to i64*
  store i64 0, i64* %7, align 4
  %8 = bitcast i8** %end_value to i64*
  store i64 0, i64* %8, align 4
  %9 = bitcast i8** %last_escape to i64*
  store i64 0, i64* %9, align 4
  store i64 0, i64* %poff, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog173, %if.then166, %if.then145, %sw.bb116, %sw.default108, %sw.bb106, %if.end84, %sw.bb69, %_Dynamic_check.succeeded15, %sw.bb9, %sw.bb7, %entry
  %10 = load i64, i64* %poff, align 8
  %11 = load i64, i64* %post_data_len.addr, align 8
  %cmp = icmp ult i64 %10, %11
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %12 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %12, i32 0, i32 19
  %13 = load i32, i32* %state, align 4
  %cmp1 = icmp eq i32 %13, 6
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %while.cond
  %14 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state2 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %14, i32 0, i32 19
  %15 = load i32, i32* %state2, align 4
  %cmp3 = icmp ne i32 %15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %16 = phi i1 [ false, %lor.lhs.false ], [ %cmp3, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state4 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %17, i32 0, i32 19
  %18 = load i32, i32* %state4, align 4
  switch i32 %18, label %sw.default172 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
    i32 4, label %sw.bb18
    i32 5, label %sw.bb57
    i32 1, label %sw.bb111
    i32 6, label %sw.bb120
    i32 3, label %sw.bb171
    i32 7, label %sw.bb171
    i32 8, label %sw.bb171
    i32 9, label %sw.bb171
    i32 10, label %sw.bb171
    i32 11, label %sw.bb171
    i32 12, label %sw.bb171
    i32 13, label %sw.bb171
    i32 14, label %sw.bb171
    i32 15, label %sw.bb171
  ]

sw.bb:                                            ; preds = %while.body
  call void @abort() #9
  unreachable

sw.bb5:                                           ; preds = %while.body
  %19 = load i8*, i8** %post_data.addr, align 4
  %20 = load i64, i64* %poff, align 8
  %21 = ptrtoint i8* %19 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %sw.bb5
  %arrayidx6 = getelementptr inbounds i8, i8* %22, i64 %20
  %24 = load i8, i8* %arrayidx6, align 4
  %conv = sext i8 %24 to i32
  switch i32 %conv, label %sw.default [
    i32 61, label %sw.bb7
    i32 38, label %sw.bb9
    i32 10, label %sw.bb10
    i32 13, label %sw.bb10
  ]

_Dynamic_check.failed:                            ; preds = %sw.bb5
  call void @llvm.trap() #9
  unreachable

sw.bb7:                                           ; preds = %_Dynamic_check.succeeded
  %25 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state8 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %25, i32 0, i32 19
  store i32 0, i32* %state8, align 4
  br label %while.cond, !llvm.loop !2

sw.bb9:                                           ; preds = %_Dynamic_check.succeeded
  %26 = load i64, i64* %poff, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %poff, align 8
  br label %while.cond, !llvm.loop !2

sw.bb10:                                          ; preds = %_Dynamic_check.succeeded, %_Dynamic_check.succeeded
  %27 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state11 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %27, i32 0, i32 19
  store i32 1, i32* %state11, align 4
  %28 = load i64, i64* %poff, align 8
  %inc12 = add i64 %28, 1
  store i64 %inc12, i64* %poff, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %_Dynamic_check.succeeded
  %29 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state13 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %29, i32 0, i32 19
  store i32 4, i32* %state13, align 4
  %30 = load i8*, i8** %post_data.addr, align 4
  %31 = load i64, i64* %poff, align 8
  %32 = ptrtoint i8* %30 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %sw.default
  %arrayidx16 = getelementptr inbounds i8, i8* %33, i64 %31
  %35 = ptrtoint i8* %arrayidx16 to i32
  %36 = zext i32 %35 to i64
  %37 = bitcast i8** %start_key to i64*
  store i64 %36, i64* %37, align 4
  %38 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_ikvi = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %38, i32 0, i32 17
  store i8 1, i8* %must_ikvi, align 8
  %39 = load i64, i64* %poff, align 8
  %inc17 = add i64 %39, 1
  store i64 %inc17, i64* %poff, align 8
  br label %while.cond, !llvm.loop !2

_Dynamic_check.failed14:                          ; preds = %sw.default
  call void @llvm.trap() #9
  unreachable

sw.epilog:                                        ; preds = %sw.bb10
  br label %sw.epilog173

sw.bb18:                                          ; preds = %while.body
  %40 = load i8*, i8** %post_data.addr, align 4
  %41 = load i64, i64* %poff, align 8
  %42 = ptrtoint i8* %40 to i32
  %43 = call i8* @c_fetch_pointer_from_offset(i32 %42)
  %44 = call i1 @c_isTaintedPointerToTaintedMem(i8* %43)
  br i1 %44, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %sw.bb18
  %arrayidx21 = getelementptr inbounds i8, i8* %43, i64 %41
  %45 = load i8, i8* %arrayidx21, align 4
  %conv22 = sext i8 %45 to i32
  switch i32 %conv22, label %sw.default50 [
    i32 61, label %sw.bb23
    i32 38, label %sw.bb31
    i32 10, label %sw.bb41
    i32 13, label %sw.bb41
  ]

_Dynamic_check.failed19:                          ; preds = %sw.bb18
  call void @llvm.trap() #9
  unreachable

sw.bb23:                                          ; preds = %_Dynamic_check.succeeded20
  %46 = load i64, i64* %poff, align 8
  %cmp24 = icmp ne i64 0, %46
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb23
  %47 = load i8*, i8** %post_data.addr, align 4
  %48 = load i64, i64* %poff, align 8
  %49 = ptrtoint i8* %47 to i32
  %50 = call i8* @c_fetch_pointer_from_offset(i32 %49)
  %51 = call i1 @c_isTaintedPointerToTaintedMem(i8* %50)
  br i1 %51, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %if.then
  %arrayidx28 = getelementptr inbounds i8, i8* %50, i64 %48
  %52 = ptrtoint i8* %arrayidx28 to i32
  %53 = zext i32 %52 to i64
  %54 = bitcast i8** %end_key to i64*
  store i64 %53, i64* %54, align 4
  br label %if.end

_Dynamic_check.failed26:                          ; preds = %if.then
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded27, %sw.bb23
  %55 = load i64, i64* %poff, align 8
  %inc29 = add i64 %55, 1
  store i64 %inc29, i64* %poff, align 8
  %56 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state30 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %56, i32 0, i32 19
  store i32 5, i32* %state30, align 4
  br label %sw.epilog56

sw.bb31:                                          ; preds = %_Dynamic_check.succeeded20
  %57 = load i64, i64* %poff, align 8
  %cmp32 = icmp ne i64 0, %57
  br i1 %cmp32, label %if.then34, label %if.end38

if.then34:                                        ; preds = %sw.bb31
  %58 = load i8*, i8** %post_data.addr, align 4
  %59 = load i64, i64* %poff, align 8
  %60 = ptrtoint i8* %58 to i32
  %61 = call i8* @c_fetch_pointer_from_offset(i32 %60)
  %62 = call i1 @c_isTaintedPointerToTaintedMem(i8* %61)
  br i1 %62, label %_Dynamic_check.succeeded36, label %_Dynamic_check.failed35

_Dynamic_check.succeeded36:                       ; preds = %if.then34
  %arrayidx37 = getelementptr inbounds i8, i8* %61, i64 %59
  %63 = ptrtoint i8* %arrayidx37 to i32
  %64 = zext i32 %63 to i64
  %65 = bitcast i8** %end_key to i64*
  store i64 %64, i64* %65, align 4
  br label %if.end38

_Dynamic_check.failed35:                          ; preds = %if.then34
  call void @llvm.trap() #9
  unreachable

if.end38:                                         ; preds = %_Dynamic_check.succeeded36, %sw.bb31
  %66 = load i64, i64* %poff, align 8
  %inc39 = add i64 %66, 1
  store i64 %inc39, i64* %poff, align 8
  %67 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state40 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %67, i32 0, i32 19
  store i32 6, i32* %state40, align 4
  br label %sw.epilog56

sw.bb41:                                          ; preds = %_Dynamic_check.succeeded20, %_Dynamic_check.succeeded20
  %68 = load i64, i64* %poff, align 8
  %cmp42 = icmp ne i64 0, %68
  br i1 %cmp42, label %if.then44, label %if.end48

if.then44:                                        ; preds = %sw.bb41
  %69 = load i8*, i8** %post_data.addr, align 4
  %70 = load i64, i64* %poff, align 8
  %71 = ptrtoint i8* %69 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %if.then44
  %arrayidx47 = getelementptr inbounds i8, i8* %72, i64 %70
  %74 = ptrtoint i8* %arrayidx47 to i32
  %75 = zext i32 %74 to i64
  %76 = bitcast i8** %end_key to i64*
  store i64 %75, i64* %76, align 4
  br label %if.end48

_Dynamic_check.failed45:                          ; preds = %if.then44
  call void @llvm.trap() #9
  unreachable

if.end48:                                         ; preds = %_Dynamic_check.succeeded46, %sw.bb41
  %77 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state49 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %77, i32 0, i32 19
  store i32 6, i32* %state49, align 4
  br label %sw.epilog56

sw.default50:                                     ; preds = %_Dynamic_check.succeeded20
  %78 = load i64, i64* %poff, align 8
  %cmp51 = icmp eq i64 0, %78
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %sw.default50
  %79 = load i8*, i8** %post_data.addr, align 4
  %80 = ptrtoint i8* %79 to i32
  %81 = zext i32 %80 to i64
  %82 = bitcast i8** %start_key to i64*
  store i64 %81, i64* %82, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %sw.default50
  %83 = load i64, i64* %poff, align 8
  %inc55 = add i64 %83, 1
  store i64 %inc55, i64* %poff, align 8
  br label %sw.epilog56

sw.epilog56:                                      ; preds = %if.end54, %if.end48, %if.end38, %if.end
  br label %sw.epilog173

sw.bb57:                                          ; preds = %while.body
  %84 = load i8*, i8** %start_value, align 4
  %85 = ptrtoint i8* %84 to i32
  %86 = zext i32 %85 to i64
  %cmp58 = icmp eq i64 0, %86
  br i1 %cmp58, label %if.then60, label %if.end64

if.then60:                                        ; preds = %sw.bb57
  %87 = load i8*, i8** %post_data.addr, align 4
  %88 = load i64, i64* %poff, align 8
  %89 = ptrtoint i8* %87 to i32
  %90 = call i8* @c_fetch_pointer_from_offset(i32 %89)
  %91 = call i1 @c_isTaintedPointerToTaintedMem(i8* %90)
  br i1 %91, label %_Dynamic_check.succeeded62, label %_Dynamic_check.failed61

_Dynamic_check.succeeded62:                       ; preds = %if.then60
  %arrayidx63 = getelementptr inbounds i8, i8* %90, i64 %88
  %92 = ptrtoint i8* %arrayidx63 to i32
  %93 = zext i32 %92 to i64
  %94 = bitcast i8** %start_value to i64*
  store i64 %93, i64* %94, align 4
  br label %if.end64

_Dynamic_check.failed61:                          ; preds = %if.then60
  call void @llvm.trap() #9
  unreachable

if.end64:                                         ; preds = %_Dynamic_check.succeeded62, %sw.bb57
  %95 = load i8*, i8** %post_data.addr, align 4
  %96 = load i64, i64* %poff, align 8
  %97 = ptrtoint i8* %95 to i32
  %98 = call i8* @c_fetch_pointer_from_offset(i32 %97)
  %99 = call i1 @c_isTaintedPointerToTaintedMem(i8* %98)
  br i1 %99, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %if.end64
  %arrayidx67 = getelementptr inbounds i8, i8* %98, i64 %96
  %100 = load i8, i8* %arrayidx67, align 4
  %conv68 = sext i8 %100 to i32
  switch i32 %conv68, label %sw.default108 [
    i32 61, label %sw.bb69
    i32 38, label %sw.bb71
    i32 10, label %sw.bb85
    i32 13, label %sw.bb85
    i32 37, label %sw.bb101
    i32 48, label %sw.bb106
    i32 49, label %sw.bb106
    i32 50, label %sw.bb106
    i32 51, label %sw.bb106
    i32 52, label %sw.bb106
    i32 53, label %sw.bb106
    i32 54, label %sw.bb106
    i32 55, label %sw.bb106
    i32 56, label %sw.bb106
    i32 57, label %sw.bb106
  ]

_Dynamic_check.failed65:                          ; preds = %if.end64
  call void @llvm.trap() #9
  unreachable

sw.bb69:                                          ; preds = %_Dynamic_check.succeeded66
  %101 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state70 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %101, i32 0, i32 19
  store i32 0, i32* %state70, align 4
  br label %while.cond, !llvm.loop !2

sw.bb71:                                          ; preds = %_Dynamic_check.succeeded66
  %102 = load i8*, i8** %post_data.addr, align 4
  %103 = load i64, i64* %poff, align 8
  %104 = ptrtoint i8* %102 to i32
  %105 = call i8* @c_fetch_pointer_from_offset(i32 %104)
  %106 = call i1 @c_isTaintedPointerToTaintedMem(i8* %105)
  br i1 %106, label %_Dynamic_check.succeeded73, label %_Dynamic_check.failed72

_Dynamic_check.succeeded73:                       ; preds = %sw.bb71
  %arrayidx74 = getelementptr inbounds i8, i8* %105, i64 %103
  %107 = ptrtoint i8* %arrayidx74 to i32
  %108 = zext i32 %107 to i64
  %109 = bitcast i8** %end_value to i64*
  store i64 %108, i64* %109, align 4
  %110 = load i64, i64* %poff, align 8
  %inc75 = add i64 %110, 1
  store i64 %inc75, i64* %poff, align 8
  %111 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_ikvi76 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %111, i32 0, i32 17
  %112 = load i8, i8* %must_ikvi76, align 8
  %tobool = trunc i8 %112 to i1
  br i1 %tobool, label %if.then81, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %_Dynamic_check.succeeded73
  %113 = load i8*, i8** %start_value, align 4
  %114 = load i8*, i8** %end_value, align 4
  %115 = ptrtoint i8* %113 to i32
  %116 = zext i32 %115 to i64
  %117 = ptrtoint i8* %114 to i32
  %118 = zext i32 %117 to i64
  %cmp79 = icmp ne i64 %116, %118
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %lor.lhs.false78, %_Dynamic_check.succeeded73
  %119 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state82 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %119, i32 0, i32 19
  store i32 6, i32* %state82, align 4
  br label %if.end84

_Dynamic_check.failed72:                          ; preds = %sw.bb71
  call void @llvm.trap() #9
  unreachable

if.else:                                          ; preds = %lor.lhs.false78
  %120 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %120, i32 0, i32 12
  store i64 0, i64* %buffer_pos, align 8
  %121 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %value_offset = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %121, i32 0, i32 14
  store i64 0, i64* %value_offset, align 8
  %122 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state83 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %122, i32 0, i32 19
  store i32 2, i32* %state83, align 4
  %123 = bitcast i8** %start_value to i64*
  store i64 0, i64* %123, align 4
  %124 = bitcast i8** %end_value to i64*
  store i64 0, i64* %124, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then81
  br label %while.cond, !llvm.loop !2

sw.bb85:                                          ; preds = %_Dynamic_check.succeeded66, %_Dynamic_check.succeeded66
  %125 = load i8*, i8** %post_data.addr, align 4
  %126 = load i64, i64* %poff, align 8
  %127 = ptrtoint i8* %125 to i32
  %128 = call i8* @c_fetch_pointer_from_offset(i32 %127)
  %129 = call i1 @c_isTaintedPointerToTaintedMem(i8* %128)
  br i1 %129, label %_Dynamic_check.succeeded87, label %_Dynamic_check.failed86

_Dynamic_check.succeeded87:                       ; preds = %sw.bb85
  %arrayidx88 = getelementptr inbounds i8, i8* %128, i64 %126
  %130 = ptrtoint i8* %arrayidx88 to i32
  %131 = zext i32 %130 to i64
  %132 = bitcast i8** %end_value to i64*
  store i64 %131, i64* %132, align 4
  %133 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_ikvi89 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %133, i32 0, i32 17
  %134 = load i8, i8* %must_ikvi89, align 8
  %tobool90 = trunc i8 %134 to i1
  br i1 %tobool90, label %if.then95, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %_Dynamic_check.succeeded87
  %135 = load i8*, i8** %start_value, align 4
  %136 = load i8*, i8** %end_value, align 4
  %137 = ptrtoint i8* %135 to i32
  %138 = zext i32 %137 to i64
  %139 = ptrtoint i8* %136 to i32
  %140 = zext i32 %139 to i64
  %cmp93 = icmp ne i64 %138, %140
  br i1 %cmp93, label %if.then95, label %if.else97

if.then95:                                        ; preds = %lor.lhs.false92, %_Dynamic_check.succeeded87
  %141 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state96 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %141, i32 0, i32 19
  store i32 6, i32* %state96, align 4
  br label %if.end100

_Dynamic_check.failed86:                          ; preds = %sw.bb85
  call void @llvm.trap() #9
  unreachable

if.else97:                                        ; preds = %lor.lhs.false92
  %142 = load i64, i64* %poff, align 8
  %inc98 = add i64 %142, 1
  store i64 %inc98, i64* %poff, align 8
  %143 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state99 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %143, i32 0, i32 19
  store i32 1, i32* %state99, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.else97, %if.then95
  br label %sw.epilog110

sw.bb101:                                         ; preds = %_Dynamic_check.succeeded66
  %144 = load i8*, i8** %post_data.addr, align 4
  %145 = load i64, i64* %poff, align 8
  %146 = ptrtoint i8* %144 to i32
  %147 = call i8* @c_fetch_pointer_from_offset(i32 %146)
  %148 = call i1 @c_isTaintedPointerToTaintedMem(i8* %147)
  br i1 %148, label %_Dynamic_check.succeeded103, label %_Dynamic_check.failed102

_Dynamic_check.succeeded103:                      ; preds = %sw.bb101
  %arrayidx104 = getelementptr inbounds i8, i8* %147, i64 %145
  %149 = ptrtoint i8* %arrayidx104 to i32
  %150 = zext i32 %149 to i64
  %151 = bitcast i8** %last_escape to i64*
  store i64 %150, i64* %151, align 4
  %152 = load i64, i64* %poff, align 8
  %inc105 = add i64 %152, 1
  store i64 %inc105, i64* %poff, align 8
  br label %sw.epilog110

_Dynamic_check.failed102:                         ; preds = %sw.bb101
  call void @llvm.trap() #9
  unreachable

sw.bb106:                                         ; preds = %_Dynamic_check.succeeded66, %_Dynamic_check.succeeded66, %_Dynamic_check.succeeded66, %_Dynamic_check.succeeded66, %_Dynamic_check.succeeded66, %_Dynamic_check.succeeded66, %_Dynamic_check.succeeded66, %_Dynamic_check.succeeded66, %_Dynamic_check.succeeded66, %_Dynamic_check.succeeded66
  %153 = load i64, i64* %poff, align 8
  %inc107 = add i64 %153, 1
  store i64 %inc107, i64* %poff, align 8
  br label %while.cond, !llvm.loop !2

sw.default108:                                    ; preds = %_Dynamic_check.succeeded66
  %154 = bitcast i8** %last_escape to i64*
  store i64 0, i64* %154, align 4
  %155 = load i64, i64* %poff, align 8
  %inc109 = add i64 %155, 1
  store i64 %inc109, i64* %poff, align 8
  br label %while.cond, !llvm.loop !2

sw.epilog110:                                     ; preds = %_Dynamic_check.succeeded103, %if.end100
  br label %sw.epilog173

sw.bb111:                                         ; preds = %while.body
  %156 = load i8*, i8** %post_data.addr, align 4
  %157 = load i64, i64* %poff, align 8
  %158 = ptrtoint i8* %156 to i32
  %159 = call i8* @c_fetch_pointer_from_offset(i32 %158)
  %160 = call i1 @c_isTaintedPointerToTaintedMem(i8* %159)
  br i1 %160, label %_Dynamic_check.succeeded113, label %_Dynamic_check.failed112

_Dynamic_check.succeeded113:                      ; preds = %sw.bb111
  %arrayidx114 = getelementptr inbounds i8, i8* %159, i64 %157
  %161 = load i8, i8* %arrayidx114, align 4
  %conv115 = sext i8 %161 to i32
  switch i32 %conv115, label %sw.epilog118 [
    i32 10, label %sw.bb116
    i32 13, label %sw.bb116
  ]

_Dynamic_check.failed112:                         ; preds = %sw.bb111
  call void @llvm.trap() #9
  unreachable

sw.bb116:                                         ; preds = %_Dynamic_check.succeeded113, %_Dynamic_check.succeeded113
  %162 = load i64, i64* %poff, align 8
  %inc117 = add i64 %162, 1
  store i64 %inc117, i64* %poff, align 8
  br label %while.cond, !llvm.loop !2

sw.epilog118:                                     ; preds = %_Dynamic_check.succeeded113
  %163 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state119 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %163, i32 0, i32 19
  store i32 0, i32* %state119, align 4
  br label %sw.epilog173

sw.bb120:                                         ; preds = %while.body
  %164 = load i8*, i8** %end_key, align 4
  %165 = load i8*, i8** %start_key, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %164 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %165 to i32
  %sub.ptr.lhs.cast121 = zext i32 %sub.ptr.lhs.cast to i64
  %sub.ptr.rhs.cast122 = zext i32 %sub.ptr.rhs.cast to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast121, %sub.ptr.rhs.cast122
  store i64 %sub.ptr.sub, i64* %key_len, align 8
  %166 = load i64, i64* %key_len, align 8
  %cmp123 = icmp ne i64 0, %166
  br i1 %cmp123, label %if.then125, label %if.end154

if.then125:                                       ; preds = %sw.bb120
  %167 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos126 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %167, i32 0, i32 12
  %168 = load i64, i64* %buffer_pos126, align 8
  %169 = load i8*, i8** %end_key, align 4
  %170 = load i8*, i8** %start_key, align 4
  %sub.ptr.lhs.cast127 = ptrtoint i8* %169 to i32
  %sub.ptr.rhs.cast128 = ptrtoint i8* %170 to i32
  %sub.ptr.lhs.cast129 = zext i32 %sub.ptr.lhs.cast127 to i64
  %sub.ptr.rhs.cast130 = zext i32 %sub.ptr.rhs.cast128 to i64
  %sub.ptr.sub131 = sub i64 %sub.ptr.lhs.cast129, %sub.ptr.rhs.cast130
  %add = add i64 %168, %sub.ptr.sub131
  %171 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_size = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %171, i32 0, i32 11
  %172 = load i64, i64* %buffer_size, align 8
  %cmp132 = icmp ugt i64 %add, %172
  br i1 %cmp132, label %if.then145, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %if.then125
  %173 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos135 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %173, i32 0, i32 12
  %174 = load i64, i64* %buffer_pos135, align 8
  %175 = load i8*, i8** %end_key, align 4
  %176 = load i8*, i8** %start_key, align 4
  %sub.ptr.lhs.cast136 = ptrtoint i8* %175 to i32
  %sub.ptr.rhs.cast137 = ptrtoint i8* %176 to i32
  %sub.ptr.lhs.cast138 = zext i32 %sub.ptr.lhs.cast136 to i64
  %sub.ptr.rhs.cast139 = zext i32 %sub.ptr.rhs.cast137 to i64
  %sub.ptr.sub140 = sub i64 %sub.ptr.lhs.cast138, %sub.ptr.rhs.cast139
  %add141 = add i64 %174, %sub.ptr.sub140
  %177 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos142 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %177, i32 0, i32 12
  %178 = load i64, i64* %buffer_pos142, align 8
  %cmp143 = icmp ult i64 %add141, %178
  br i1 %cmp143, label %if.then145, label %if.end147

if.then145:                                       ; preds = %lor.lhs.false134, %if.then125
  %179 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state146 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %179, i32 0, i32 19
  store i32 0, i32* %state146, align 4
  br label %while.cond, !llvm.loop !2

if.end147:                                        ; preds = %lor.lhs.false134
  %180 = load i8*, i8** %kbuf, align 8
  %181 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos148 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %181, i32 0, i32 12
  %182 = load i64, i64* %buffer_pos148, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %180, i64 %182
  %183 = load i8*, i8** %start_key, align 4
  %184 = load i64, i64* %key_len, align 8
  %185 = ptrtoint i8* %183 to i32
  %186 = zext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = ptrtoint i8* %187 to i32
  %189 = call i8* @c_fetch_pointer_from_offset(i32 %188)
  %190 = call i1 @c_isTaintedPointerToTaintedMem(i8* %189)
  br i1 %190, label %_Dynamic_check.succeeded151, label %_Dynamic_check.failed150

_Dynamic_check.succeeded151:                      ; preds = %if.end147
  %call = call i8* @t_memcpy(i8* %arrayidx149, i8* %189, i64 %184)
  %191 = call i32 @c_TPtoO(i8* %call)
  %192 = inttoptr i32 %191 to i8*
  store i8* %192, i8** %tmp, align 4
  %193 = load i8*, i8** %tmp, align 4
  %194 = load i64, i64* %key_len, align 8
  %195 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos152 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %195, i32 0, i32 12
  %196 = load i64, i64* %buffer_pos152, align 8
  %add153 = add i64 %196, %194
  store i64 %add153, i64* %buffer_pos152, align 8
  %197 = bitcast i8** %start_key to i64*
  store i64 0, i64* %197, align 4
  %198 = bitcast i8** %end_key to i64*
  store i64 0, i64* %198, align 4
  %199 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_unescape_key = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %199, i32 0, i32 18
  store i8 1, i8* %must_unescape_key, align 1
  br label %if.end154

_Dynamic_check.failed150:                         ; preds = %if.end147
  call void @llvm.trap() #9
  unreachable

if.end154:                                        ; preds = %_Dynamic_check.succeeded151, %sw.bb120
  %200 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_unescape_key155 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %200, i32 0, i32 18
  %201 = load i8, i8* %must_unescape_key155, align 1
  %tobool156 = trunc i8 %201 to i1
  br i1 %tobool156, label %if.then157, label %if.end162

if.then157:                                       ; preds = %if.end154
  %202 = load i8*, i8** %kbuf, align 8
  %203 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos158 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %203, i32 0, i32 12
  %204 = load i64, i64* %buffer_pos158, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %202, i64 %204
  store i8 0, i8* %arrayidx159, align 1
  %205 = load i8*, i8** %kbuf, align 8
  call void @MHD_unescape_plus(i8* %205)
  %206 = load i8*, i8** %kbuf, align 8
  %call160 = call i64 @MHD_http_unescape(i8* %206)
  %207 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_unescape_key161 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %207, i32 0, i32 18
  store i8 0, i8* %must_unescape_key161, align 1
  br label %if.end162

if.end162:                                        ; preds = %if.then157, %if.end154
  %208 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %209 = load i8*, i8** %start_value, align 4
  %210 = load i8*, i8** %end_value, align 4
  %211 = ptrtoint i8* %209 to i32
  %212 = zext i32 %211 to i64
  %213 = inttoptr i64 %212 to i8*
  %214 = ptrtoint i8* %210 to i32
  %215 = zext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  call void @process_value(%struct.MHD_PostProcessor* %208, i8* %213, i8* %216, i8* null)
  %217 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state163 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %217, i32 0, i32 19
  %218 = load i32, i32* %state163, align 4
  %cmp164 = icmp eq i32 0, %218
  br i1 %cmp164, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.end162
  br label %while.cond, !llvm.loop !2

if.end167:                                        ; preds = %if.end162
  %219 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %value_offset168 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %219, i32 0, i32 14
  store i64 0, i64* %value_offset168, align 8
  %220 = bitcast i8** %start_value to i64*
  store i64 0, i64* %220, align 4
  %221 = bitcast i8** %end_value to i64*
  store i64 0, i64* %221, align 4
  %222 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos169 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %222, i32 0, i32 12
  store i64 0, i64* %buffer_pos169, align 8
  %223 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state170 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %223, i32 0, i32 19
  store i32 2, i32* %state170, align 4
  br label %sw.epilog173

sw.bb171:                                         ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  br label %sw.default172

sw.default172:                                    ; preds = %while.body, %sw.bb171
  br label %do.body

do.body:                                          ; preds = %sw.default172
  %224 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8
  %225 = load i8*, i8** @mhd_panic_cls, align 8
  call void %224(i8* %225, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 521, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog173

sw.epilog173:                                     ; preds = %do.end, %if.end167, %sw.epilog118, %sw.epilog110, %sw.epilog56, %sw.epilog
  br label %while.cond, !llvm.loop !2

while.end:                                        ; preds = %land.end
  %226 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state174 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %226, i32 0, i32 19
  %227 = load i32, i32* %state174, align 4
  %cmp175 = icmp eq i32 0, %227
  br i1 %cmp175, label %if.then177, label %if.end178

if.then177:                                       ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end178:                                        ; preds = %while.end
  %228 = load i8*, i8** %start_key, align 4
  %229 = ptrtoint i8* %228 to i32
  %230 = zext i32 %229 to i64
  %cmp179 = icmp ne i64 0, %230
  br i1 %cmp179, label %if.then181, label %if.end199

if.then181:                                       ; preds = %if.end178
  %231 = load i8*, i8** %end_key, align 4
  %232 = ptrtoint i8* %231 to i32
  %233 = zext i32 %232 to i64
  %cmp183 = icmp eq i64 0, %233
  br i1 %cmp183, label %if.then185, label %if.end189

if.then185:                                       ; preds = %if.then181
  %234 = load i8*, i8** %post_data.addr, align 4
  %235 = load i64, i64* %poff, align 8
  %236 = ptrtoint i8* %234 to i32
  %237 = call i8* @c_fetch_pointer_from_offset(i32 %236)
  %238 = call i1 @c_isTaintedPointerToTaintedMem(i8* %237)
  br i1 %238, label %_Dynamic_check.succeeded187, label %_Dynamic_check.failed186

_Dynamic_check.succeeded187:                      ; preds = %if.then185
  %arrayidx188 = getelementptr inbounds i8, i8* %237, i64 %235
  %239 = ptrtoint i8* %arrayidx188 to i32
  %240 = zext i32 %239 to i64
  %241 = bitcast i8** %end_key to i64*
  store i64 %240, i64* %241, align 4
  br label %if.end189

_Dynamic_check.failed186:                         ; preds = %if.then185
  call void @llvm.trap() #9
  unreachable

if.end189:                                        ; preds = %_Dynamic_check.succeeded187, %if.then181
  %242 = load i8*, i8** %kbuf, align 8
  %243 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos190 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %243, i32 0, i32 12
  %244 = load i64, i64* %buffer_pos190, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %242, i64 %244
  %245 = load i8*, i8** %start_key, align 4
  %246 = load i64, i64* %key_len182, align 8
  %247 = ptrtoint i8* %245 to i32
  %248 = zext i32 %247 to i64
  %249 = inttoptr i64 %248 to i8*
  %250 = ptrtoint i8* %249 to i32
  %251 = call i8* @c_fetch_pointer_from_offset(i32 %250)
  %252 = call i1 @c_isTaintedPointerToTaintedMem(i8* %251)
  br i1 %252, label %_Dynamic_check.succeeded193, label %_Dynamic_check.failed192

_Dynamic_check.succeeded193:                      ; preds = %if.end189
  %call194 = call i8* @t_memcpy(i8* %arrayidx191, i8* %251, i64 %246)
  %253 = call i32 @c_TPtoO(i8* %call194)
  %254 = inttoptr i32 %253 to i8*
  store i8* %254, i8** %tmp195, align 4
  %255 = load i8*, i8** %tmp195, align 4
  %256 = load i64, i64* %key_len182, align 8
  %257 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos196 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %257, i32 0, i32 12
  %258 = load i64, i64* %buffer_pos196, align 8
  %add197 = add i64 %258, %256
  store i64 %add197, i64* %buffer_pos196, align 8
  %259 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_unescape_key198 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %259, i32 0, i32 18
  store i8 1, i8* %must_unescape_key198, align 1
  %260 = bitcast i8** %start_key to i64*
  store i64 0, i64* %260, align 4
  %261 = bitcast i8** %end_key to i64*
  store i64 0, i64* %261, align 4
  br label %if.end199

_Dynamic_check.failed192:                         ; preds = %if.end189
  call void @llvm.trap() #9
  unreachable

if.end199:                                        ; preds = %_Dynamic_check.succeeded193, %if.end178
  %262 = load i8*, i8** %start_value, align 4
  %263 = ptrtoint i8* %262 to i32
  %264 = zext i32 %263 to i64
  %cmp200 = icmp ne i64 0, %264
  br i1 %cmp200, label %land.lhs.true, label %if.end234

land.lhs.true:                                    ; preds = %if.end199
  %265 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state202 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %265, i32 0, i32 19
  %266 = load i32, i32* %state202, align 4
  %cmp203 = icmp eq i32 5, %266
  br i1 %cmp203, label %if.then205, label %if.end234

if.then205:                                       ; preds = %land.lhs.true
  %267 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_unescape_key206 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %267, i32 0, i32 18
  %268 = load i8, i8* %must_unescape_key206, align 1
  %tobool207 = trunc i8 %268 to i1
  br i1 %tobool207, label %if.then208, label %if.end213

if.then208:                                       ; preds = %if.then205
  %269 = load i8*, i8** %kbuf, align 8
  %270 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos209 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %270, i32 0, i32 12
  %271 = load i64, i64* %buffer_pos209, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %269, i64 %271
  store i8 0, i8* %arrayidx210, align 1
  %272 = load i8*, i8** %kbuf, align 8
  call void @MHD_unescape_plus(i8* %272)
  %273 = load i8*, i8** %kbuf, align 8
  %call211 = call i64 @MHD_http_unescape(i8* %273)
  %274 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_unescape_key212 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %274, i32 0, i32 18
  store i8 0, i8* %must_unescape_key212, align 1
  br label %if.end213

if.end213:                                        ; preds = %if.then208, %if.then205
  %275 = load i8*, i8** %end_value, align 4
  %276 = ptrtoint i8* %275 to i32
  %277 = zext i32 %276 to i64
  %cmp214 = icmp eq i64 0, %277
  br i1 %cmp214, label %if.then216, label %if.end220

if.then216:                                       ; preds = %if.end213
  %278 = load i8*, i8** %post_data.addr, align 4
  %279 = load i64, i64* %poff, align 8
  %280 = ptrtoint i8* %278 to i32
  %281 = call i8* @c_fetch_pointer_from_offset(i32 %280)
  %282 = call i1 @c_isTaintedPointerToTaintedMem(i8* %281)
  br i1 %282, label %_Dynamic_check.succeeded218, label %_Dynamic_check.failed217

_Dynamic_check.succeeded218:                      ; preds = %if.then216
  %arrayidx219 = getelementptr inbounds i8, i8* %281, i64 %279
  %283 = ptrtoint i8* %arrayidx219 to i32
  %284 = zext i32 %283 to i64
  %285 = bitcast i8** %end_value to i64*
  store i64 %284, i64* %285, align 4
  br label %if.end220

_Dynamic_check.failed217:                         ; preds = %if.then216
  call void @llvm.trap() #9
  unreachable

if.end220:                                        ; preds = %_Dynamic_check.succeeded218, %if.end213
  %286 = load i8*, i8** %last_escape, align 4
  %287 = ptrtoint i8* %286 to i32
  %288 = zext i32 %287 to i64
  %cmp221 = icmp ne i64 0, %288
  br i1 %cmp221, label %land.lhs.true223, label %if.end232

land.lhs.true223:                                 ; preds = %if.end220
  %289 = load i8*, i8** %end_value, align 4
  %290 = load i8*, i8** %last_escape, align 4
  %sub.ptr.lhs.cast224 = ptrtoint i8* %289 to i32
  %sub.ptr.rhs.cast225 = ptrtoint i8* %290 to i32
  %sub.ptr.lhs.cast226 = zext i32 %sub.ptr.lhs.cast224 to i64
  %sub.ptr.rhs.cast227 = zext i32 %sub.ptr.rhs.cast225 to i64
  %sub.ptr.sub228 = sub i64 %sub.ptr.lhs.cast226, %sub.ptr.rhs.cast227
  %cmp229 = icmp slt i64 2, %sub.ptr.sub228
  br i1 %cmp229, label %if.then231, label %if.end232

if.then231:                                       ; preds = %land.lhs.true223
  %291 = bitcast i8** %last_escape to i64*
  store i64 0, i64* %291, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then231, %land.lhs.true223, %if.end220
  %292 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %293 = load i8*, i8** %start_value, align 4
  %294 = load i8*, i8** %end_value, align 4
  %295 = load i8*, i8** %last_escape, align 4
  %296 = ptrtoint i8* %293 to i32
  %297 = zext i32 %296 to i64
  %298 = inttoptr i64 %297 to i8*
  %299 = ptrtoint i8* %294 to i32
  %300 = zext i32 %299 to i64
  %301 = inttoptr i64 %300 to i8*
  %302 = ptrtoint i8* %295 to i32
  %303 = zext i32 %302 to i64
  %304 = inttoptr i64 %303 to i8*
  call void @process_value(%struct.MHD_PostProcessor* %292, i8* %298, i8* %301, i8* %304)
  %305 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_ikvi233 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %305, i32 0, i32 17
  store i8 0, i8* %must_ikvi233, align 8
  br label %if.end234

if.end234:                                        ; preds = %if.end232, %land.lhs.true, %if.end199
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end234, %if.then177
  %306 = load i32, i32* %retval, align 4
  ret i32 %306
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_process_multipart(%struct.MHD_PostProcessor* %pp, i8* %post_data, i64 %post_data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca %struct.MHD_PostProcessor*, align 8
  %post_data.addr = alloca i8*, align 4
  %post_data_len.addr = alloca i64, align 8
  %buf = alloca i8*, align 8
  %max = alloca i64, align 8
  %ioff = alloca i64, align 8
  %poff = alloca i64, align 8
  %state_changed = alloca i32, align 4
  %tmp = alloca i8*, align 4
  store %struct.MHD_PostProcessor* %pp, %struct.MHD_PostProcessor** %pp.addr, align 8
  %0 = ptrtoint i8* %post_data to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %post_data.addr to i64*
  store i64 %1, i64* %2, align 4
  store i64 %post_data_len, i64* %post_data_len.addr, align 8
  %3 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %3, i64 1
  %4 = bitcast %struct.MHD_PostProcessor* %arrayidx to i8*
  store i8* %4, i8** %buf, align 8
  store i64 0, i64* %ioff, align 8
  store i64 0, i64* %poff, align 8
  store i32 1, i32* %state_changed, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end244, %entry
  %5 = load i64, i64* %poff, align 8
  %6 = load i64, i64* %post_data_len.addr, align 8
  %cmp = icmp ult i64 %5, %6
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %7 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %7, i32 0, i32 12
  %8 = load i64, i64* %buffer_pos, align 8
  %cmp1 = icmp ugt i64 %8, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %9 = load i32, i32* %state_changed, align 4
  %cmp2 = icmp ne i32 0, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %cmp2, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %11 = phi i1 [ true, %while.cond ], [ %10, %land.end ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %12 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_size = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %12, i32 0, i32 11
  %13 = load i64, i64* %buffer_size, align 8
  %14 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos3 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %14, i32 0, i32 12
  %15 = load i64, i64* %buffer_pos3, align 8
  %sub = sub i64 %13, %15
  store i64 %sub, i64* %max, align 8
  %16 = load i64, i64* %max, align 8
  %17 = load i64, i64* %post_data_len.addr, align 8
  %18 = load i64, i64* %poff, align 8
  %sub4 = sub i64 %17, %18
  %cmp5 = icmp ugt i64 %16, %sub4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %19 = load i64, i64* %post_data_len.addr, align 8
  %20 = load i64, i64* %poff, align 8
  %sub6 = sub i64 %19, %20
  store i64 %sub6, i64* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %21 = load i8*, i8** %buf, align 8
  %22 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos7 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %22, i32 0, i32 12
  %23 = load i64, i64* %buffer_pos7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %21, i64 %23
  %24 = load i8*, i8** %post_data.addr, align 4
  %25 = load i64, i64* %poff, align 8
  %26 = ptrtoint i8* %24 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %arrayidx9 = getelementptr inbounds i8, i8* %27, i64 %25
  %29 = load i64, i64* %max, align 8
  %call = call i8* @t_memcpy(i8* %arrayidx8, i8* %arrayidx9, i64 %29)
  %30 = call i32 @c_TPtoO(i8* %call)
  %31 = inttoptr i32 %30 to i8*
  store i8* %31, i8** %tmp, align 4
  %32 = load i8*, i8** %tmp, align 4
  %33 = load i64, i64* %max, align 8
  %34 = load i64, i64* %poff, align 8
  %add = add i64 %34, %33
  store i64 %add, i64* %poff, align 8
  %35 = load i64, i64* %max, align 8
  %36 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos10 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %36, i32 0, i32 12
  %37 = load i64, i64* %buffer_pos10, align 8
  %add11 = add i64 %37, %35
  store i64 %add11, i64* %buffer_pos10, align 8
  %38 = load i64, i64* %max, align 8
  %cmp12 = icmp eq i64 0, %38
  br i1 %cmp12, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded
  %39 = load i32, i32* %state_changed, align 4
  %cmp13 = icmp eq i32 0, %39
  br i1 %cmp13, label %land.lhs.true14, label %if.end17

land.lhs.true14:                                  ; preds = %land.lhs.true
  %40 = load i64, i64* %poff, align 8
  %41 = load i64, i64* %post_data_len.addr, align 8
  %cmp15 = icmp ult i64 %40, %41
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true14
  %42 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %42, i32 0, i32 19
  store i32 0, i32* %state, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

if.end17:                                         ; preds = %land.lhs.true14, %land.lhs.true, %_Dynamic_check.succeeded
  store i32 0, i32* %state_changed, align 4
  %43 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %43, i32 0, i32 20
  %44 = load i32, i32* %skip_rn, align 8
  switch i32 %44, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 3, label %sw.bb25
    i32 2, label %sw.bb35
    i32 4, label %sw.bb66
  ]

sw.bb:                                            ; preds = %if.end17
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end17
  %45 = load i8*, i8** %buf, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx19, align 1
  %conv = sext i8 %46 to i32
  %cmp20 = icmp eq i32 %conv, 10
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %sw.bb18
  %47 = load i64, i64* %ioff, align 8
  %inc = add i64 %47, 1
  store i64 %inc, i64* %ioff, align 8
  %48 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn23 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %48, i32 0, i32 20
  store i32 0, i32* %skip_rn23, align 8
  br label %AGAIN

if.end24:                                         ; preds = %sw.bb18
  br label %sw.bb25

sw.bb25:                                          ; preds = %if.end17, %if.end24
  %49 = load i8*, i8** %buf, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %50 to i32
  %cmp28 = icmp eq i32 %conv27, 45
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %sw.bb25
  %51 = load i64, i64* %ioff, align 8
  %inc31 = add i64 %51, 1
  store i64 %inc31, i64* %ioff, align 8
  %52 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn32 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %52, i32 0, i32 20
  store i32 4, i32* %skip_rn32, align 8
  br label %AGAIN

if.end33:                                         ; preds = %sw.bb25
  %53 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn34 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %53, i32 0, i32 20
  store i32 2, i32* %skip_rn34, align 8
  br label %sw.bb35

sw.bb35:                                          ; preds = %if.end17, %if.end33
  %54 = load i8*, i8** %buf, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %55 to i32
  %cmp38 = icmp eq i32 %conv37, 13
  br i1 %cmp38, label %if.then40, label %if.end55

if.then40:                                        ; preds = %sw.bb35
  %56 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos41 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %56, i32 0, i32 12
  %57 = load i64, i64* %buffer_pos41, align 8
  %cmp42 = icmp ugt i64 %57, 1
  br i1 %cmp42, label %land.lhs.true44, label %if.else

land.lhs.true44:                                  ; preds = %if.then40
  %58 = load i8*, i8** %buf, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %59 to i32
  %cmp47 = icmp eq i32 10, %conv46
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %land.lhs.true44
  %60 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn50 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %60, i32 0, i32 20
  store i32 0, i32* %skip_rn50, align 8
  %61 = load i64, i64* %ioff, align 8
  %add51 = add i64 %61, 2
  store i64 %add51, i64* %ioff, align 8
  br label %if.end54

if.else:                                          ; preds = %land.lhs.true44, %if.then40
  %62 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn52 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %62, i32 0, i32 20
  store i32 1, i32* %skip_rn52, align 8
  %63 = load i64, i64* %ioff, align 8
  %inc53 = add i64 %63, 1
  store i64 %inc53, i64* %ioff, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then49
  br label %AGAIN

if.end55:                                         ; preds = %sw.bb35
  %64 = load i8*, i8** %buf, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %65 to i32
  %cmp58 = icmp eq i32 %conv57, 10
  br i1 %cmp58, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end55
  %66 = load i64, i64* %ioff, align 8
  %inc61 = add i64 %66, 1
  store i64 %inc61, i64* %ioff, align 8
  %67 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn62 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %67, i32 0, i32 20
  store i32 0, i32* %skip_rn62, align 8
  br label %AGAIN

if.end63:                                         ; preds = %if.end55
  %68 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn64 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %68, i32 0, i32 20
  store i32 0, i32* %skip_rn64, align 8
  %69 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state65 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %69, i32 0, i32 19
  store i32 0, i32* %state65, align 4
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb66:                                          ; preds = %if.end17
  %70 = load i8*, i8** %buf, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %71 to i32
  %cmp69 = icmp eq i32 %conv68, 45
  br i1 %cmp69, label %if.then71, label %if.end75

if.then71:                                        ; preds = %sw.bb66
  %72 = load i64, i64* %ioff, align 8
  %inc72 = add i64 %72, 1
  store i64 %inc72, i64* %ioff, align 8
  %73 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn73 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %73, i32 0, i32 20
  store i32 2, i32* %skip_rn73, align 8
  %74 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %dash_state = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %74, i32 0, i32 21
  %75 = load i32, i32* %dash_state, align 4
  %76 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state74 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %76, i32 0, i32 19
  store i32 %75, i32* %state74, align 4
  br label %AGAIN

if.end75:                                         ; preds = %sw.bb66
  %77 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state76 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %77, i32 0, i32 19
  store i32 0, i32* %state76, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end17, %if.end75, %sw.bb
  %78 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state77 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %78, i32 0, i32 19
  %79 = load i32, i32* %state77, align 4
  switch i32 %79, label %sw.default [
    i32 0, label %sw.bb78
    i32 1, label %sw.bb79
    i32 2, label %sw.bb81
    i32 3, label %sw.bb83
    i32 7, label %sw.bb96
    i32 8, label %sw.bb107
    i32 9, label %sw.bb139
    i32 10, label %sw.bb152
    i32 11, label %sw.bb161
    i32 12, label %sw.bb180
    i32 13, label %sw.bb207
    i32 14, label %sw.bb219
    i32 15, label %sw.bb232
    i32 4, label %sw.bb234
    i32 5, label %sw.bb234
    i32 6, label %sw.bb234
  ]

sw.bb78:                                          ; preds = %sw.epilog
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb79:                                          ; preds = %sw.epilog
  %80 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state80 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %80, i32 0, i32 19
  store i32 0, i32* %state80, align 4
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb81:                                          ; preds = %sw.epilog
  %81 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %82 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %boundary = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %82, i32 0, i32 4
  %83 = load i8*, i8** %boundary, align 8
  %84 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %blen = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %84, i32 0, i32 15
  %85 = load i64, i64* %blen, align 8
  %call82 = call i32 @find_boundary(%struct.MHD_PostProcessor* %81, i8* %83, i64 %85, i64* %ioff, i32 7, i32 1)
  br label %sw.epilog235

sw.bb83:                                          ; preds = %sw.epilog
  %86 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %87 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %boundary84 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %87, i32 0, i32 4
  %88 = load i8*, i8** %boundary84, align 8
  %89 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %blen85 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %89, i32 0, i32 15
  %90 = load i64, i64* %blen85, align 8
  %call86 = call i32 @find_boundary(%struct.MHD_PostProcessor* %86, i8* %88, i64 %90, i64* %ioff, i32 7, i32 1)
  %cmp87 = icmp eq i32 0, %call86
  br i1 %cmp87, label %if.then89, label %if.end95

if.then89:                                        ; preds = %sw.bb83
  %91 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state90 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %91, i32 0, i32 19
  %92 = load i32, i32* %state90, align 4
  %cmp91 = icmp eq i32 %92, 0
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.then89
  store i32 0, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.then89
  br label %END

if.end95:                                         ; preds = %sw.bb83
  br label %sw.epilog235

sw.bb96:                                          ; preds = %sw.epilog
  %93 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_ikvi = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %93, i32 0, i32 17
  store i8 1, i8* %must_ikvi, align 8
  %94 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %call97 = call i32 @process_multipart_headers(%struct.MHD_PostProcessor* %94, i64* %ioff, i32 8)
  %cmp98 = icmp eq i32 0, %call97
  br i1 %cmp98, label %if.then100, label %if.end106

if.then100:                                       ; preds = %sw.bb96
  %95 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state101 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %95, i32 0, i32 19
  %96 = load i32, i32* %state101, align 4
  %cmp102 = icmp eq i32 %96, 0
  br i1 %cmp102, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.then100
  store i32 0, i32* %retval, align 4
  br label %return

if.else105:                                       ; preds = %if.then100
  br label %END

if.end106:                                        ; preds = %sw.bb96
  store i32 1, i32* %state_changed, align 4
  br label %sw.epilog235

sw.bb107:                                         ; preds = %sw.epilog
  %97 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_type = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %97, i32 0, i32 7
  %98 = load i8*, i8** %content_type, align 8
  %cmp108 = icmp ne i8* null, %98
  br i1 %cmp108, label %land.lhs.true110, label %if.end137

land.lhs.true110:                                 ; preds = %sw.bb107
  %99 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_type111 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %99, i32 0, i32 7
  %100 = load i8*, i8** %content_type111, align 8
  %call112 = call i32 @MHD_str_equal_caseless_n_(i8* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64 15)
  %tobool = icmp ne i32 %call112, 0
  br i1 %tobool, label %if.then113, label %if.end137

if.then113:                                       ; preds = %land.lhs.true110
  %101 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_type114 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %101, i32 0, i32 7
  %102 = load i8*, i8** %content_type114, align 8
  %call115 = call i8* @strstr(i8* %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #7
  %103 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %103, i32 0, i32 5
  store i8* %call115, i8** %nested_boundary, align 8
  %104 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary116 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %104, i32 0, i32 5
  %105 = load i8*, i8** %nested_boundary116, align 8
  %cmp117 = icmp eq i8* null, %105
  br i1 %cmp117, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.then113
  %106 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state120 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %106, i32 0, i32 19
  store i32 0, i32* %state120, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end121:                                        ; preds = %if.then113
  %107 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary122 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %107, i32 0, i32 5
  %108 = load i8*, i8** %nested_boundary122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %108, i64 9
  %call124 = call noalias i8* @strdup(i8* %arrayidx123) #8
  %109 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary125 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %109, i32 0, i32 5
  store i8* %call124, i8** %nested_boundary125, align 8
  %110 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary126 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %110, i32 0, i32 5
  %111 = load i8*, i8** %nested_boundary126, align 8
  %cmp127 = icmp eq i8* null, %111
  br i1 %cmp127, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.end121
  %112 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state130 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %112, i32 0, i32 19
  store i32 0, i32* %state130, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end131:                                        ; preds = %if.end121
  %113 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_type132 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %113, i32 0, i32 7
  %114 = load i8*, i8** %content_type132, align 8
  call void @free(i8* %114) #8
  %115 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_type133 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %115, i32 0, i32 7
  store i8* null, i8** %content_type133, align 8
  %116 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary134 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %116, i32 0, i32 5
  %117 = load i8*, i8** %nested_boundary134, align 8
  %call135 = call i64 @strlen(i8* %117) #7
  %118 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nlen = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %118, i32 0, i32 16
  store i64 %call135, i64* %nlen, align 8
  %119 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state136 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %119, i32 0, i32 19
  store i32 11, i32* %state136, align 4
  store i32 1, i32* %state_changed, align 4
  br label %sw.epilog235

if.end137:                                        ; preds = %land.lhs.true110, %sw.bb107
  %120 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state138 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %120, i32 0, i32 19
  store i32 9, i32* %state138, align 4
  %121 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %value_offset = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %121, i32 0, i32 14
  store i64 0, i64* %value_offset, align 8
  store i32 1, i32* %state_changed, align 4
  br label %sw.epilog235

sw.bb139:                                         ; preds = %sw.epilog
  %122 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %123 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %boundary140 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %123, i32 0, i32 4
  %124 = load i8*, i8** %boundary140, align 8
  %125 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %blen141 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %125, i32 0, i32 15
  %126 = load i64, i64* %blen141, align 8
  %call142 = call i32 @process_value_to_boundary(%struct.MHD_PostProcessor* %122, i64* %ioff, i8* %124, i64 %126, i32 10, i32 1)
  %cmp143 = icmp eq i32 0, %call142
  br i1 %cmp143, label %if.then145, label %if.end151

if.then145:                                       ; preds = %sw.bb139
  %127 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state146 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %127, i32 0, i32 19
  %128 = load i32, i32* %state146, align 4
  %cmp147 = icmp eq i32 %128, 0
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.then145
  store i32 0, i32* %retval, align 4
  br label %return

if.end150:                                        ; preds = %if.then145
  br label %sw.epilog235

if.end151:                                        ; preds = %sw.bb139
  br label %sw.epilog235

sw.bb152:                                         ; preds = %sw.epilog
  %129 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %have = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %129, i32 0, i32 22
  store i32 0, i32* %have, align 8
  %130 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  call void @free_unmarked(%struct.MHD_PostProcessor* %130)
  %131 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary153 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %131, i32 0, i32 5
  %132 = load i8*, i8** %nested_boundary153, align 8
  %cmp154 = icmp ne i8* null, %132
  br i1 %cmp154, label %if.then156, label %if.end159

if.then156:                                       ; preds = %sw.bb152
  %133 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary157 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %133, i32 0, i32 5
  %134 = load i8*, i8** %nested_boundary157, align 8
  call void @free(i8* %134) #8
  %135 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary158 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %135, i32 0, i32 5
  store i8* null, i8** %nested_boundary158, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %sw.bb152
  %136 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state160 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %136, i32 0, i32 19
  store i32 7, i32* %state160, align 4
  store i32 1, i32* %state_changed, align 4
  br label %sw.epilog235

sw.bb161:                                         ; preds = %sw.epilog
  %137 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary162 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %137, i32 0, i32 5
  %138 = load i8*, i8** %nested_boundary162, align 8
  %cmp163 = icmp eq i8* null, %138
  br i1 %cmp163, label %if.then165, label %if.end167

if.then165:                                       ; preds = %sw.bb161
  %139 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state166 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %139, i32 0, i32 19
  store i32 0, i32* %state166, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end167:                                        ; preds = %sw.bb161
  %140 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %141 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary168 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %141, i32 0, i32 5
  %142 = load i8*, i8** %nested_boundary168, align 8
  %143 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nlen169 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %143, i32 0, i32 16
  %144 = load i64, i64* %nlen169, align 8
  %call170 = call i32 @find_boundary(%struct.MHD_PostProcessor* %140, i8* %142, i64 %144, i64* %ioff, i32 12, i32 3)
  %cmp171 = icmp eq i32 0, %call170
  br i1 %cmp171, label %if.then173, label %if.end179

if.then173:                                       ; preds = %if.end167
  %145 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state174 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %145, i32 0, i32 19
  %146 = load i32, i32* %state174, align 4
  %cmp175 = icmp eq i32 %146, 0
  br i1 %cmp175, label %if.then177, label %if.end178

if.then177:                                       ; preds = %if.then173
  store i32 0, i32* %retval, align 4
  br label %return

if.end178:                                        ; preds = %if.then173
  br label %END

if.end179:                                        ; preds = %if.end167
  br label %sw.epilog235

sw.bb180:                                         ; preds = %sw.epilog
  %147 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %have181 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %147, i32 0, i32 22
  store i32 0, i32* %have181, align 8
  %148 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_name = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %148, i32 0, i32 6
  %149 = load i8*, i8** %content_name, align 8
  %cmp182 = icmp ne i8* null, %149
  br i1 %cmp182, label %if.then184, label %if.end186

if.then184:                                       ; preds = %sw.bb180
  %150 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %have185 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %150, i32 0, i32 22
  %151 = load i32, i32* %have185, align 8
  %or = or i32 %151, 1
  store i32 %or, i32* %have185, align 8
  br label %if.end186

if.end186:                                        ; preds = %if.then184, %sw.bb180
  %152 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_type187 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %152, i32 0, i32 7
  %153 = load i8*, i8** %content_type187, align 8
  %cmp188 = icmp ne i8* null, %153
  br i1 %cmp188, label %if.then190, label %if.end193

if.then190:                                       ; preds = %if.end186
  %154 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %have191 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %154, i32 0, i32 22
  %155 = load i32, i32* %have191, align 8
  %or192 = or i32 %155, 2
  store i32 %or192, i32* %have191, align 8
  br label %if.end193

if.end193:                                        ; preds = %if.then190, %if.end186
  %156 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_filename = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %156, i32 0, i32 8
  %157 = load i8*, i8** %content_filename, align 8
  %cmp194 = icmp ne i8* null, %157
  br i1 %cmp194, label %if.then196, label %if.end199

if.then196:                                       ; preds = %if.end193
  %158 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %have197 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %158, i32 0, i32 22
  %159 = load i32, i32* %have197, align 8
  %or198 = or i32 %159, 4
  store i32 %or198, i32* %have197, align 8
  br label %if.end199

if.end199:                                        ; preds = %if.then196, %if.end193
  %160 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_transfer_encoding = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %160, i32 0, i32 9
  %161 = load i8*, i8** %content_transfer_encoding, align 8
  %cmp200 = icmp ne i8* null, %161
  br i1 %cmp200, label %if.then202, label %if.end205

if.then202:                                       ; preds = %if.end199
  %162 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %have203 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %162, i32 0, i32 22
  %163 = load i32, i32* %have203, align 8
  %or204 = or i32 %163, 8
  store i32 %or204, i32* %have203, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.then202, %if.end199
  %164 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state206 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %164, i32 0, i32 19
  store i32 13, i32* %state206, align 4
  store i32 1, i32* %state_changed, align 4
  br label %sw.epilog235

sw.bb207:                                         ; preds = %sw.epilog
  %165 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %value_offset208 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %165, i32 0, i32 14
  store i64 0, i64* %value_offset208, align 8
  %166 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %call209 = call i32 @process_multipart_headers(%struct.MHD_PostProcessor* %166, i64* %ioff, i32 14)
  %cmp210 = icmp eq i32 0, %call209
  br i1 %cmp210, label %if.then212, label %if.end218

if.then212:                                       ; preds = %sw.bb207
  %167 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state213 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %167, i32 0, i32 19
  %168 = load i32, i32* %state213, align 4
  %cmp214 = icmp eq i32 %168, 0
  br i1 %cmp214, label %if.then216, label %if.else217

if.then216:                                       ; preds = %if.then212
  store i32 0, i32* %retval, align 4
  br label %return

if.else217:                                       ; preds = %if.then212
  br label %END

if.end218:                                        ; preds = %sw.bb207
  store i32 1, i32* %state_changed, align 4
  br label %sw.epilog235

sw.bb219:                                         ; preds = %sw.epilog
  %169 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %170 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary220 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %170, i32 0, i32 5
  %171 = load i8*, i8** %nested_boundary220, align 8
  %172 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nlen221 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %172, i32 0, i32 16
  %173 = load i64, i64* %nlen221, align 8
  %call222 = call i32 @process_value_to_boundary(%struct.MHD_PostProcessor* %169, i64* %ioff, i8* %171, i64 %173, i32 15, i32 3)
  %cmp223 = icmp eq i32 0, %call222
  br i1 %cmp223, label %if.then225, label %if.end231

if.then225:                                       ; preds = %sw.bb219
  %174 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state226 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %174, i32 0, i32 19
  %175 = load i32, i32* %state226, align 4
  %cmp227 = icmp eq i32 %175, 0
  br i1 %cmp227, label %if.then229, label %if.end230

if.then229:                                       ; preds = %if.then225
  store i32 0, i32* %retval, align 4
  br label %return

if.end230:                                        ; preds = %if.then225
  br label %sw.epilog235

if.end231:                                        ; preds = %sw.bb219
  br label %sw.epilog235

sw.bb232:                                         ; preds = %sw.epilog
  %176 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  call void @free_unmarked(%struct.MHD_PostProcessor* %176)
  %177 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state233 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %177, i32 0, i32 19
  store i32 13, i32* %state233, align 4
  store i32 1, i32* %state_changed, align 4
  br label %sw.epilog235

sw.bb234:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.default

sw.default:                                       ; preds = %sw.epilog, %sw.bb234
  br label %do.body

do.body:                                          ; preds = %sw.default
  %178 = load void (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i8*)** @mhd_panic, align 8
  %179 = load i8*, i8** @mhd_panic_cls, align 8
  call void %178(i8* %179, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 1246, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  unreachable

do.end:                                           ; No predecessors!
  br label %sw.epilog235

sw.epilog235:                                     ; preds = %do.end, %sw.bb232, %if.end231, %if.end230, %if.end218, %if.end205, %if.end179, %if.end159, %if.end151, %if.end150, %if.end137, %if.end131, %if.end106, %if.end95, %sw.bb81
  br label %AGAIN

AGAIN:                                            ; preds = %sw.epilog235, %if.then71, %if.then60, %if.end54, %if.then30, %if.then22
  %180 = load i64, i64* %ioff, align 8
  %cmp236 = icmp ugt i64 %180, 0
  br i1 %cmp236, label %if.then238, label %if.end244

if.then238:                                       ; preds = %AGAIN
  %181 = load i8*, i8** %buf, align 8
  %182 = load i8*, i8** %buf, align 8
  %183 = load i64, i64* %ioff, align 8
  %arrayidx239 = getelementptr inbounds i8, i8* %182, i64 %183
  %184 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos240 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %184, i32 0, i32 12
  %185 = load i64, i64* %buffer_pos240, align 8
  %186 = load i64, i64* %ioff, align 8
  %sub241 = sub i64 %185, %186
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %181, i8* align 1 %arrayidx239, i64 %sub241, i1 false)
  %187 = load i64, i64* %ioff, align 8
  %188 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos242 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %188, i32 0, i32 12
  %189 = load i64, i64* %buffer_pos242, align 8
  %sub243 = sub i64 %189, %187
  store i64 %sub243, i64* %buffer_pos242, align 8
  store i64 0, i64* %ioff, align 8
  store i32 1, i32* %state_changed, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.then238, %AGAIN
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %lor.end
  br label %END

END:                                              ; preds = %while.end, %if.else217, %if.end178, %if.else105, %if.end94
  %190 = load i64, i64* %ioff, align 8
  %cmp245 = icmp ne i64 0, %190
  br i1 %cmp245, label %if.then247, label %if.end253

if.then247:                                       ; preds = %END
  %191 = load i8*, i8** %buf, align 8
  %192 = load i8*, i8** %buf, align 8
  %193 = load i64, i64* %ioff, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %192, i64 %193
  %194 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos249 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %194, i32 0, i32 12
  %195 = load i64, i64* %buffer_pos249, align 8
  %196 = load i64, i64* %ioff, align 8
  %sub250 = sub i64 %195, %196
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %191, i8* align 1 %arrayidx248, i64 %sub250, i1 false)
  %197 = load i64, i64* %ioff, align 8
  %198 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos251 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %198, i32 0, i32 12
  %199 = load i64, i64* %buffer_pos251, align 8
  %sub252 = sub i64 %199, %197
  store i64 %sub252, i64* %buffer_pos251, align 8
  br label %if.end253

if.end253:                                        ; preds = %if.then247, %END
  %200 = load i64, i64* %poff, align 8
  %201 = load i64, i64* %post_data_len.addr, align 8
  %cmp254 = icmp ult i64 %200, %201
  br i1 %cmp254, label %if.then256, label %if.end258

if.then256:                                       ; preds = %if.end253
  %202 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state257 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %202, i32 0, i32 19
  store i32 0, i32* %state257, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end258:                                        ; preds = %if.end253
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end258, %if.then256, %if.then229, %if.then216, %if.then177, %if.then165, %if.then149, %if.then129, %if.then119, %if.then104, %if.then93, %sw.bb79, %sw.bb78, %if.end63, %if.then16
  %203 = load i32, i32* %retval, align 4
  ret i32 %203
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MHD_destroy_post_processor(%struct.MHD_PostProcessor* %pp) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca %struct.MHD_PostProcessor*, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i8*, align 4
  store %struct.MHD_PostProcessor* %pp, %struct.MHD_PostProcessor** %pp.addr, align 8
  %0 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %cmp = icmp eq %struct.MHD_PostProcessor* null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %1, i32 0, i32 19
  %2 = load i32, i32* %state, align 4
  %cmp1 = icmp eq i32 5, %2
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %call = call i8* @StaticCheckedToTStrAdaptor(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %4 = call i32 @c_TPtoO(i8* %call)
  %5 = inttoptr i32 %4 to i8*
  store i8* %5, i8** %tmp, align 4
  %6 = load i8*, i8** %tmp, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = zext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %call3 = call i32 @post_process_urlencoded(%struct.MHD_PostProcessor* %3, i8* %9, i64 1)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %10 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf_pos = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %10, i32 0, i32 13
  %11 = load i64, i64* %xbuf_pos, align 8
  %cmp5 = icmp ugt i64 %11, 0
  br i1 %cmp5, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %12 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state6 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %12, i32 0, i32 19
  %13 = load i32, i32* %state6, align 4
  %cmp7 = icmp ne i32 %13, 1
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state8 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %14, i32 0, i32 19
  %15 = load i32, i32* %state8, align 4
  %cmp9 = icmp ne i32 %15, 2
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true, %if.end4
  store i32 0, i32* %ret, align 4
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i32 1, i32* %ret, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %16 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %have = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %16, i32 0, i32 22
  store i32 0, i32* %have, align 8
  %17 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  call void @free_unmarked(%struct.MHD_PostProcessor* %17)
  %18 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %18, i32 0, i32 5
  %19 = load i8*, i8** %nested_boundary, align 8
  %cmp12 = icmp ne i8* null, %19
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %20 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %nested_boundary14 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %20, i32 0, i32 5
  %21 = load i8*, i8** %nested_boundary14, align 8
  call void @free(i8* %21) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %22 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %23 = bitcast %struct.MHD_PostProcessor* %22 to i8*
  call void @free(i8* %23) #8
  %24 = load i8*, i8** @GlobalTaintedAdaptorStr, align 4
  %25 = ptrtoint i8* %24 to i32
  %26 = zext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = ptrtoint i8* %27 to i32
  %29 = call i8* @c_fetch_pointer_from_offset(i32 %28)
  %30 = call i1 @c_isTaintedPointerToTaintedMem(i8* %29)
  br i1 %30, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end15
  call void @t_free(i8* %29)
  %31 = load i32, i32* %ret, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end15
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @StaticCheckedToTStrAdaptor(i8* %Ip) #0 {
entry:
  %Ip.addr = alloca i8*, align 8
  %Iplen = alloca i32, align 4
  %tmp = alloca i8*, align 4
  %tmp6 = alloca i8*, align 4
  store i8* %Ip, i8** %Ip.addr, align 8
  %0 = load i8*, i8** %Ip.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %Iplen, align 4
  %1 = load i8*, i8** @GlobalTaintedAdaptorStr, align 4
  %2 = load i32, i32* %Iplen, align 4
  %conv1 = sext i32 %2 to i64
  %3 = ptrtoint i8* %1 to i32
  %4 = zext i32 %3 to i64
  %5 = inttoptr i64 %4 to i8*
  %6 = ptrtoint i8* %5 to i32
  %7 = call i8* @c_fetch_pointer_from_offset(i32 %6)
  %8 = call i1 @c_isTaintedPointerToTaintedMem(i8* %7)
  br i1 %8, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call2 = call i8* @TNtStrRealloc(i8* %7, i64 %conv1)
  %9 = call i32 @c_TPtoO(i8* %call2)
  %10 = inttoptr i32 %9 to i8*
  store i8* %10, i8** %tmp, align 4
  %11 = load i8*, i8** %tmp, align 4
  %12 = ptrtoint i8* %11 to i32
  %13 = zext i32 %12 to i64
  store i64 %13, i64* bitcast (i8** @GlobalTaintedAdaptorStr to i64*), align 4
  %14 = load i8*, i8** @GlobalTaintedAdaptorStr, align 4
  %15 = load i8*, i8** %Ip.addr, align 8
  %16 = ptrtoint i8* %14 to i32
  %17 = zext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = ptrtoint i8* %18 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %call5 = call i8* @t_strcpy(i8* %20, i8* %15)
  %22 = call i32 @c_TPtoO(i8* %call5)
  %23 = inttoptr i32 %22 to i8*
  store i8* %23, i8** %tmp6, align 4
  %24 = load i8*, i8** %tmp6, align 4
  %25 = load i8*, i8** @GlobalTaintedAdaptorStr, align 4
  ret i8* %25

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_unmarked(%struct.MHD_PostProcessor* %pp) #0 {
entry:
  %pp.addr = alloca %struct.MHD_PostProcessor*, align 8
  store %struct.MHD_PostProcessor* %pp, %struct.MHD_PostProcessor** %pp.addr, align 8
  %0 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_name = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %0, i32 0, i32 6
  %1 = load i8*, i8** %content_name, align 8
  %2 = call i32 @c_TPtoO(i8* null)
  %3 = call i32 @c_TPtoO(i8* %1)
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %have = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %4, i32 0, i32 22
  %5 = load i32, i32* %have, align 8
  %and = and i32 %5, 1
  %cmp1 = icmp eq i32 0, %and
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_name2 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %6, i32 0, i32 6
  %7 = load i8*, i8** %content_name2, align 8
  call void @free(i8* %7) #8
  %8 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_name3 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %8, i32 0, i32 6
  store i8* null, i8** %content_name3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_type = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %9, i32 0, i32 7
  %10 = load i8*, i8** %content_type, align 8
  %11 = call i32 @c_TPtoO(i8* null)
  %12 = call i32 @c_TPtoO(i8* %10)
  %cmp4 = icmp ne i32 %11, %12
  br i1 %cmp4, label %land.lhs.true5, label %if.end12

land.lhs.true5:                                   ; preds = %if.end
  %13 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %have6 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %13, i32 0, i32 22
  %14 = load i32, i32* %have6, align 8
  %and7 = and i32 %14, 2
  %cmp8 = icmp eq i32 0, %and7
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %land.lhs.true5
  %15 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_type10 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %15, i32 0, i32 7
  %16 = load i8*, i8** %content_type10, align 8
  call void @free(i8* %16) #8
  %17 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_type11 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %17, i32 0, i32 7
  store i8* null, i8** %content_type11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true5, %if.end
  %18 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_filename = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %18, i32 0, i32 8
  %19 = load i8*, i8** %content_filename, align 8
  %20 = call i32 @c_TPtoO(i8* null)
  %21 = call i32 @c_TPtoO(i8* %19)
  %cmp13 = icmp ne i32 %20, %21
  br i1 %cmp13, label %land.lhs.true14, label %if.end21

land.lhs.true14:                                  ; preds = %if.end12
  %22 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %have15 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %22, i32 0, i32 22
  %23 = load i32, i32* %have15, align 8
  %and16 = and i32 %23, 4
  %cmp17 = icmp eq i32 0, %and16
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %land.lhs.true14
  %24 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_filename19 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %24, i32 0, i32 8
  %25 = load i8*, i8** %content_filename19, align 8
  call void @free(i8* %25) #8
  %26 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_filename20 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %26, i32 0, i32 8
  store i8* null, i8** %content_filename20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true14, %if.end12
  %27 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_transfer_encoding = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %27, i32 0, i32 9
  %28 = load i8*, i8** %content_transfer_encoding, align 8
  %29 = call i32 @c_TPtoO(i8* null)
  %30 = call i32 @c_TPtoO(i8* %28)
  %cmp22 = icmp ne i32 %29, %30
  br i1 %cmp22, label %land.lhs.true23, label %if.end30

land.lhs.true23:                                  ; preds = %if.end21
  %31 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %have24 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %31, i32 0, i32 22
  %32 = load i32, i32* %have24, align 8
  %and25 = and i32 %32, 8
  %cmp26 = icmp eq i32 0, %and25
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %land.lhs.true23
  %33 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_transfer_encoding28 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %33, i32 0, i32 9
  %34 = load i8*, i8** %content_transfer_encoding28, align 8
  call void @free(i8* %34) #8
  %35 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_transfer_encoding29 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %35, i32 0, i32 9
  store i8* null, i8** %content_transfer_encoding29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %land.lhs.true23, %if.end21
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

declare dso_local void @t_free(i8*) #1

declare i8* @c_fetch_pointer_from_offset(i32)

declare i1 @c_isTaintedPointerToTaintedMem(i8*)

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #4

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #5

declare dso_local i8* @t_memcpy(i8*, i8*, i64) #1

declare dso_local void @MHD_unescape_plus(i8*) #1

declare dso_local i64 @MHD_http_unescape(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_value(%struct.MHD_PostProcessor* %pp, i8* %value_start, i8* %value_end, i8* %last_escape) #0 {
entry:
  %pp.addr = alloca %struct.MHD_PostProcessor*, align 8
  %value_start.addr = alloca i8*, align 4
  %value_end.addr = alloca i8*, align 4
  %last_escape.addr = alloca i8*, align 4
  %xbuf = alloca [513 x i8], align 16
  %xoff = alloca i64, align 8
  %tmp = alloca i8*, align 4
  %delta = alloca i64, align 8
  %cut = alloca i8, align 1
  %clen = alloca i64, align 8
  %tmp33 = alloca i8*, align 4
  %tmp34 = alloca i8*, align 4
  store %struct.MHD_PostProcessor* %pp, %struct.MHD_PostProcessor** %pp.addr, align 8
  %0 = ptrtoint i8* %value_start to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %value_start.addr to i64*
  store i64 %1, i64* %2, align 4
  %3 = ptrtoint i8* %value_end to i32
  %4 = zext i32 %3 to i64
  %5 = bitcast i8** %value_end.addr to i64*
  store i64 %4, i64* %5, align 4
  %6 = ptrtoint i8* %last_escape to i32
  %7 = zext i32 %6 to i64
  %8 = bitcast i8** %last_escape.addr to i64*
  store i64 %7, i64* %8, align 4
  %9 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf_pos = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %9, i32 0, i32 13
  %10 = load i64, i64* %xbuf_pos, align 8
  %cmp = icmp ne i64 0, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 0
  %11 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf1 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %11, i32 0, i32 10
  %arraydecay2 = getelementptr inbounds [2 x i8], [2 x i8]* %xbuf1, i64 0, i64 0
  %12 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf_pos3 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %12, i32 0, i32 13
  %13 = load i64, i64* %xbuf_pos3, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arraydecay, i8* align 8 %arraydecay2, i64 %13, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf_pos4 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %14, i32 0, i32 13
  %15 = load i64, i64* %xbuf_pos4, align 8
  store i64 %15, i64* %xoff, align 8
  %16 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf_pos5 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %16, i32 0, i32 13
  store i64 0, i64* %xbuf_pos5, align 8
  %17 = load i8*, i8** %last_escape.addr, align 4
  %18 = ptrtoint i8* %17 to i32
  %19 = zext i32 %18 to i64
  %cmp6 = icmp ne i64 0, %19
  br i1 %cmp6, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %20 = load i8*, i8** %value_end.addr, align 4
  %21 = load i8*, i8** %last_escape.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp7 = icmp ult i64 %sub.ptr.sub, 2
  br i1 %cmp7, label %if.then8, label %if.end18

if.then8:                                         ; preds = %land.lhs.true
  %22 = load i8*, i8** %value_end.addr, align 4
  %23 = load i8*, i8** %last_escape.addr, align 4
  %sub.ptr.lhs.cast9 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i8* %23 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %24 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf_pos12 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %24, i32 0, i32 13
  store i64 %sub.ptr.sub11, i64* %xbuf_pos12, align 8
  %25 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf13 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %25, i32 0, i32 10
  %arraydecay14 = getelementptr inbounds [2 x i8], [2 x i8]* %xbuf13, i64 0, i64 0
  %26 = load i8*, i8** %last_escape.addr, align 4
  %27 = load i8*, i8** %value_end.addr, align 4
  %28 = load i8*, i8** %last_escape.addr, align 4
  %sub.ptr.lhs.cast15 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %28 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %29 = ptrtoint i8* %26 to i32
  %30 = zext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = ptrtoint i8* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.then8
  %call = call i8* @t_memcpy(i8* %arraydecay14, i8* %33, i64 %sub.ptr.sub17)
  %35 = call i32 @c_TPtoO(i8* %call)
  %36 = inttoptr i32 %35 to i8*
  store i8* %36, i8** %tmp, align 4
  %37 = load i8*, i8** %tmp, align 4
  %38 = load i8*, i8** %last_escape.addr, align 4
  %39 = ptrtoint i8* %38 to i32
  %40 = zext i32 %39 to i64
  %41 = bitcast i8** %value_end.addr to i64*
  store i64 %40, i64* %41, align 4
  br label %if.end18

_Dynamic_check.failed:                            ; preds = %if.then8
  call void @llvm.trap() #9
  unreachable

if.end18:                                         ; preds = %_Dynamic_check.succeeded, %land.lhs.true, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end110, %if.end18
  %42 = load i8*, i8** %value_start.addr, align 4
  %43 = load i8*, i8** %value_end.addr, align 4
  %44 = ptrtoint i8* %42 to i32
  %45 = zext i32 %44 to i64
  %46 = ptrtoint i8* %43 to i32
  %47 = zext i32 %46 to i64
  %cmp19 = icmp ne i64 %45, %47
  br i1 %cmp19, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %48 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_ikvi = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %48, i32 0, i32 17
  %49 = load i8, i8* %must_ikvi, align 8
  %tobool = trunc i8 %49 to i1
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %50 = load i64, i64* %xoff, align 8
  %cmp20 = icmp ugt i64 %50, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %51 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp20, %lor.rhs ]
  br i1 %51, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %52 = load i8*, i8** %value_end.addr, align 4
  %53 = load i8*, i8** %value_start.addr, align 4
  %sub.ptr.lhs.cast21 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %53 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  store i64 %sub.ptr.sub23, i64* %delta, align 8
  store i8 0, i8* %cut, align 1
  store i64 0, i64* %clen, align 8
  %54 = load i64, i64* %delta, align 8
  %55 = load i64, i64* %xoff, align 8
  %sub = sub i64 512, %55
  %cmp24 = icmp ugt i64 %54, %sub
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %while.body
  %56 = load i64, i64* %xoff, align 8
  %sub26 = sub i64 512, %56
  store i64 %sub26, i64* %delta, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %while.body
  %57 = load i64, i64* %delta, align 8
  %cmp28 = icmp ne i64 0, %57
  br i1 %cmp28, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.end27
  %58 = load i64, i64* %xoff, align 8
  %arrayidx = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 %58
  %59 = load i8*, i8** %value_start.addr, align 4
  %60 = load i64, i64* %delta, align 8
  %61 = ptrtoint i8* %59 to i32
  %62 = zext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = ptrtoint i8* %63 to i32
  %65 = call i8* @c_fetch_pointer_from_offset(i32 %64)
  %66 = call i1 @c_isTaintedPointerToTaintedMem(i8* %65)
  br i1 %66, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %if.then29
  %call32 = call i8* @t_memcpy(i8* %arrayidx, i8* %65, i64 %60)
  %67 = call i32 @c_TPtoO(i8* %call32)
  %68 = inttoptr i32 %67 to i8*
  store i8* %68, i8** %tmp33, align 4
  %69 = load i8*, i8** %tmp33, align 4
  %70 = load i64, i64* %delta, align 8
  %71 = load i64, i64* %xoff, align 8
  %add = add i64 %71, %70
  store i64 %add, i64* %xoff, align 8
  %72 = load i64, i64* %delta, align 8
  %73 = load i8*, i8** %value_start.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %add.ptr, i8** %tmp34, align 4
  %74 = load i8*, i8** %tmp34, align 4
  %75 = ptrtoint i8* %74 to i32
  %76 = zext i32 %75 to i64
  %77 = bitcast i8** %value_start.addr to i64*
  store i64 %76, i64* %77, align 4
  br label %if.end35

_Dynamic_check.failed30:                          ; preds = %if.then29
  call void @llvm.trap() #9
  unreachable

if.end35:                                         ; preds = %_Dynamic_check.succeeded31, %if.end27
  %78 = load i64, i64* %xoff, align 8
  %cmp36 = icmp ugt i64 %78, 0
  br i1 %cmp36, label %land.lhs.true37, label %if.else51

land.lhs.true37:                                  ; preds = %if.end35
  %79 = load i64, i64* %xoff, align 8
  %sub38 = sub i64 %79, 1
  %arrayidx39 = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 %sub38
  %80 = load i8, i8* %arrayidx39, align 1
  %conv = sext i8 %80 to i32
  %cmp40 = icmp eq i32 37, %conv
  br i1 %cmp40, label %if.then42, label %if.else51

if.then42:                                        ; preds = %land.lhs.true37
  %81 = load i64, i64* %xoff, align 8
  %cmp43 = icmp ne i64 %81, 512
  %frombool = zext i1 %cmp43 to i8
  store i8 %frombool, i8* %cut, align 1
  %82 = load i64, i64* %xoff, align 8
  %dec = add i64 %82, -1
  store i64 %dec, i64* %xoff, align 8
  %83 = load i8, i8* %cut, align 1
  %tobool45 = trunc i8 %83 to i1
  br i1 %tobool45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then42
  %84 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf47 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %84, i32 0, i32 10
  %arrayidx48 = getelementptr inbounds [2 x i8], [2 x i8]* %xbuf47, i64 0, i64 0
  store i8 37, i8* %arrayidx48, align 8
  %85 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf_pos49 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %85, i32 0, i32 13
  store i64 1, i64* %xbuf_pos49, align 8
  br label %if.end50

if.else:                                          ; preds = %if.then42
  %86 = load i64, i64* %xoff, align 8
  store i64 %86, i64* %delta, align 8
  store i64 1, i64* %clen, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then46
  br label %if.end74

if.else51:                                        ; preds = %land.lhs.true37, %if.end35
  %87 = load i64, i64* %xoff, align 8
  %cmp52 = icmp ugt i64 %87, 1
  br i1 %cmp52, label %land.lhs.true54, label %if.end73

land.lhs.true54:                                  ; preds = %if.else51
  %88 = load i64, i64* %xoff, align 8
  %sub55 = sub i64 %88, 2
  %arrayidx56 = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 %sub55
  %89 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %89 to i32
  %cmp58 = icmp eq i32 37, %conv57
  br i1 %cmp58, label %if.then60, label %if.end73

if.then60:                                        ; preds = %land.lhs.true54
  %90 = load i64, i64* %xoff, align 8
  %cmp61 = icmp ne i64 %90, 512
  %frombool63 = zext i1 %cmp61 to i8
  store i8 %frombool63, i8* %cut, align 1
  %91 = load i64, i64* %xoff, align 8
  %sub64 = sub i64 %91, 2
  store i64 %sub64, i64* %xoff, align 8
  %92 = load i8, i8* %cut, align 1
  %tobool65 = trunc i8 %92 to i1
  br i1 %tobool65, label %if.then66, label %if.else71

if.then66:                                        ; preds = %if.then60
  %93 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf67 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %93, i32 0, i32 10
  %arraydecay68 = getelementptr inbounds [2 x i8], [2 x i8]* %xbuf67, i64 0, i64 0
  %94 = load i64, i64* %xoff, align 8
  %arrayidx69 = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 %94
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %arraydecay68, i8* align 1 %arrayidx69, i64 2, i1 false)
  %95 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %xbuf_pos70 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %95, i32 0, i32 13
  store i64 2, i64* %xbuf_pos70, align 8
  br label %if.end72

if.else71:                                        ; preds = %if.then60
  %96 = load i64, i64* %xoff, align 8
  store i64 %96, i64* %delta, align 8
  store i64 2, i64* %clen, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then66
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %land.lhs.true54, %if.else51
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end50
  %97 = load i64, i64* %xoff, align 8
  %arrayidx75 = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 %97
  store i8 0, i8* %arrayidx75, align 1
  %98 = load i64, i64* %xoff, align 8
  %cmp76 = icmp ne i64 0, %98
  br i1 %cmp76, label %if.then78, label %if.end82

if.then78:                                        ; preds = %if.end74
  %arraydecay79 = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 0
  call void @MHD_unescape_plus(i8* %arraydecay79)
  %arraydecay80 = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 0
  %call81 = call i64 @MHD_http_unescape(i8* %arraydecay80)
  store i64 %call81, i64* %xoff, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.end74
  %99 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_ikvi83 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %99, i32 0, i32 17
  %100 = load i8, i8* %must_ikvi83, align 8
  %tobool84 = trunc i8 %100 to i1
  br i1 %tobool84, label %if.then89, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.end82
  %101 = load i64, i64* %xoff, align 8
  %cmp87 = icmp ne i64 0, %101
  br i1 %cmp87, label %if.then89, label %if.end98

if.then89:                                        ; preds = %lor.lhs.false86, %if.end82
  %102 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_ikvi90 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %102, i32 0, i32 17
  store i8 0, i8* %must_ikvi90, align 8
  %103 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %ikvi = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %103, i32 0, i32 1
  %104 = load i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)*, i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)** %ikvi, align 8
  %105 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %cls = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %105, i32 0, i32 2
  %106 = load i8*, i8** %cls, align 8
  %107 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %107, i64 1
  %108 = bitcast %struct.MHD_PostProcessor* %arrayidx91 to i8*
  %arraydecay92 = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 0
  %109 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %value_offset = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %109, i32 0, i32 14
  %110 = load i64, i64* %value_offset, align 8
  %111 = load i64, i64* %xoff, align 8
  %call93 = call i32 %104(i8* %106, i32 4, i8* %108, i8* null, i8* null, i8* null, i8* %arraydecay92, i64 %110, i64 %111)
  %cmp94 = icmp eq i32 0, %call93
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.then89
  %112 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %112, i32 0, i32 19
  store i32 0, i32* %state, align 4
  br label %while.end

if.end97:                                         ; preds = %if.then89
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %lor.lhs.false86
  %113 = load i64, i64* %xoff, align 8
  %114 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %value_offset99 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %114, i32 0, i32 14
  %115 = load i64, i64* %value_offset99, align 8
  %add100 = add i64 %115, %113
  store i64 %add100, i64* %value_offset99, align 8
  %116 = load i8, i8* %cut, align 1
  %tobool101 = trunc i8 %116 to i1
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end98
  br label %while.end

if.end103:                                        ; preds = %if.end98
  %117 = load i64, i64* %clen, align 8
  %cmp104 = icmp ne i64 0, %117
  br i1 %cmp104, label %if.then106, label %if.end110

if.then106:                                       ; preds = %if.end103
  %118 = load i64, i64* %delta, align 8
  %arrayidx107 = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 %118
  store i8 37, i8* %arrayidx107, align 1
  %arraydecay108 = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 0
  %119 = load i64, i64* %delta, align 8
  %arrayidx109 = getelementptr inbounds [513 x i8], [513 x i8]* %xbuf, i64 0, i64 %119
  %120 = load i64, i64* %clen, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 16 %arraydecay108, i8* align 1 %arrayidx109, i64 %120, i1 false)
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.end103
  %121 = load i64, i64* %clen, align 8
  store i64 %121, i64* %xoff, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.then96, %if.then102, %lor.end
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_boundary(%struct.MHD_PostProcessor* %pp, i8* %boundary, i64 %blen, i64* %ioffptr, i32 %next_state, i32 %next_dash_state) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca %struct.MHD_PostProcessor*, align 8
  %boundary.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %ioffptr.addr = alloca i64*, align 8
  %next_state.addr = alloca i32, align 4
  %next_dash_state.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  %dash = alloca i8*, align 8
  store %struct.MHD_PostProcessor* %pp, %struct.MHD_PostProcessor** %pp.addr, align 8
  store i8* %boundary, i8** %boundary.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i64* %ioffptr, i64** %ioffptr.addr, align 8
  store i32 %next_state, i32* %next_state.addr, align 4
  store i32 %next_dash_state, i32* %next_dash_state.addr, align 4
  %0 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %0, i64 1
  %1 = bitcast %struct.MHD_PostProcessor* %arrayidx to i8*
  store i8* %1, i8** %buf, align 8
  %2 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %2, i32 0, i32 12
  %3 = load i64, i64* %buffer_pos, align 8
  %4 = load i64, i64* %blen.addr, align 8
  %add = add i64 2, %4
  %cmp = icmp ult i64 %3, %add
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %5 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos1 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %5, i32 0, i32 12
  %6 = load i64, i64* %buffer_pos1, align 8
  %7 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_size = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %7, i32 0, i32 11
  %8 = load i64, i64* %buffer_size, align 8
  %cmp2 = icmp eq i64 %6, %8
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %9 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %9, i32 0, i32 19
  store i32 0, i32* %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  %10 = load i8*, i8** %buf, align 8
  %call = call i32 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %10, i64 2) #7
  %cmp5 = icmp ne i32 0, %call
  br i1 %cmp5, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %11 = load i8*, i8** %buf, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8*, i8** %boundary.addr, align 8
  %13 = load i64, i64* %blen.addr, align 8
  %call7 = call i32 @memcmp(i8* %arrayidx6, i8* %12, i64 %13) #7
  %cmp8 = icmp ne i32 0, %call7
  br i1 %cmp8, label %if.then9, label %if.end28

if.then9:                                         ; preds = %lor.lhs.false, %if.end4
  %14 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state10 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %14, i32 0, i32 19
  %15 = load i32, i32* %state10, align 4
  %cmp11 = icmp ne i32 %15, 2
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  %16 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state13 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %16, i32 0, i32 19
  store i32 0, i32* %state13, align 4
  br label %if.end27

if.else:                                          ; preds = %if.then9
  %17 = load i8*, i8** %buf, align 8
  %18 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos14 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %18, i32 0, i32 12
  %19 = load i64, i64* %buffer_pos14, align 8
  %call15 = call i8* @memchr(i8* %17, i32 45, i64 %19) #7
  store i8* %call15, i8** %dash, align 8
  %20 = load i8*, i8** %dash, align 8
  %cmp16 = icmp eq i8* null, %20
  br i1 %cmp16, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.else
  %21 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos18 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %21, i32 0, i32 12
  %22 = load i64, i64* %buffer_pos18, align 8
  %23 = load i64*, i64** %ioffptr.addr, align 8
  %24 = load i64, i64* %23, align 8
  %add19 = add i64 %24, %22
  store i64 %add19, i64* %23, align 8
  br label %if.end26

if.else20:                                        ; preds = %if.else
  %25 = load i8*, i8** %dash, align 8
  %26 = load i8*, i8** %buf, align 8
  %cmp21 = icmp eq i8* %25, %26
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else20
  %27 = load i64*, i64** %ioffptr.addr, align 8
  %28 = load i64, i64* %27, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %27, align 8
  br label %if.end25

if.else23:                                        ; preds = %if.else20
  %29 = load i8*, i8** %dash, align 8
  %30 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = load i64*, i64** %ioffptr.addr, align 8
  %32 = load i64, i64* %31, align 8
  %add24 = add i64 %32, %sub.ptr.sub
  store i64 %add24, i64* %31, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then22
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then17
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then12
  store i32 0, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %lor.lhs.false
  %33 = load i64, i64* %blen.addr, align 8
  %add29 = add i64 2, %33
  %34 = load i64*, i64** %ioffptr.addr, align 8
  %35 = load i64, i64* %34, align 8
  %add30 = add i64 %35, %add29
  store i64 %add30, i64* %34, align 8
  %36 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %36, i32 0, i32 20
  store i32 3, i32* %skip_rn, align 8
  %37 = load i32, i32* %next_state.addr, align 4
  %38 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state31 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %38, i32 0, i32 19
  store i32 %37, i32* %state31, align 4
  %39 = load i32, i32* %next_dash_state.addr, align 4
  %40 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %dash_state = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %40, i32 0, i32 21
  store i32 %39, i32* %dash_state, align 4
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.end27, %if.end
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_multipart_headers(%struct.MHD_PostProcessor* %pp, i64* %ioffptr, i32 %next_state) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca %struct.MHD_PostProcessor*, align 8
  %ioffptr.addr = alloca i64*, align 8
  %next_state.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  %newline = alloca i64, align 8
  store %struct.MHD_PostProcessor* %pp, %struct.MHD_PostProcessor** %pp.addr, align 8
  store i64* %ioffptr, i64** %ioffptr.addr, align 8
  store i32 %next_state, i32* %next_state.addr, align 4
  %0 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %0, i64 1
  %1 = bitcast %struct.MHD_PostProcessor* %arrayidx to i8*
  store i8* %1, i8** %buf, align 8
  store i64 0, i64* %newline, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %newline, align 8
  %3 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %3, i32 0, i32 12
  %4 = load i64, i64* %buffer_pos, align 8
  %cmp = icmp ult i64 %2, %4
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %5 = load i8*, i8** %buf, align 8
  %6 = load i64, i64* %newline, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp ne i32 %conv, 13
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i8*, i8** %buf, align 8
  %9 = load i64, i64* %newline, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp ne i32 %conv5, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i64, i64* %newline, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %newline, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %13 = load i64, i64* %newline, align 8
  %14 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_size = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %14, i32 0, i32 11
  %15 = load i64, i64* %buffer_size, align 8
  %cmp8 = icmp eq i64 %13, %15
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %16 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %16, i32 0, i32 19
  store i32 0, i32* %state, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %17 = load i64, i64* %newline, align 8
  %18 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos10 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %18, i32 0, i32 12
  %19 = load i64, i64* %buffer_pos10, align 8
  %cmp11 = icmp eq i64 %17, %19
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %20 = load i64, i64* %newline, align 8
  %cmp15 = icmp eq i64 0, %20
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %21 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %21, i32 0, i32 20
  store i32 2, i32* %skip_rn, align 8
  %22 = load i32, i32* %next_state.addr, align 4
  %23 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state18 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %23, i32 0, i32 19
  store i32 %22, i32* %state18, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end14
  %24 = load i8*, i8** %buf, align 8
  %25 = load i64, i64* %newline, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i64 %25
  %26 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %26 to i32
  %cmp22 = icmp eq i32 %conv21, 13
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end19
  %27 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn25 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %27, i32 0, i32 20
  store i32 1, i32* %skip_rn25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end19
  %28 = load i8*, i8** %buf, align 8
  %29 = load i64, i64* %newline, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 0, i8* %arrayidx27, align 1
  %30 = load i8*, i8** %buf, align 8
  %call = call i32 @MHD_str_equal_caseless_n_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %30, i64 21)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  %31 = load i8*, i8** %buf, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %31, i64 21
  %32 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_name = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %32, i32 0, i32 6
  call void @try_get_value(i8* %arrayidx29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %content_name)
  %33 = load i8*, i8** %buf, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %33, i64 21
  %34 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_filename = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %34, i32 0, i32 8
  call void @try_get_value(i8* %arrayidx30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %content_filename)
  br label %if.end33

if.else:                                          ; preds = %if.end26
  %35 = load i8*, i8** %buf, align 8
  %36 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_type = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %36, i32 0, i32 7
  %call31 = call i32 @try_match_header(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i64 14, i8* %35, i8** %content_type)
  %37 = load i8*, i8** %buf, align 8
  %38 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_transfer_encoding = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %38, i32 0, i32 9
  %call32 = call i32 @try_match_header(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i64 27, i8* %37, i8** %content_transfer_encoding)
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then28
  %39 = load i64, i64* %newline, align 8
  %add = add i64 %39, 1
  %40 = load i64*, i64** %ioffptr.addr, align 8
  %41 = load i64, i64* %40, align 8
  %add34 = add i64 %41, %add
  store i64 %add34, i64* %40, align 8
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then17, %if.then13, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_value_to_boundary(%struct.MHD_PostProcessor* %pp, i64* %ioffptr, i8* %boundary, i64 %blen, i32 %next_state, i32 %next_dash_state) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca %struct.MHD_PostProcessor*, align 8
  %ioffptr.addr = alloca i64*, align 8
  %boundary.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %next_state.addr = alloca i32, align 4
  %next_dash_state.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  %newline = alloca i64, align 8
  %r = alloca i8*, align 8
  store %struct.MHD_PostProcessor* %pp, %struct.MHD_PostProcessor** %pp.addr, align 8
  store i64* %ioffptr, i64** %ioffptr.addr, align 8
  store i8* %boundary, i8** %boundary.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
  store i32 %next_state, i32* %next_state.addr, align 4
  store i32 %next_dash_state, i32* %next_dash_state.addr, align 4
  %0 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %0, i64 1
  %1 = bitcast %struct.MHD_PostProcessor* %arrayidx to i8*
  store i8* %1, i8** %buf, align 8
  store i64 0, i64* %newline, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.then23
  br label %while.cond1

while.cond1:                                      ; preds = %if.end13, %while.body
  %2 = load i64, i64* %newline, align 8
  %add = add i64 %2, 4
  %3 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %3, i32 0, i32 12
  %4 = load i64, i64* %buffer_pos, align 8
  %cmp = icmp ult i64 %add, %4
  br i1 %cmp, label %while.body2, label %while.end

while.body2:                                      ; preds = %while.cond1
  %5 = load i8*, i8** %buf, align 8
  %6 = load i64, i64* %newline, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos4 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %7, i32 0, i32 12
  %8 = load i64, i64* %buffer_pos4, align 8
  %9 = load i64, i64* %newline, align 8
  %sub = sub i64 %8, %9
  %sub5 = sub i64 %sub, 4
  %call = call i8* @memchr(i8* %arrayidx3, i32 13, i64 %sub5) #7
  store i8* %call, i8** %r, align 8
  %10 = load i8*, i8** %r, align 8
  %cmp6 = icmp eq i8* null, %10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body2
  %11 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos7 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %11, i32 0, i32 12
  %12 = load i64, i64* %buffer_pos7, align 8
  %sub8 = sub i64 %12, 4
  store i64 %sub8, i64* %newline, align 8
  br label %while.end

if.end:                                           ; preds = %while.body2
  %13 = load i8*, i8** %r, align 8
  %14 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %newline, align 8
  %15 = load i8*, i8** %buf, align 8
  %16 = load i64, i64* %newline, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %15, i64 %16
  %call10 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %arrayidx9, i64 4) #7
  %cmp11 = icmp eq i32 0, %call10
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  br label %while.end

if.end13:                                         ; preds = %if.end
  %17 = load i64, i64* %newline, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %newline, align 8
  br label %while.cond1, !llvm.loop !7

while.end:                                        ; preds = %if.then12, %if.then, %while.cond1
  %18 = load i64, i64* %newline, align 8
  %19 = load i64, i64* %blen.addr, align 8
  %add14 = add i64 %18, %19
  %add15 = add i64 %add14, 4
  %20 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos16 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %20, i32 0, i32 12
  %21 = load i64, i64* %buffer_pos16, align 8
  %cmp17 = icmp ule i64 %add15, %21
  br i1 %cmp17, label %if.then18, label %if.else28

if.then18:                                        ; preds = %while.end
  %22 = load i8*, i8** %buf, align 8
  %23 = load i64, i64* %newline, align 8
  %add19 = add i64 %23, 4
  %arrayidx20 = getelementptr inbounds i8, i8* %22, i64 %add19
  %24 = load i8*, i8** %boundary.addr, align 8
  %25 = load i64, i64* %blen.addr, align 8
  %call21 = call i32 @memcmp(i8* %arrayidx20, i8* %24, i64 %25) #7
  %cmp22 = icmp ne i32 0, %call21
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then18
  %26 = load i64, i64* %newline, align 8
  %add24 = add i64 %26, 4
  store i64 %add24, i64* %newline, align 8
  br label %while.body

if.else:                                          ; preds = %if.then18
  %27 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %skip_rn = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %27, i32 0, i32 20
  store i32 3, i32* %skip_rn, align 8
  %28 = load i32, i32* %next_state.addr, align 4
  %29 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %29, i32 0, i32 19
  store i32 %28, i32* %state, align 4
  %30 = load i32, i32* %next_dash_state.addr, align 4
  %31 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %dash_state = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %31, i32 0, i32 21
  store i32 %30, i32* %dash_state, align 4
  %32 = load i64, i64* %blen.addr, align 8
  %add25 = add i64 %32, 4
  %33 = load i64*, i64** %ioffptr.addr, align 8
  %34 = load i64, i64* %33, align 8
  %add26 = add i64 %34, %add25
  store i64 %add26, i64* %33, align 8
  %35 = load i8*, i8** %buf, align 8
  %36 = load i64, i64* %newline, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 0, i8* %arrayidx27, align 1
  br label %while.end35

if.else28:                                        ; preds = %while.end
  %37 = load i64, i64* %newline, align 8
  %cmp29 = icmp eq i64 0, %37
  br i1 %cmp29, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.else28
  %38 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_pos30 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %38, i32 0, i32 12
  %39 = load i64, i64* %buffer_pos30, align 8
  %40 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %buffer_size = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %40, i32 0, i32 11
  %41 = load i64, i64* %buffer_size, align 8
  %cmp31 = icmp eq i64 %39, %41
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %land.lhs.true
  %42 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state33 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %42, i32 0, i32 19
  store i32 0, i32* %state33, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %land.lhs.true, %if.else28
  br label %while.end35

while.end35:                                      ; preds = %if.end34, %if.else
  %43 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_ikvi = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %43, i32 0, i32 17
  %44 = load i8, i8* %must_ikvi, align 8
  %tobool = trunc i8 %44 to i1
  br i1 %tobool, label %land.lhs.true37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end35
  %45 = load i64, i64* %newline, align 8
  %cmp36 = icmp ne i64 0, %45
  br i1 %cmp36, label %land.lhs.true37, label %if.end42

land.lhs.true37:                                  ; preds = %lor.lhs.false, %while.end35
  %46 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %ikvi = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %46, i32 0, i32 1
  %47 = load i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)*, i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)** %ikvi, align 8
  %48 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %cls = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %48, i32 0, i32 2
  %49 = load i8*, i8** %cls, align 8
  %50 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_name = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %50, i32 0, i32 6
  %51 = load i8*, i8** %content_name, align 8
  %52 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_filename = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %52, i32 0, i32 8
  %53 = load i8*, i8** %content_filename, align 8
  %54 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_type = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %54, i32 0, i32 7
  %55 = load i8*, i8** %content_type, align 8
  %56 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %content_transfer_encoding = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %56, i32 0, i32 9
  %57 = load i8*, i8** %content_transfer_encoding, align 8
  %58 = load i8*, i8** %buf, align 8
  %59 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %value_offset = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %59, i32 0, i32 14
  %60 = load i64, i64* %value_offset, align 8
  %61 = load i64, i64* %newline, align 8
  %call38 = call i32 %47(i8* %49, i32 4, i8* %51, i8* %53, i8* %55, i8* %57, i8* %58, i64 %60, i64 %61)
  %cmp39 = icmp eq i32 0, %call38
  br i1 %cmp39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %land.lhs.true37
  %62 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %state41 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %62, i32 0, i32 19
  store i32 0, i32* %state41, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %land.lhs.true37, %lor.lhs.false
  %63 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %must_ikvi43 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %63, i32 0, i32 17
  store i8 0, i8* %must_ikvi43, align 8
  %64 = load i64, i64* %newline, align 8
  %65 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp.addr, align 8
  %value_offset44 = getelementptr inbounds %struct.MHD_PostProcessor, %struct.MHD_PostProcessor* %65, i32 0, i32 14
  %66 = load i64, i64* %value_offset44, align 8
  %add45 = add i64 %66, %64
  store i64 %add45, i64* %value_offset44, align 8
  %67 = load i64, i64* %newline, align 8
  %68 = load i64*, i64** %ioffptr.addr, align 8
  %69 = load i64, i64* %68, align 8
  %add46 = add i64 %69, %67
  store i64 %add46, i64* %68, align 8
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.then40, %if.then32
  %70 = load i32, i32* %retval, align 4
  ret i32 %70
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_get_value(i8* %buf, i8* %key, i8** %destination) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %destination.addr = alloca i8**, align 8
  %spos = alloca i8*, align 8
  %bpos = alloca i8*, align 8
  %endv = alloca i8*, align 8
  %klen = alloca i64, align 8
  %vlen = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8** %destination, i8*** %destination.addr, align 8
  %0 = load i8**, i8*** %destination.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp ne i8* null, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8
  store i8* %2, i8** %bpos, align 8
  %3 = load i8*, i8** %key.addr, align 8
  %call = call i64 @strlen(i8* %3) #7
  store i64 %call, i64* %klen, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then11, %if.end
  %4 = load i8*, i8** %bpos, align 8
  %5 = load i8*, i8** %key.addr, align 8
  %call1 = call i8* @strstr(i8* %4, i8* %5) #7
  store i8* %call1, i8** %spos, align 8
  %cmp2 = icmp ne i8* null, %call1
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %spos, align 8
  %7 = load i64, i64* %klen, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp3 = icmp ne i32 %conv, 61
  br i1 %cmp3, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %9 = load i8*, i8** %spos, align 8
  %10 = load i8*, i8** %buf.addr, align 8
  %cmp5 = icmp ne i8* %9, %10
  br i1 %cmp5, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i8*, i8** %spos, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 -1
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp ne i32 %conv8, 32
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true, %while.body
  %13 = load i8*, i8** %spos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %add.ptr, i8** %bpos, align 8
  br label %while.cond, !llvm.loop !8

if.end12:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load i8*, i8** %spos, align 8
  %15 = load i64, i64* %klen, align 8
  %add = add i64 %15, 1
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 %add
  %16 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %16 to i32
  %cmp15 = icmp ne i32 %conv14, 34
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  br label %while.end

if.end18:                                         ; preds = %if.end12
  %17 = load i8*, i8** %spos, align 8
  %18 = load i64, i64* %klen, align 8
  %add19 = add i64 %18, 2
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 %add19
  %call21 = call i8* @strchr(i8* %arrayidx20, i32 34) #7
  store i8* %call21, i8** %endv, align 8
  %cmp22 = icmp eq i8* null, %call21
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  br label %while.end

if.end25:                                         ; preds = %if.end18
  %19 = load i8*, i8** %endv, align 8
  %20 = load i8*, i8** %spos, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %21 = load i64, i64* %klen, align 8
  %sub = sub i64 %sub.ptr.sub, %21
  %sub26 = sub i64 %sub, 1
  store i64 %sub26, i64* %vlen, align 8
  %22 = load i64, i64* %vlen, align 8
  %call27 = call noalias i8* @malloc(i64 %22) #8
  %23 = load i8**, i8*** %destination.addr, align 8
  store i8* %call27, i8** %23, align 8
  %24 = load i8**, i8*** %destination.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %cmp28 = icmp eq i8* null, %25
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  br label %while.end

if.end31:                                         ; preds = %if.end25
  %26 = load i8**, i8*** %destination.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %vlen, align 8
  %sub32 = sub i64 %28, 1
  %arrayidx33 = getelementptr inbounds i8, i8* %27, i64 %sub32
  store i8 0, i8* %arrayidx33, align 1
  %29 = load i8**, i8*** %destination.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %spos, align 8
  %32 = load i64, i64* %klen, align 8
  %add34 = add i64 %32, 2
  %arrayidx35 = getelementptr inbounds i8, i8* %31, i64 %add34
  %33 = load i64, i64* %vlen, align 8
  %sub36 = sub i64 %33, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 %arrayidx35, i64 %sub36, i1 false)
  br label %while.end

while.end:                                        ; preds = %if.then, %if.then17, %if.then24, %if.then30, %if.end31, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_match_header(i8* %prefix, i64 %prefix_len, i8* %line, i8** %suffix) #0 {
entry:
  %retval = alloca i32, align 4
  %prefix.addr = alloca i8*, align 8
  %prefix_len.addr = alloca i64, align 8
  %line.addr = alloca i8*, align 8
  %suffix.addr = alloca i8**, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i64 %prefix_len, i64* %prefix_len.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8** %suffix, i8*** %suffix.addr, align 8
  %0 = load i8**, i8*** %suffix.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp ne i8* null, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.end
  %2 = load i8*, i8** %line.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 0, %conv
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %prefix.addr, align 8
  %5 = load i8*, i8** %line.addr, align 8
  %6 = load i64, i64* %prefix_len.addr, align 8
  %call = call i32 @MHD_str_equal_caseless_n_(i8* %4, i8* %5, i64 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then3, label %if.end5

if.then3:                                         ; preds = %while.body
  %7 = load i8*, i8** %line.addr, align 8
  %8 = load i64, i64* %prefix_len.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8
  %call4 = call noalias i8* @strdup(i8* %arrayidx) #8
  %9 = load i8**, i8*** %suffix.addr, align 8
  store i8* %call4, i8** %9, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %while.body
  %10 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @TNtStrRealloc(i8* %old_mem, i64 %sz) #0 {
entry:
  %retval = alloca i8*, align 8
  %old_mem.addr = alloca i8*, align 4
  %sz.addr = alloca i64, align 8
  %p = alloca i8*, align 4
  %tmp = alloca i8*, align 4
  %0 = ptrtoint i8* %old_mem to i32
  %1 = zext i32 %0 to i64
  %2 = bitcast i8** %old_mem.addr to i64*
  store i64 %1, i64* %2, align 4
  store i64 %sz, i64* %sz.addr, align 8
  %3 = load i64, i64* %sz.addr, align 8
  %cmp = icmp uge i64 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %old_mem.addr, align 4
  %5 = load i64, i64* %sz.addr, align 8
  %add = add i64 %5, 1
  %6 = ptrtoint i8* %4 to i32
  %7 = zext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %call = call i8* @t_realloc(i8* %10, i64 %add)
  %12 = call i32 @c_TPtoO(i8* %call)
  %13 = inttoptr i32 %12 to i8*
  store i8* %13, i8** %tmp, align 4
  %14 = load i8*, i8** %tmp, align 4
  %15 = ptrtoint i8* %14 to i32
  %16 = zext i32 %15 to i64
  %17 = bitcast i8** %p to i64*
  store i64 %16, i64* %17, align 4
  %18 = load i8*, i8** %p, align 4
  %19 = ptrtoint i8* %18 to i32
  %20 = zext i32 %19 to i64
  %cmp1 = icmp ne i64 %20, 0
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %_Dynamic_check.succeeded
  %21 = load i8*, i8** %p, align 4
  %22 = load i64, i64* %sz.addr, align 8
  %23 = ptrtoint i8* %21 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %if.then2
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %22
  store i8 0, i8* %arrayidx, align 4
  br label %if.end5

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %if.then2
  call void @llvm.trap() #9
  unreachable

if.end5:                                          ; preds = %_Dynamic_check.succeeded4, %_Dynamic_check.succeeded
  %26 = load i8*, i8** %p, align 4
  store i8* %26, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %27 = load i8*, i8** %retval, align 8
  ret i8* %27
}

declare dso_local i8* @t_strcpy(i8*, i8*) #1

declare dso_local i8* @t_realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (https://github.com/arunkumarbhattar/CheckCBox_Compiler.git 69ad1c4a4eb9a26a6420f839c4a03281003c9b84)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
