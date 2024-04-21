cmake_minimum_required(VERSION 3.28.3)

include(CMakePrintHelpers)

project(main)

cmake_print_variables(PROJECT_NAME)
cmake_print_variables(PROJECT_SOURCE_DIR)
cmake_print_variables(CMAKE_SOURCE_DIR)
cmake_print_variables(CMAKE_CURRENT_SOURCE_DIR)
cmake_print_variables(CMAKE_CURRENT_BINARY_DIR)

add_executable(${PROJECT_NAME} main.cpp)
target_include_directories(${PROJECT_NAME} PUBLIC ${INCLUDE_DIRECTORIES})
target_link_libraries(${PROJECT_NAME} ${DYNAMICA_PROJECT})
