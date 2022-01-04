// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_CONV_Pipeline_VITIS_LOOP_131_23_VITIS_LOOP_132_24_VITIS_LOOP_133_25 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        num_out_features,
        mul_ln131_1,
        mul_ln131,
        icmp_ln133_1,
        out_nodes_features_V_address0,
        out_nodes_features_V_ce0,
        out_nodes_features_V_q0,
        out_nodes_features_V_address1,
        out_nodes_features_V_ce1,
        out_nodes_features_V_we1,
        out_nodes_features_V_d1,
        out_nodes_features_skip_concat_bias_V_address0,
        out_nodes_features_skip_concat_bias_V_ce0,
        out_nodes_features_skip_concat_bias_V_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] num_out_features;
input  [95:0] mul_ln131_1;
input  [63:0] mul_ln131;
input  [0:0] icmp_ln133_1;
output  [12:0] out_nodes_features_V_address0;
output   out_nodes_features_V_ce0;
input  [27:0] out_nodes_features_V_q0;
output  [12:0] out_nodes_features_V_address1;
output   out_nodes_features_V_ce1;
output   out_nodes_features_V_we1;
output  [27:0] out_nodes_features_V_d1;
output  [12:0] out_nodes_features_skip_concat_bias_V_address0;
output   out_nodes_features_skip_concat_bias_V_ce0;
input  [27:0] out_nodes_features_skip_concat_bias_V_q0;

reg ap_idle;
reg out_nodes_features_V_ce0;
reg out_nodes_features_V_ce1;
reg out_nodes_features_V_we1;
reg out_nodes_features_skip_concat_bias_V_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln131_fu_176_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln131_reg_430;
wire   [0:0] icmp_ln132_fu_190_p2;
reg   [0:0] icmp_ln132_reg_434;
reg   [0:0] icmp_ln132_reg_434_pp0_iter2_reg;
wire   [12:0] select_ln132_fu_258_p3;
reg   [12:0] select_ln132_reg_442;
reg   [12:0] select_ln132_reg_442_pp0_iter3_reg;
wire   [8:0] trunc_ln712_3_fu_274_p1;
reg   [8:0] trunc_ln712_3_reg_449;
wire   [6:0] trunc_ln712_2_fu_311_p1;
reg   [6:0] trunc_ln712_2_reg_454;
wire   [8:0] add_ln712_6_fu_315_p2;
reg   [8:0] add_ln712_6_reg_459;
reg   [12:0] out_nodes_features_V_addr_reg_464;
reg   [12:0] out_nodes_features_V_addr_reg_464_pp0_iter5_reg;
wire   [27:0] add_ln712_3_fu_369_p2;
reg   [27:0] add_ln712_3_reg_475;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln712_fu_354_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln712_5_fu_364_p1;
reg   [12:0] fout_fu_74;
wire   [12:0] add_ln133_fu_320_p2;
reg   [12:0] ap_sig_allocacmp_fout_3;
wire    ap_loop_init;
reg   [30:0] nh_fu_78;
wire   [30:0] select_ln132_1_fu_266_p3;
reg   [63:0] indvar_flatten129_fu_82;
wire   [63:0] select_ln132_2_fu_201_p3;
reg   [31:0] n1_fu_86;
wire   [31:0] select_ln131_1_fu_292_p3;
reg   [95:0] indvar_flatten148_fu_90;
wire   [95:0] add_ln131_1_fu_181_p2;
wire   [63:0] add_ln132_1_fu_195_p2;
wire   [31:0] fout_3_cast_fu_222_p1;
wire   [0:0] icmp_ln133_fu_226_p2;
wire   [30:0] select_ln131_fu_234_p3;
wire   [0:0] select_ln131_2_fu_241_p3;
wire   [0:0] or_ln132_fu_253_p2;
wire   [30:0] add_ln132_fu_247_p2;
wire   [31:0] add_ln131_fu_286_p2;
wire   [6:0] trunc_ln712_fu_299_p1;
wire   [8:0] tmp_47_cast_fu_303_p3;
wire   [12:0] tmp_50_cast_fu_342_p3;
wire   [12:0] add_ln712_fu_349_p2;
wire   [12:0] tmp_48_cast_fu_335_p3;
wire   [12:0] add_ln712_7_fu_359_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_done_reg = 1'b0;
end

GAT_compute_one_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            fout_fu_74 <= 13'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            fout_fu_74 <= add_ln133_fu_320_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten129_fu_82 <= 64'd0;
        end else if (((icmp_ln131_fu_176_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten129_fu_82 <= select_ln132_2_fu_201_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten148_fu_90 <= 96'd0;
        end else if (((icmp_ln131_fu_176_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten148_fu_90 <= add_ln131_1_fu_181_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            n1_fu_86 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            n1_fu_86 <= select_ln131_1_fu_292_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            nh_fu_78 <= 31'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln131_reg_430 == 1'd0))) begin
            nh_fu_78 <= select_ln132_1_fu_266_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln712_3_reg_475 <= add_ln712_3_fu_369_p2;
        add_ln712_6_reg_459 <= add_ln712_6_fu_315_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        icmp_ln132_reg_434_pp0_iter2_reg <= icmp_ln132_reg_434;
        out_nodes_features_V_addr_reg_464 <= zext_ln712_fu_354_p1;
        out_nodes_features_V_addr_reg_464_pp0_iter5_reg <= out_nodes_features_V_addr_reg_464;
        select_ln132_reg_442_pp0_iter3_reg <= select_ln132_reg_442;
        trunc_ln712_2_reg_454 <= trunc_ln712_2_fu_311_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln131_reg_430 <= icmp_ln131_fu_176_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln131_fu_176_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln132_reg_434 <= icmp_ln132_fu_190_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln131_reg_430 == 1'd0))) begin
        select_ln132_reg_442 <= select_ln132_fu_258_p3;
        trunc_ln712_3_reg_449 <= trunc_ln712_3_fu_274_p1;
    end
end

always @ (*) begin
    if (((icmp_ln131_fu_176_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln131_reg_430 == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_sig_allocacmp_fout_3 = add_ln133_fu_320_p2;
    end else begin
        ap_sig_allocacmp_fout_3 = fout_fu_74;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        out_nodes_features_V_ce0 = 1'b1;
    end else begin
        out_nodes_features_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        out_nodes_features_V_ce1 = 1'b1;
    end else begin
        out_nodes_features_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        out_nodes_features_V_we1 = 1'b1;
    end else begin
        out_nodes_features_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        out_nodes_features_skip_concat_bias_V_ce0 = 1'b1;
    end else begin
        out_nodes_features_skip_concat_bias_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln131_1_fu_181_p2 = (indvar_flatten148_fu_90 + 96'd1);

assign add_ln131_fu_286_p2 = (n1_fu_86 + 32'd1);

assign add_ln132_1_fu_195_p2 = (indvar_flatten129_fu_82 + 64'd1);

assign add_ln132_fu_247_p2 = (select_ln131_fu_234_p3 + 31'd1);

assign add_ln133_fu_320_p2 = (select_ln132_reg_442 + 13'd1);

assign add_ln712_3_fu_369_p2 = (out_nodes_features_skip_concat_bias_V_q0 + out_nodes_features_V_q0);

assign add_ln712_6_fu_315_p2 = (tmp_47_cast_fu_303_p3 + trunc_ln712_3_reg_449);

assign add_ln712_7_fu_359_p2 = (tmp_48_cast_fu_335_p3 + select_ln132_reg_442_pp0_iter3_reg);

assign add_ln712_fu_349_p2 = (tmp_50_cast_fu_342_p3 + select_ln132_reg_442_pp0_iter3_reg);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign fout_3_cast_fu_222_p1 = ap_sig_allocacmp_fout_3;

assign icmp_ln131_fu_176_p2 = ((indvar_flatten148_fu_90 == mul_ln131_1) ? 1'b1 : 1'b0);

assign icmp_ln132_fu_190_p2 = ((indvar_flatten129_fu_82 == mul_ln131) ? 1'b1 : 1'b0);

assign icmp_ln133_fu_226_p2 = ((fout_3_cast_fu_222_p1 == num_out_features) ? 1'b1 : 1'b0);

assign or_ln132_fu_253_p2 = (select_ln131_2_fu_241_p3 | icmp_ln132_reg_434);

assign out_nodes_features_V_address0 = zext_ln712_fu_354_p1;

assign out_nodes_features_V_address1 = out_nodes_features_V_addr_reg_464_pp0_iter5_reg;

assign out_nodes_features_V_d1 = add_ln712_3_reg_475;

assign out_nodes_features_skip_concat_bias_V_address0 = zext_ln712_5_fu_364_p1;

assign select_ln131_1_fu_292_p3 = ((icmp_ln132_reg_434_pp0_iter2_reg[0:0] == 1'b1) ? add_ln131_fu_286_p2 : n1_fu_86);

assign select_ln131_2_fu_241_p3 = ((icmp_ln132_reg_434[0:0] == 1'b1) ? icmp_ln133_1 : icmp_ln133_fu_226_p2);

assign select_ln131_fu_234_p3 = ((icmp_ln132_reg_434[0:0] == 1'b1) ? 31'd0 : nh_fu_78);

assign select_ln132_1_fu_266_p3 = ((select_ln131_2_fu_241_p3[0:0] == 1'b1) ? add_ln132_fu_247_p2 : select_ln131_fu_234_p3);

assign select_ln132_2_fu_201_p3 = ((icmp_ln132_fu_190_p2[0:0] == 1'b1) ? 64'd1 : add_ln132_1_fu_195_p2);

assign select_ln132_fu_258_p3 = ((or_ln132_fu_253_p2[0:0] == 1'b1) ? 13'd0 : ap_sig_allocacmp_fout_3);

assign tmp_47_cast_fu_303_p3 = {{trunc_ln712_fu_299_p1}, {2'd0}};

assign tmp_48_cast_fu_335_p3 = {{trunc_ln712_2_reg_454}, {6'd0}};

assign tmp_50_cast_fu_342_p3 = {{add_ln712_6_reg_459}, {4'd0}};

assign trunc_ln712_2_fu_311_p1 = select_ln131_1_fu_292_p3[6:0];

assign trunc_ln712_3_fu_274_p1 = select_ln132_1_fu_266_p3[8:0];

assign trunc_ln712_fu_299_p1 = select_ln131_1_fu_292_p3[6:0];

assign zext_ln712_5_fu_364_p1 = add_ln712_7_fu_359_p2;

assign zext_ln712_fu_354_p1 = add_ln712_fu_349_p2;

endmodule //GAT_compute_one_graph_CONV_Pipeline_VITIS_LOOP_131_23_VITIS_LOOP_132_24_VITIS_LOOP_133_25
