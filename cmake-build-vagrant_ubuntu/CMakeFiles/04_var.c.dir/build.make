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
include CMakeFiles/04_var.c.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/04_var.c.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/04_var.c.dir/flags.make

CMakeFiles/04_var.c.dir/04_var.c.o: CMakeFiles/04_var.c.dir/flags.make
CMakeFiles/04_var.c.dir/04_var.c.o: ../04_var.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/c_test/cmake-build-vagrant_ubuntu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/04_var.c.dir/04_var.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/04_var.c.dir/04_var.c.o   -c /tmp/c_test/04_var.c

CMakeFiles/04_var.c.dir/04_var.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/04_var.c.dir/04_var.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/c_test/04_var.c > CMakeFiles/04_var.c.dir/04_var.c.i

CMakeFiles/04_var.c.dir/04_var.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/04_var.c.dir/04_var.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/c_test/04_var.c -o CMakeFiles/04_var.c.dir/04_var.c.s

CMakeFiles/04_var.c.dir/04_var.c.o.requires:

.PHONY : CMakeFiles/04_var.c.dir/04_var.c.o.requires

CMakeFiles/04_var.c.dir/04_var.c.o.provides: CMakeFiles/04_var.c.dir/04_var.c.o.requires
	$(MAKE) -f CMakeFiles/04_var.c.dir/build.make CMakeFiles/04_var.c.dir/04_var.c.o.provides.build
.PHONY : CMakeFiles/04_var.c.dir/04_var.c.o.provides

CMakeFiles/04_var.c.dir/04_var.c.o.provides.build: CMakeFiles/04_var.c.dir/04_var.c.o


# Object files for target 04_var.c
04_var_c_OBJECTS = \
"CMakeFiles/04_var.c.dir/04_var.c.o"

# External object files for target 04_var.c
04_var_c_EXTERNAL_OBJECTS =

04_var.c: CMakeFiles/04_var.c.dir/04_var.c.o
04_var.c: CMakeFiles/04_var.c.dir/build.make
04_var.c: CMakeFiles/04_var.c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/c_test/cmake-build-vagrant_ubuntu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable 04_var.c"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/04_var.c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/04_var.c.dir/build: 04_var.c

.PHONY : CMakeFiles/04_var.c.dir/build

CMakeFiles/04_var.c.dir/requires: CMakeFiles/04_var.c.dir/04_var.c.o.requires

.PHONY : CMakeFiles/04_var.c.dir/requires

CMakeFiles/04_var.c.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/04_var.c.dir/cmake_clean.cmake
.PHONY : CMakeFiles/04_var.c.dir/clean

CMakeFiles/04_var.c.dir/depend:
	cd /tmp/c_test/cmake-build-vagrant_ubuntu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/c_test /tmp/c_test /tmp/c_test/cmake-build-vagrant_ubuntu /tmp/c_test/cmake-build-vagrant_ubuntu /tmp/c_test/cmake-build-vagrant_ubuntu/CMakeFiles/04_var.c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/04_var.c.dir/depend

