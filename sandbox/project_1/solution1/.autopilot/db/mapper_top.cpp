#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void top(int*, int, int, int);
extern "C" void apatb_top_hw(volatile void * __xlx_apatb_param_weights, volatile void * __xlx_apatb_param_data_in, volatile void * __xlx_apatb_param_data_out) {
  // Collect __xlx_weights_data_in_data_out__tmp_vec
  vector<sc_bv<32> >__xlx_weights_data_in_data_out__tmp_vec;
  for (int j = 0, e = 200; j != e; ++j) {
    __xlx_weights_data_in_data_out__tmp_vec.push_back(((int*)__xlx_apatb_param_weights)[j]);
  }
  int __xlx_size_param_weights = 200;
  int __xlx_offset_param_weights = 0;
  int __xlx_offset_byte_param_weights = 0*4;
  for (int j = 0, e = 40; j != e; ++j) {
    __xlx_weights_data_in_data_out__tmp_vec.push_back(((int*)__xlx_apatb_param_data_in)[j]);
  }
  int __xlx_size_param_data_in = 40;
  int __xlx_offset_param_data_in = 200;
  int __xlx_offset_byte_param_data_in = 200*4;
  for (int j = 0, e = 80; j != e; ++j) {
    __xlx_weights_data_in_data_out__tmp_vec.push_back(((int*)__xlx_apatb_param_data_out)[j]);
  }
  int __xlx_size_param_data_out = 80;
  int __xlx_offset_param_data_out = 240;
  int __xlx_offset_byte_param_data_out = 240*4;
  int* __xlx_weights_data_in_data_out__input_buffer= new int[__xlx_weights_data_in_data_out__tmp_vec.size()];
  for (int i = 0; i < __xlx_weights_data_in_data_out__tmp_vec.size(); ++i) {
    __xlx_weights_data_in_data_out__input_buffer[i] = __xlx_weights_data_in_data_out__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  top(__xlx_weights_data_in_data_out__input_buffer, __xlx_offset_byte_param_weights, __xlx_offset_byte_param_data_in, __xlx_offset_byte_param_data_out);
// print __xlx_apatb_param_weights
  sc_bv<32>*__xlx_weights_output_buffer = new sc_bv<32>[__xlx_size_param_weights];
  for (int i = 0; i < __xlx_size_param_weights; ++i) {
    __xlx_weights_output_buffer[i] = __xlx_weights_data_in_data_out__input_buffer[i+__xlx_offset_param_weights];
  }
  for (int i = 0; i < __xlx_size_param_weights; ++i) {
    ((int*)__xlx_apatb_param_weights)[i] = __xlx_weights_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_data_in
  sc_bv<32>*__xlx_data_in_output_buffer = new sc_bv<32>[__xlx_size_param_data_in];
  for (int i = 0; i < __xlx_size_param_data_in; ++i) {
    __xlx_data_in_output_buffer[i] = __xlx_weights_data_in_data_out__input_buffer[i+__xlx_offset_param_data_in];
  }
  for (int i = 0; i < __xlx_size_param_data_in; ++i) {
    ((int*)__xlx_apatb_param_data_in)[i] = __xlx_data_in_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_data_out
  sc_bv<32>*__xlx_data_out_output_buffer = new sc_bv<32>[__xlx_size_param_data_out];
  for (int i = 0; i < __xlx_size_param_data_out; ++i) {
    __xlx_data_out_output_buffer[i] = __xlx_weights_data_in_data_out__input_buffer[i+__xlx_offset_param_data_out];
  }
  for (int i = 0; i < __xlx_size_param_data_out; ++i) {
    ((int*)__xlx_apatb_param_data_out)[i] = __xlx_data_out_output_buffer[i].to_uint64();
  }
}
