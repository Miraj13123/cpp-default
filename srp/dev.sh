#!/bin/bash

# Step 0: Clear existing executable
rm -f ./app

# Step 1: Compile all .cpp files in src/ and lib/ directly to app
clang++ -std=c++17 $(find src/ lib/ -name '*.cpp') -I./lib -o app

# Step 2: run the executable
./app



