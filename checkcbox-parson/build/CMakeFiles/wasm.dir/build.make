# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build

# Include any dependencies generated for this target.
include CMakeFiles/wasm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/wasm.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/wasm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wasm.dir/flags.make

CMakeFiles/wasm.dir/tests.c.o: CMakeFiles/wasm.dir/flags.make
CMakeFiles/wasm.dir/tests.c.o: ../tests.c
CMakeFiles/wasm.dir/tests.c.o: CMakeFiles/wasm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/wasm.dir/tests.c.o"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/wasm.dir/tests.c.o -MF CMakeFiles/wasm.dir/tests.c.o.d -o CMakeFiles/wasm.dir/tests.c.o -c /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/tests.c

CMakeFiles/wasm.dir/tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wasm.dir/tests.c.i"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/tests.c > CMakeFiles/wasm.dir/tests.c.i

CMakeFiles/wasm.dir/tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wasm.dir/tests.c.s"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/tests.c -o CMakeFiles/wasm.dir/tests.c.s

CMakeFiles/wasm.dir/parson.wasm.c.o: CMakeFiles/wasm.dir/flags.make
CMakeFiles/wasm.dir/parson.wasm.c.o: ../parson.wasm.c
CMakeFiles/wasm.dir/parson.wasm.c.o: CMakeFiles/wasm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/wasm.dir/parson.wasm.c.o"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/wasm.dir/parson.wasm.c.o -MF CMakeFiles/wasm.dir/parson.wasm.c.o.d -o CMakeFiles/wasm.dir/parson.wasm.c.o -c /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/parson.wasm.c

CMakeFiles/wasm.dir/parson.wasm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wasm.dir/parson.wasm.c.i"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/parson.wasm.c > CMakeFiles/wasm.dir/parson.wasm.c.i

CMakeFiles/wasm.dir/parson.wasm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wasm.dir/parson.wasm.c.s"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/parson.wasm.c -o CMakeFiles/wasm.dir/parson.wasm.c.s

# Object files for target wasm
wasm_OBJECTS = \
"CMakeFiles/wasm.dir/tests.c.o" \
"CMakeFiles/wasm.dir/parson.wasm.c.o"

# External object files for target wasm
wasm_EXTERNAL_OBJECTS =

wasm: CMakeFiles/wasm.dir/tests.c.o
wasm: CMakeFiles/wasm.dir/parson.wasm.c.o
wasm: CMakeFiles/wasm.dir/build.make
wasm: ../static_libraries/tainted.a
wasm: ../static_libraries/libSBX_CON_LIB.a
wasm: ../static_libraries/libisc_lib_final.a
wasm: CMakeFiles/wasm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable wasm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wasm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wasm.dir/build: wasm
.PHONY : CMakeFiles/wasm.dir/build

CMakeFiles/wasm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wasm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wasm.dir/clean

CMakeFiles/wasm.dir/depend:
	cd /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build/CMakeFiles/wasm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/wasm.dir/depend
