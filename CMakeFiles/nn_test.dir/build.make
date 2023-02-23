# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/mp4d/git/NN_FPGA_acceleration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mp4d/git/NN_FPGA_acceleration

# Include any dependencies generated for this target.
include CMakeFiles/nn_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nn_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nn_test.dir/flags.make

CMakeFiles/nn_test.dir/nn_test.cpp.o: CMakeFiles/nn_test.dir/flags.make
CMakeFiles/nn_test.dir/nn_test.cpp.o: nn_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mp4d/git/NN_FPGA_acceleration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/nn_test.dir/nn_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nn_test.dir/nn_test.cpp.o -c /home/mp4d/git/NN_FPGA_acceleration/nn_test.cpp

CMakeFiles/nn_test.dir/nn_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nn_test.dir/nn_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mp4d/git/NN_FPGA_acceleration/nn_test.cpp > CMakeFiles/nn_test.dir/nn_test.cpp.i

CMakeFiles/nn_test.dir/nn_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nn_test.dir/nn_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mp4d/git/NN_FPGA_acceleration/nn_test.cpp -o CMakeFiles/nn_test.dir/nn_test.cpp.s

CMakeFiles/nn_test.dir/src/bram_uio.cpp.o: CMakeFiles/nn_test.dir/flags.make
CMakeFiles/nn_test.dir/src/bram_uio.cpp.o: src/bram_uio.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mp4d/git/NN_FPGA_acceleration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/nn_test.dir/src/bram_uio.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nn_test.dir/src/bram_uio.cpp.o -c /home/mp4d/git/NN_FPGA_acceleration/src/bram_uio.cpp

CMakeFiles/nn_test.dir/src/bram_uio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nn_test.dir/src/bram_uio.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mp4d/git/NN_FPGA_acceleration/src/bram_uio.cpp > CMakeFiles/nn_test.dir/src/bram_uio.cpp.i

CMakeFiles/nn_test.dir/src/bram_uio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nn_test.dir/src/bram_uio.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mp4d/git/NN_FPGA_acceleration/src/bram_uio.cpp -o CMakeFiles/nn_test.dir/src/bram_uio.cpp.s

# Object files for target nn_test
nn_test_OBJECTS = \
"CMakeFiles/nn_test.dir/nn_test.cpp.o" \
"CMakeFiles/nn_test.dir/src/bram_uio.cpp.o"

# External object files for target nn_test
nn_test_EXTERNAL_OBJECTS =

nn_test: CMakeFiles/nn_test.dir/nn_test.cpp.o
nn_test: CMakeFiles/nn_test.dir/src/bram_uio.cpp.o
nn_test: CMakeFiles/nn_test.dir/build.make
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_stitching.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_aruco.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_bgsegm.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_bioinspired.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_ccalib.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_dnn_superres.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_dpm.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_face.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_freetype.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_fuzzy.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_hdf.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_hfs.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_img_hash.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_line_descriptor.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_quality.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_reg.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_rgbd.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_saliency.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_shape.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_stereo.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_structured_light.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_superres.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_surface_matching.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_tracking.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_videostab.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_viz.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_xobjdetect.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_xphoto.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_highgui.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_datasets.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_plot.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_text.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_dnn.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_ml.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_optflow.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_ximgproc.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_video.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_videoio.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_objdetect.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_calib3d.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_features2d.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_flann.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_photo.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.4.2.0
nn_test: /usr/lib/aarch64-linux-gnu/libopencv_core.so.4.2.0
nn_test: CMakeFiles/nn_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mp4d/git/NN_FPGA_acceleration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable nn_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nn_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nn_test.dir/build: nn_test

.PHONY : CMakeFiles/nn_test.dir/build

CMakeFiles/nn_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nn_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nn_test.dir/clean

CMakeFiles/nn_test.dir/depend:
	cd /home/mp4d/git/NN_FPGA_acceleration && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mp4d/git/NN_FPGA_acceleration /home/mp4d/git/NN_FPGA_acceleration /home/mp4d/git/NN_FPGA_acceleration /home/mp4d/git/NN_FPGA_acceleration /home/mp4d/git/NN_FPGA_acceleration/CMakeFiles/nn_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nn_test.dir/depend

