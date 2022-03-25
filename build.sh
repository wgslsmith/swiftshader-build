#!/usr/bin/env bash

mkdir build
cd build

cmake -GNinja -DCMAKE_BUILD_TYPE=Release ../swiftshader
cmake --build .
