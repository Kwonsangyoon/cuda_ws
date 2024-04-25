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
CMAKE_SOURCE_DIR = /home/kwon/cuda_ws/cudavec_add

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kwon/cuda_ws/cudavec_add/build

# Include any dependencies generated for this target.
include CMakeFiles/cudavec_add.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cudavec_add.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cudavec_add.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cudavec_add.dir/flags.make

CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.o: CMakeFiles/cudavec_add.dir/flags.make
CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.o: ../src/cudavec_add.cu
CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.o: CMakeFiles/cudavec_add.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kwon/cuda_ws/cudavec_add/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.o"
	/usr/local/cuda/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.o -MF CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.o.d -x cu -c /home/kwon/cuda_ws/cudavec_add/src/cudavec_add.cu -o CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.o

CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target cudavec_add
cudavec_add_OBJECTS = \
"CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.o"

# External object files for target cudavec_add
cudavec_add_EXTERNAL_OBJECTS =

cudavec_add: CMakeFiles/cudavec_add.dir/src/cudavec_add.cu.o
cudavec_add: CMakeFiles/cudavec_add.dir/build.make
cudavec_add: CMakeFiles/cudavec_add.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kwon/cuda_ws/cudavec_add/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA executable cudavec_add"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cudavec_add.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cudavec_add.dir/build: cudavec_add
.PHONY : CMakeFiles/cudavec_add.dir/build

CMakeFiles/cudavec_add.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cudavec_add.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cudavec_add.dir/clean

CMakeFiles/cudavec_add.dir/depend:
	cd /home/kwon/cuda_ws/cudavec_add/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kwon/cuda_ws/cudavec_add /home/kwon/cuda_ws/cudavec_add /home/kwon/cuda_ws/cudavec_add/build /home/kwon/cuda_ws/cudavec_add/build /home/kwon/cuda_ws/cudavec_add/build/CMakeFiles/cudavec_add.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cudavec_add.dir/depend
