cmake_minimum_required(VERSION 3.28.3)

include(CMakePrintHelpers)

project(staticA)

cmake_print_variables(PROJECT_NAME)
cmake_print_variables(PROJECT_SOURCE_DIR)
cmake_print_variables(CMAKE_SOURCE_DIR)

add_library(${PROJECT_NAME} staticA.cpp)
