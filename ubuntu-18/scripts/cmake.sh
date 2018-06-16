#!/bin/bash

# This install script is intended to install CMake.
#
# Environment variables:
# - CMAKE_VERSION: the version to install

CMAKE_BASENAME=cmake-${CMAKE_VERSION}-Linux-x86_64
CMAKE_FILE=${CMAKE_BASENAME}.tar.gz
CMAKE_URL=https://cmake.org/files/v${CMAKE_VERSION%.*}/${CMAKE_FILE}

wget -q --no-check-certificate ${CMAKE_URL}

tar -xzf ${CMAKE_FILE}

cp -fR ${CMAKE_BASENAME}/* /usr

rm -rf ${CMAKE_BASENAME}
rm ${CMAKE_FILE}

# Make sure cmake is working properly
cmake --version
