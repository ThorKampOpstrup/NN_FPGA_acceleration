#include "src/bram_uio.h"
#include <iostream>
#include <string>

int main(int argc, char *argv[])
{
    BRAM writer(0, 8000); // ...
    writer[30] = 10;
    std::cout << "\r\n";
    return 0;
}