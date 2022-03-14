# Install script for directory: /home/josh/Documents/MTRE4200/my_ws/src/my_pack

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/josh/Documents/MTRE4200/my_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_pack/msg" TYPE FILE FILES "/home/josh/Documents/MTRE4200/my_ws/src/my_pack/msg/Complex.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_pack/srv" TYPE FILE FILES "/home/josh/Documents/MTRE4200/my_ws/src/my_pack/srv/WordCount.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_pack/action" TYPE FILE FILES "/home/josh/Documents/MTRE4200/my_ws/src/my_pack/action/Timer.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_pack/msg" TYPE FILE FILES
    "/home/josh/Documents/MTRE4200/my_ws/devel/share/my_pack/msg/TimerAction.msg"
    "/home/josh/Documents/MTRE4200/my_ws/devel/share/my_pack/msg/TimerActionGoal.msg"
    "/home/josh/Documents/MTRE4200/my_ws/devel/share/my_pack/msg/TimerActionResult.msg"
    "/home/josh/Documents/MTRE4200/my_ws/devel/share/my_pack/msg/TimerActionFeedback.msg"
    "/home/josh/Documents/MTRE4200/my_ws/devel/share/my_pack/msg/TimerGoal.msg"
    "/home/josh/Documents/MTRE4200/my_ws/devel/share/my_pack/msg/TimerResult.msg"
    "/home/josh/Documents/MTRE4200/my_ws/devel/share/my_pack/msg/TimerFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_pack/cmake" TYPE FILE FILES "/home/josh/Documents/MTRE4200/my_ws/build/my_pack/catkin_generated/installspace/my_pack-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/josh/Documents/MTRE4200/my_ws/devel/include/my_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/josh/Documents/MTRE4200/my_ws/devel/share/roseus/ros/my_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/josh/Documents/MTRE4200/my_ws/devel/share/common-lisp/ros/my_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/josh/Documents/MTRE4200/my_ws/devel/share/gennodejs/ros/my_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/josh/Documents/MTRE4200/my_ws/devel/lib/python3/dist-packages/my_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/josh/Documents/MTRE4200/my_ws/devel/lib/python3/dist-packages/my_pack")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/josh/Documents/MTRE4200/my_ws/build/my_pack/catkin_generated/installspace/my_pack.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_pack/cmake" TYPE FILE FILES "/home/josh/Documents/MTRE4200/my_ws/build/my_pack/catkin_generated/installspace/my_pack-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_pack/cmake" TYPE FILE FILES
    "/home/josh/Documents/MTRE4200/my_ws/build/my_pack/catkin_generated/installspace/my_packConfig.cmake"
    "/home/josh/Documents/MTRE4200/my_ws/build/my_pack/catkin_generated/installspace/my_packConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_pack" TYPE FILE FILES "/home/josh/Documents/MTRE4200/my_ws/src/my_pack/package.xml")
endif()

