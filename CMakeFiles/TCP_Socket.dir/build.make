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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/bchauhan/Desktop/TCP-Socket

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/bchauhan/Desktop/TCP-Socket

# Include any dependencies generated for this target.
include CMakeFiles/TCP_Socket.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TCP_Socket.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TCP_Socket.dir/flags.make

CMakeFiles/TCP_Socket.dir/main.c.o: CMakeFiles/TCP_Socket.dir/flags.make
CMakeFiles/TCP_Socket.dir/main.c.o: main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bchauhan/Desktop/TCP-Socket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/TCP_Socket.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/TCP_Socket.dir/main.c.o   -c /Users/bchauhan/Desktop/TCP-Socket/main.c

CMakeFiles/TCP_Socket.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/TCP_Socket.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/bchauhan/Desktop/TCP-Socket/main.c > CMakeFiles/TCP_Socket.dir/main.c.i

CMakeFiles/TCP_Socket.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/TCP_Socket.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/bchauhan/Desktop/TCP-Socket/main.c -o CMakeFiles/TCP_Socket.dir/main.c.s

CMakeFiles/TCP_Socket.dir/main.c.o.requires:

.PHONY : CMakeFiles/TCP_Socket.dir/main.c.o.requires

CMakeFiles/TCP_Socket.dir/main.c.o.provides: CMakeFiles/TCP_Socket.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/TCP_Socket.dir/build.make CMakeFiles/TCP_Socket.dir/main.c.o.provides.build
.PHONY : CMakeFiles/TCP_Socket.dir/main.c.o.provides

CMakeFiles/TCP_Socket.dir/main.c.o.provides.build: CMakeFiles/TCP_Socket.dir/main.c.o


# Object files for target TCP_Socket
TCP_Socket_OBJECTS = \
"CMakeFiles/TCP_Socket.dir/main.c.o"

# External object files for target TCP_Socket
TCP_Socket_EXTERNAL_OBJECTS =

TCP_Socket: CMakeFiles/TCP_Socket.dir/main.c.o
TCP_Socket: CMakeFiles/TCP_Socket.dir/build.make
TCP_Socket: CMakeFiles/TCP_Socket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/bchauhan/Desktop/TCP-Socket/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable TCP_Socket"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TCP_Socket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TCP_Socket.dir/build: TCP_Socket

.PHONY : CMakeFiles/TCP_Socket.dir/build

CMakeFiles/TCP_Socket.dir/requires: CMakeFiles/TCP_Socket.dir/main.c.o.requires

.PHONY : CMakeFiles/TCP_Socket.dir/requires

CMakeFiles/TCP_Socket.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TCP_Socket.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TCP_Socket.dir/clean

CMakeFiles/TCP_Socket.dir/depend:
	cd /Users/bchauhan/Desktop/TCP-Socket && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/bchauhan/Desktop/TCP-Socket /Users/bchauhan/Desktop/TCP-Socket /Users/bchauhan/Desktop/TCP-Socket /Users/bchauhan/Desktop/TCP-Socket /Users/bchauhan/Desktop/TCP-Socket/CMakeFiles/TCP_Socket.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TCP_Socket.dir/depend

