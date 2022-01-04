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
extern "C" void GAT_compute_one_graph(int*, int, int, int, int, int, int, int, int, int, int, int, int);
extern "C" void apatb_GAT_compute_one_graph_hw(volatile void * __xlx_apatb_param_node_feature_in, volatile void * __xlx_apatb_param_edge_list_in, volatile void * __xlx_apatb_param_graph_attr, volatile void * __xlx_apatb_param_num_heads_per_layer_in, volatile void * __xlx_apatb_param_num_features_per_layer_in, volatile void * __xlx_apatb_param_task_tb, volatile void * __xlx_apatb_param_graph_pred_linear_weight_fixed, volatile void * __xlx_apatb_param_graph_pred_linear_bias_fixed, volatile void * __xlx_apatb_param_gat_net_scoring_fn_target_fixed, volatile void * __xlx_apatb_param_gat_net_scoring_fn_source_fixed, volatile void * __xlx_apatb_param_gat_net_linear_proj_weight_fixed, volatile void * __xlx_apatb_param_gat_net_skip_proj_weight_fixed) {
  // Collect __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec
  vector<sc_bv<32> >__xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_node_feature_in)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_node_feature_in)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_node_feature_in)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_node_feature_in)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_node_feature_in = 100000;
  int __xlx_offset_param_node_feature_in = 0;
  int __xlx_offset_byte_param_node_feature_in = 0*4;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_edge_list_in)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_edge_list_in)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_edge_list_in)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_edge_list_in)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_edge_list_in = 100000;
  int __xlx_offset_param_edge_list_in = 100000;
  int __xlx_offset_byte_param_edge_list_in = 100000*4;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_graph_attr)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_graph_attr)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_graph_attr)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_graph_attr)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_graph_attr = 100000;
  int __xlx_offset_param_graph_attr = 200000;
  int __xlx_offset_byte_param_graph_attr = 200000*4;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_num_heads_per_layer_in)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_num_heads_per_layer_in)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_num_heads_per_layer_in)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_num_heads_per_layer_in)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_num_heads_per_layer_in = 100000;
  int __xlx_offset_param_num_heads_per_layer_in = 300000;
  int __xlx_offset_byte_param_num_heads_per_layer_in = 300000*4;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_num_features_per_layer_in)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_num_features_per_layer_in)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_num_features_per_layer_in)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_num_features_per_layer_in)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_num_features_per_layer_in = 100000;
  int __xlx_offset_param_num_features_per_layer_in = 400000;
  int __xlx_offset_byte_param_num_features_per_layer_in = 400000*4;
  for (int j = 0, e = 100000; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_task_tb)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_task_tb)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_task_tb)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_task_tb)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_task_tb = 100000;
  int __xlx_offset_param_task_tb = 500000;
  int __xlx_offset_byte_param_task_tb = 500000*4;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_graph_pred_linear_weight_fixed = 16;
  int __xlx_offset_param_graph_pred_linear_weight_fixed = 600000;
  int __xlx_offset_byte_param_graph_pred_linear_weight_fixed = 600000*4;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_graph_pred_linear_bias_fixed = 1;
  int __xlx_offset_param_graph_pred_linear_bias_fixed = 600016;
  int __xlx_offset_byte_param_graph_pred_linear_bias_fixed = 600016*4;
  for (int j = 0, e = 320; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_gat_net_scoring_fn_target_fixed)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_gat_net_scoring_fn_target_fixed)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_gat_net_scoring_fn_target_fixed)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_gat_net_scoring_fn_target_fixed)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_gat_net_scoring_fn_target_fixed = 320;
  int __xlx_offset_param_gat_net_scoring_fn_target_fixed = 600017;
  int __xlx_offset_byte_param_gat_net_scoring_fn_target_fixed = 600017*4;
  for (int j = 0, e = 320; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_gat_net_scoring_fn_source_fixed)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_gat_net_scoring_fn_source_fixed)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_gat_net_scoring_fn_source_fixed)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_gat_net_scoring_fn_source_fixed)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_gat_net_scoring_fn_source_fixed = 320;
  int __xlx_offset_param_gat_net_scoring_fn_source_fixed = 600337;
  int __xlx_offset_byte_param_gat_net_scoring_fn_source_fixed = 600337*4;
  for (int j = 0, e = 20480; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_gat_net_linear_proj_weight_fixed)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_gat_net_linear_proj_weight_fixed)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_gat_net_linear_proj_weight_fixed)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_gat_net_linear_proj_weight_fixed)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_gat_net_linear_proj_weight_fixed = 20480;
  int __xlx_offset_param_gat_net_linear_proj_weight_fixed = 600657;
  int __xlx_offset_byte_param_gat_net_linear_proj_weight_fixed = 600657*4;
  for (int j = 0, e = 20480; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_gat_net_skip_proj_weight_fixed)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_gat_net_skip_proj_weight_fixed)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_gat_net_skip_proj_weight_fixed)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_gat_net_skip_proj_weight_fixed)[j*4+3];
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_gat_net_skip_proj_weight_fixed = 20480;
  int __xlx_offset_param_gat_net_skip_proj_weight_fixed = 621137;
  int __xlx_offset_byte_param_gat_net_skip_proj_weight_fixed = 621137*4;
  int* __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer= new int[__xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.size()];
  for (int i = 0; i < __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec.size(); ++i) {
    __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  GAT_compute_one_graph(__xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer, __xlx_offset_byte_param_node_feature_in, __xlx_offset_byte_param_edge_list_in, __xlx_offset_byte_param_graph_attr, __xlx_offset_byte_param_num_heads_per_layer_in, __xlx_offset_byte_param_num_features_per_layer_in, __xlx_offset_byte_param_task_tb, __xlx_offset_byte_param_graph_pred_linear_weight_fixed, __xlx_offset_byte_param_graph_pred_linear_bias_fixed, __xlx_offset_byte_param_gat_net_scoring_fn_target_fixed, __xlx_offset_byte_param_gat_net_scoring_fn_source_fixed, __xlx_offset_byte_param_gat_net_linear_proj_weight_fixed, __xlx_offset_byte_param_gat_net_skip_proj_weight_fixed);
// print __xlx_apatb_param_node_feature_in
  sc_bv<32>*__xlx_node_feature_in_output_buffer = new sc_bv<32>[__xlx_size_param_node_feature_in];
  for (int i = 0; i < __xlx_size_param_node_feature_in; ++i) {
    __xlx_node_feature_in_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_node_feature_in];
  }
  for (int i = 0; i < __xlx_size_param_node_feature_in; ++i) {
    ((char*)__xlx_apatb_param_node_feature_in)[i*4+0] = __xlx_node_feature_in_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_node_feature_in)[i*4+1] = __xlx_node_feature_in_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_node_feature_in)[i*4+2] = __xlx_node_feature_in_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_node_feature_in)[i*4+3] = __xlx_node_feature_in_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_edge_list_in
  sc_bv<32>*__xlx_edge_list_in_output_buffer = new sc_bv<32>[__xlx_size_param_edge_list_in];
  for (int i = 0; i < __xlx_size_param_edge_list_in; ++i) {
    __xlx_edge_list_in_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_edge_list_in];
  }
  for (int i = 0; i < __xlx_size_param_edge_list_in; ++i) {
    ((char*)__xlx_apatb_param_edge_list_in)[i*4+0] = __xlx_edge_list_in_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_edge_list_in)[i*4+1] = __xlx_edge_list_in_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_edge_list_in)[i*4+2] = __xlx_edge_list_in_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_edge_list_in)[i*4+3] = __xlx_edge_list_in_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_graph_attr
  sc_bv<32>*__xlx_graph_attr_output_buffer = new sc_bv<32>[__xlx_size_param_graph_attr];
  for (int i = 0; i < __xlx_size_param_graph_attr; ++i) {
    __xlx_graph_attr_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_graph_attr];
  }
  for (int i = 0; i < __xlx_size_param_graph_attr; ++i) {
    ((char*)__xlx_apatb_param_graph_attr)[i*4+0] = __xlx_graph_attr_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_graph_attr)[i*4+1] = __xlx_graph_attr_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_graph_attr)[i*4+2] = __xlx_graph_attr_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_graph_attr)[i*4+3] = __xlx_graph_attr_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_num_heads_per_layer_in
  sc_bv<32>*__xlx_num_heads_per_layer_in_output_buffer = new sc_bv<32>[__xlx_size_param_num_heads_per_layer_in];
  for (int i = 0; i < __xlx_size_param_num_heads_per_layer_in; ++i) {
    __xlx_num_heads_per_layer_in_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_num_heads_per_layer_in];
  }
  for (int i = 0; i < __xlx_size_param_num_heads_per_layer_in; ++i) {
    ((char*)__xlx_apatb_param_num_heads_per_layer_in)[i*4+0] = __xlx_num_heads_per_layer_in_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_num_heads_per_layer_in)[i*4+1] = __xlx_num_heads_per_layer_in_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_num_heads_per_layer_in)[i*4+2] = __xlx_num_heads_per_layer_in_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_num_heads_per_layer_in)[i*4+3] = __xlx_num_heads_per_layer_in_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_num_features_per_layer_in
  sc_bv<32>*__xlx_num_features_per_layer_in_output_buffer = new sc_bv<32>[__xlx_size_param_num_features_per_layer_in];
  for (int i = 0; i < __xlx_size_param_num_features_per_layer_in; ++i) {
    __xlx_num_features_per_layer_in_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_num_features_per_layer_in];
  }
  for (int i = 0; i < __xlx_size_param_num_features_per_layer_in; ++i) {
    ((char*)__xlx_apatb_param_num_features_per_layer_in)[i*4+0] = __xlx_num_features_per_layer_in_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_num_features_per_layer_in)[i*4+1] = __xlx_num_features_per_layer_in_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_num_features_per_layer_in)[i*4+2] = __xlx_num_features_per_layer_in_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_num_features_per_layer_in)[i*4+3] = __xlx_num_features_per_layer_in_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_task_tb
  sc_bv<32>*__xlx_task_tb_output_buffer = new sc_bv<32>[__xlx_size_param_task_tb];
  for (int i = 0; i < __xlx_size_param_task_tb; ++i) {
    __xlx_task_tb_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_task_tb];
  }
  for (int i = 0; i < __xlx_size_param_task_tb; ++i) {
    ((char*)__xlx_apatb_param_task_tb)[i*4+0] = __xlx_task_tb_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_task_tb)[i*4+1] = __xlx_task_tb_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_task_tb)[i*4+2] = __xlx_task_tb_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_task_tb)[i*4+3] = __xlx_task_tb_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_graph_pred_linear_weight_fixed
  sc_bv<32>*__xlx_graph_pred_linear_weight_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_graph_pred_linear_weight_fixed];
  for (int i = 0; i < __xlx_size_param_graph_pred_linear_weight_fixed; ++i) {
    __xlx_graph_pred_linear_weight_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_graph_pred_linear_weight_fixed];
  }
  for (int i = 0; i < __xlx_size_param_graph_pred_linear_weight_fixed; ++i) {
    ((char*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[i*4+0] = __xlx_graph_pred_linear_weight_fixed_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[i*4+1] = __xlx_graph_pred_linear_weight_fixed_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[i*4+2] = __xlx_graph_pred_linear_weight_fixed_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[i*4+3] = __xlx_graph_pred_linear_weight_fixed_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_graph_pred_linear_bias_fixed
  sc_bv<32>*__xlx_graph_pred_linear_bias_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_graph_pred_linear_bias_fixed];
  for (int i = 0; i < __xlx_size_param_graph_pred_linear_bias_fixed; ++i) {
    __xlx_graph_pred_linear_bias_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_graph_pred_linear_bias_fixed];
  }
  for (int i = 0; i < __xlx_size_param_graph_pred_linear_bias_fixed; ++i) {
    ((char*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[i*4+0] = __xlx_graph_pred_linear_bias_fixed_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[i*4+1] = __xlx_graph_pred_linear_bias_fixed_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[i*4+2] = __xlx_graph_pred_linear_bias_fixed_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[i*4+3] = __xlx_graph_pred_linear_bias_fixed_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_gat_net_scoring_fn_target_fixed
  sc_bv<32>*__xlx_gat_net_scoring_fn_target_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_gat_net_scoring_fn_target_fixed];
  for (int i = 0; i < __xlx_size_param_gat_net_scoring_fn_target_fixed; ++i) {
    __xlx_gat_net_scoring_fn_target_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_gat_net_scoring_fn_target_fixed];
  }
  for (int i = 0; i < __xlx_size_param_gat_net_scoring_fn_target_fixed; ++i) {
    ((char*)__xlx_apatb_param_gat_net_scoring_fn_target_fixed)[i*4+0] = __xlx_gat_net_scoring_fn_target_fixed_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_gat_net_scoring_fn_target_fixed)[i*4+1] = __xlx_gat_net_scoring_fn_target_fixed_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_gat_net_scoring_fn_target_fixed)[i*4+2] = __xlx_gat_net_scoring_fn_target_fixed_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_gat_net_scoring_fn_target_fixed)[i*4+3] = __xlx_gat_net_scoring_fn_target_fixed_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_gat_net_scoring_fn_source_fixed
  sc_bv<32>*__xlx_gat_net_scoring_fn_source_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_gat_net_scoring_fn_source_fixed];
  for (int i = 0; i < __xlx_size_param_gat_net_scoring_fn_source_fixed; ++i) {
    __xlx_gat_net_scoring_fn_source_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_gat_net_scoring_fn_source_fixed];
  }
  for (int i = 0; i < __xlx_size_param_gat_net_scoring_fn_source_fixed; ++i) {
    ((char*)__xlx_apatb_param_gat_net_scoring_fn_source_fixed)[i*4+0] = __xlx_gat_net_scoring_fn_source_fixed_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_gat_net_scoring_fn_source_fixed)[i*4+1] = __xlx_gat_net_scoring_fn_source_fixed_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_gat_net_scoring_fn_source_fixed)[i*4+2] = __xlx_gat_net_scoring_fn_source_fixed_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_gat_net_scoring_fn_source_fixed)[i*4+3] = __xlx_gat_net_scoring_fn_source_fixed_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_gat_net_linear_proj_weight_fixed
  sc_bv<32>*__xlx_gat_net_linear_proj_weight_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_gat_net_linear_proj_weight_fixed];
  for (int i = 0; i < __xlx_size_param_gat_net_linear_proj_weight_fixed; ++i) {
    __xlx_gat_net_linear_proj_weight_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_gat_net_linear_proj_weight_fixed];
  }
  for (int i = 0; i < __xlx_size_param_gat_net_linear_proj_weight_fixed; ++i) {
    ((char*)__xlx_apatb_param_gat_net_linear_proj_weight_fixed)[i*4+0] = __xlx_gat_net_linear_proj_weight_fixed_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_gat_net_linear_proj_weight_fixed)[i*4+1] = __xlx_gat_net_linear_proj_weight_fixed_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_gat_net_linear_proj_weight_fixed)[i*4+2] = __xlx_gat_net_linear_proj_weight_fixed_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_gat_net_linear_proj_weight_fixed)[i*4+3] = __xlx_gat_net_linear_proj_weight_fixed_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_gat_net_skip_proj_weight_fixed
  sc_bv<32>*__xlx_gat_net_skip_proj_weight_fixed_output_buffer = new sc_bv<32>[__xlx_size_param_gat_net_skip_proj_weight_fixed];
  for (int i = 0; i < __xlx_size_param_gat_net_skip_proj_weight_fixed; ++i) {
    __xlx_gat_net_skip_proj_weight_fixed_output_buffer[i] = __xlx_node_feature_in_edge_list_in_graph_attr_num_heads_per_layer_in_num_features_per_layer_in_task_tb_graph_pred_linear_weight_fixed_graph_pred_linear_bias_fixed_gat_net_scoring_fn_target_fixed_gat_net_scoring_fn_source_fixed_gat_net_linear_proj_weight_fixed_gat_net_skip_proj_weight_fixed__input_buffer[i+__xlx_offset_param_gat_net_skip_proj_weight_fixed];
  }
  for (int i = 0; i < __xlx_size_param_gat_net_skip_proj_weight_fixed; ++i) {
    ((char*)__xlx_apatb_param_gat_net_skip_proj_weight_fixed)[i*4+0] = __xlx_gat_net_skip_proj_weight_fixed_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_gat_net_skip_proj_weight_fixed)[i*4+1] = __xlx_gat_net_skip_proj_weight_fixed_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_gat_net_skip_proj_weight_fixed)[i*4+2] = __xlx_gat_net_skip_proj_weight_fixed_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_gat_net_skip_proj_weight_fixed)[i*4+3] = __xlx_gat_net_skip_proj_weight_fixed_output_buffer[i].range(31, 24).to_uint();
  }
}
