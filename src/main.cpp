//#pragma once
#include "suck.hpp"
#include <iostream>

class calc;
void printResult(int result);

int main(int argc, char* argv[])
{
    calc obj1;
    printResult(obj1.add(3, 4));
    for(int i = 1; i <= argc; i++)
    {
        std::cout << argv[i] << " ";
    }
    //std::cout << argv[1] ;
    return 0;
}
