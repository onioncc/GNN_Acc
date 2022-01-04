// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

module GAT_compute_one_graph_ama_addmuladd_11ns_18ns_8ns_18ns_18_4_1_DSP48_2 (
    input clk,
    input rst,
    input ce,
    input  [11 - 1:0] in0,
    input  [18 - 1:0] in1,
    input  [8 - 1:0] in2,
    input  [18 - 1:0] in3,
    output [18 - 1:0]  dout);


wire signed [18 - 1:0]     b;
wire signed [27 - 1:0]     a;
wire signed [27 - 1:0]     d;
wire signed [48 - 1:0]     c;
wire signed [45 - 1:0]     m;
wire signed [48 - 1:0]     p;
wire signed [27 - 1:0]     ad;
reg  signed [45 - 1:0]     m_reg;
reg  signed [27 - 1:0]     ad_reg;
reg  signed [18 - 1:0]     b_reg;
reg  signed [48 - 1:0]     p_reg;

assign a = $unsigned(in0);
assign d = $unsigned(in1);
assign b = $unsigned(in2);
assign c = $unsigned(in3);

assign ad = a + d;
assign m  = ad_reg * b_reg;
assign p  = m_reg + c;

always @(posedge clk) begin
    if (ce) begin
        m_reg  <= m;
        ad_reg <= ad;
        b_reg  <= b;
        p_reg  <= p;
    end
end

assign dout = p_reg;

endmodule
`timescale 1 ns / 1 ps
module GAT_compute_one_graph_ama_addmuladd_11ns_18ns_8ns_18ns_18_4_1(
    clk,
    reset,
    ce,
    din0,
    din1,
    din2,
    din3,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter din3_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
input[din3_WIDTH - 1:0] din3;
output[dout_WIDTH - 1:0] dout;



GAT_compute_one_graph_ama_addmuladd_11ns_18ns_8ns_18ns_18_4_1_DSP48_2 GAT_compute_one_graph_ama_addmuladd_11ns_18ns_8ns_18ns_18_4_1_DSP48_2_U(
    .clk( clk ),
    .rst( reset ),
    .ce( ce ),
    .in0( din0 ),
    .in1( din1 ),
    .in2( din2 ),
    .in3( din3 ),
    .dout( dout ));

endmodule

