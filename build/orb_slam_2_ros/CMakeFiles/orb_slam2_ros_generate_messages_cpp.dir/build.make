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
CMAKE_SOURCE_DIR = /home/xiaoxin/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xiaoxin/catkin_ws/build

# Utility rule file for orb_slam2_ros_generate_messages_cpp.

# Include the progress variables for this target.
include orb_slam_2_ros/CMakeFiles/orb_slam2_ros_generate_messages_cpp.dir/progress.make

orb_slam_2_ros/CMakeFiles/orb_slam2_ros_generate_messages_cpp: /home/xiaoxin/catkin_ws/devel/include/orb_slam2_ros/SaveMap.h


/home/xiaoxin/catkin_ws/devel/include/orb_slam2_ros/SaveMap.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/xiaoxin/catkin_ws/devel/include/orb_slam2_ros/SaveMap.h: /home/xiaoxin/catkin_ws/src/orb_slam_2_ros/srv/SaveMap.srv
/home/xiaoxin/catkin_ws/devel/include/orb_slam2_ros/SaveMap.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/xiaoxin/catkin_ws/devel/include/orb_slam2_ros/SaveMap.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xiaoxin/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from orb_slam2_ros/SaveMap.srv"
	cd /home/xiaoxin/catkin_ws/src/orb_slam_2_ros && /home/xiaoxin/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/xiaoxin/catkin_ws/src/orb_slam_2_ros/srv/SaveMap.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p orb_slam2_ros -o /home/xiaoxin/catkin_ws/devel/include/orb_slam2_ros -e /opt/ros/noetic/share/gencpp/cmake/..

orb_slam2_ros_generate_messages_cpp: orb_slam_2_ros/CMakeFiles/orb_slam2_ros_generate_messages_cpp
orb_slam2_ros_generate_messages_cpp: /home/xiaoxin/catkin_ws/devel/include/orb_slam2_ros/SaveMap.h
orb_slam2_ros_generate_messages_cpp: orb_slam_2_ros/CMakeFiles/orb_slam2_ros_generate_messages_cpp.dir/build.make

.PHONY : orb_slam2_ros_generate_messages_cpp

# Rule to build all files generated by this target.
orb_slam_2_ros/CMakeFiles/orb_slam2_ros_generate_messages_cpp.dir/build: orb_slam2_ros_generate_messages_cpp

.PHONY : orb_slam_2_ros/CMakeFiles/orb_slam2_ros_generate_messages_cpp.dir/build

orb_slam_2_ros/CMakeFiles/orb_slam2_ros_generate_messages_cpp.dir/clean:
	cd /home/xiaoxin/catkin_ws/build/orb_slam_2_ros && $(CMAKE_COMMAND) -P CMakeFiles/orb_slam2_ros_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : orb_slam_2_ros/CMakeFiles/orb_slam2_ros_generate_messages_cpp.dir/clean

orb_slam_2_ros/CMakeFiles/orb_slam2_ros_generate_messages_cpp.dir/depend:
	cd /home/xiaoxin/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xiaoxin/catkin_ws/src /home/xiaoxin/catkin_ws/src/orb_slam_2_ros /home/xiaoxin/catkin_ws/build /home/xiaoxin/catkin_ws/build/orb_slam_2_ros /home/xiaoxin/catkin_ws/build/orb_slam_2_ros/CMakeFiles/orb_slam2_ros_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : orb_slam_2_ros/CMakeFiles/orb_slam2_ros_generate_messages_cpp.dir/depend

