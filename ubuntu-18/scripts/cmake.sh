#!/bin/bash

# This install script is intended to install CMake.
#
# Environment variables:
# - CMAKE_VERSION: the version to install

# Update your local package index
apt-get update

# Install PIP package
apt-get install -y python-pip

# Remove the local package index
rm -rf /var/lib/apt/lists/*

# Install CMake package
pip install cmake==${CMAKE_VERSION}.*

# Print the installed version
cmake --version
