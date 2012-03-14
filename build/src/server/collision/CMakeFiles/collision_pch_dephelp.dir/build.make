# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/server/FunCore

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/server/FunCore/build

# Include any dependencies generated for this target.
include src/server/collision/CMakeFiles/collision_pch_dephelp.dir/depend.make

# Include the progress variables for this target.
include src/server/collision/CMakeFiles/collision_pch_dephelp.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/collision/CMakeFiles/collision_pch_dephelp.dir/flags.make

src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o: src/server/collision/CMakeFiles/collision_pch_dephelp.dir/flags.make
src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o: src/server/collision/collision_pch_dephelp.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/server/FunCore/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o"
	cd /home/server/FunCore/build/src/server/collision && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o -c /home/server/FunCore/build/src/server/collision/collision_pch_dephelp.cxx

src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.i"
	cd /home/server/FunCore/build/src/server/collision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/server/FunCore/build/src/server/collision/collision_pch_dephelp.cxx > CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.i

src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.s"
	cd /home/server/FunCore/build/src/server/collision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/server/FunCore/build/src/server/collision/collision_pch_dephelp.cxx -o CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.s

src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o.requires:
.PHONY : src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o.requires

src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o.provides: src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o.requires
	$(MAKE) -f src/server/collision/CMakeFiles/collision_pch_dephelp.dir/build.make src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o.provides.build
.PHONY : src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o.provides

src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o.provides.build: src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o
.PHONY : src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o.provides.build

# Object files for target collision_pch_dephelp
collision_pch_dephelp_OBJECTS = \
"CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o"

# External object files for target collision_pch_dephelp
collision_pch_dephelp_EXTERNAL_OBJECTS =

src/server/collision/libcollision_pch_dephelp.a: src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o
src/server/collision/libcollision_pch_dephelp.a: src/server/collision/CMakeFiles/collision_pch_dephelp.dir/build.make
src/server/collision/libcollision_pch_dephelp.a: src/server/collision/CMakeFiles/collision_pch_dephelp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libcollision_pch_dephelp.a"
	cd /home/server/FunCore/build/src/server/collision && $(CMAKE_COMMAND) -P CMakeFiles/collision_pch_dephelp.dir/cmake_clean_target.cmake
	cd /home/server/FunCore/build/src/server/collision && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/collision_pch_dephelp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/collision/CMakeFiles/collision_pch_dephelp.dir/build: src/server/collision/libcollision_pch_dephelp.a
.PHONY : src/server/collision/CMakeFiles/collision_pch_dephelp.dir/build

src/server/collision/CMakeFiles/collision_pch_dephelp.dir/requires: src/server/collision/CMakeFiles/collision_pch_dephelp.dir/collision_pch_dephelp.cxx.o.requires
.PHONY : src/server/collision/CMakeFiles/collision_pch_dephelp.dir/requires

src/server/collision/CMakeFiles/collision_pch_dephelp.dir/clean:
	cd /home/server/FunCore/build/src/server/collision && $(CMAKE_COMMAND) -P CMakeFiles/collision_pch_dephelp.dir/cmake_clean.cmake
.PHONY : src/server/collision/CMakeFiles/collision_pch_dephelp.dir/clean

src/server/collision/CMakeFiles/collision_pch_dephelp.dir/depend:
	cd /home/server/FunCore/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/server/FunCore /home/server/FunCore/src/server/collision /home/server/FunCore/build /home/server/FunCore/build/src/server/collision /home/server/FunCore/build/src/server/collision/CMakeFiles/collision_pch_dephelp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/collision/CMakeFiles/collision_pch_dephelp.dir/depend

