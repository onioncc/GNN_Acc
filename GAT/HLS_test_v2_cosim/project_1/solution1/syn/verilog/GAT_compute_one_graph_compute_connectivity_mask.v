// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_compute_connectivity_mask (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        num_of_nodes,
        num_of_edges,
        edge_list_address0,
        edge_list_ce0,
        edge_list_q0,
        edge_list_address1,
        edge_list_ce1,
        edge_list_q1,
        connectivity_mask_final_address1,
        connectivity_mask_final_ce1,
        connectivity_mask_final_we1,
        connectivity_mask_final_d1,
        grp_fu_2668_p_din0,
        grp_fu_2668_p_din1,
        grp_fu_2668_p_dout0,
        grp_fu_2668_p_ce,
        grp_fu_2672_p_din0,
        grp_fu_2672_p_din1,
        grp_fu_2672_p_dout0,
        grp_fu_2672_p_ce
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] num_of_nodes;
input  [31:0] num_of_edges;
output  [9:0] edge_list_address0;
output   edge_list_ce0;
input  [31:0] edge_list_q0;
output  [9:0] edge_list_address1;
output   edge_list_ce1;
input  [31:0] edge_list_q1;
output  [15:0] connectivity_mask_final_address1;
output   connectivity_mask_final_ce1;
output   connectivity_mask_final_we1;
output  [31:0] connectivity_mask_final_d1;
output  [31:0] grp_fu_2668_p_din0;
output  [31:0] grp_fu_2668_p_din1;
input  [31:0] grp_fu_2668_p_dout0;
output   grp_fu_2668_p_ce;
output  [30:0] grp_fu_2672_p_din0;
output  [30:0] grp_fu_2672_p_din1;
input  [61:0] grp_fu_2672_p_dout0;
output   grp_fu_2672_p_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [15:0] connectivity_mask_address0;
reg    connectivity_mask_ce0;
wire   [31:0] connectivity_mask_q0;
reg   [15:0] connectivity_mask_address1;
reg    connectivity_mask_ce1;
reg    connectivity_mask_we1;
reg   [31:0] connectivity_mask_d1;
reg   [31:0] mul_ln413_reg_111;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln413_fu_81_p2;
reg   [0:0] icmp_ln413_reg_122;
wire   [0:0] icmp_ln428_fu_86_p2;
reg   [0:0] icmp_ln428_reg_126;
wire    ap_CS_fsm_state6;
wire   [30:0] trunc_ln428_fu_91_p1;
reg   [30:0] trunc_ln428_reg_130;
wire   [61:0] zext_ln432_fu_94_p1;
wire    ap_CS_fsm_state7;
reg   [61:0] mul_ln432_reg_143;
wire    ap_CS_fsm_state8;
wire    grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_start;
wire    grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_done;
wire    grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_idle;
wire    grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_ready;
wire   [15:0] grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_address1;
wire    grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_ce1;
wire    grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_we1;
wire   [31:0] grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_d1;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_start;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_done;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_idle;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_ready;
wire   [9:0] grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_address0;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_ce0;
wire   [9:0] grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_address1;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_ce1;
wire   [15:0] grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_address0;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_ce0;
wire   [15:0] grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_address1;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_ce1;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_we1;
wire   [31:0] grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_d1;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_start;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_done;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_idle;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_ready;
wire   [15:0] grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_address0;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_ce0;
wire   [15:0] grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_address1;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_ce1;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_we1;
wire   [31:0] grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_d1;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_start;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_done;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_idle;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_ready;
wire   [15:0] grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_address1;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_ce1;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_we1;
wire   [31:0] grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_d1;
wire   [15:0] grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_address0;
wire    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_ce0;
reg    grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_start_reg;
reg   [9:0] ap_NS_fsm;
wire    ap_NS_fsm_state7;
reg    grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_start_reg;
wire    ap_NS_fsm_state9;
wire    ap_CS_fsm_state10;
wire  signed [31:0] icmp_ln428_fu_86_p0;
wire  signed [31:0] trunc_ln428_fu_91_p0;
reg    grp_fu_97_ce;
reg    ap_block_state10_on_subcall_done;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_block_state4_on_subcall_done;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_start_reg = 1'b0;
#0 grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_start_reg = 1'b0;
#0 grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_start_reg = 1'b0;
#0 grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_start_reg = 1'b0;
end

GAT_compute_one_graph_compute_connectivity_mask_connectivity_mask #(
    .DataWidth( 32 ),
    .AddressRange( 40000 ),
    .AddressWidth( 16 ))
connectivity_mask_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(connectivity_mask_address0),
    .ce0(connectivity_mask_ce0),
    .q0(connectivity_mask_q0),
    .address1(connectivity_mask_address1),
    .ce1(connectivity_mask_ce1),
    .we1(connectivity_mask_we1),
    .d1(connectivity_mask_d1)
);

GAT_compute_one_graph_compute_connectivity_mask_Pipeline_1 grp_compute_connectivity_mask_Pipeline_1_fu_42(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_start),
    .ap_done(grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_done),
    .ap_idle(grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_idle),
    .ap_ready(grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_ready),
    .sext_ln413(mul_ln413_reg_111),
    .connectivity_mask_address1(grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_address1),
    .connectivity_mask_ce1(grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_ce1),
    .connectivity_mask_we1(grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_we1),
    .connectivity_mask_d1(grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_d1)
);

GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1 grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_start),
    .ap_done(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_done),
    .ap_idle(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_idle),
    .ap_ready(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_ready),
    .num_of_edges(num_of_edges),
    .edge_list_address0(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_address0),
    .edge_list_ce0(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_ce0),
    .edge_list_q0(edge_list_q0),
    .edge_list_address1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_address1),
    .edge_list_ce1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_ce1),
    .edge_list_q1(edge_list_q1),
    .connectivity_mask_address0(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_address0),
    .connectivity_mask_ce0(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_ce0),
    .connectivity_mask_q0(connectivity_mask_q0),
    .connectivity_mask_address1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_address1),
    .connectivity_mask_ce1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_ce1),
    .connectivity_mask_we1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_we1),
    .connectivity_mask_d1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_d1)
);

GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2 grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_start),
    .ap_done(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_done),
    .ap_idle(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_idle),
    .ap_ready(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_ready),
    .trunc_ln(trunc_ln428_reg_130),
    .connectivity_mask_address0(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_address0),
    .connectivity_mask_ce0(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_ce0),
    .connectivity_mask_q0(connectivity_mask_q0),
    .connectivity_mask_address1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_address1),
    .connectivity_mask_ce1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_ce1),
    .connectivity_mask_we1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_we1),
    .connectivity_mask_d1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_d1)
);

GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4 grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_start),
    .ap_done(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_done),
    .ap_idle(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_idle),
    .ap_ready(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_ready),
    .trunc_ln(trunc_ln428_reg_130),
    .mul_ln432(mul_ln432_reg_143),
    .connectivity_mask_final_address1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_address1),
    .connectivity_mask_final_ce1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_ce1),
    .connectivity_mask_final_we1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_we1),
    .connectivity_mask_final_d1(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_d1),
    .connectivity_mask_address0(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_address0),
    .connectivity_mask_ce0(grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_ce0),
    .connectivity_mask_q0(connectivity_mask_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln413_fu_81_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_start_reg <= 1'b1;
        end else if ((grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_ready == 1'b1)) begin
            grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_start_reg <= 1'b1;
        end else if ((grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_ready == 1'b1)) begin
            grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) & (1'b1 == ap_NS_fsm_state7))) begin
            grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_ready == 1'b1)) begin
            grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_NS_fsm_state9) & (1'b1 == ap_CS_fsm_state8))) begin
            grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_start_reg <= 1'b1;
        end else if ((grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_ready == 1'b1)) begin
            grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln413_reg_122 <= icmp_ln413_fu_81_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        icmp_ln428_reg_126 <= icmp_ln428_fu_86_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln413_reg_111 <= grp_fu_2668_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln432_reg_143 <= grp_fu_2672_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln428_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        trunc_ln428_reg_130 <= trunc_ln428_fu_91_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state10_on_subcall_done)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state4_on_subcall_done)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if ((grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln428_reg_126 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        connectivity_mask_address0 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        connectivity_mask_address0 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        connectivity_mask_address0 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_address0;
    end else begin
        connectivity_mask_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        connectivity_mask_address1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        connectivity_mask_address1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_address1;
    end else if (((icmp_ln413_reg_122 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        connectivity_mask_address1 = grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_address1;
    end else begin
        connectivity_mask_address1 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln428_reg_126 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        connectivity_mask_ce0 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        connectivity_mask_ce0 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        connectivity_mask_ce0 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_ce0;
    end else begin
        connectivity_mask_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        connectivity_mask_ce1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        connectivity_mask_ce1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_ce1;
    end else if (((icmp_ln413_reg_122 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        connectivity_mask_ce1 = grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_ce1;
    end else begin
        connectivity_mask_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        connectivity_mask_d1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        connectivity_mask_d1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_d1;
    end else if (((icmp_ln413_reg_122 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        connectivity_mask_d1 = grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_d1;
    end else begin
        connectivity_mask_d1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        connectivity_mask_we1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_connectivity_mask_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        connectivity_mask_we1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_connectivity_mask_we1;
    end else if (((icmp_ln413_reg_122 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        connectivity_mask_we1 = grp_compute_connectivity_mask_Pipeline_1_fu_42_connectivity_mask_we1;
    end else begin
        connectivity_mask_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state8) & (grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_done == 1'b1)))) begin
        grp_fu_97_ce = 1'b1;
    end else begin
        grp_fu_97_ce = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln428_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6) & (grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if (((icmp_ln428_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_NS_fsm_state7 = ap_NS_fsm[32'd6];

assign ap_NS_fsm_state9 = ap_NS_fsm[32'd8];

always @ (*) begin
    ap_block_state10_on_subcall_done = ((icmp_ln428_reg_126 == 1'd1) & (grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_done == 1'b0));
end

always @ (*) begin
    ap_block_state4_on_subcall_done = ((icmp_ln413_reg_122 == 1'd0) & (grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_done == 1'b0));
end

assign connectivity_mask_final_address1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_address1;

assign connectivity_mask_final_ce1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_ce1;

assign connectivity_mask_final_d1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_d1;

assign connectivity_mask_final_we1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_connectivity_mask_final_we1;

assign edge_list_address0 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_address0;

assign edge_list_address1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_address1;

assign edge_list_ce0 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_ce0;

assign edge_list_ce1 = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_edge_list_ce1;

assign grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_start = grp_compute_connectivity_mask_Pipeline_1_fu_42_ap_start_reg;

assign grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_start = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49_ap_start_reg;

assign grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_start = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58_ap_start_reg;

assign grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_start = grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65_ap_start_reg;

assign grp_fu_2668_p_ce = 1'b1;

assign grp_fu_2668_p_din0 = num_of_nodes;

assign grp_fu_2668_p_din1 = num_of_nodes;

assign grp_fu_2672_p_ce = grp_fu_97_ce;

assign grp_fu_2672_p_din0 = zext_ln432_fu_94_p1;

assign grp_fu_2672_p_din1 = zext_ln432_fu_94_p1;

assign icmp_ln413_fu_81_p2 = ((mul_ln413_reg_111 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln428_fu_86_p0 = num_of_nodes;

assign icmp_ln428_fu_86_p2 = (($signed(icmp_ln428_fu_86_p0) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign trunc_ln428_fu_91_p0 = num_of_nodes;

assign trunc_ln428_fu_91_p1 = trunc_ln428_fu_91_p0[30:0];

assign zext_ln432_fu_94_p1 = trunc_ln428_reg_130;

endmodule //GAT_compute_one_graph_compute_connectivity_mask
