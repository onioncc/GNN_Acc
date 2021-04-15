#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_mem "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_mem.dat"
#define AUTOTB_TVOUT_mem "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_mem.dat"
// wrapc file define:
#define AUTOTB_TVIN_node_feature_in "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_node_feature_in.dat"
#define AUTOTB_TVOUT_node_feature_in "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_node_feature_in.dat"
// wrapc file define:
#define AUTOTB_TVIN_edge_list_in "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_edge_list_in.dat"
#define AUTOTB_TVOUT_edge_list_in "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_edge_list_in.dat"
// wrapc file define:
#define AUTOTB_TVIN_edge_attr_in "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_edge_attr_in.dat"
#define AUTOTB_TVOUT_edge_attr_in "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_edge_attr_in.dat"
// wrapc file define:
#define AUTOTB_TVIN_graph_attr "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_graph_attr.dat"
#define AUTOTB_TVOUT_graph_attr "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_graph_attr.dat"
// wrapc file define:
#define AUTOTB_TVIN_task "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_task_r.dat"
#define AUTOTB_TVOUT_task "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_task_r.dat"
// wrapc file define:
#define AUTOTB_TVIN_gnn_node_mlp_1_weights_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_gnn_node_mlp_1_weights_fixed.dat"
#define AUTOTB_TVOUT_gnn_node_mlp_1_weights_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_gnn_node_mlp_1_weights_fixed.dat"
// wrapc file define:
#define AUTOTB_TVIN_gnn_node_mlp_1_bias_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_gnn_node_mlp_1_bias_fixed.dat"
#define AUTOTB_TVOUT_gnn_node_mlp_1_bias_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_gnn_node_mlp_1_bias_fixed.dat"
// wrapc file define:
#define AUTOTB_TVIN_gnn_node_mlp_2_weights_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_gnn_node_mlp_2_weights_fixed.dat"
#define AUTOTB_TVOUT_gnn_node_mlp_2_weights_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_gnn_node_mlp_2_weights_fixed.dat"
// wrapc file define:
#define AUTOTB_TVIN_gnn_node_mlp_2_bias_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_gnn_node_mlp_2_bias_fixed.dat"
#define AUTOTB_TVOUT_gnn_node_mlp_2_bias_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_gnn_node_mlp_2_bias_fixed.dat"
// wrapc file define:
#define AUTOTB_TVIN_gnn_node_embedding_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_gnn_node_embedding_fixed.dat"
#define AUTOTB_TVOUT_gnn_node_embedding_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_gnn_node_embedding_fixed.dat"
// wrapc file define:
#define AUTOTB_TVIN_gnn_edge_embedding_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_gnn_edge_embedding_fixed.dat"
#define AUTOTB_TVOUT_gnn_edge_embedding_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_gnn_edge_embedding_fixed.dat"
// wrapc file define:
#define AUTOTB_TVIN_graph_pred_linear_weight_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_graph_pred_linear_weight_fixed.dat"
#define AUTOTB_TVOUT_graph_pred_linear_weight_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_graph_pred_linear_weight_fixed.dat"
// wrapc file define:
#define AUTOTB_TVIN_graph_pred_linear_bias_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_graph_pred_linear_bias_fixed.dat"
#define AUTOTB_TVOUT_graph_pred_linear_bias_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_graph_pred_linear_bias_fixed.dat"
// wrapc file define:
#define AUTOTB_TVIN_eps_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvin_eps_fixed.dat"
#define AUTOTB_TVOUT_eps_fixed "../tv/cdatafile/c.GIN_compute_one_graph.autotvout_eps_fixed.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_mem "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_mem.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_node_feature_in "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_node_feature_in.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_edge_list_in "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_edge_list_in.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_edge_attr_in "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_edge_attr_in.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_graph_attr "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_graph_attr.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_task "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_task_r.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gnn_node_mlp_1_weights_fixed "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_gnn_node_mlp_1_weights_fixed.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gnn_node_mlp_1_bias_fixed "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_gnn_node_mlp_1_bias_fixed.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gnn_node_mlp_2_weights_fixed "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_gnn_node_mlp_2_weights_fixed.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gnn_node_mlp_2_bias_fixed "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_gnn_node_mlp_2_bias_fixed.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gnn_node_embedding_fixed "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_gnn_node_embedding_fixed.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gnn_edge_embedding_fixed "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_gnn_edge_embedding_fixed.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_graph_pred_linear_weight_fixed "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_graph_pred_linear_weight_fixed.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_graph_pred_linear_bias_fixed "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_graph_pred_linear_bias_fixed.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_eps_fixed "../tv/rtldatafile/rtl.GIN_compute_one_graph.autotvout_eps_fixed.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  mem_depth = 0;
  node_feature_in_depth = 0;
  edge_list_in_depth = 0;
  edge_attr_in_depth = 0;
  graph_attr_depth = 0;
  task_depth = 0;
  gnn_node_mlp_1_weights_fixed_depth = 0;
  gnn_node_mlp_1_bias_fixed_depth = 0;
  gnn_node_mlp_2_weights_fixed_depth = 0;
  gnn_node_mlp_2_bias_fixed_depth = 0;
  gnn_node_embedding_fixed_depth = 0;
  gnn_edge_embedding_fixed_depth = 0;
  graph_pred_linear_weight_fixed_depth = 0;
  graph_pred_linear_bias_fixed_depth = 0;
  eps_fixed_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{mem " << mem_depth << "}\n";
  total_list << "{node_feature_in " << node_feature_in_depth << "}\n";
  total_list << "{edge_list_in " << edge_list_in_depth << "}\n";
  total_list << "{edge_attr_in " << edge_attr_in_depth << "}\n";
  total_list << "{graph_attr " << graph_attr_depth << "}\n";
  total_list << "{task_r " << task_depth << "}\n";
  total_list << "{gnn_node_mlp_1_weights_fixed " << gnn_node_mlp_1_weights_fixed_depth << "}\n";
  total_list << "{gnn_node_mlp_1_bias_fixed " << gnn_node_mlp_1_bias_fixed_depth << "}\n";
  total_list << "{gnn_node_mlp_2_weights_fixed " << gnn_node_mlp_2_weights_fixed_depth << "}\n";
  total_list << "{gnn_node_mlp_2_bias_fixed " << gnn_node_mlp_2_bias_fixed_depth << "}\n";
  total_list << "{gnn_node_embedding_fixed " << gnn_node_embedding_fixed_depth << "}\n";
  total_list << "{gnn_edge_embedding_fixed " << gnn_edge_embedding_fixed_depth << "}\n";
  total_list << "{graph_pred_linear_weight_fixed " << graph_pred_linear_weight_fixed_depth << "}\n";
  total_list << "{graph_pred_linear_bias_fixed " << graph_pred_linear_bias_fixed_depth << "}\n";
  total_list << "{eps_fixed " << eps_fixed_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int mem_depth;
    int node_feature_in_depth;
    int edge_list_in_depth;
    int edge_attr_in_depth;
    int graph_attr_depth;
    int task_depth;
    int gnn_node_mlp_1_weights_fixed_depth;
    int gnn_node_mlp_1_bias_fixed_depth;
    int gnn_node_mlp_2_weights_fixed_depth;
    int gnn_node_mlp_2_bias_fixed_depth;
    int gnn_node_embedding_fixed_depth;
    int gnn_edge_embedding_fixed_depth;
    int graph_pred_linear_weight_fixed_depth;
    int graph_pred_linear_bias_fixed_depth;
    int eps_fixed_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void GIN_compute_one_graph_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_GIN_compute_one_graph_hw(volatile void * __xlx_apatb_param_node_feature_in, volatile void * __xlx_apatb_param_edge_list_in, volatile void * __xlx_apatb_param_edge_attr_in, volatile void * __xlx_apatb_param_graph_attr, volatile void * __xlx_apatb_param_task, volatile void * __xlx_apatb_param_gnn_node_mlp_1_weights_fixed, volatile void * __xlx_apatb_param_gnn_node_mlp_1_bias_fixed, volatile void * __xlx_apatb_param_gnn_node_mlp_2_weights_fixed, volatile void * __xlx_apatb_param_gnn_node_mlp_2_bias_fixed, volatile void * __xlx_apatb_param_gnn_node_embedding_fixed, volatile void * __xlx_apatb_param_gnn_edge_embedding_fixed, volatile void * __xlx_apatb_param_graph_pred_linear_weight_fixed, volatile void * __xlx_apatb_param_graph_pred_linear_bias_fixed, volatile void * __xlx_apatb_param_eps_fixed) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_mem);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > mem_pc_buffer(2376206);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "mem");
  
            // push token into output port buffer
            if (AESL_token != "") {
              mem_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 100000; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_node_feature_in)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 100000; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_edge_list_in)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 100000; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_edge_attr_in)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 100000; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_graph_attr)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 100000; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_task)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 900000; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_gnn_node_mlp_1_weights_fixed)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 3000; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_gnn_node_mlp_1_bias_fixed)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 900000; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_gnn_node_mlp_2_weights_fixed)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 1500; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_gnn_node_mlp_2_bias_fixed)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 51900; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_gnn_node_embedding_fixed)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 19500; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_gnn_edge_embedding_fixed)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 300; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 1; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[j] = mem_pc_buffer[i].to_int64();
          }
            for (int j = 0, e = 5; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_eps_fixed)[j] = mem_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//mem
aesl_fh.touch(AUTOTB_TVIN_mem);
aesl_fh.touch(AUTOTB_TVOUT_mem);
//node_feature_in
aesl_fh.touch(AUTOTB_TVIN_node_feature_in);
aesl_fh.touch(AUTOTB_TVOUT_node_feature_in);
//edge_list_in
aesl_fh.touch(AUTOTB_TVIN_edge_list_in);
aesl_fh.touch(AUTOTB_TVOUT_edge_list_in);
//edge_attr_in
aesl_fh.touch(AUTOTB_TVIN_edge_attr_in);
aesl_fh.touch(AUTOTB_TVOUT_edge_attr_in);
//graph_attr
aesl_fh.touch(AUTOTB_TVIN_graph_attr);
aesl_fh.touch(AUTOTB_TVOUT_graph_attr);
//task
aesl_fh.touch(AUTOTB_TVIN_task);
aesl_fh.touch(AUTOTB_TVOUT_task);
//gnn_node_mlp_1_weights_fixed
aesl_fh.touch(AUTOTB_TVIN_gnn_node_mlp_1_weights_fixed);
aesl_fh.touch(AUTOTB_TVOUT_gnn_node_mlp_1_weights_fixed);
//gnn_node_mlp_1_bias_fixed
aesl_fh.touch(AUTOTB_TVIN_gnn_node_mlp_1_bias_fixed);
aesl_fh.touch(AUTOTB_TVOUT_gnn_node_mlp_1_bias_fixed);
//gnn_node_mlp_2_weights_fixed
aesl_fh.touch(AUTOTB_TVIN_gnn_node_mlp_2_weights_fixed);
aesl_fh.touch(AUTOTB_TVOUT_gnn_node_mlp_2_weights_fixed);
//gnn_node_mlp_2_bias_fixed
aesl_fh.touch(AUTOTB_TVIN_gnn_node_mlp_2_bias_fixed);
aesl_fh.touch(AUTOTB_TVOUT_gnn_node_mlp_2_bias_fixed);
//gnn_node_embedding_fixed
aesl_fh.touch(AUTOTB_TVIN_gnn_node_embedding_fixed);
aesl_fh.touch(AUTOTB_TVOUT_gnn_node_embedding_fixed);
//gnn_edge_embedding_fixed
aesl_fh.touch(AUTOTB_TVIN_gnn_edge_embedding_fixed);
aesl_fh.touch(AUTOTB_TVOUT_gnn_edge_embedding_fixed);
//graph_pred_linear_weight_fixed
aesl_fh.touch(AUTOTB_TVIN_graph_pred_linear_weight_fixed);
aesl_fh.touch(AUTOTB_TVOUT_graph_pred_linear_weight_fixed);
//graph_pred_linear_bias_fixed
aesl_fh.touch(AUTOTB_TVIN_graph_pred_linear_bias_fixed);
aesl_fh.touch(AUTOTB_TVOUT_graph_pred_linear_bias_fixed);
//eps_fixed
aesl_fh.touch(AUTOTB_TVIN_eps_fixed);
aesl_fh.touch(AUTOTB_TVOUT_eps_fixed);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_node_feature_in = 0;
unsigned __xlx_offset_byte_param_edge_list_in = 0;
unsigned __xlx_offset_byte_param_edge_attr_in = 0;
unsigned __xlx_offset_byte_param_graph_attr = 0;
unsigned __xlx_offset_byte_param_task = 0;
unsigned __xlx_offset_byte_param_gnn_node_mlp_1_weights_fixed = 0;
unsigned __xlx_offset_byte_param_gnn_node_mlp_1_bias_fixed = 0;
unsigned __xlx_offset_byte_param_gnn_node_mlp_2_weights_fixed = 0;
unsigned __xlx_offset_byte_param_gnn_node_mlp_2_bias_fixed = 0;
unsigned __xlx_offset_byte_param_gnn_node_embedding_fixed = 0;
unsigned __xlx_offset_byte_param_gnn_edge_embedding_fixed = 0;
unsigned __xlx_offset_byte_param_graph_pred_linear_weight_fixed = 0;
unsigned __xlx_offset_byte_param_graph_pred_linear_bias_fixed = 0;
unsigned __xlx_offset_byte_param_eps_fixed = 0;
// print mem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_node_feature_in = 0*4;
  if (__xlx_apatb_param_node_feature_in) {
    for (int j = 0  - 0, e = 100000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_node_feature_in)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_edge_list_in = 100000*4;
  if (__xlx_apatb_param_edge_list_in) {
    for (int j = 0  - 0, e = 100000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_edge_list_in)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_edge_attr_in = 200000*4;
  if (__xlx_apatb_param_edge_attr_in) {
    for (int j = 0  - 0, e = 100000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_edge_attr_in)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_graph_attr = 300000*4;
  if (__xlx_apatb_param_graph_attr) {
    for (int j = 0  - 0, e = 100000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_graph_attr)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_task = 400000*4;
  if (__xlx_apatb_param_task) {
    for (int j = 0  - 0, e = 100000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_task)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_node_mlp_1_weights_fixed = 500000*4;
  if (__xlx_apatb_param_gnn_node_mlp_1_weights_fixed) {
    for (int j = 0  - 0, e = 900000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_node_mlp_1_weights_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_node_mlp_1_bias_fixed = 1400000*4;
  if (__xlx_apatb_param_gnn_node_mlp_1_bias_fixed) {
    for (int j = 0  - 0, e = 3000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_node_mlp_1_bias_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_node_mlp_2_weights_fixed = 1403000*4;
  if (__xlx_apatb_param_gnn_node_mlp_2_weights_fixed) {
    for (int j = 0  - 0, e = 900000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_node_mlp_2_weights_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_node_mlp_2_bias_fixed = 2303000*4;
  if (__xlx_apatb_param_gnn_node_mlp_2_bias_fixed) {
    for (int j = 0  - 0, e = 1500 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_node_mlp_2_bias_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_node_embedding_fixed = 2304500*4;
  if (__xlx_apatb_param_gnn_node_embedding_fixed) {
    for (int j = 0  - 0, e = 51900 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_node_embedding_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_edge_embedding_fixed = 2356400*4;
  if (__xlx_apatb_param_gnn_edge_embedding_fixed) {
    for (int j = 0  - 0, e = 19500 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_edge_embedding_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_graph_pred_linear_weight_fixed = 2375900*4;
  if (__xlx_apatb_param_graph_pred_linear_weight_fixed) {
    for (int j = 0  - 0, e = 300 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_graph_pred_linear_bias_fixed = 2376200*4;
  if (__xlx_apatb_param_graph_pred_linear_bias_fixed) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_eps_fixed = 2376201*4;
  if (__xlx_apatb_param_eps_fixed) {
    for (int j = 0  - 0, e = 5 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_eps_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2376206, &tcl_file.mem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_mem, __xlx_sprintf_buffer.data());
}
// print node_feature_in Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_node_feature_in, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_node_feature_in;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_node_feature_in, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.node_feature_in_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_node_feature_in, __xlx_sprintf_buffer.data());
}
// print edge_list_in Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_edge_list_in, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_edge_list_in;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_edge_list_in, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.edge_list_in_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_edge_list_in, __xlx_sprintf_buffer.data());
}
// print edge_attr_in Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_edge_attr_in, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_edge_attr_in;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_edge_attr_in, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.edge_attr_in_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_edge_attr_in, __xlx_sprintf_buffer.data());
}
// print graph_attr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_graph_attr, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_graph_attr;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_graph_attr, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.graph_attr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_graph_attr, __xlx_sprintf_buffer.data());
}
// print task Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_task, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_task;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_task, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.task_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_task, __xlx_sprintf_buffer.data());
}
// print gnn_node_mlp_1_weights_fixed Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_1_weights_fixed, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_gnn_node_mlp_1_weights_fixed;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_1_weights_fixed, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.gnn_node_mlp_1_weights_fixed_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_1_weights_fixed, __xlx_sprintf_buffer.data());
}
// print gnn_node_mlp_1_bias_fixed Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_1_bias_fixed, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_gnn_node_mlp_1_bias_fixed;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_1_bias_fixed, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.gnn_node_mlp_1_bias_fixed_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_1_bias_fixed, __xlx_sprintf_buffer.data());
}
// print gnn_node_mlp_2_weights_fixed Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_2_weights_fixed, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_gnn_node_mlp_2_weights_fixed;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_2_weights_fixed, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.gnn_node_mlp_2_weights_fixed_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_2_weights_fixed, __xlx_sprintf_buffer.data());
}
// print gnn_node_mlp_2_bias_fixed Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_2_bias_fixed, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_gnn_node_mlp_2_bias_fixed;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_2_bias_fixed, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.gnn_node_mlp_2_bias_fixed_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gnn_node_mlp_2_bias_fixed, __xlx_sprintf_buffer.data());
}
// print gnn_node_embedding_fixed Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gnn_node_embedding_fixed, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_gnn_node_embedding_fixed;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gnn_node_embedding_fixed, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.gnn_node_embedding_fixed_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gnn_node_embedding_fixed, __xlx_sprintf_buffer.data());
}
// print gnn_edge_embedding_fixed Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gnn_edge_embedding_fixed, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_gnn_edge_embedding_fixed;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gnn_edge_embedding_fixed, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.gnn_edge_embedding_fixed_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gnn_edge_embedding_fixed, __xlx_sprintf_buffer.data());
}
// print graph_pred_linear_weight_fixed Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_graph_pred_linear_weight_fixed, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_graph_pred_linear_weight_fixed;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_graph_pred_linear_weight_fixed, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.graph_pred_linear_weight_fixed_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_graph_pred_linear_weight_fixed, __xlx_sprintf_buffer.data());
}
// print graph_pred_linear_bias_fixed Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_graph_pred_linear_bias_fixed, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_graph_pred_linear_bias_fixed;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_graph_pred_linear_bias_fixed, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.graph_pred_linear_bias_fixed_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_graph_pred_linear_bias_fixed, __xlx_sprintf_buffer.data());
}
// print eps_fixed Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_eps_fixed, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_eps_fixed;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_eps_fixed, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.eps_fixed_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_eps_fixed, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
GIN_compute_one_graph_hw_stub_wrapper(__xlx_apatb_param_node_feature_in, __xlx_apatb_param_edge_list_in, __xlx_apatb_param_edge_attr_in, __xlx_apatb_param_graph_attr, __xlx_apatb_param_task, __xlx_apatb_param_gnn_node_mlp_1_weights_fixed, __xlx_apatb_param_gnn_node_mlp_1_bias_fixed, __xlx_apatb_param_gnn_node_mlp_2_weights_fixed, __xlx_apatb_param_gnn_node_mlp_2_bias_fixed, __xlx_apatb_param_gnn_node_embedding_fixed, __xlx_apatb_param_gnn_edge_embedding_fixed, __xlx_apatb_param_graph_pred_linear_weight_fixed, __xlx_apatb_param_graph_pred_linear_bias_fixed, __xlx_apatb_param_eps_fixed);
CodeState = DUMP_OUTPUTS;
// print mem Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_node_feature_in = 0*4;
  if (__xlx_apatb_param_node_feature_in) {
    for (int j = 0  - 0, e = 100000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_node_feature_in)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_edge_list_in = 100000*4;
  if (__xlx_apatb_param_edge_list_in) {
    for (int j = 0  - 0, e = 100000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_edge_list_in)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_edge_attr_in = 200000*4;
  if (__xlx_apatb_param_edge_attr_in) {
    for (int j = 0  - 0, e = 100000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_edge_attr_in)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_graph_attr = 300000*4;
  if (__xlx_apatb_param_graph_attr) {
    for (int j = 0  - 0, e = 100000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_graph_attr)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_task = 400000*4;
  if (__xlx_apatb_param_task) {
    for (int j = 0  - 0, e = 100000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_task)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_node_mlp_1_weights_fixed = 500000*4;
  if (__xlx_apatb_param_gnn_node_mlp_1_weights_fixed) {
    for (int j = 0  - 0, e = 900000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_node_mlp_1_weights_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_node_mlp_1_bias_fixed = 1400000*4;
  if (__xlx_apatb_param_gnn_node_mlp_1_bias_fixed) {
    for (int j = 0  - 0, e = 3000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_node_mlp_1_bias_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_node_mlp_2_weights_fixed = 1403000*4;
  if (__xlx_apatb_param_gnn_node_mlp_2_weights_fixed) {
    for (int j = 0  - 0, e = 900000 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_node_mlp_2_weights_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_node_mlp_2_bias_fixed = 2303000*4;
  if (__xlx_apatb_param_gnn_node_mlp_2_bias_fixed) {
    for (int j = 0  - 0, e = 1500 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_node_mlp_2_bias_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_node_embedding_fixed = 2304500*4;
  if (__xlx_apatb_param_gnn_node_embedding_fixed) {
    for (int j = 0  - 0, e = 51900 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_node_embedding_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_gnn_edge_embedding_fixed = 2356400*4;
  if (__xlx_apatb_param_gnn_edge_embedding_fixed) {
    for (int j = 0  - 0, e = 19500 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_gnn_edge_embedding_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_graph_pred_linear_weight_fixed = 2375900*4;
  if (__xlx_apatb_param_graph_pred_linear_weight_fixed) {
    for (int j = 0  - 0, e = 300 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_graph_pred_linear_weight_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_graph_pred_linear_bias_fixed = 2376200*4;
  if (__xlx_apatb_param_graph_pred_linear_bias_fixed) {
    for (int j = 0  - 0, e = 1 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_graph_pred_linear_bias_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
  __xlx_offset_byte_param_eps_fixed = 2376201*4;
  if (__xlx_apatb_param_eps_fixed) {
    for (int j = 0  - 0, e = 5 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_eps_fixed)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2376206, &tcl_file.mem_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_mem, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
