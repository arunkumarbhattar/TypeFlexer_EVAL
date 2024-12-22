cmake_minimum_required(VERSION 3.1)
cmake_policy(VERSION 3.1)

set(CMAKE_C_COMPILER /home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang) #ARUN_MACHINE_SPECIFIC --> path to Checkcbox compiler
project(PNGMINUS C)

option(PNGMINUS_USE_STATIC_LIBRARIES "Use the static library builds" ON)

# libpng
add_subdirectory(../.. libpng)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../..)
include_directories(${CMAKE_CURRENT_BINARY_DIR}/libpng)
if(PNGMINUS_USE_STATIC_LIBRARIES)
  set(PNGMINUS_PNG_LIBRARY png_static)
else()
  set(PNGMINUS_PNG_LIBRARY png)
endif()

# png2pnm
add_link_options(-ldl -lstdc++) # CheckCBox requirement --> Checkcbox Static libraries run C++ internally
add_executable(png2pnm png2pnm.c)
target_compile_options(png2pnm PRIVATE -O2 -fwasmsbx -DWASM_SBX) # CheckCBox requirement TESTING --> To track heap/stack overflows and leaks
target_link_libraries(png2pnm ${PNGMINUS_PNG_LIBRARY})
target_link_options(png2pnm PRIVATE) # CheckCBox requirement TESTING
# CheckCBOX static Library dependencies
target_link_libraries(png2pnm "${CMAKE_SOURCE_DIR}/../../../WASM_SBX_LIB/libSBX_CON_LIB.a"
        "${CMAKE_SOURCE_DIR}/../../../WASM_SBX_LIB/libisc_lib_final.a"
         dl)
# pnm2png
add_executable(pnm2png pnm2png.c)
target_compile_options(pnm2png PRIVATE -O2 -fwasmsbx -DWASM_SBX) # CheckCBox requirement TESTING
target_link_libraries(pnm2png ${PNGMINUS_PNG_LIBRARY})
target_link_options(pnm2png PRIVATE ) # CheckCBox requirement TESTING
# CheckCBOX static Library dependencies
target_link_libraries(pnm2png "${CMAKE_SOURCE_DIR}/../../../WASM_SBX_LIB/libSBX_CON_LIB.a"
        "${CMAKE_SOURCE_DIR}/../../../WASM_SBX_LIB/libisc_lib_final.a"
         dl)

# png2pnm
add_link_options(-ldl -lstdc++) # CheckCBox requirement --> Checkcbox Static libraries run C++ internally
add_executable(png2pnm_noop png2pnm.c)
target_compile_options(png2pnm_noop PRIVATE -O2 -fnoopsbx ) # CheckCBox requirement TESTING --> To track heap/stack overflows and leaks
target_link_libraries(png2pnm_noop ${PNGMINUS_PNG_LIBRARY})
target_link_options(png2pnm_noop PRIVATE) # CheckCBox requirement TESTING
# CheckCBOX static Library dependencies
target_link_libraries(png2pnm_noop "${CMAKE_SOURCE_DIR}/../../../NOOP_LIB/libSBX_CON_LIB.a"
        dl)
# pnm2png
add_executable(pnm2png_noop pnm2png.c)
target_compile_options(pnm2png_noop PRIVATE -O2 -fnoopsbx ) # CheckCBox requirement TESTING
target_link_libraries(pnm2png_noop ${PNGMINUS_PNG_LIBRARY})
target_link_options(pnm2png_noop PRIVATE ) # CheckCBox requirement TESTING
# CheckCBOX static Library dependencies
target_link_libraries(pnm2png_noop "${CMAKE_SOURCE_DIR}/../../../NOOP_LIB/libSBX_CON_LIB.a"
        dl)

# png2pnm
add_link_options(-ldl -lstdc++) # CheckCBox requirement --> Checkcbox Static libraries run C++ internally
add_executable(png2pnm_hoard png2pnm.c)
target_compile_options(png2pnm_hoard PRIVATE -O2 -fheapsbx -DHEAP_SBX) # CheckCBox requirement TESTING --> To track heap/stack overflows and leaks
target_link_libraries(png2pnm_hoard ${PNGMINUS_PNG_LIBRARY})
target_link_options(png2pnm_hoard PRIVATE) # CheckCBox requirement TESTING
# CheckCBOX static Library dependencies
target_link_libraries(png2pnm_hoard
        "${CMAKE_SOURCE_DIR}/../../../NOOP_LIB/libSBX_CON_LIB.a"
        "${CMAKE_SOURCE_DIR}/../../../HoardLIB/libhoard.so"
        "${CMAKE_SOURCE_DIR}/../../../HoardLIB/libprofile.a"
        dl)
# pnm2png
add_executable(pnm2png_hoard pnm2png.c)
target_compile_options(pnm2png_hoard PRIVATE -O2 -fheapsbx -DHEAP_SBX) # CheckCBox requirement TESTING
target_link_libraries(pnm2png_hoard ${PNGMINUS_PNG_LIBRARY})
target_link_options(pnm2png_hoard PRIVATE ) # CheckCBox requirement TESTING
# CheckCBOX static Library dependencies
target_link_libraries(pnm2png_hoard
        "${CMAKE_SOURCE_DIR}/../../../NOOP_LIB/libSBX_CON_LIB.a"
        "${CMAKE_SOURCE_DIR}/../../../HoardLIB/libhoard.so"
        #"${CMAKE_SOURCE_DIR}/NOOP_LIB/libisc_lib_final.a"
        "${CMAKE_SOURCE_DIR}/../../../HoardLIB/libprofile.a"
        dl)