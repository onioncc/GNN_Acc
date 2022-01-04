// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1__HH__
#define __GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1__HH__
#include "GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0 GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0_U;

    SC_CTOR(GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1):  GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0_U ("GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0_U") {
        GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0_U.clk(clk);
        GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0_U.rst(reset);
        GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0_U.ce(ce);
        GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0_U.in0(din0);
        GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0_U.in1(din1);
        GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0_U.in2(din2);
        GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1_DSP48_0_U.dout(dout);

    }

};

#endif //
