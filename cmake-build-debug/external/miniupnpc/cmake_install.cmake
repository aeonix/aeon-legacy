# Install script for directory: /Users/jan/Documents/Dev/aeon/external/miniupnpc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/jan/Documents/Dev/aeon/cmake-build-debug/external/miniupnpc/libminiupnpc.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libminiupnpc.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libminiupnpc.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libminiupnpc.a")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/miniupnpc" TYPE FILE FILES
    "/Users/jan/Documents/Dev/aeon/external/miniupnpc/miniupnpc.h"
    "/Users/jan/Documents/Dev/aeon/external/miniupnpc/miniwget.h"
    "/Users/jan/Documents/Dev/aeon/external/miniupnpc/upnpcommands.h"
    "/Users/jan/Documents/Dev/aeon/external/miniupnpc/igd_desc_parse.h"
    "/Users/jan/Documents/Dev/aeon/external/miniupnpc/upnpreplyparse.h"
    "/Users/jan/Documents/Dev/aeon/external/miniupnpc/upnperrors.h"
    "/Users/jan/Documents/Dev/aeon/external/miniupnpc/upnpdev.h"
    "/Users/jan/Documents/Dev/aeon/external/miniupnpc/miniupnpctypes.h"
    "/Users/jan/Documents/Dev/aeon/external/miniupnpc/portlistingparse.h"
    "/Users/jan/Documents/Dev/aeon/external/miniupnpc/miniupnpc_declspec.h"
    )
endif()

