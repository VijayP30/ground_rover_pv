# Install script for directory: /home/ubuntu/Catkin_ws/src/rr_control_input_manager

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/Catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/Catkin_ws/build/rr_control_input_manager/catkin_generated/installspace/rr_control_input_manager.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rr_control_input_manager/cmake" TYPE FILE FILES
    "/home/ubuntu/Catkin_ws/build/rr_control_input_manager/catkin_generated/installspace/rr_control_input_managerConfig.cmake"
    "/home/ubuntu/Catkin_ws/build/rr_control_input_manager/catkin_generated/installspace/rr_control_input_managerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rr_control_input_manager" TYPE FILE FILES "/home/ubuntu/Catkin_ws/src/rr_control_input_manager/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rr_control_input_manager" TYPE PROGRAM FILES "/home/ubuntu/Catkin_ws/build/rr_control_input_manager/catkin_generated/installspace/control_input_manager.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rr_control_input_manager" TYPE PROGRAM FILES "/home/ubuntu/Catkin_ws/build/rr_control_input_manager/catkin_generated/installspace/ps4_mapper.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rr_control_input_manager/test" TYPE PROGRAM FILES "/home/ubuntu/Catkin_ws/build/rr_control_input_manager/catkin_generated/installspace/test_functional.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rr_control_input_manager/test" TYPE PROGRAM FILES "/home/ubuntu/Catkin_ws/build/rr_control_input_manager/catkin_generated/installspace/test_latency.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rr_control_input_manager/launch" TYPE DIRECTORY FILES "/home/ubuntu/Catkin_ws/src/rr_control_input_manager/launch/" FILES_MATCHING REGEX "/[^/]*\\.launch$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rr_control_input_manager/config" TYPE DIRECTORY FILES "/home/ubuntu/Catkin_ws/src/rr_control_input_manager/config/" FILES_MATCHING REGEX "/[^/]*\\.yaml$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rr_control_input_manager/test" TYPE DIRECTORY FILES "/home/ubuntu/Catkin_ws/src/rr_control_input_manager/test/" FILES_MATCHING REGEX "/[^/]*\\.test$")
endif()

