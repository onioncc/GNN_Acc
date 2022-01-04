#include "dcl.h"

ap_fixed<28,10> my_input, my_output;
int main(int argc, char **argv)
{
    my_input = 24.675;
    my_output = hls::log(my_input);
    return 0;
}

// #include <cmath>
// #include "hls_math.h"
// #include "lib_hlsm.cpp"
// #include <fstream>
// #include <iostream>
// #include <iomanip>
// #include <cstdlib>
// using namespace std;

// typedef float data_t;

// data_t cpp_math(data_t angle) {
//  data_t s = hls::sinf(angle);
//  data_t c = hls::cosf(angle);
//  return hls::sqrtf(s*s+c*c);
// }

// int main(int argc, char **argv)
// {
//     cpp_math(24.675);
//     return 0;
// }