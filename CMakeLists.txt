# Supports Cross Compiling for iOS
cmake_minimum_required(VERSION 3.14)

project(lua)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(lua_files
  ${lua_SOURCE_DIR}/lapi.c
  ${lua_SOURCE_DIR}/lauxlib.c
  ${lua_SOURCE_DIR}/lbaselib.c
  ${lua_SOURCE_DIR}/lcode.c
  ${lua_SOURCE_DIR}/lcorolib.c
  ${lua_SOURCE_DIR}/lctype.c
  ${lua_SOURCE_DIR}/ldblib.c
  ${lua_SOURCE_DIR}/ldebug.c
  ${lua_SOURCE_DIR}/ldo.c
  ${lua_SOURCE_DIR}/ldump.c
  ${lua_SOURCE_DIR}/lfunc.c
  ${lua_SOURCE_DIR}/lgc.c
  ${lua_SOURCE_DIR}/linit.c
  ${lua_SOURCE_DIR}/liolib.c
  ${lua_SOURCE_DIR}/llex.c
  ${lua_SOURCE_DIR}/lmathlib.c
  ${lua_SOURCE_DIR}/lmem.c
  ${lua_SOURCE_DIR}/loadlib.c
  ${lua_SOURCE_DIR}/lobject.c
  ${lua_SOURCE_DIR}/lopcodes.c
  ${lua_SOURCE_DIR}/loslib.c
  ${lua_SOURCE_DIR}/lparser.c
  ${lua_SOURCE_DIR}/lstate.c
  ${lua_SOURCE_DIR}/lstring.c
  ${lua_SOURCE_DIR}/lstrlib.c
  ${lua_SOURCE_DIR}/ltable.c
  ${lua_SOURCE_DIR}/ltablib.c
  ${lua_SOURCE_DIR}/ltm.c
  ${lua_SOURCE_DIR}/lundump.c
  ${lua_SOURCE_DIR}/lutf8lib.c
  ${lua_SOURCE_DIR}/lvm.c
  ${lua_SOURCE_DIR}/lzio.c
  )

add_library(lua STATIC ${lua_files})

if(${CMAKE_SYSTEM_NAME} MATCHES "Windows")
  add_executable(lua1 lua.c)
  target_link_libraries(lua1 lua)
elseif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
  add_executable(lua1 lua.c)
  target_link_libraries(lua1 lua)
elseif(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
  add_executable(lua1 lua.c)
  target_link_libraries(lua1 lua m)
endif()
