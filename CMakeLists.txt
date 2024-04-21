cmake_minimum_required(VERSION 3.28.3)

include(CMakePrintHelpers)

project(multiCMake)

set(CMAKE_CXX_STANDARD          11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS        OFF)

cmake_print_variables(PROJECT_NAME)
cmake_print_variables(PROJECT_SOURCE_DIR)
cmake_print_variables(CMAKE_SOURCE_DIR)

cmake_print_variables(INCLUDE_DIRECTORIES)
list(APPEND INCLUDE_DIRECTORIES ${PROJECT_SOURCE_DIR}/inc)
cmake_print_variables(INCLUDE_DIRECTORIES)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/deploy)
cmake_print_variables(CMAKE_RUNTIME_OUTPUT_DIRECTORY)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/deploy)
cmake_print_variables(CMAKE_LIBRARY_OUTPUT_DIRECTORY)

set(STATICA_PROJECT "staticA")
add_subdirectory(${STATICA_PROJECT})

set(DYNAMICA_PROJECT "dynamicA")
add_subdirectory(${DYNAMICA_PROJECT})

set(MAIN_PROJECT "main")
add_subdirectory(${MAIN_PROJECT})
