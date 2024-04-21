cmake_minimum_required(VERSION 3.28.3)

include(CMakePrintHelpers)

project(dynamicA)

cmake_print_variables(PROJECT_NAME)
cmake_print_variables(PROJECT_SOURCE_DIR)
cmake_print_variables(CMAKE_SOURCE_DIR)
cmake_print_variables(CMAKE_CURRENT_SOURCE_DIR)
cmake_print_variables(CMAKE_CURRENT_BINARY_DIR)

add_library(${PROJECT_NAME} SHARED dynamicA.cpp)
target_include_directories(${PROJECT_NAME} PUBLIC ${INCLUDE_DIRECTORIES})
# CMake just knows where to find the static library by the name
target_link_libraries(${PROJECT_NAME} ${STATICA_PROJECT})
