clang++ -c src/main.cpp -I./lib -o main.o && clang++ -c lib/suck.cpp -o suck.o && clang++ main.o suck.o -o app && ./app


