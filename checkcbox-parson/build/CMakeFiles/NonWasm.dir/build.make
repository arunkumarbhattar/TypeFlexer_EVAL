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
include CMakeFiles/NonWasm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/NonWasm.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/NonWasm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NonWasm.dir/flags.make

CMakeFiles/NonWasm.dir/tests.tainted.c.o: CMakeFiles/NonWasm.dir/flags.make
CMakeFiles/NonWasm.dir/tests.tainted.c.o: ../tests.tainted.c
CMakeFiles/NonWasm.dir/tests.tainted.c.o: CMakeFiles/NonWasm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/NonWasm.dir/tests.tainted.c.o"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/NonWasm.dir/tests.tainted.c.o -MF CMakeFiles/NonWasm.dir/tests.tainted.c.o.d -o CMakeFiles/NonWasm.dir/tests.tainted.c.o -c /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/tests.tainted.c

CMakeFiles/NonWasm.dir/tests.tainted.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NonWasm.dir/tests.tainted.c.i"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/tests.tainted.c > CMakeFiles/NonWasm.dir/tests.tainted.c.i

CMakeFiles/NonWasm.dir/tests.tainted.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NonWasm.dir/tests.tainted.c.s"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/tests.tainted.c -o CMakeFiles/NonWasm.dir/tests.tainted.c.s

CMakeFiles/NonWasm.dir/parson.tainted.c.o: CMakeFiles/NonWasm.dir/flags.make
CMakeFiles/NonWasm.dir/parson.tainted.c.o: ../parson.tainted.c
CMakeFiles/NonWasm.dir/parson.tainted.c.o: CMakeFiles/NonWasm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/NonWasm.dir/parson.tainted.c.o"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/NonWasm.dir/parson.tainted.c.o -MF CMakeFiles/NonWasm.dir/parson.tainted.c.o.d -o CMakeFiles/NonWasm.dir/parson.tainted.c.o -c /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/parson.tainted.c

CMakeFiles/NonWasm.dir/parson.tainted.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NonWasm.dir/parson.tainted.c.i"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/parson.tainted.c > CMakeFiles/NonWasm.dir/parson.tainted.c.i

CMakeFiles/NonWasm.dir/parson.tainted.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NonWasm.dir/parson.tainted.c.s"
	/home/arun/Desktop/TypeFlexer-Clang/llvm/cmake-build-debug/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/parson.tainted.c -o CMakeFiles/NonWasm.dir/parson.tainted.c.s

# Object files for target NonWasm
NonWasm_OBJECTS = \
"CMakeFiles/NonWasm.dir/tests.tainted.c.o" \
"CMakeFiles/NonWasm.dir/parson.tainted.c.o"

# External object files for target NonWasm
NonWasm_EXTERNAL_OBJECTS =

NonWasm: CMakeFiles/NonWasm.dir/tests.tainted.c.o
NonWasm: CMakeFiles/NonWasm.dir/parson.tainted.c.o
NonWasm: CMakeFiles/NonWasm.dir/build.make
NonWasm: ../static_libraries/tainted.a
NonWasm: ../static_libraries/libSBX_CON_LIB.a
NonWasm: ../static_libraries/libisc_lib_final.a
NonWasm: CMakeFiles/NonWasm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable NonWasm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NonWasm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NonWasm.dir/build: NonWasm
.PHONY : CMakeFiles/NonWasm.dir/build

CMakeFiles/NonWasm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NonWasm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NonWasm.dir/clean

CMakeFiles/NonWasm.dir/depend:
	cd /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build /home/arun/Desktop/TypeFlexer_EVAL/checkcbox-parson/build/CMakeFiles/NonWasm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NonWasm.dir/depend
