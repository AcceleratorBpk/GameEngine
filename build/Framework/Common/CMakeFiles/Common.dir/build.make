# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = E:/tmake/CMake/bin/cmake.exe

# The command to remove a file.
RM = E:/tmake/CMake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:/gmaker/bgame/GameEngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:/gmaker/bgame/GameEngine/build

# Include any dependencies generated for this target.
include Framework/Common/CMakeFiles/Common.dir/depend.make

# Include the progress variables for this target.
include Framework/Common/CMakeFiles/Common.dir/progress.make

# Include the compile flags for this target's objects.
include Framework/Common/CMakeFiles/Common.dir/flags.make

Framework/Common/CMakeFiles/Common.dir/BaseApplication.cpp.obj: Framework/Common/CMakeFiles/Common.dir/flags.make
Framework/Common/CMakeFiles/Common.dir/BaseApplication.cpp.obj: Framework/Common/CMakeFiles/Common.dir/includes_CXX.rsp
Framework/Common/CMakeFiles/Common.dir/BaseApplication.cpp.obj: ../Framework/Common/BaseApplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:/gmaker/bgame/GameEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Framework/Common/CMakeFiles/Common.dir/BaseApplication.cpp.obj"
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && C:/mingw64/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/BaseApplication.cpp.obj -c E:/gmaker/bgame/GameEngine/Framework/Common/BaseApplication.cpp

Framework/Common/CMakeFiles/Common.dir/BaseApplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/BaseApplication.cpp.i"
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && C:/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:/gmaker/bgame/GameEngine/Framework/Common/BaseApplication.cpp > CMakeFiles/Common.dir/BaseApplication.cpp.i

Framework/Common/CMakeFiles/Common.dir/BaseApplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/BaseApplication.cpp.s"
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && C:/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:/gmaker/bgame/GameEngine/Framework/Common/BaseApplication.cpp -o CMakeFiles/Common.dir/BaseApplication.cpp.s

Framework/Common/CMakeFiles/Common.dir/GraphicsManager.cpp.obj: Framework/Common/CMakeFiles/Common.dir/flags.make
Framework/Common/CMakeFiles/Common.dir/GraphicsManager.cpp.obj: Framework/Common/CMakeFiles/Common.dir/includes_CXX.rsp
Framework/Common/CMakeFiles/Common.dir/GraphicsManager.cpp.obj: ../Framework/Common/GraphicsManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:/gmaker/bgame/GameEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Framework/Common/CMakeFiles/Common.dir/GraphicsManager.cpp.obj"
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && C:/mingw64/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/GraphicsManager.cpp.obj -c E:/gmaker/bgame/GameEngine/Framework/Common/GraphicsManager.cpp

Framework/Common/CMakeFiles/Common.dir/GraphicsManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/GraphicsManager.cpp.i"
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && C:/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:/gmaker/bgame/GameEngine/Framework/Common/GraphicsManager.cpp > CMakeFiles/Common.dir/GraphicsManager.cpp.i

Framework/Common/CMakeFiles/Common.dir/GraphicsManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/GraphicsManager.cpp.s"
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && C:/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:/gmaker/bgame/GameEngine/Framework/Common/GraphicsManager.cpp -o CMakeFiles/Common.dir/GraphicsManager.cpp.s

Framework/Common/CMakeFiles/Common.dir/main.cpp.obj: Framework/Common/CMakeFiles/Common.dir/flags.make
Framework/Common/CMakeFiles/Common.dir/main.cpp.obj: Framework/Common/CMakeFiles/Common.dir/includes_CXX.rsp
Framework/Common/CMakeFiles/Common.dir/main.cpp.obj: ../Framework/Common/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:/gmaker/bgame/GameEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Framework/Common/CMakeFiles/Common.dir/main.cpp.obj"
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && C:/mingw64/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Common.dir/main.cpp.obj -c E:/gmaker/bgame/GameEngine/Framework/Common/main.cpp

Framework/Common/CMakeFiles/Common.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Common.dir/main.cpp.i"
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && C:/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:/gmaker/bgame/GameEngine/Framework/Common/main.cpp > CMakeFiles/Common.dir/main.cpp.i

Framework/Common/CMakeFiles/Common.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Common.dir/main.cpp.s"
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && C:/mingw64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:/gmaker/bgame/GameEngine/Framework/Common/main.cpp -o CMakeFiles/Common.dir/main.cpp.s

# Object files for target Common
Common_OBJECTS = \
"CMakeFiles/Common.dir/BaseApplication.cpp.obj" \
"CMakeFiles/Common.dir/GraphicsManager.cpp.obj" \
"CMakeFiles/Common.dir/main.cpp.obj"

# External object files for target Common
Common_EXTERNAL_OBJECTS =

Framework/Common/libCommon.a: Framework/Common/CMakeFiles/Common.dir/BaseApplication.cpp.obj
Framework/Common/libCommon.a: Framework/Common/CMakeFiles/Common.dir/GraphicsManager.cpp.obj
Framework/Common/libCommon.a: Framework/Common/CMakeFiles/Common.dir/main.cpp.obj
Framework/Common/libCommon.a: Framework/Common/CMakeFiles/Common.dir/build.make
Framework/Common/libCommon.a: Framework/Common/CMakeFiles/Common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:/gmaker/bgame/GameEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libCommon.a"
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && $(CMAKE_COMMAND) -P CMakeFiles/Common.dir/cmake_clean_target.cmake
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Framework/Common/CMakeFiles/Common.dir/build: Framework/Common/libCommon.a

.PHONY : Framework/Common/CMakeFiles/Common.dir/build

Framework/Common/CMakeFiles/Common.dir/clean:
	cd E:/gmaker/bgame/GameEngine/build/Framework/Common && $(CMAKE_COMMAND) -P CMakeFiles/Common.dir/cmake_clean.cmake
.PHONY : Framework/Common/CMakeFiles/Common.dir/clean

Framework/Common/CMakeFiles/Common.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" E:/gmaker/bgame/GameEngine E:/gmaker/bgame/GameEngine/Framework/Common E:/gmaker/bgame/GameEngine/build E:/gmaker/bgame/GameEngine/build/Framework/Common E:/gmaker/bgame/GameEngine/build/Framework/Common/CMakeFiles/Common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Framework/Common/CMakeFiles/Common.dir/depend
