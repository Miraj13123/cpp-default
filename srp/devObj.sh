for file in $(find src/ lib/ -name '*.cpp'); do clang++ -c $file -I./lib -o ${file%.cpp}.o; done

clang++ -std=c++17 $(find src/ lib/ -name '*.o') -o app && ./app