# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /cygdrive/c/Users/aleksey/.CLion2016.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/aleksey/.CLion2016.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug

# Include any dependencies generated for this target.
include test/CMakeFiles/tarantool-test-tcp.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/tarantool-test-tcp.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/tarantool-test-tcp.dir/flags.make

test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o: test/CMakeFiles/tarantool-test-tcp.dir/flags.make
test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o: /cygdrive/e/Projects/Market\ analysis\ system/Control\ panel/tarantool-c-master/test/tarantool_tcp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o   -c "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/tarantool_tcp.c"

test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.i"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/tarantool_tcp.c" > CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.i

test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.s"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/tarantool_tcp.c" -o CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.s

test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o.requires:

.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o.requires

test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o.provides: test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o.requires
	$(MAKE) -f test/CMakeFiles/tarantool-test-tcp.dir/build.make test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o.provides.build
.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o.provides

test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o.provides.build: test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o


test/CMakeFiles/tarantool-test-tcp.dir/test.c.o: test/CMakeFiles/tarantool-test-tcp.dir/flags.make
test/CMakeFiles/tarantool-test-tcp.dir/test.c.o: /cygdrive/e/Projects/Market\ analysis\ system/Control\ panel/tarantool-c-master/test/test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object test/CMakeFiles/tarantool-test-tcp.dir/test.c.o"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tarantool-test-tcp.dir/test.c.o   -c "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/test.c"

test/CMakeFiles/tarantool-test-tcp.dir/test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tarantool-test-tcp.dir/test.c.i"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/test.c" > CMakeFiles/tarantool-test-tcp.dir/test.c.i

test/CMakeFiles/tarantool-test-tcp.dir/test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tarantool-test-tcp.dir/test.c.s"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/test.c" -o CMakeFiles/tarantool-test-tcp.dir/test.c.s

test/CMakeFiles/tarantool-test-tcp.dir/test.c.o.requires:

.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/test.c.o.requires

test/CMakeFiles/tarantool-test-tcp.dir/test.c.o.provides: test/CMakeFiles/tarantool-test-tcp.dir/test.c.o.requires
	$(MAKE) -f test/CMakeFiles/tarantool-test-tcp.dir/build.make test/CMakeFiles/tarantool-test-tcp.dir/test.c.o.provides.build
.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/test.c.o.provides

test/CMakeFiles/tarantool-test-tcp.dir/test.c.o.provides.build: test/CMakeFiles/tarantool-test-tcp.dir/test.c.o


test/CMakeFiles/tarantool-test-tcp.dir/common.c.o: test/CMakeFiles/tarantool-test-tcp.dir/flags.make
test/CMakeFiles/tarantool-test-tcp.dir/common.c.o: /cygdrive/e/Projects/Market\ analysis\ system/Control\ panel/tarantool-c-master/test/common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object test/CMakeFiles/tarantool-test-tcp.dir/common.c.o"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tarantool-test-tcp.dir/common.c.o   -c "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/common.c"

test/CMakeFiles/tarantool-test-tcp.dir/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tarantool-test-tcp.dir/common.c.i"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/common.c" > CMakeFiles/tarantool-test-tcp.dir/common.c.i

test/CMakeFiles/tarantool-test-tcp.dir/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tarantool-test-tcp.dir/common.c.s"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/common.c" -o CMakeFiles/tarantool-test-tcp.dir/common.c.s

test/CMakeFiles/tarantool-test-tcp.dir/common.c.o.requires:

.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/common.c.o.requires

test/CMakeFiles/tarantool-test-tcp.dir/common.c.o.provides: test/CMakeFiles/tarantool-test-tcp.dir/common.c.o.requires
	$(MAKE) -f test/CMakeFiles/tarantool-test-tcp.dir/build.make test/CMakeFiles/tarantool-test-tcp.dir/common.c.o.provides.build
.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/common.c.o.provides

test/CMakeFiles/tarantool-test-tcp.dir/common.c.o.provides.build: test/CMakeFiles/tarantool-test-tcp.dir/common.c.o


test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o: test/CMakeFiles/tarantool-test-tcp.dir/flags.make
test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o: /cygdrive/e/Projects/Market\ analysis\ system/Control\ panel/tarantool-c-master/test/tnt_assoc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o   -c "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/tnt_assoc.c"

test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.i"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/tnt_assoc.c" > CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.i

test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.s"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test/tnt_assoc.c" -o CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.s

test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o.requires:

.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o.requires

test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o.provides: test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o.requires
	$(MAKE) -f test/CMakeFiles/tarantool-test-tcp.dir/build.make test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o.provides.build
.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o.provides

test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o.provides.build: test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o


# Object files for target tarantool-test-tcp
tarantool__test__tcp_OBJECTS = \
"CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o" \
"CMakeFiles/tarantool-test-tcp.dir/test.c.o" \
"CMakeFiles/tarantool-test-tcp.dir/common.c.o" \
"CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o"

# External object files for target tarantool-test-tcp
tarantool__test__tcp_EXTERNAL_OBJECTS =

test/tarantool-tcp.exe: test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o
test/tarantool-tcp.exe: test/CMakeFiles/tarantool-test-tcp.dir/test.c.o
test/tarantool-tcp.exe: test/CMakeFiles/tarantool-test-tcp.dir/common.c.o
test/tarantool-tcp.exe: test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o
test/tarantool-tcp.exe: test/CMakeFiles/tarantool-test-tcp.dir/build.make
test/tarantool-tcp.exe: tnt/libtarantool.a
test/tarantool-tcp.exe: test/CMakeFiles/tarantool-test-tcp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable tarantool-tcp.exe"
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tarantool-test-tcp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/tarantool-test-tcp.dir/build: test/tarantool-tcp.exe

.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/build

test/CMakeFiles/tarantool-test-tcp.dir/requires: test/CMakeFiles/tarantool-test-tcp.dir/tarantool_tcp.c.o.requires
test/CMakeFiles/tarantool-test-tcp.dir/requires: test/CMakeFiles/tarantool-test-tcp.dir/test.c.o.requires
test/CMakeFiles/tarantool-test-tcp.dir/requires: test/CMakeFiles/tarantool-test-tcp.dir/common.c.o.requires
test/CMakeFiles/tarantool-test-tcp.dir/requires: test/CMakeFiles/tarantool-test-tcp.dir/tnt_assoc.c.o.requires

.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/requires

test/CMakeFiles/tarantool-test-tcp.dir/clean:
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test && $(CMAKE_COMMAND) -P CMakeFiles/tarantool-test-tcp.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/clean

test/CMakeFiles/tarantool-test-tcp.dir/depend:
	cd /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master" "/cygdrive/e/Projects/Market analysis system/Control panel/tarantool-c-master/test" /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test /cygdrive/c/Users/aleksey/.CLion2016.2/system/cmake/generated/tarantool-c-master-3e71f3dc/3e71f3dc/Debug/test/CMakeFiles/tarantool-test-tcp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/tarantool-test-tcp.dir/depend

