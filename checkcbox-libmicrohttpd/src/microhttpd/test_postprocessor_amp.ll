; ModuleID = 'test_postprocessor_amp.c'
source_filename = "test_postprocessor_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.MHD_PostProcessor = type opaque

@.str = private unnamed_addr constant [3081 x i8] c"a=xx+xx+xxx+xxxxx+xxxx+xxxxxxxx+xxx+xxxxxx+xxx+xxx+xxxxxxx+xxxxx%0A+++++++xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx%0A+++++++--%3E%0A++++++++++++++%3Cxxxxx+xxxxx%3D%22xxx%25%22%3E%0A+++++++++++%3Cxx%3E%0A+++++++++++++++%3Cxx+xxxxxxx%3D%22x%22+xxxxx%3D%22xxxxx%22%3E%0A+++++++++++++++++++%3Cxxxxx+xxxxx%3D%22xxx%25%22%3E%0A+++++++++++++++++++++++%3Cxx%3E%0A+++++++++++++++++++++++++++%3Cxx+xxxxx%3D%22xxxx%22%3E%0A+++++++++++++++++++++++++++++++%3Cx+xxxxx%3D%22xxxx-xxxxx%3Axxxxx%22%3Exxxxx%3A%3C%2Fx%3E%0A%0A+++++++++++++++++++++++++++++++%3Cx+xxxxx%3D%22xxxx-xxxxx%3Axxxxx%22%3Exxx%3A%3C%2Fx%3E%0A%0A+++++++++++++++++++++++++++++++%3Cx+xxxxx%3D%22xxxx-xxxxx%3Axxxxx%3B+xxxx-xxxxxx%3A+xxxx%3B%22%3Exxxxx+xxxxx%3A%3C%2Fx%3E%0A+++++++++++++++++++++++++++%3C%2Fxx%3E%0A+++++++++++++++++++++++%3C%2Fxx%3E%0A+++++++++++++++++++%3C%2Fxxxxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A+++++++++++++++%3Cxx+xxxxx%3D%22xxxx-xxxxx%3A+xxxxx%3B+xxxxx%3A+xxxx%22%3E%26xxxxx%3B+%3Cxxxx%0A+++++++++++++++++++++++xxxxx%3D%22xxxxxxxxxxxxxxx%22%3Exxxx.xx%3C%2Fxxxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A+++++++++++%3C%2Fxx%3E%0A++++++++++++++++++++++++++%3Cxx%3E%0A+++++++++++++++++++%3Cxx+xxxxx%3D%22xxxx-xxxxx%3A+xxxxx%3B+xxxxx%3A+xxxx%22%3E%26xxxxx%3B+%3Cxxxx%0A+++++++++++++++++++++++++++xxxxx%3D%22xxxxxxxxxxxxxxx%22%3Exxx.xx%3C%2Fxxxx%3E%0A+++++++++++++++++++%3C%2Fxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A++++++++++++++++++++++%3Cxx%3E%0A+++++++++++++++%3Cxx+xxxxx%3D%22xxxx-xxxxx%3A+xxxxx%3Bxxxx-xxxxxx%3A+xxxx%3B+xxxxx%3A+xxxx%22%3E%26xxxxx%3B+%3Cxxxx%0A+++++++++++++++++++++++xxxxx%3D%22xxxxxxxxxxxxxxx%22%3Exxxx.xx%3C%2Fxxxx%3E%3C%2Fxx%3E%0A+++++++++++%3C%2Fxx%3E%0A+++++++%3C%2Fxxxxx%3E%0A+++++++%3C%21--%0A+++++++xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx%0A+++++++xxx+xx+xxxxx+xxxxxxx+xxxxxxx%0A+++++++xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx%0A+++++++--%3E%0A+++%3C%2Fxxx%3E%0A%0A%0A%0A+++%3Cxxx+xxxxx%3D%22xxxxxxxxx%22+xx%3D%22xxxxxxxxx%22%3E%3C%2Fxxx%3E%0A%0A+++%3Cxxx+xx%3D%22xxxx%22+xxxxx%3D%22xxxx%22%3E%0A+++++++%3Cxxxxx+xxxxx%3D%22xxxxxxxxx%22%3E%0A+++++++++++%3Cxx%3E%0A+++++++++++++++%3Cxx+xxxxxxx%3D%22x%22+xx%3D%22xxxxxxxxxxxxx%22+xxxxx%3D%22xxxxxxxxxxxxx%22%3E%0A+++++++++++++++++++%3Cxxx+xx%3D%22xxxxxx%22%3E%3C%2Fxxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A+++++++++++%3C%2Fxx%3E%0A+++++++++++%3Cxx%3E%0A+++++++++++++++%3Cxx+xx%3D%22xxxxxxxxxxxxxxxxx%22+xxxxx%3D%22xxxxxxxxxxxxxxxxx%22%3E%3C%2Fxx%3E%0A+++++++++++++++%3Cxx+xx%3D%22xxxxxxxxxxxxxx%22+xxxxx%3D%22xxxxxxxxxxxxxx%22%3E%0A+++++++++++++++++++%3Cxxx+xx%3D%22xxxxxxx%22%3E%3C%2Fxxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A+++++++++++%3C%2Fxx%3E%0A+++++++++++%3Cxx%3E%0A+++++++++++++++%3Cxx+xxxxxxx%3D%22x%22+xx%3D%22xxxxxxxxxxxxx%22+xxxxx%3D%22xxxxxxxxxxxxx%22%3E%0A+++++++++++++++++++%3Cxxx+xx%3D%22xxxxxx%22%3E%3C%2Fxxx%3E%0A+++++++++++++++%3C%2Fxx%3E%0A+++++++++++%3C%2Fxx%3E%0A+++++++%3C%2Fxxxxx%3E%0A+++%3C%2Fxxx%3E%0A%3C%2Fxxx%3E%0A%0A%3Cxxx+xx%3D%22xxxxxx%22%3E%3C%2Fxxx%3E%0A%0A%3C%2Fxxxx%3E%0A%3C%2Fxxxx%3E+&b=value\00", align 1
@num_errors = internal global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"application/x-www-form-urlencoded\00", align 1
@GlobalTaintedAdaptorStr = internal global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"ERROR: got unexpected '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Ip is %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Iplen is %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %connection = alloca %struct.MHD_Connection, align 8
  %header = alloca %struct.MHD_HTTP_Req_Header, align 8
  %pp = alloca %struct.MHD_PostProcessor*, align 8
  %post = alloca i8*, align 8
  %tmp = alloca i8*, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([3081 x i8], [3081 x i8]* @.str, i64 0, i64 0), i8** %post, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  store i64 0, i64* @num_errors, align 8
  %2 = bitcast %struct.MHD_Connection* %connection to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 496, i1 false)
  %3 = bitcast %struct.MHD_HTTP_Req_Header* %header to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 56, i1 false)
  %rq = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %connection, i32 0, i32 7
  %headers_received = getelementptr inbounds %struct.MHD_Request, %struct.MHD_Request* %rq, i32 0, i32 6
  store %struct.MHD_HTTP_Req_Header* %header, %struct.MHD_HTTP_Req_Header** %headers_received, align 8
  %header1 = getelementptr inbounds %struct.MHD_HTTP_Req_Header, %struct.MHD_HTTP_Req_Header* %header, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %header1, align 8
  %value = getelementptr inbounds %struct.MHD_HTTP_Req_Header, %struct.MHD_HTTP_Req_Header* %header, i32 0, i32 4
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %value, align 8
  %header2 = getelementptr inbounds %struct.MHD_HTTP_Req_Header, %struct.MHD_HTTP_Req_Header* %header, i32 0, i32 2
  %4 = load i8*, i8** %header2, align 8
  %call = call i64 @strlen(i8* %4) #5
  %header_size = getelementptr inbounds %struct.MHD_HTTP_Req_Header, %struct.MHD_HTTP_Req_Header* %header, i32 0, i32 3
  store i64 %call, i64* %header_size, align 8
  %value3 = getelementptr inbounds %struct.MHD_HTTP_Req_Header, %struct.MHD_HTTP_Req_Header* %header, i32 0, i32 4
  %5 = load i8*, i8** %value3, align 8
  %call4 = call i64 @strlen(i8* %5) #5
  %value_size = getelementptr inbounds %struct.MHD_HTTP_Req_Header, %struct.MHD_HTTP_Req_Header* %header, i32 0, i32 5
  store i64 %call4, i64* %value_size, align 8
  %kind = getelementptr inbounds %struct.MHD_HTTP_Req_Header, %struct.MHD_HTTP_Req_Header* %header, i32 0, i32 6
  store i32 1, i32* %kind, align 8
  %call5 = call %struct.MHD_PostProcessor* @MHD_create_post_processor(%struct.MHD_Connection* %connection, i64 4096, i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)* @check_post, i8* null)
  store %struct.MHD_PostProcessor* %call5, %struct.MHD_PostProcessor** %pp, align 8
  %6 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp, align 8
  %cmp = icmp eq %struct.MHD_PostProcessor* null, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp, align 8
  %8 = load i8*, i8** %post, align 8
  %call6 = call i8* @StaticUncheckedToTStrAdaptor(i8* %8)
  %9 = call i32 @c_TPtoO(i8* %call6)
  %10 = inttoptr i32 %9 to i8*
  store i8* %10, i8** %tmp, align 4
  %11 = load i8*, i8** %tmp, align 4
  %12 = load i8*, i8** %post, align 8
  %call7 = call i64 @strlen(i8* %12) #5
  %13 = ptrtoint i8* %11 to i32
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %call8 = call i32 @MHD_post_process(%struct.MHD_PostProcessor* %7, i8* %15, i64 %call7)
  %cmp9 = icmp ne i32 1, %call8
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %16 = load i64, i64* @num_errors, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* @num_errors, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %17 = load %struct.MHD_PostProcessor*, %struct.MHD_PostProcessor** %pp, align 8
  %call12 = call i32 @MHD_destroy_post_processor(%struct.MHD_PostProcessor* %17)
  %18 = load i8*, i8** @GlobalTaintedAdaptorStr, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end11
  call void @t_free(i8* %20)
  %22 = load i64, i64* @num_errors, align 8
  %cmp13 = icmp eq i64 %22, 0
  %23 = zext i1 %cmp13 to i64
  %cond = select i1 %cmp13, i32 0, i32 2
  store i32 %cond, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end11
  call void @llvm.trap() #6
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct.MHD_PostProcessor* @MHD_create_post_processor(%struct.MHD_Connection*, i64, i32 (i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i64)*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_post(i8* %cls, i32 %kind, i8* %key, i8* %filename, i8* %content_type, i8* %content_encoding, i8* %data, i64 %off, i64 %size) #0 {
entry:
  %cls.addr = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %content_type.addr = alloca i8*, align 8
  %content_encoding.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %off.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i8* %cls, i8** %cls.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i8* %key, i8** %key.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %content_type, i8** %content_type.addr, align 8
  store i8* %content_encoding, i8** %content_encoding.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %off, i64* %off.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %cls.addr, align 8
  %1 = load i32, i32* %kind.addr, align 4
  %2 = load i8*, i8** %filename.addr, align 8
  %3 = load i8*, i8** %content_type.addr, align 8
  %4 = load i8*, i8** %content_encoding.addr, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i64, i64* %off.addr, align 8
  %7 = load i64, i64* %size.addr, align 8
  %8 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load i8*, i8** %key.addr, align 8
  %call1 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp2 = icmp ne i32 0, %call1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8*, i8** %key.addr, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %10)
  %11 = load i64, i64* @num_errors, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* @num_errors, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 1
}

declare dso_local i32 @MHD_post_process(%struct.MHD_PostProcessor*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @StaticUncheckedToTStrAdaptor(i8* %Ip) #0 {
entry:
  %Ip.addr = alloca i8*, align 8
  %Iplen = alloca i32, align 4
  %tmp = alloca i8*, align 4
  %tmp6 = alloca i8*, align 4
  store i8* %Ip, i8** %Ip.addr, align 8
  %0 = load i8*, i8** %Ip.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %Iplen, align 4
  %1 = load i8*, i8** %Ip.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %1)
  %2 = load i32, i32* %Iplen, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %2)
  %3 = load i32, i32* %Iplen, align 4
  %conv3 = sext i32 %3 to i64
  %call4 = call i8* @string_tainted_malloc(i64 %conv3)
  %4 = call i32 @c_TPtoO(i8* %call4)
  %5 = inttoptr i32 %4 to i8*
  store i8* %5, i8** %tmp, align 4
  %6 = load i8*, i8** %tmp, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = zext i32 %7 to i64
  store i64 %8, i64* bitcast (i8** @GlobalTaintedAdaptorStr to i64*), align 4
  %9 = load i8*, i8** @GlobalTaintedAdaptorStr, align 8
  %10 = load i8*, i8** %Ip.addr, align 8
  %call5 = call i8* @t_strcpy(i8* %9, i8* %10)
  %11 = call i32 @c_TPtoO(i8* %call5)
  %12 = inttoptr i32 %11 to i8*
  store i8* %12, i8** %tmp6, align 4
  %13 = load i8*, i8** %tmp6, align 4
  %14 = load i8*, i8** @GlobalTaintedAdaptorStr, align 8
  ret i8* %14
}

declare i32 @c_TPtoO(i8*)

declare dso_local i32 @MHD_destroy_post_processor(%struct.MHD_PostProcessor*) #3

declare dso_local void @t_free(i8*) #3

declare i8* @c_fetch_pointer_from_offset(i32)

declare i1 @c_isTaintedPointerToTaintedMem(i8*)

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #4

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

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
  %2 = call i32 @c_TPtoO(i8* %call)
  %3 = inttoptr i32 %2 to i8*
  store i8* %3, i8** %tmp, align 4
  %4 = load i8*, i8** %tmp, align 4
  %5 = ptrtoint i8* %4 to i32
  %6 = zext i32 %5 to i64
  %7 = bitcast i8** %p to i64*
  store i64 %6, i64* %7, align 4
  %8 = load i8*, i8** %p, align 4
  %9 = ptrtoint i8* %8 to i32
  %10 = zext i32 %9 to i64
  %cmp1 = icmp ne i64 %10, 0
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %11 = load i8*, i8** %p, align 4
  %12 = load i64, i64* %sz.addr, align 8
  %13 = ptrtoint i8* %11 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.then2
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %12
  %16 = call i32 @c_TPtoO(i8* %arrayidx)
  %17 = inttoptr i32 %16 to i8*
  store i8* %17, i8** %tmp3, align 4
  %18 = load i8*, i8** %tmp3, align 4
  %19 = load i8*, i8** %p, align 4
  %20 = load i8*, i8** %p, align 4
  %21 = load i64, i64* %sz.addr, align 8
  %add4 = add i64 %21, 1
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %add4
  store i8* %add.ptr, i8** %tmp5, align 4
  %22 = load i8*, i8** %tmp5, align 4
  %23 = call i32 @c_TPtoO(i8* %22)
  %24 = inttoptr i32 %23 to i8*
  store i8* %24, i8** %tmp6, align 4
  %25 = load i8*, i8** %tmp6, align 4
  %26 = call i32 @c_TPtoO(i8* %19)
  %27 = inttoptr i32 %26 to i8*
  store i8* %27, i8** %tmp7, align 4
  %28 = load i8*, i8** %tmp7, align 4
  %29 = call i32 @c_TPtoO(i8* %28)
  %30 = call i32 @c_TPtoO(i8* %18)
  %_Dynamic_check.lower = icmp ule i32 %29, %30
  %31 = call i32 @c_TPtoO(i8* %18)
  %32 = call i32 @c_TPtoO(i8* %25)
  %_Dynamic_check.upper = icmp ult i32 %31, %32
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded
  store i8 0, i8* %arrayidx, align 4
  br label %if.end10

_Dynamic_check.failed:                            ; preds = %if.then2
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #6
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded9, %if.end
  %33 = load i8*, i8** %p, align 4
  store i8* %33, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %34 = load i8*, i8** %retval, align 8
  ret i8* %34
}

declare dso_local i8* @t_strcpy(i8*, i8*) #3

declare dso_local i8* @t_malloc(i64) #3

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (https://github.com/arunkumarbhattar/CheckCBox_Compiler.git 69ad1c4a4eb9a26a6420f839c4a03281003c9b84)"}
