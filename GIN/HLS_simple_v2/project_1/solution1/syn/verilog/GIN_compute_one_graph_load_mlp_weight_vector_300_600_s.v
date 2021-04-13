// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GIN_compute_one_graph_load_mlp_weight_vector_300_600_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        mlp_weight_vector_din,
        mlp_weight_vector_full_n,
        mlp_weight_vector_write,
        d_out_dout,
        d_out_empty_n,
        d_out_read,
        d_out_out_din,
        d_out_out_full_n,
        d_out_out_write,
        mlp_1_weights_V_address0,
        mlp_1_weights_V_ce0,
        mlp_1_weights_V_q0
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_pp0_stage0 = 6'd16;
parameter    ap_ST_fsm_state7 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [31:0] mlp_weight_vector_din;
input   mlp_weight_vector_full_n;
output   mlp_weight_vector_write;
input  [9:0] d_out_dout;
input   d_out_empty_n;
output   d_out_read;
output  [9:0] d_out_out_din;
input   d_out_out_full_n;
output   d_out_out_write;
output  [17:0] mlp_1_weights_V_address0;
output   mlp_1_weights_V_ce0;
input  [31:0] mlp_1_weights_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg mlp_weight_vector_write;
reg d_out_read;
reg d_out_out_write;
reg mlp_1_weights_V_ce0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    mlp_weight_vector_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln74_reg_149;
reg    d_out_blk_n;
reg    d_out_out_blk_n;
reg   [8:0] i_reg_87;
wire   [17:0] grp_fu_128_p2;
reg   [17:0] mul_ln74_reg_139;
wire    ap_CS_fsm_state4;
wire   [8:0] add_ln74_fu_102_p2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state5_pp0_stage0_iter0;
reg    ap_block_state6_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln74_fu_108_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state5;
wire   [63:0] zext_ln77_2_fu_123_p1;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_01001;
wire   [17:0] zext_ln77_fu_114_p1;
(* use_dsp48 = "no" *) wire   [17:0] add_ln77_fu_118_p2;
wire   [9:0] grp_fu_128_p0;
wire   [9:0] grp_fu_128_p1;
reg    grp_fu_128_ce;
wire    ap_CS_fsm_state7;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [17:0] grp_fu_128_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

GIN_compute_one_graph_mul_mul_10ns_10ns_18_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 18 ))
mul_mul_10ns_10ns_18_4_1_U62(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_128_p0),
    .din1(grp_fu_128_p1),
    .ce(grp_fu_128_ce),
    .dout(grp_fu_128_p2)
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
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state5))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state5))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state5);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_reg_87 <= 9'd0;
    end else if (((icmp_ln74_fu_108_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_87 <= add_ln74_fu_102_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln74_reg_149 <= icmp_ln74_fu_108_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_ln74_reg_139 <= grp_fu_128_p2;
    end
end

always @ (*) begin
    if ((icmp_ln74_fu_108_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state5 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        d_out_blk_n = d_out_empty_n;
    end else begin
        d_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        d_out_out_blk_n = d_out_out_full_n;
    end else begin
        d_out_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((d_out_out_full_n == 1'b0) | (d_out_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        d_out_out_write = 1'b1;
    end else begin
        d_out_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((d_out_out_full_n == 1'b0) | (d_out_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        d_out_read = 1'b1;
    end else begin
        d_out_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state1) & ((d_out_out_full_n == 1'b0) | (d_out_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))))) begin
        grp_fu_128_ce = 1'b0;
    end else begin
        grp_fu_128_ce = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mlp_1_weights_V_ce0 = 1'b1;
    end else begin
        mlp_1_weights_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln74_reg_149 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mlp_weight_vector_blk_n = mlp_weight_vector_full_n;
    end else begin
        mlp_weight_vector_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln74_reg_149 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mlp_weight_vector_write = 1'b1;
    end else begin
        mlp_weight_vector_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((d_out_out_full_n == 1'b0) | (d_out_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
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
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln74_fu_108_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln74_fu_108_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln74_fu_102_p2 = (i_reg_87 + 9'd1);

assign add_ln77_fu_118_p2 = (mul_ln74_reg_139 + zext_ln77_fu_114_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln74_reg_149 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (mlp_weight_vector_full_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln74_reg_149 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (mlp_weight_vector_full_n == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln74_reg_149 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (mlp_weight_vector_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state1 = ((d_out_out_full_n == 1'b0) | (d_out_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter1 = ((icmp_ln74_reg_149 == 1'd0) & (mlp_weight_vector_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign d_out_out_din = d_out_dout;

assign grp_fu_128_p0 = grp_fu_128_p00;

assign grp_fu_128_p00 = d_out_dout;

assign grp_fu_128_p1 = 18'd300;

assign icmp_ln74_fu_108_p2 = ((i_reg_87 == 9'd300) ? 1'b1 : 1'b0);

assign mlp_1_weights_V_address0 = zext_ln77_2_fu_123_p1;

assign mlp_weight_vector_din = mlp_1_weights_V_q0;

assign zext_ln77_2_fu_123_p1 = add_ln77_fu_118_p2;

assign zext_ln77_fu_114_p1 = i_reg_87;

endmodule //GIN_compute_one_graph_load_mlp_weight_vector_300_600_s
