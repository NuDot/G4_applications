# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.6

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build

# Include any dependencies generated for this target.
include CMakeFiles/sphere1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sphere1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sphere1.dir/flags.make

CMakeFiles/sphere1.dir/sphere1.cc.o: CMakeFiles/sphere1.dir/flags.make
CMakeFiles/sphere1.dir/sphere1.cc.o: /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/sphere1.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere1.dir/sphere1.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere1.dir/sphere1.cc.o -c /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/sphere1.cc

CMakeFiles/sphere1.dir/sphere1.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere1.dir/sphere1.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/sphere1.cc > CMakeFiles/sphere1.dir/sphere1.cc.i

CMakeFiles/sphere1.dir/sphere1.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere1.dir/sphere1.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/sphere1.cc -o CMakeFiles/sphere1.dir/sphere1.cc.s

CMakeFiles/sphere1.dir/sphere1.cc.o.requires:
.PHONY : CMakeFiles/sphere1.dir/sphere1.cc.o.requires

CMakeFiles/sphere1.dir/sphere1.cc.o.provides: CMakeFiles/sphere1.dir/sphere1.cc.o.requires
	$(MAKE) -f CMakeFiles/sphere1.dir/build.make CMakeFiles/sphere1.dir/sphere1.cc.o.provides.build
.PHONY : CMakeFiles/sphere1.dir/sphere1.cc.o.provides

CMakeFiles/sphere1.dir/sphere1.cc.o.provides.build: CMakeFiles/sphere1.dir/sphere1.cc.o
.PHONY : CMakeFiles/sphere1.dir/sphere1.cc.o.provides.build

CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o: CMakeFiles/sphere1.dir/flags.make
CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o: /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1EventAction.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o -c /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1EventAction.cc

CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1EventAction.cc > CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.i

CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1EventAction.cc -o CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.s

CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o.requires:
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o.requires

CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o.provides: CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o.requires
	$(MAKE) -f CMakeFiles/sphere1.dir/build.make CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o.provides.build
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o.provides

CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o.provides.build: CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o.provides.build

CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o: CMakeFiles/sphere1.dir/flags.make
CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o: /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1StackingAction.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o -c /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1StackingAction.cc

CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1StackingAction.cc > CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.i

CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1StackingAction.cc -o CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.s

CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o.requires:
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o.requires

CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o.provides: CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o.requires
	$(MAKE) -f CMakeFiles/sphere1.dir/build.make CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o.provides.build
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o.provides

CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o.provides.build: CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o.provides.build

CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o: CMakeFiles/sphere1.dir/flags.make
CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o: /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PhysicsListMessenger.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o -c /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PhysicsListMessenger.cc

CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PhysicsListMessenger.cc > CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.i

CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PhysicsListMessenger.cc -o CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.s

CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o.requires:
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o.requires

CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o.provides: CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o.requires
	$(MAKE) -f CMakeFiles/sphere1.dir/build.make CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o.provides.build
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o.provides

CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o.provides.build: CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o.provides.build

CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o: CMakeFiles/sphere1.dir/flags.make
CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o: /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1RunAction.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o -c /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1RunAction.cc

CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1RunAction.cc > CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.i

CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1RunAction.cc -o CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.s

CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o.requires:
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o.requires

CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o.provides: CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o.requires
	$(MAKE) -f CMakeFiles/sphere1.dir/build.make CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o.provides.build
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o.provides

CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o.provides.build: CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o.provides.build

CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o: CMakeFiles/sphere1.dir/flags.make
CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o: /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1DetectorConstruction.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o -c /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1DetectorConstruction.cc

CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1DetectorConstruction.cc > CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.i

CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1DetectorConstruction.cc -o CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.s

CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o.requires:
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o.requires

CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o.provides: CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o.requires
	$(MAKE) -f CMakeFiles/sphere1.dir/build.make CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o.provides.build
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o.provides

CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o.provides.build: CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o.provides.build

CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o: CMakeFiles/sphere1.dir/flags.make
CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o: /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1SteppingAction.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o -c /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1SteppingAction.cc

CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1SteppingAction.cc > CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.i

CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1SteppingAction.cc -o CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.s

CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o.requires:
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o.requires

CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o.provides: CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o.requires
	$(MAKE) -f CMakeFiles/sphere1.dir/build.make CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o.provides.build
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o.provides

CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o.provides.build: CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o.provides.build

CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o: CMakeFiles/sphere1.dir/flags.make
CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o: /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PhysicsList.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o -c /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PhysicsList.cc

CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PhysicsList.cc > CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.i

CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PhysicsList.cc -o CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.s

CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o.requires:
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o.requires

CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o.provides: CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o.requires
	$(MAKE) -f CMakeFiles/sphere1.dir/build.make CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o.provides.build
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o.provides

CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o.provides.build: CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o.provides.build

CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o: CMakeFiles/sphere1.dir/flags.make
CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o: /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PrimaryGeneratorAction.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o -c /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PrimaryGeneratorAction.cc

CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PrimaryGeneratorAction.cc > CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.i

CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/Sphere1PrimaryGeneratorAction.cc -o CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.s

CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o.requires:
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o.requires

CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o.provides: CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o.requires
	$(MAKE) -f CMakeFiles/sphere1.dir/build.make CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o.provides.build
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o.provides

CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o.provides.build: CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o
.PHONY : CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o.provides.build

CMakeFiles/sphere1.dir/src/sphere1.cc.o: CMakeFiles/sphere1.dir/flags.make
CMakeFiles/sphere1.dir/src/sphere1.cc.o: /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/sphere1.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sphere1.dir/src/sphere1.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sphere1.dir/src/sphere1.cc.o -c /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/sphere1.cc

CMakeFiles/sphere1.dir/src/sphere1.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sphere1.dir/src/sphere1.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/sphere1.cc > CMakeFiles/sphere1.dir/src/sphere1.cc.i

CMakeFiles/sphere1.dir/src/sphere1.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sphere1.dir/src/sphere1.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source/src/sphere1.cc -o CMakeFiles/sphere1.dir/src/sphere1.cc.s

CMakeFiles/sphere1.dir/src/sphere1.cc.o.requires:
.PHONY : CMakeFiles/sphere1.dir/src/sphere1.cc.o.requires

CMakeFiles/sphere1.dir/src/sphere1.cc.o.provides: CMakeFiles/sphere1.dir/src/sphere1.cc.o.requires
	$(MAKE) -f CMakeFiles/sphere1.dir/build.make CMakeFiles/sphere1.dir/src/sphere1.cc.o.provides.build
.PHONY : CMakeFiles/sphere1.dir/src/sphere1.cc.o.provides

CMakeFiles/sphere1.dir/src/sphere1.cc.o.provides.build: CMakeFiles/sphere1.dir/src/sphere1.cc.o
.PHONY : CMakeFiles/sphere1.dir/src/sphere1.cc.o.provides.build

# Object files for target sphere1
sphere1_OBJECTS = \
"CMakeFiles/sphere1.dir/sphere1.cc.o" \
"CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o" \
"CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o" \
"CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o" \
"CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o" \
"CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o" \
"CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o" \
"CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o" \
"CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o" \
"CMakeFiles/sphere1.dir/src/sphere1.cc.o"

# External object files for target sphere1
sphere1_EXTERNAL_OBJECTS =

sphere1: CMakeFiles/sphere1.dir/sphere1.cc.o
sphere1: CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o
sphere1: CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o
sphere1: CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o
sphere1: CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o
sphere1: CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o
sphere1: CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o
sphere1: CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o
sphere1: CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o
sphere1: CMakeFiles/sphere1.dir/src/sphere1.cc.o
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4Tree.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4FR.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4GMocren.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4visHepRep.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4RayTracer.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4VRML.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4OpenGL.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4gl2ps.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4vis_management.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4modeling.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4interfaces.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4persistency.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4analysis.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4error_propagation.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4readout.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4physicslists.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4run.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4event.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4tracking.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4parmodels.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4processes.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4digits_hits.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4track.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4particles.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4geometry.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4materials.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4graphics_reps.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4intercoms.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4global.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4clhep.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4zlib.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4FR.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4vis_management.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4modeling.so
sphere1: /usr/lib64/libXm.so
sphere1: /usr/lib64/libSM.so
sphere1: /usr/lib64/libICE.so
sphere1: /usr/lib64/libX11.so
sphere1: /usr/lib64/libXext.so
sphere1: /usr/lib64/libXmu.so
sphere1: /usr/lib64/libGLU.so
sphere1: /usr/lib64/libGL.so
sphere1: /usr/lib64/libQtOpenGL.so
sphere1: /usr/lib64/libQtGui.so
sphere1: /usr/lib64/libQtGui_debug.so
sphere1: /usr/lib64/libQtCore.so
sphere1: /usr/lib64/libQtCore_debug.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4run.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4event.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4tracking.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4processes.so
sphere1: /usr/lib64/libexpat.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4digits_hits.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4track.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4particles.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4geometry.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4materials.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4graphics_reps.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4intercoms.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4global.so
sphere1: /u/nobackup/lwinslow/apps/geant4/geant4.9.6.p02-install/lib64/libG4clhep.so
sphere1: CMakeFiles/sphere1.dir/build.make
sphere1: CMakeFiles/sphere1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable sphere1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sphere1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sphere1.dir/build: sphere1
.PHONY : CMakeFiles/sphere1.dir/build

CMakeFiles/sphere1.dir/requires: CMakeFiles/sphere1.dir/sphere1.cc.o.requires
CMakeFiles/sphere1.dir/requires: CMakeFiles/sphere1.dir/src/Sphere1EventAction.cc.o.requires
CMakeFiles/sphere1.dir/requires: CMakeFiles/sphere1.dir/src/Sphere1StackingAction.cc.o.requires
CMakeFiles/sphere1.dir/requires: CMakeFiles/sphere1.dir/src/Sphere1PhysicsListMessenger.cc.o.requires
CMakeFiles/sphere1.dir/requires: CMakeFiles/sphere1.dir/src/Sphere1RunAction.cc.o.requires
CMakeFiles/sphere1.dir/requires: CMakeFiles/sphere1.dir/src/Sphere1DetectorConstruction.cc.o.requires
CMakeFiles/sphere1.dir/requires: CMakeFiles/sphere1.dir/src/Sphere1SteppingAction.cc.o.requires
CMakeFiles/sphere1.dir/requires: CMakeFiles/sphere1.dir/src/Sphere1PhysicsList.cc.o.requires
CMakeFiles/sphere1.dir/requires: CMakeFiles/sphere1.dir/src/Sphere1PrimaryGeneratorAction.cc.o.requires
CMakeFiles/sphere1.dir/requires: CMakeFiles/sphere1.dir/src/sphere1.cc.o.requires
.PHONY : CMakeFiles/sphere1.dir/requires

CMakeFiles/sphere1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sphere1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sphere1.dir/clean

CMakeFiles/sphere1.dir/depend:
	cd /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-source /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build /u/nobackup/lwinslow/apps/G4_applications/Sphere1/Sphere1-build/CMakeFiles/sphere1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sphere1.dir/depend
