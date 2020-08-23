#!/bin/bash

set -e

mkdir -p build

cd build

cmake \
    -DCMAKE_TOOLCHAIN_FILE="$ANDROID_NDK_ROOT"/build/cmake/android.toolchain.cmake \
    -DANDROID_ABI=arm64-v8a \
    -DANDROID_NATIVE_API_LEVEL=24 \
    ..

cmake --build .

cd -
