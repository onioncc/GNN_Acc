


#include <ap_fixed.h>
#include <ap_int.h>

#define SIZE 1024

ap_uint<32> a[SIZE];
//ap_uint<8> b[100];



int test()
{
#pragma HLS bind_storage variable=a type=RAM_2P impl=uram
//#pragma HLS bind_storage variable=b type=RAM_2P impl=bram

	int sum1, sum2;
	sum1 = 0;
	sum2 = 0;

	for(int i = 0; i < SIZE; i++) {
		a[i] = i;
		//b[i] = i;
	}


	for(int i = 0; i < SIZE-1; i+=2) {
#pragma HLS pipeline
		sum1 += a[i] * i;
		sum2 += a[i+1] * (i+1);

//		b[i] = i;
//		b[i+1] = i*2;
	}

	return sum1 + sum2;

}

