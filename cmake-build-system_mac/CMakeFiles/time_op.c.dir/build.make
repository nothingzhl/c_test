# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = "/Users/zhanghanlin/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/211.7142.21/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/zhanghanlin/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/211.7142.21/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zhanghanlin/CLionProjects/c_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zhanghanlin/CLionProjects/c_test/cmake-build-system_mac

# Include any dependencies generated for this target.
include CMakeFiles/time_op.c.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/time_op.c.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/time_op.c.dir/flags.make

CMakeFiles/time_op.c.dir/time_op.c.o: CMakeFiles/time_op.c.dir/flags.make
CMakeFiles/time_op.c.dir/time_op.c.o: ../time_op.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhanghanlin/CLionProjects/c_test/cmake-build-system_mac/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/time_op.c.dir/time_op.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/time_op.c.dir/time_op.c.o -c /Users/zhanghanlin/CLionProjects/c_test/time_op.c

CMakeFiles/time_op.c.dir/time_op.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/time_op.c.dir/time_op.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zhanghanlin/CLionProjects/c_test/time_op.c > CMakeFiles/time_op.c.dir/time_op.c.i

CMakeFiles/time_op.c.dir/time_op.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/time_op.c.dir/time_op.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zhanghanlin/CLionProjects/c_test/time_op.c -o CMakeFiles/time_op.c.dir/time_op.c.s

CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.o: CMakeFiles/time_op.c.dir/flags.make
CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.o: ../tinycthread/tinycthread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhanghanlin/CLionProjects/c_test/cmake-build-system_mac/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.o -c /Users/zhanghanlin/CLionProjects/c_test/tinycthread/tinycthread.c

CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/zhanghanlin/CLionProjects/c_test/tinycthread/tinycthread.c > CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.i

CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/zhanghanlin/CLionProjects/c_test/tinycthread/tinycthread.c -o CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.s

# Object files for target time_op.c
time_op_c_OBJECTS = \
"CMakeFiles/time_op.c.dir/time_op.c.o" \
"CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.o"

# External object files for target time_op.c
time_op_c_EXTERNAL_OBJECTS =

time_op.c: CMakeFiles/time_op.c.dir/time_op.c.o
time_op.c: CMakeFiles/time_op.c.dir/tinycthread/tinycthread.c.o
time_op.c: CMakeFiles/time_op.c.dir/build.make
time_op.c: CMakeFiles/time_op.c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zhanghanlin/CLionProjects/c_test/cmake-build-system_mac/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable time_op.c"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/time_op.c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/time_op.c.dir/build: time_op.c

.PHONY : CMakeFiles/time_op.c.dir/build

CMakeFiles/time_op.c.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/time_op.c.dir/cmake_clean.cmake
.PHONY : CMakeFiles/time_op.c.dir/clean

CMakeFiles/time_op.c.dir/depend:
	cd /Users/zhanghanlin/CLionProjects/c_test/cmake-build-system_mac && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhanghanlin/CLionProjects/c_test /Users/zhanghanlin/CLionProjects/c_test /Users/zhanghanlin/CLionProjects/c_test/cmake-build-system_mac /Users/zhanghanlin/CLionProjects/c_test/cmake-build-system_mac /Users/zhanghanlin/CLionProjects/c_test/cmake-build-system_mac/CMakeFiles/time_op.c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/time_op.c.dir/depend

