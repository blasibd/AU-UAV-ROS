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
CMAKE_SOURCE_DIR = /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS/build

# Include any dependencies generated for this target.
include CMakeFiles/coordinator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/coordinator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/coordinator.dir/flags.make

CMakeFiles/coordinator.dir/src/coordinator.o: CMakeFiles/coordinator.dir/flags.make
CMakeFiles/coordinator.dir/src/coordinator.o: ../src/coordinator.cpp
CMakeFiles/coordinator.dir/src/coordinator.o: ../manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/ros/tools/rospack/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/ros/core/roslib/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/ros/core/rosbuild/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/ros/core/roslang/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/utilities/cpp_common/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_traits/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/utilities/rostime/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp_serialization/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/utilities/xmlrpcpp/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/tools/rosconsole/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/clients/rospy/manifest.xml
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/messages/std_msgs/msg_gen/generated
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/messages/rosgraph_msgs/msg_gen/generated
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/msg_gen/generated
CMakeFiles/coordinator.dir/src/coordinator.o: /opt/ros/diamondback/stacks/ros_comm/clients/cpp/roscpp/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/coordinator.dir/src/coordinator.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/coordinator.dir/src/coordinator.o -c /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS/src/coordinator.cpp

CMakeFiles/coordinator.dir/src/coordinator.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/coordinator.dir/src/coordinator.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS/src/coordinator.cpp > CMakeFiles/coordinator.dir/src/coordinator.i

CMakeFiles/coordinator.dir/src/coordinator.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/coordinator.dir/src/coordinator.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS/src/coordinator.cpp -o CMakeFiles/coordinator.dir/src/coordinator.s

CMakeFiles/coordinator.dir/src/coordinator.o.requires:
.PHONY : CMakeFiles/coordinator.dir/src/coordinator.o.requires

CMakeFiles/coordinator.dir/src/coordinator.o.provides: CMakeFiles/coordinator.dir/src/coordinator.o.requires
	$(MAKE) -f CMakeFiles/coordinator.dir/build.make CMakeFiles/coordinator.dir/src/coordinator.o.provides.build
.PHONY : CMakeFiles/coordinator.dir/src/coordinator.o.provides

CMakeFiles/coordinator.dir/src/coordinator.o.provides.build: CMakeFiles/coordinator.dir/src/coordinator.o
.PHONY : CMakeFiles/coordinator.dir/src/coordinator.o.provides.build

# Object files for target coordinator
coordinator_OBJECTS = \
"CMakeFiles/coordinator.dir/src/coordinator.o"

# External object files for target coordinator
coordinator_EXTERNAL_OBJECTS =

../bin/coordinator: CMakeFiles/coordinator.dir/src/coordinator.o
../bin/coordinator: CMakeFiles/coordinator.dir/build.make
../bin/coordinator: CMakeFiles/coordinator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/coordinator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/coordinator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/coordinator.dir/build: ../bin/coordinator
.PHONY : CMakeFiles/coordinator.dir/build

CMakeFiles/coordinator.dir/requires: CMakeFiles/coordinator.dir/src/coordinator.o.requires
.PHONY : CMakeFiles/coordinator.dir/requires

CMakeFiles/coordinator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/coordinator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/coordinator.dir/clean

CMakeFiles/coordinator.dir/depend:
	cd /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS/build /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS/build /home/matt/AU-UAV-ROS/AU_UAV_stack/AU_UAV_ROS/build/CMakeFiles/coordinator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/coordinator.dir/depend

