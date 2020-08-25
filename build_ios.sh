#!/bin/bash

set -e

# NOTE: Add CMAKE_SYSTEM_VERSION to enable rpath
cmake -GXcode -DCMAKE_SYSTEM_NAME=iOS -DCMAKE_SYSTEM_VERSION=9.3 -S . -B build

cmake --build build
