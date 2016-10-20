cmake_minimum_required(VERSION 3.5)
project(manipulation_tracking_distro)
include(ExternalProject)

ExternalProject_Add(drake
	PREFIX ${CMAKE_BINARY_DIR}
	CMAKE_CACHE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_BINARY_DIR}
	SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/drake
	UPDATE_COMMAND ""
	INSTALL_COMMAND "" )

# This one is actually a pod, so set it up to build as one
ExternalProject_Add(kinect
	PREFIX ${CMAKE_BINARY_DIR}
	CMAKE_CACHE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_BINARY_DIR}
	SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/kinect
	UPDATE_COMMAND ""
	INSTALL_DIR ${CMAKE_BINARY_DIR}
	INSTALL_COMMAND make install
	DEPENDS drake)

ExternalProject_Add(manipulation_tracking
	PREFIX ${CMAKE_BINARY_DIR}
	CMAKE_CACHE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=${CMAKE_BINARY_DIR}
	SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/manipulation_tracking
	UPDATE_COMMAND ""
	INSTALL_COMMAND "" 
	DEPENDS drake kinect)