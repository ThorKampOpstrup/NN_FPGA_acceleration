#include "src/bram_uio.h"
#include <iostream>
#include <string>

int main(int argc, char *argv[])
{
    std::cout << "test"<< std::endl;
    BRAM reader(0, 10);
    std::cout << reader[30];
    std::cout << "\r\n";
    return 0;
}