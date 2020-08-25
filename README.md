<a href="https://github.com/pass86/lua/actions?query=workflow%3ACI">
  <img alt="CI status" src="https://github.com/pass86/lua/workflows/CI/badge.svg">
</a>

# Lua
Lua is a powerful, efficient, lightweight, embeddable scripting language.

# Setup
* Common

    Install CMake

* iOS

    Install Xcode

* Android

    Install NDK

    Export `ANDROID_NDK_ROOT`

# Build
* iOS
```shell script
./build_ios.sh
```

* Android
```shell script
./build_android.sh
```

* Others
```shell script
cmake -S . -B build
cmake --build build
```
