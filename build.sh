#!/bin/bash

set -e  # Exit on error

# Default to Release
BUILD_TYPE="${1:-Release}"

# Validate build type
if [[ "$BUILD_TYPE" != "Release" && "$BUILD_TYPE" != "Debug" ]]; then
  echo "Usage: $0 [Release|Debug]"
  exit 1
fi

echo "=== Configuring and building in $BUILD_TYPE mode ==="

mkdir -p build
cd build

# Detect OS and set CMake generator
if [[ "$(uname)" == "Darwin" ]]; then
  echo "Detected macOS: Using Xcode generator"
  cmake -G "Xcode" -DCMAKE_BUILD_TYPE=$BUILD_TYPE ..
else
  echo "Detected GNU/Linux: Using Unix Makefiles generator"
  cmake -G "Unix Makefiles" -CMAKE_BUILD_TYPE=$BUILD_TYPE ..
fi

cmake --build . --parallel
