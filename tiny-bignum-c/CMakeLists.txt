cmake_minimum_required(VERSION 3.10)

project(TinyBignumC)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 14)

set(CMAKE_C_COMPILER "/home/supercharger/extraspace/CheckCBox_Compiler/llvm/cmake-build-debug/bin/clang")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O2 -I. -Wundef -Wall -fheapsbx -Wextra -DHEAP_SBX")

set(LIBS
        -ldl
        -lstdc++
        -lprofile
        -lSBX_CON_LIB
        /home/supercharger/extraspace/TypeFlexer_EVAL/HoardLIB/libhoard.so
        )

link_directories(
        /home/supercharger/extraspace/TypeFlexer_EVAL/NOOP_LIB
        /home/supercharger/extraspace/TypeFlexer_EVAL/HoardLIB
)

add_executable(test_golden bn.c tests/golden.c)
add_executable(test_hand_picked bn.c tests/hand_picked.c)
add_executable(test_load_cmp bn.c tests/load_cmp.c)
add_executable(test_factorial bn.c tests/factorial.c)
add_executable(test_random bn.c tests/randomized.c)
#add_executable(test_rsa bn.c tests/rsa.c)

target_link_libraries(test_golden ${LIBS})
target_link_libraries(test_hand_picked ${LIBS})
target_link_libraries(test_load_cmp ${LIBS})
target_link_libraries(test_factorial ${LIBS})
target_link_libraries(test_random ${LIBS})
#target_link_libraries(test_rsa ${LIBS})

set_target_properties(
        test_golden
        test_hand_picked
        test_load_cmp
        test_factorial
        test_random
        #test_rsa
        PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build"
)

enable_testing()

add_test(NAME golden_test COMMAND test_golden)
add_test(NAME hand_picked_test COMMAND test_hand_picked)
add_test(NAME load_cmp_test COMMAND test_load_cmp)
add_test(NAME factorial_test COMMAND test_factorial)
add_test(NAME random_test COMMAND test_random)
#add_test(NAME rsa_test COMMAND test_rsa)