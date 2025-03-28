for file in $(find src/ lib/ -name '*.cpp'); do clang++ -c $file -I./lib -o ${file%.cpp}.o; done

clang++ $(find src/ lib/ -name '*.o') -o app && ./app