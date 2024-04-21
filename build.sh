#!/bin/bash
cmake -B build -DCMAKE_BUILD_TYPE=Debug -DCMAKE_VERBOSE_MAKEFILE=ON
#cmake -B build -GNinja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_VERBOSE_MAKEFILE=ON
cmake --build build
# cmake -B build --graphviz=dependencies.dot && dot -Tpng dependencies.dot -o dependencies.png && gwenview dependencies.png