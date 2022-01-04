// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1__HH__
#define __GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1__HH__
#include "GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1_DSP48_7.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1_DSP48_7 GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1_DSP48_7_U;

    SC_CTOR(GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1):  GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1_DSP48_7_U ("GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1_DSP48_7_U") {
        GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1_DSP48_7_U.clk(clk);
        GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1_DSP48_7_U.rst(reset);
        GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1_DSP48_7_U.ce(ce);
        GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1_DSP48_7_U.a(din0);
        GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1_DSP48_7_U.b(din1);
        GAT_compute_one_graph_mul_mul_10ns_7ns_16_4_1_DSP48_7_U.p(dout);

    }

};

#endif //
