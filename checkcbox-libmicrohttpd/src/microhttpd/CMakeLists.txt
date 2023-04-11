cmake_minimum_required(VERSION 3.13)
set(CMAKE_C_COMPILER /home/arun/Desktop/CheckCBox_Compiler/llvm/cmake-build-debug/bin/clang)
project(testBench)



add_compile_options( -fPIC -g )

add_link_options(-ldl -lstdc++)
add_executable(testBench "${CMAKE_SOURCE_DIR}/test_postprocessor.c")
target_include_directories(testBench PUBLIC "${CMAKE_SOURCE_DIR}/../include"
        "${CMAKE_SOURCE_DIR}/../../")
target_link_libraries(testBench
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-basicauth.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-connection.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-daemon.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-digestauth.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-gen_auth.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-internal.o"

        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-md5.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-memorypool.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-mhd_compat.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-mhd_itc.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-mhd_mono_clock.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-mhd_panic.o"

        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-mhd_send.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-mhd_sockets.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-mhd_str.o"

        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-mhd_threads.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-postprocessor.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-reason_phrase.o"

        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-response.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-sha256.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-sha512_256.o"
        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/src/microhttpd/libmicrohttpd_la-sysfdsetsize.o"


        "/home/arun/Desktop/untouched/checkcbox-libmicrohttpd/Checkcbox_LIBS/libSBX_CON_LIB.a"

        -fsanitize=address  -static-libsan
        dl)

#
#add_executable(SIMPLE "${CMAKE_SOURCE_DIR}/sbx_interface_def/simple_main.c")
#target_link_libraries(SIMPLE final)
