cmake_minimum_required(VERSION 2.8)
project( nn_test )
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( nn_test nn_test.cpp src/bram_uio.cpp)
target_link_libraries( nn_test ${OpenCV_LIBS} )