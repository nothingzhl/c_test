# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/c_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/c_test/cmake-build-vagrant_ubuntu

# Include any dependencies generated for this target.
include CMakeFiles/common.c.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/common.c.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/common.c.dir/flags.make

CMakeFiles/common.c.dir/common.c.o: CMakeFiles/common.c.dir/flags.make
CMakeFiles/common.c.dir/common.c.o: ../common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/c_test/cmake-build-vagrant_ubuntu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/common.c.dir/common.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/common.c.dir/common.c.o   -c /tmp/c_test/common.c

CMakeFiles/common.c.dir/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/common.c.dir/common.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/c_test/common.c > CMakeFiles/common.c.dir/common.c.i

CMakeFiles/common.c.dir/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/common.c.dir/common.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/c_test/common.c -o CMakeFiles/common.c.dir/common.c.s

CMakeFiles/common.c.dir/common.c.o.requires:

.PHONY : CMakeFiles/common.c.dir/common.c.o.requires

CMakeFiles/common.c.dir/common.c.o.provides: CMakeFiles/common.c.dir/common.c.o.requires
	$(MAKE) -f CMakeFiles/common.c.dir/build.make CMakeFiles/common.c.dir/common.c.o.provides.build
.PHONY : CMakeFiles/common.c.dir/common.c.o.provides

CMakeFiles/common.c.dir/common.c.o.provides.build: CMakeFiles/common.c.dir/common.c.o


# Object files for target common.c
common_c_OBJECTS = \
"CMakeFiles/common.c.dir/common.c.o"

# External object files for target common.c
common_c_EXTERNAL_OBJECTS =

common.c: CMakeFiles/common.c.dir/common.c.o
common.c: CMakeFiles/common.c.dir/build.make
common.c: CMakeFiles/common.c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/c_test/cmake-build-vagrant_ubuntu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable common.c"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/common.c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/common.c.dir/build: common.c

.PHONY : CMakeFiles/common.c.dir/build

CMakeFiles/common.c.dir/requires: CMakeFiles/common.c.dir/common.c.o.requires

.PHONY : CMakeFiles/common.c.dir/requires

CMakeFiles/common.c.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/common.c.dir/cmake_clean.cmake
.PHONY : CMakeFiles/common.c.dir/clean

CMakeFiles/common.c.dir/depend:
	cd /tmp/c_test/cmake-build-vagrant_ubuntu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/c_test /tmp/c_test /tmp/c_test/cmake-build-vagrant_ubuntu /tmp/c_test/cmake-build-vagrant_ubuntu /tmp/c_test/cmake-build-vagrant_ubuntu/CMakeFiles/common.c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/common.c.dir/depend

