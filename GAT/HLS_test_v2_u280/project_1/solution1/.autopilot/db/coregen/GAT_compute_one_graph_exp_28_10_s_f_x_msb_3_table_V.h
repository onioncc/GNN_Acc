// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V_H__
#define __GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 32;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V_ram) {
        ram[0] = "0b00000000000000000000000000000000";
        ram[1] = "0b00000000010000000000000000010101";
        ram[2] = "0b00000001000000000000000010101011";
        ram[3] = "0b00000010010000000000001001000000";
        ram[4] = "0b00000100000000000000010101010101";
        ram[5] = "0b00000110010000000000101001101011";
        ram[6] = "0b00001001000000000001001000000000";
        ram[7] = "0b00001100010000000001110010010110";
        ram[8] = "0b00010000000000000010101010101011";
        ram[9] = "0b00010100010000000011110011000001";
        ram[10] = "0b00011001000000000101001101010110";
        ram[11] = "0b00011110010000000110111011101100";
        ram[12] = "0b00100100000000001001000000000010";
        ram[13] = "0b00101010010000001011011100011000";
        ram[14] = "0b00110001000000001110010010101110";
        ram[15] = "0b00111000010000010001100101000100";
        ram[16] = "0b01000000000000010101010101011011";
        ram[17] = "0b01001000010000011001100101110001";
        ram[18] = "0b01010001000000011110011000001001";
        ram[19] = "0b01011010010000100011101110100000";
        ram[20] = "0b01100100000000101001101010111000";
        ram[21] = "0b01101110010000110000001111010000";
        ram[22] = "0b01111001000000110111011101101000";
        ram[23] = "0b10000100010000111111011000000001";
        ram[24] = "0b10010000000001001000000000011011";
        ram[25] = "0b10011100010001010001011000110101";
        ram[26] = "0b10101001000001011011100011010000";
        ram[27] = "0b10110110010001100110100001101011";
        ram[28] = "0b11000100000001110010010110000111";
        ram[29] = "0b11010010010001111111000010100100";
        ram[30] = "0b11100001000010001100101001000010";
        ram[31] = "0b11110000010010011011001011100000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V_ram* meminst;


SC_CTOR(GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V) {
meminst = new GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V_ram("GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V() {
    delete meminst;
}


};//endmodule
#endif
