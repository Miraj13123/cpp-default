# Step 1: Compile all .cpp files in src/ and lib/ directly to app
clang++ -std=c++17 $(find src/ lib/ -name '*.cpp') -I./lib -o app