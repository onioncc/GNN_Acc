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
extern "C" void GIN_compute_one_graph(int*, int, int, int, int, int, int, int, int, int, int, int, int, int, int);
extern "C" void apatb_GIN_compute_one_graph_hw(volatile void * __xlx_apatb_param_node_feature_in, volatile void * __xlx_apatb_param_edge_list_in, volatile void * __xlx_apatb_param_edge_attr_in, volatile void * __xlx_apatb_param_graph_attr, volatile void * __xlx_apatb_param_task, volatile void * __xlx_apatb_param_gnn_node_mlp_1_weights_fixed, volatile void * __xlx_apatb_param_gnn_node_mlp_1_bias_fixed, volatile void * __xlx_apatb_param_gnn_node_mlp_2_weights_fixed, volatile void * __xlx_apatb_param_gnn_node_mlp_2_bias_fixed, volatile void * __xlx_apatb_param_gnn_node_embedding_fixed, volatile void * __xlx_apatb_param_gnn_edge_embedding_fixed, volatile void * __xlx_apatb_param_graph_pred_linear_weight_fixed, volatile void * __xlx_apatb_param_graph_pred_linear_bias_fixed, volatile void * __xlx_apatb_param_eps_fixed) {
  // Collect __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec
  vector<sc_bv<32> >__xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec;
  for (int j = 0, e = 100000; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_node_feature_in)[j]);
  }
  int __xlx_size_param_node_feature_in = 100000;
  int __xlx_offset_param_node_feature_in = 0;
  int __xlx_offset_byte_param_node_feature_in = 0*4;
  for (int j = 0, e = 100000; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_edge_list_in)[j]);
  }
  int __xlx_size_param_edge_list_in = 100000;
  int __xlx_offset_param_edge_list_in = 100000;
  int __xlx_offset_byte_param_edge_list_in = 100000*4;
  for (int j = 0, e = 100000; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_edge_attr_in)[j]);
  }
  int __xlx_size_param_edge_attr_in = 100000;
  int __xlx_offset_param_edge_attr_in = 200000;
  int __xlx_offset_byte_param_edge_attr_in = 200000*4;
  for (int j = 0, e = 100000; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_graph_attr)[j]);
  }
  int __xlx_size_param_graph_attr = 100000;
  int __xlx_offset_param_graph_attr = 300000;
  int __xlx_offset_byte_param_graph_attr = 300000*4;
  for (int j = 0, e = 100000; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_task)[j]);
  }
  int __xlx_size_param_task = 100000;
  int __xlx_offset_param_task = 400000;
  int __xlx_offset_byte_param_task = 400000*4;
  for (int j = 0, e = 900000; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_gnn_node_mlp_1_weights_fixed)[j]);
  }
  int __xlx_size_param_gnn_node_mlp_1_weights_fixed = 900000;
  int __xlx_offset_param_gnn_node_mlp_1_weights_fixed = 500000;
  int __xlx_offset_byte_param_gnn_node_mlp_1_weights_fixed = 500000*4;
  for (int j = 0, e = 3000; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_gnn_node_mlp_1_bias_fixed)[j]);
  }
  int __xlx_size_param_gnn_node_mlp_1_bias_fixed = 3000;
  int __xlx_offset_param_gnn_node_mlp_1_bias_fixed = 1400000;
  int __xlx_offset_byte_param_gnn_node_mlp_1_bias_fixed = 1400000*4;
  for (int j = 0, e = 900000; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_gnn_node_mlp_2_weights_fixed)[j]);
  }
  int __xlx_size_param_gnn_node_mlp_2_weights_fixed = 900000;
  int __xlx_offset_param_gnn_node_mlp_2_weights_fixed = 1403000;
  int __xlx_offset_byte_param_gnn_node_mlp_2_weights_fixed = 1403000*4;
  for (int j = 0, e = 1500; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_gnn_node_mlp_2_bias_fixed)[j]);
  }
  int __xlx_size_param_gnn_node_mlp_2_bias_fixed = 1500;
  int __xlx_offset_param_gnn_node_mlp_2_bias_fixed = 2303000;
  int __xlx_offset_byte_param_gnn_node_mlp_2_bias_fixed = 2303000*4;
  for (int j = 0, e = 51900; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_gnn_node_embedding_fixed)[j]);
  }
  int __xlx_size_param_gnn_node_embedding_fixed = 51900;
  int __xlx_offset_param_gnn_node_embedding_fixed = 2304500;
  int __xlx_offset_byte_param_gnn_node_embedding_fixed = 2304500*4;
  for (int j = 0, e = 19500; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_gnn_edge_embedding_fixed)[j]);
  }
  int __xlx_size_param_gnn_edge_embedding_fixed = 19500;
  int __xlx_offset_param_gnn_edge_embedding_fixed = 2356400;
  int __xlx_offset_byte_param_gnn_edge_embedding_fixed = 2356400*4;
  for (int j = 0, e = 300; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[j]);
  }
  int __xlx_size_param_graph_pred_linear_weight_fixed = 300;
  int __xlx_offset_param_graph_pred_linear_weight_fixed = 2375900;
  int __xlx_offset_byte_param_graph_pred_linear_weight_fixed = 2375900*4;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[j]);
  }
  int __xlx_size_param_graph_pred_linear_bias_fixed = 1;
  int __xlx_offset_param_graph_pred_linear_bias_fixed = 2376200;
  int __xlx_offset_byte_param_graph_pred_linear_bias_fixed = 2376200*4;
  for (int j = 0, e = 5; j != e; ++j) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.push_back(((int*)__xlx_apatb_param_eps_fixed)[j]);
  }
  int __xlx_size_param_eps_fixed = 5;
  int __xlx_offset_param_eps_fixed = 2376201;
  int __xlx_offset_byte_param_eps_fixed = 2376201*4;
  int* __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer= new int[__xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.size()];
  for (int i = 0; i < __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec.size(); ++i) {
    __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  GIN_compute_one_graph(__xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer, __xlx_offset_byte_param_node_feature_in, __xlx_offset_byte_param_edge_list_in, __xlx_offset_byte_param_edge_attr_in, __xlx_offset_byte_param_graph_attr, __xlx_offset_byte_param_task, __xlx_offset_byte_param_gnn_node_mlp_1_weights_fixed, __xlx_offset_byte_param_gnn_node_mlp_1_bias_fixed, __xlx_offset_byte_param_gnn_node_mlp_2_weights_fixed, __xlx_offset_byte_param_gnn_node_mlp_2_bias_fixed, __xlx_offset_byte_param_gnn_node_embedding_fixed, __xlx_offset_byte_param_gnn_edge_embedding_fixed, __xlx_offset_byte_param_graph_pred_linear_weight_fixed, __xlx_offset_byte_param_graph_pred_linear_bias_fixed, __xlx_offset_byte_param_eps_fixed);
// print __xlx_apatb_param_node_feature_in
  sc_bv<32>*__xlx_node_feature_in_output_buffer = new sc_bv<32>[__xlx_size_param_node_feature_in];
  for (int i = 0; i < __xlx_size_param_node_feature_in; ++i) {
    __xlx_node_feature_in_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_node_feature_in];
  }
  for (int i = 0; i < __xlx_size_param_node_feature_in; ++i) {
    ((int*)__xlx_apatb_param_node_feature_in)[i] = __xlx_node_feature_in_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_edge_list_in
  sc_bv<32>*__xlx_edge_list_in_output_buffer = new sc_bv<32>[__xlx_size_param_edge_list_in];
  for (int i = 0; i < __xlx_size_param_edge_list_in; ++i) {
    __xlx_edge_list_in_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_edge_list_in];
  }
  for (int i = 0; i < __xlx_size_param_edge_list_in; ++i) {
    ((int*)__xlx_apatb_param_edge_list_in)[i] = __xlx_edge_list_in_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_edge_attr_in
  sc_bv<32>*__xlx_edge_attr_in_output_buffer = new sc_bv<32>[__xlx_size_param_edge_attr_in];
  for (int i = 0; i < __xlx_size_param_edge_attr_in; ++i) {
    __xlx_edge_attr_in_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_edge_attr_in];
  }
  for (int i = 0; i < __xlx_size_param_edge_attr_in; ++i) {
    ((int*)__xlx_apatb_param_edge_attr_in)[i] = __xlx_edge_attr_in_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_graph_attr
  sc_bv<32>*__xlx_graph_attr_output_buffer = new sc_bv<32>[__xlx_size_param_graph_attr];
  for (int i = 0; i < __xlx_size_param_graph_attr; ++i) {
    __xlx_graph_attr_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_graph_attr];
  }
  for (int i = 0; i < __xlx_size_param_graph_attr; ++i) {
    ((int*)__xlx_apatb_param_graph_attr)[i] = __xlx_graph_attr_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_task
  sc_bv<32>*__xlx_task_output_buffer = new sc_bv<32>[__xlx_size_param_task];
  for (int i = 0; i < __xlx_size_param_task; ++i) {
    __xlx_task_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_task];
  }
  for (int i = 0; i < __xlx_size_param_task; ++i) {
    ((int*)__xlx_apatb_param_task)[i] = __xlx_task_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_gnn_node_mlp_1_weights_fixed
  sc_bv<32>*__xlx_gnn_node_mlp_1_weights_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_gnn_node_mlp_1_weights_fixed];
  for (int i = 0; i < __xlx_size_param_gnn_node_mlp_1_weights_fixed; ++i) {
    __xlx_gnn_node_mlp_1_weights_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_gnn_node_mlp_1_weights_fixed];
  }
  for (int i = 0; i < __xlx_size_param_gnn_node_mlp_1_weights_fixed; ++i) {
    ((int*)__xlx_apatb_param_gnn_node_mlp_1_weights_fixed)[i] = __xlx_gnn_node_mlp_1_weights_fixed_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_gnn_node_mlp_1_bias_fixed
  sc_bv<32>*__xlx_gnn_node_mlp_1_bias_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_gnn_node_mlp_1_bias_fixed];
  for (int i = 0; i < __xlx_size_param_gnn_node_mlp_1_bias_fixed; ++i) {
    __xlx_gnn_node_mlp_1_bias_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_gnn_node_mlp_1_bias_fixed];
  }
  for (int i = 0; i < __xlx_size_param_gnn_node_mlp_1_bias_fixed; ++i) {
    ((int*)__xlx_apatb_param_gnn_node_mlp_1_bias_fixed)[i] = __xlx_gnn_node_mlp_1_bias_fixed_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_gnn_node_mlp_2_weights_fixed
  sc_bv<32>*__xlx_gnn_node_mlp_2_weights_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_gnn_node_mlp_2_weights_fixed];
  for (int i = 0; i < __xlx_size_param_gnn_node_mlp_2_weights_fixed; ++i) {
    __xlx_gnn_node_mlp_2_weights_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_gnn_node_mlp_2_weights_fixed];
  }
  for (int i = 0; i < __xlx_size_param_gnn_node_mlp_2_weights_fixed; ++i) {
    ((int*)__xlx_apatb_param_gnn_node_mlp_2_weights_fixed)[i] = __xlx_gnn_node_mlp_2_weights_fixed_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_gnn_node_mlp_2_bias_fixed
  sc_bv<32>*__xlx_gnn_node_mlp_2_bias_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_gnn_node_mlp_2_bias_fixed];
  for (int i = 0; i < __xlx_size_param_gnn_node_mlp_2_bias_fixed; ++i) {
    __xlx_gnn_node_mlp_2_bias_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_gnn_node_mlp_2_bias_fixed];
  }
  for (int i = 0; i < __xlx_size_param_gnn_node_mlp_2_bias_fixed; ++i) {
    ((int*)__xlx_apatb_param_gnn_node_mlp_2_bias_fixed)[i] = __xlx_gnn_node_mlp_2_bias_fixed_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_gnn_node_embedding_fixed
  sc_bv<32>*__xlx_gnn_node_embedding_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_gnn_node_embedding_fixed];
  for (int i = 0; i < __xlx_size_param_gnn_node_embedding_fixed; ++i) {
    __xlx_gnn_node_embedding_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_gnn_node_embedding_fixed];
  }
  for (int i = 0; i < __xlx_size_param_gnn_node_embedding_fixed; ++i) {
    ((int*)__xlx_apatb_param_gnn_node_embedding_fixed)[i] = __xlx_gnn_node_embedding_fixed_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_gnn_edge_embedding_fixed
  sc_bv<32>*__xlx_gnn_edge_embedding_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_gnn_edge_embedding_fixed];
  for (int i = 0; i < __xlx_size_param_gnn_edge_embedding_fixed; ++i) {
    __xlx_gnn_edge_embedding_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_gnn_edge_embedding_fixed];
  }
  for (int i = 0; i < __xlx_size_param_gnn_edge_embedding_fixed; ++i) {
    ((int*)__xlx_apatb_param_gnn_edge_embedding_fixed)[i] = __xlx_gnn_edge_embedding_fixed_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_graph_pred_linear_weight_fixed
  sc_bv<32>*__xlx_graph_pred_linear_weight_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_graph_pred_linear_weight_fixed];
  for (int i = 0; i < __xlx_size_param_graph_pred_linear_weight_fixed; ++i) {
    __xlx_graph_pred_linear_weight_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_graph_pred_linear_weight_fixed];
  }
  for (int i = 0; i < __xlx_size_param_graph_pred_linear_weight_fixed; ++i) {
    ((int*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[i] = __xlx_graph_pred_linear_weight_fixed_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_graph_pred_linear_bias_fixed
  sc_bv<32>*__xlx_graph_pred_linear_bias_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_graph_pred_linear_bias_fixed];
  for (int i = 0; i < __xlx_size_param_graph_pred_linear_bias_fixed; ++i) {
    __xlx_graph_pred_linear_bias_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_graph_pred_linear_bias_fixed];
  }
  for (int i = 0; i < __xlx_size_param_graph_pred_linear_bias_fixed; ++i) {
    ((int*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[i] = __xlx_graph_pred_linear_bias_fixed_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_eps_fixed
  sc_bv<32>*__xlx_eps_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_eps_fixed];
  for (int i = 0; i < __xlx_size_param_eps_fixed; ++i) {
    __xlx_eps_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_edge_attr_in_graph_attr_task_gnn_node_mlp_1_weights_fixed_gnn_node_mlp_1_bias_fixed_gnn_node_mlp_2_weights_fixed_gnn_node_mlp_2_bias_fixed_gnn_node_embedding_fixed_gnn_edge_embedding_fixed_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_eps_fixed__input_buffer[i+__xlx_offset_param_eps_fixed];
  }
  for (int i = 0; i < __xlx_size_param_eps_fixed; ++i) {
    ((int*)__xlx_apatb_param_eps_fixed)[i] = __xlx_eps_fixed_output_buffer[i].to_uint64();
  }
}
