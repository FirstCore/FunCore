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
include src/server/worldserver/CMakeFiles/worldserver.dir/depend.make

# Include the progress variables for this target.
include src/server/worldserver/CMakeFiles/worldserver.dir/progress.make

# Include the compile flags for this target's objects.
include src/server/worldserver/CMakeFiles/worldserver.dir/flags.make

src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o: src/server/worldserver/CMakeFiles/worldserver.dir/flags.make
src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o: ../src/server/worldserver/CommandLine/CliRunnable.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/server/FunCore/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -o CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o -c /home/server/FunCore/src/server/worldserver/CommandLine/CliRunnable.cpp

src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.i"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -E /home/server/FunCore/src/server/worldserver/CommandLine/CliRunnable.cpp > CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.i

src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.s"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -S /home/server/FunCore/src/server/worldserver/CommandLine/CliRunnable.cpp -o CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.s

src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o.requires:
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o.requires

src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o.provides: src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o.requires
	$(MAKE) -f src/server/worldserver/CMakeFiles/worldserver.dir/build.make src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o.provides.build
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o.provides

src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o.provides.build: src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o.provides.build

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o: src/server/worldserver/CMakeFiles/worldserver.dir/flags.make
src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o: ../src/server/worldserver/RemoteAccess/RASocket.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/server/FunCore/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -o CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o -c /home/server/FunCore/src/server/worldserver/RemoteAccess/RASocket.cpp

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.i"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -E /home/server/FunCore/src/server/worldserver/RemoteAccess/RASocket.cpp > CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.i

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.s"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -S /home/server/FunCore/src/server/worldserver/RemoteAccess/RASocket.cpp -o CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.s

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o.requires:
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o.requires

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o.provides: src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o.requires
	$(MAKE) -f src/server/worldserver/CMakeFiles/worldserver.dir/build.make src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o.provides.build
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o.provides

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o.provides.build: src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o.provides.build

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o: src/server/worldserver/CMakeFiles/worldserver.dir/flags.make
src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o: ../src/server/worldserver/RemoteAccess/RARunnable.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/server/FunCore/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -o CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o -c /home/server/FunCore/src/server/worldserver/RemoteAccess/RARunnable.cpp

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.i"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -E /home/server/FunCore/src/server/worldserver/RemoteAccess/RARunnable.cpp > CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.i

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.s"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -S /home/server/FunCore/src/server/worldserver/RemoteAccess/RARunnable.cpp -o CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.s

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o.requires:
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o.requires

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o.provides: src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o.requires
	$(MAKE) -f src/server/worldserver/CMakeFiles/worldserver.dir/build.make src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o.provides.build
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o.provides

src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o.provides.build: src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o.provides.build

src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o: src/server/worldserver/CMakeFiles/worldserver.dir/flags.make
src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o: ../src/server/worldserver/TCSoap/TCSoap.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/server/FunCore/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -o CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o -c /home/server/FunCore/src/server/worldserver/TCSoap/TCSoap.cpp

src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.i"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -E /home/server/FunCore/src/server/worldserver/TCSoap/TCSoap.cpp > CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.i

src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.s"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -S /home/server/FunCore/src/server/worldserver/TCSoap/TCSoap.cpp -o CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.s

src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o.requires:
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o.requires

src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o.provides: src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o.requires
	$(MAKE) -f src/server/worldserver/CMakeFiles/worldserver.dir/build.make src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o.provides.build
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o.provides

src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o.provides.build: src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o.provides.build

src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o: src/server/worldserver/CMakeFiles/worldserver.dir/flags.make
src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o: ../src/server/worldserver/WorldThread/WorldRunnable.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/server/FunCore/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -o CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o -c /home/server/FunCore/src/server/worldserver/WorldThread/WorldRunnable.cpp

src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.i"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -E /home/server/FunCore/src/server/worldserver/WorldThread/WorldRunnable.cpp > CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.i

src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.s"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -S /home/server/FunCore/src/server/worldserver/WorldThread/WorldRunnable.cpp -o CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.s

src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o.requires:
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o.requires

src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o.provides: src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o.requires
	$(MAKE) -f src/server/worldserver/CMakeFiles/worldserver.dir/build.make src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o.provides.build
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o.provides

src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o.provides.build: src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o.provides.build

src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o: src/server/worldserver/CMakeFiles/worldserver.dir/flags.make
src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o: ../src/server/worldserver/Master.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/server/FunCore/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -o CMakeFiles/worldserver.dir/Master.cpp.o -c /home/server/FunCore/src/server/worldserver/Master.cpp

src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worldserver.dir/Master.cpp.i"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -E /home/server/FunCore/src/server/worldserver/Master.cpp > CMakeFiles/worldserver.dir/Master.cpp.i

src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worldserver.dir/Master.cpp.s"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -S /home/server/FunCore/src/server/worldserver/Master.cpp -o CMakeFiles/worldserver.dir/Master.cpp.s

src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o.requires:
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o.requires

src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o.provides: src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o.requires
	$(MAKE) -f src/server/worldserver/CMakeFiles/worldserver.dir/build.make src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o.provides.build
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o.provides

src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o.provides.build: src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o.provides.build

src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o: src/server/worldserver/CMakeFiles/worldserver.dir/flags.make
src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o: ../src/server/worldserver/Main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/server/FunCore/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -o CMakeFiles/worldserver.dir/Main.cpp.o -c /home/server/FunCore/src/server/worldserver/Main.cpp

src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worldserver.dir/Main.cpp.i"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -E /home/server/FunCore/src/server/worldserver/Main.cpp > CMakeFiles/worldserver.dir/Main.cpp.i

src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worldserver.dir/Main.cpp.s"
	cd /home/server/FunCore/build/src/server/worldserver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -include /home/server/FunCore/build/src/server/worldserver/worldPCH.h -Winvalid-pch  -S /home/server/FunCore/src/server/worldserver/Main.cpp -o CMakeFiles/worldserver.dir/Main.cpp.s

src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o.requires:
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o.requires

src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o.provides: src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o.requires
	$(MAKE) -f src/server/worldserver/CMakeFiles/worldserver.dir/build.make src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o.provides.build
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o.provides

src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o.provides.build: src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o.provides.build

# Object files for target worldserver
worldserver_OBJECTS = \
"CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o" \
"CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o" \
"CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o" \
"CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o" \
"CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o" \
"CMakeFiles/worldserver.dir/Master.cpp.o" \
"CMakeFiles/worldserver.dir/Main.cpp.o"

# External object files for target worldserver
worldserver_EXTERNAL_OBJECTS =

src/server/worldserver/worldserver: src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o
src/server/worldserver/worldserver: src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o
src/server/worldserver/worldserver: src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o
src/server/worldserver/worldserver: src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o
src/server/worldserver/worldserver: src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o
src/server/worldserver/worldserver: src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o
src/server/worldserver/worldserver: src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o
src/server/worldserver/worldserver: src/server/game/libgame.a
src/server/worldserver/worldserver: src/server/shared/libshared.a
src/server/worldserver/worldserver: src/server/scripts/libscripts.a
src/server/worldserver/worldserver: src/server/collision/libcollision.a
src/server/worldserver/worldserver: dep/g3dlite/libg3dlib.a
src/server/worldserver/worldserver: dep/gsoap/libgsoap.a
src/server/worldserver/worldserver: dep/jemalloc/libjemalloc.a
src/server/worldserver/worldserver: /usr/lib/libreadline.so
src/server/worldserver/worldserver: /home/server/.sys/lib/libACE.so
src/server/worldserver/worldserver: /usr/lib/libmysqlclient_r.so
src/server/worldserver/worldserver: /usr/lib/libssl.so
src/server/worldserver/worldserver: /usr/lib/libcrypto.so
src/server/worldserver/worldserver: /usr/lib/libz.so
src/server/worldserver/worldserver: src/server/worldserver/CMakeFiles/worldserver.dir/build.make
src/server/worldserver/worldserver: src/server/worldserver/CMakeFiles/worldserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable worldserver"
	cd /home/server/FunCore/build/src/server/worldserver && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/worldserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/server/worldserver/CMakeFiles/worldserver.dir/build: src/server/worldserver/worldserver
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/build

src/server/worldserver/CMakeFiles/worldserver.dir/requires: src/server/worldserver/CMakeFiles/worldserver.dir/CommandLine/CliRunnable.cpp.o.requires
src/server/worldserver/CMakeFiles/worldserver.dir/requires: src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RASocket.cpp.o.requires
src/server/worldserver/CMakeFiles/worldserver.dir/requires: src/server/worldserver/CMakeFiles/worldserver.dir/RemoteAccess/RARunnable.cpp.o.requires
src/server/worldserver/CMakeFiles/worldserver.dir/requires: src/server/worldserver/CMakeFiles/worldserver.dir/TCSoap/TCSoap.cpp.o.requires
src/server/worldserver/CMakeFiles/worldserver.dir/requires: src/server/worldserver/CMakeFiles/worldserver.dir/WorldThread/WorldRunnable.cpp.o.requires
src/server/worldserver/CMakeFiles/worldserver.dir/requires: src/server/worldserver/CMakeFiles/worldserver.dir/Master.cpp.o.requires
src/server/worldserver/CMakeFiles/worldserver.dir/requires: src/server/worldserver/CMakeFiles/worldserver.dir/Main.cpp.o.requires
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/requires

src/server/worldserver/CMakeFiles/worldserver.dir/clean:
	cd /home/server/FunCore/build/src/server/worldserver && $(CMAKE_COMMAND) -P CMakeFiles/worldserver.dir/cmake_clean.cmake
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/clean

src/server/worldserver/CMakeFiles/worldserver.dir/depend:
	cd /home/server/FunCore/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/server/FunCore /home/server/FunCore/src/server/worldserver /home/server/FunCore/build /home/server/FunCore/build/src/server/worldserver /home/server/FunCore/build/src/server/worldserver/CMakeFiles/worldserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/server/worldserver/CMakeFiles/worldserver.dir/depend

