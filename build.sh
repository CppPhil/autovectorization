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

# Create and enter build directory
mkdir -p build
cd build

# Configure with CMake using GNU Makefiles
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=$BUILD_TYPE ..

# Build using cmake --build
cmake --build . --parallel
