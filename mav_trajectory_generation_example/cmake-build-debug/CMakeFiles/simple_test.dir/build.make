# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/zhichao/clion-2019.3.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/zhichao/clion-2019.3.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/simple_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simple_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple_test.dir/flags.make

CMakeFiles/simple_test.dir/src/simple.cpp.o: CMakeFiles/simple_test.dir/flags.make
CMakeFiles/simple_test.dir/src/simple.cpp.o: ../src/simple.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple_test.dir/src/simple.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_test.dir/src/simple.cpp.o -c /home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example/src/simple.cpp

CMakeFiles/simple_test.dir/src/simple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_test.dir/src/simple.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example/src/simple.cpp > CMakeFiles/simple_test.dir/src/simple.cpp.i

CMakeFiles/simple_test.dir/src/simple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_test.dir/src/simple.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example/src/simple.cpp -o CMakeFiles/simple_test.dir/src/simple.cpp.s

# Object files for target simple_test
simple_test_OBJECTS = \
"CMakeFiles/simple_test.dir/src/simple.cpp.o"

# External object files for target simple_test
simple_test_EXTERNAL_OBJECTS =

devel/lib/mav_trajectory_generation_example/simple_test: CMakeFiles/simple_test.dir/src/simple.cpp.o
devel/lib/mav_trajectory_generation_example/simple_test: CMakeFiles/simple_test.dir/build.make
devel/lib/mav_trajectory_generation_example/simple_test: /home/zhichao/catkin_ws/devel/.private/mav_trajectory_generation_ros/lib/libmav_trajectory_generation_ros.so
devel/lib/mav_trajectory_generation_example/simple_test: /home/zhichao/catkin_ws/devel/.private/mav_trajectory_generation/lib/libmav_trajectory_generation.so
devel/lib/mav_trajectory_generation_example/simple_test: /home/zhichao/catkin_ws/devel/.private/mav_visualization/lib/libmav_visualization.so
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/libeigen_conversions.so
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/liborocos-kdl.so.1.3.2
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/libroscpp.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libboost_signals.so
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/librosconsole.so
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/libxmlrpcpp.so
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/libroscpp_serialization.so
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/librostime.so
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/libcpp_common.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
devel/lib/mav_trajectory_generation_example/simple_test: /home/zhichao/catkin_ws/devel/.private/eigen_checks/lib/libeigen_checks.so
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/libroslib.so
devel/lib/mav_trajectory_generation_example/simple_test: /opt/ros/kinetic/lib/librospack.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libpython2.7.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/mav_trajectory_generation_example/simple_test: /usr/lib/x86_64-linux-gnu/libtinyxml.so
devel/lib/mav_trajectory_generation_example/simple_test: /home/zhichao/catkin_ws/devel/.private/plotty/lib/libplotty.so
devel/lib/mav_trajectory_generation_example/simple_test: /home/zhichao/catkin_ws/devel/.private/yaml_cpp_catkin/lib/libyaml-cpp0.5.so
devel/lib/mav_trajectory_generation_example/simple_test: /home/zhichao/catkin_ws/devel/.private/glog_catkin/lib/libglog.so
devel/lib/mav_trajectory_generation_example/simple_test: /home/zhichao/catkin_ws/devel/.private/nlopt/lib/libnlopt_wrap.so
devel/lib/mav_trajectory_generation_example/simple_test: CMakeFiles/simple_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable devel/lib/mav_trajectory_generation_example/simple_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple_test.dir/build: devel/lib/mav_trajectory_generation_example/simple_test

.PHONY : CMakeFiles/simple_test.dir/build

CMakeFiles/simple_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple_test.dir/clean

CMakeFiles/simple_test.dir/depend:
	cd /home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example /home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example /home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example/cmake-build-debug /home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example/cmake-build-debug /home/zhichao/catkin_ws/src/mav_trajectory_generation/mav_trajectory_generation_example/cmake-build-debug/CMakeFiles/simple_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple_test.dir/depend

