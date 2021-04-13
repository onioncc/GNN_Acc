// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GIN_compute_one_graph_MLP_PE_600_300_62 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        mlp_weight_fifo_4_V_V_dout,
        mlp_weight_fifo_4_V_V_empty_n,
        mlp_weight_fifo_4_V_V_read,
        mlp_weight_fifo_5_V_V_din,
        mlp_weight_fifo_5_V_V_full_n,
        mlp_weight_fifo_5_V_V_write,
        mlp_2_bias_V_load_loc_dout,
        mlp_2_bias_V_load_loc_empty_n,
        mlp_2_bias_V_load_loc_read,
        mlp_in_local4_address0,
        mlp_in_local4_ce0,
        mlp_in_local4_q0,
        mlp_out_local19_address0,
        mlp_out_local19_ce0,
        mlp_out_local19_we0,
        mlp_out_local19_d0,
        d_out_dout,
        d_out_empty_n,
        d_out_read,
        do_relu_dout,
        do_relu_empty_n,
        do_relu_read,
        mlp_2_bias_V_load_loc_out_din,
        mlp_2_bias_V_load_loc_out_full_n,
        mlp_2_bias_V_load_loc_out_write,
        d_out_out_din,
        d_out_out_full_n,
        d_out_out_write,
        do_relu_out_din,
        do_relu_out_full_n,
        do_relu_out_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] mlp_weight_fifo_4_V_V_dout;
input   mlp_weight_fifo_4_V_V_empty_n;
output   mlp_weight_fifo_4_V_V_read;
output  [31:0] mlp_weight_fifo_5_V_V_din;
input   mlp_weight_fifo_5_V_V_full_n;
output   mlp_weight_fifo_5_V_V_write;
input  [31:0] mlp_2_bias_V_load_loc_dout;
input   mlp_2_bias_V_load_loc_empty_n;
output   mlp_2_bias_V_load_loc_read;
output  [9:0] mlp_in_local4_address0;
output   mlp_in_local4_ce0;
input  [30:0] mlp_in_local4_q0;
output  [8:0] mlp_out_local19_address0;
output   mlp_out_local19_ce0;
output   mlp_out_local19_we0;
output  [31:0] mlp_out_local19_d0;
input  [8:0] d_out_dout;
input   d_out_empty_n;
output   d_out_read;
input  [0:0] do_relu_dout;
input   do_relu_empty_n;
output   do_relu_read;
output  [31:0] mlp_2_bias_V_load_loc_out_din;
input   mlp_2_bias_V_load_loc_out_full_n;
output   mlp_2_bias_V_load_loc_out_write;
output  [8:0] d_out_out_din;
input   d_out_out_full_n;
output   d_out_out_write;
output  [0:0] do_relu_out_din;
input   do_relu_out_full_n;
output   do_relu_out_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg mlp_weight_fifo_4_V_V_read;
reg mlp_weight_fifo_5_V_V_write;
reg mlp_2_bias_V_load_loc_read;
reg mlp_in_local4_ce0;
reg mlp_out_local19_ce0;
reg mlp_out_local19_we0;
reg d_out_read;
reg do_relu_read;
reg mlp_2_bias_V_load_loc_out_write;
reg d_out_out_write;
reg do_relu_out_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    mlp_weight_fifo_4_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln86_reg_290;
reg    mlp_weight_fifo_5_V_V_blk_n;
reg    mlp_2_bias_V_load_loc_blk_n;
reg    d_out_blk_n;
reg    do_relu_blk_n;
reg    mlp_2_bias_V_load_loc_out_blk_n;
reg    d_out_out_blk_n;
reg    do_relu_out_blk_n;
reg   [9:0] i_reg_167;
reg   [31:0] lhs_reg_178;
reg   [0:0] do_relu_12_reg_275;
reg   [8:0] mlp_out_local19_addr_reg_280;
wire   [9:0] add_ln86_fu_193_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln86_fu_199_p2;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire   [63:0] zext_ln85_fu_188_p1;
wire   [63:0] zext_ln86_fu_205_p1;
reg    ap_block_pp0_stage0_01001;
wire    ap_CS_fsm_state4;
wire   [30:0] r_V_13_fu_218_p1;
wire   [53:0] r_V_13_fu_218_p2;
wire   [53:0] lhs_13_fu_224_p3;
wire   [53:0] ret_V_fu_232_p2;
wire   [0:0] tmp_fu_248_p3;
wire   [0:0] and_ln92_fu_256_p2;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [53:0] r_V_13_fu_218_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

GIN_compute_one_graph_mul_32s_31ns_54_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 31 ),
    .dout_WIDTH( 54 ))
mul_32s_31ns_54_1_1_U357(
    .din0(mlp_weight_fifo_4_V_V_dout),
    .din1(r_V_13_fu_218_p1),
    .dout(r_V_13_fu_218_p2)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln86_fu_199_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        i_reg_167 <= add_ln86_fu_193_p2;
    end else if ((~((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_167 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln86_reg_290 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lhs_reg_178 <= {{ret_V_fu_232_p2[53:22]}};
    end else if ((~((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        lhs_reg_178 <= mlp_2_bias_V_load_loc_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        do_relu_12_reg_275 <= do_relu_dout;
        mlp_out_local19_addr_reg_280 <= zext_ln85_fu_188_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln86_reg_290 <= icmp_ln86_fu_199_p2;
    end
end

always @ (*) begin
    if ((icmp_ln86_fu_199_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        d_out_blk_n = d_out_empty_n;
    end else begin
        d_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        d_out_out_blk_n = d_out_out_full_n;
    end else begin
        d_out_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        d_out_out_write = 1'b1;
    end else begin
        d_out_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        d_out_read = 1'b1;
    end else begin
        d_out_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        do_relu_blk_n = do_relu_empty_n;
    end else begin
        do_relu_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        do_relu_out_blk_n = do_relu_out_full_n;
    end else begin
        do_relu_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        do_relu_out_write = 1'b1;
    end else begin
        do_relu_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        do_relu_read = 1'b1;
    end else begin
        do_relu_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mlp_2_bias_V_load_loc_blk_n = mlp_2_bias_V_load_loc_empty_n;
    end else begin
        mlp_2_bias_V_load_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mlp_2_bias_V_load_loc_out_blk_n = mlp_2_bias_V_load_loc_out_full_n;
    end else begin
        mlp_2_bias_V_load_loc_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mlp_2_bias_V_load_loc_out_write = 1'b1;
    end else begin
        mlp_2_bias_V_load_loc_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        mlp_2_bias_V_load_loc_read = 1'b1;
    end else begin
        mlp_2_bias_V_load_loc_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mlp_in_local4_ce0 = 1'b1;
    end else begin
        mlp_in_local4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mlp_out_local19_ce0 = 1'b1;
    end else begin
        mlp_out_local19_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mlp_out_local19_we0 = 1'b1;
    end else begin
        mlp_out_local19_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_reg_290 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mlp_weight_fifo_4_V_V_blk_n = mlp_weight_fifo_4_V_V_empty_n;
    end else begin
        mlp_weight_fifo_4_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln86_reg_290 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mlp_weight_fifo_4_V_V_read = 1'b1;
    end else begin
        mlp_weight_fifo_4_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln86_reg_290 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mlp_weight_fifo_5_V_V_blk_n = mlp_weight_fifo_5_V_V_full_n;
    end else begin
        mlp_weight_fifo_5_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln86_reg_290 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mlp_weight_fifo_5_V_V_write = 1'b1;
    end else begin
        mlp_weight_fifo_5_V_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln86_fu_199_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln86_fu_199_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln86_fu_193_p2 = (i_reg_167 + 10'd1);

assign and_ln92_fu_256_p2 = (tmp_fu_248_p3 & do_relu_12_reg_275);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln86_reg_290 == 1'd0) & (mlp_weight_fifo_5_V_V_full_n == 1'b0)) | ((icmp_ln86_reg_290 == 1'd0) & (mlp_weight_fifo_4_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln86_reg_290 == 1'd0) & (mlp_weight_fifo_5_V_V_full_n == 1'b0)) | ((icmp_ln86_reg_290 == 1'd0) & (mlp_weight_fifo_4_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln86_reg_290 == 1'd0) & (mlp_weight_fifo_5_V_V_full_n == 1'b0)) | ((icmp_ln86_reg_290 == 1'd0) & (mlp_weight_fifo_4_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (do_relu_out_full_n == 1'b0) | (d_out_out_full_n == 1'b0) | (mlp_2_bias_V_load_loc_out_full_n == 1'b0) | (do_relu_empty_n == 1'b0) | (d_out_empty_n == 1'b0) | (mlp_2_bias_V_load_loc_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((icmp_ln86_reg_290 == 1'd0) & (mlp_weight_fifo_5_V_V_full_n == 1'b0)) | ((icmp_ln86_reg_290 == 1'd0) & (mlp_weight_fifo_4_V_V_empty_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign d_out_out_din = d_out_dout;

assign do_relu_out_din = do_relu_dout;

assign icmp_ln86_fu_199_p2 = ((i_reg_167 == 10'd600) ? 1'b1 : 1'b0);

assign lhs_13_fu_224_p3 = {{lhs_reg_178}, {22'd0}};

assign mlp_2_bias_V_load_loc_out_din = mlp_2_bias_V_load_loc_dout;

assign mlp_in_local4_address0 = zext_ln86_fu_205_p1;

assign mlp_out_local19_address0 = mlp_out_local19_addr_reg_280;

assign mlp_out_local19_d0 = ((and_ln92_fu_256_p2[0:0] == 1'b1) ? 32'd0 : lhs_reg_178);

assign mlp_weight_fifo_5_V_V_din = mlp_weight_fifo_4_V_V_dout;

assign r_V_13_fu_218_p1 = r_V_13_fu_218_p10;

assign r_V_13_fu_218_p10 = mlp_in_local4_q0;

assign ret_V_fu_232_p2 = (r_V_13_fu_218_p2 + lhs_13_fu_224_p3);

assign tmp_fu_248_p3 = lhs_reg_178[32'd31];

assign zext_ln85_fu_188_p1 = d_out_dout;

assign zext_ln86_fu_205_p1 = i_reg_167;

endmodule //GIN_compute_one_graph_MLP_PE_600_300_62
