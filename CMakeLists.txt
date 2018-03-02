cmake_minimum_required(VERSION 3.8)
project(TCP_Socket)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES main.c)
add_executable(TCP_Socket ${SOURCE_FILES})