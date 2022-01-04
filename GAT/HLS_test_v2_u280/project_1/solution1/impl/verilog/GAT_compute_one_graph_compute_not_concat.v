// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_compute_not_concat (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_nodes_features_V_address0,
        out_nodes_features_V_ce0,
        out_nodes_features_V_q0,
        out_nodes_features_V_address1,
        out_nodes_features_V_ce1,
        out_nodes_features_V_q1,
        out_nodes_features_skip_concat_bias_V_address1,
        out_nodes_features_skip_concat_bias_V_ce1,
        out_nodes_features_skip_concat_bias_V_we1,
        out_nodes_features_skip_concat_bias_V_d1
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] out_nodes_features_V_address0;
output   out_nodes_features_V_ce0;
input  [27:0] out_nodes_features_V_q0;
output  [12:0] out_nodes_features_V_address1;
output   out_nodes_features_V_ce1;
input  [27:0] out_nodes_features_V_q1;
output  [12:0] out_nodes_features_skip_concat_bias_V_address1;
output   out_nodes_features_skip_concat_bias_V_ce1;
output   out_nodes_features_skip_concat_bias_V_we1;
output  [27:0] out_nodes_features_skip_concat_bias_V_d1;

reg ap_idle;
reg[12:0] out_nodes_features_V_address0;
reg out_nodes_features_V_ce0;
reg[12:0] out_nodes_features_V_address1;
reg out_nodes_features_V_ce1;
reg out_nodes_features_skip_concat_bias_V_ce1;
reg out_nodes_features_skip_concat_bias_V_we1;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln167_reg_437;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] icmp_ln167_fu_178_p2;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln167_fu_208_p3;
reg   [4:0] select_ln167_reg_441;
wire   [4:0] select_ln167_1_fu_216_p3;
reg   [4:0] select_ln167_1_reg_446;
wire   [63:0] zext_ln712_fu_234_p1;
reg   [63:0] zext_ln712_reg_451;
reg   [63:0] zext_ln712_reg_451_pp0_iter1_reg;
wire    ap_block_pp0_stage1_11001;
reg   [27:0] out_nodes_features_V_load_reg_476;
reg   [27:0] out_nodes_features_V_load_2_reg_481;
wire   [27:0] add_ln712_20_fu_335_p2;
reg   [27:0] add_ln712_20_reg_486;
reg   [0:0] tmp_39_reg_491;
reg   [25:0] tmp_66_reg_496;
reg   [25:0] trunc_ln1201_2_reg_501;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] tmp_65_fu_245_p3;
wire   [63:0] zext_ln712_6_fu_319_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln712_7_fu_330_p1;
reg   [4:0] fout_fu_90;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_fout_load;
wire   [4:0] add_ln168_fu_254_p2;
reg   [4:0] nd_fu_94;
reg   [4:0] ap_sig_allocacmp_nd_load;
reg   [8:0] indvar_flatten_fu_98;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [8:0] add_ln167_1_fu_184_p2;
wire   [0:0] icmp_ln168_fu_202_p2;
wire   [4:0] add_ln167_fu_196_p2;
wire   [10:0] tmp_s_fu_224_p4;
wire   [10:0] or_ln712_2_fu_239_p2;
wire   [10:0] tmp_fu_275_p3;
wire   [10:0] or_ln712_fu_282_p2;
wire   [10:0] or_ln712_1_fu_296_p2;
wire   [12:0] tmp_112_cast_fu_288_p3;
wire   [12:0] zext_ln712_5_fu_310_p1;
wire   [12:0] add_ln712_21_fu_313_p2;
wire   [12:0] tmp_113_cast_fu_302_p3;
wire   [12:0] add_ln712_22_fu_324_p2;
wire   [27:0] add_ln712_fu_341_p2;
wire   [27:0] add_ln712_19_fu_345_p2;
wire   [45:0] t_fu_350_p3;
wire   [45:0] sub_ln1201_fu_366_p2;
wire   [26:0] zext_ln1201_1_fu_392_p1;
wire   [26:0] sub_ln1201_1_fu_398_p2;
wire   [26:0] zext_ln1201_fu_395_p1;
wire   [26:0] select_ln1201_fu_404_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln167_fu_178_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            fout_fu_90 <= add_ln168_fu_254_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            fout_fu_90 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln167_fu_178_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_98 <= add_ln167_1_fu_184_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_98 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln167_fu_178_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            nd_fu_94 <= select_ln167_1_fu_216_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            nd_fu_94 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln712_20_reg_486 <= add_ln712_20_fu_335_p2;
        icmp_ln167_reg_437 <= icmp_ln167_fu_178_p2;
        zext_ln712_reg_451_pp0_iter1_reg[4 : 0] <= zext_ln712_reg_451[4 : 0];
zext_ln712_reg_451_pp0_iter1_reg[10 : 6] <= zext_ln712_reg_451[10 : 6];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln167_reg_437 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        out_nodes_features_V_load_2_reg_481 <= out_nodes_features_V_q0;
        out_nodes_features_V_load_reg_476 <= out_nodes_features_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln167_fu_178_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln167_1_reg_446 <= select_ln167_1_fu_216_p3;
        select_ln167_reg_441 <= select_ln167_fu_208_p3;
        zext_ln712_reg_451[4 : 0] <= zext_ln712_fu_234_p1[4 : 0];
zext_ln712_reg_451[10 : 6] <= zext_ln712_fu_234_p1[10 : 6];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_39_reg_491 <= add_ln712_19_fu_345_p2[32'd27];
        tmp_66_reg_496 <= {{sub_ln1201_fu_366_p2[45:20]}};
        trunc_ln1201_2_reg_501 <= {{add_ln712_19_fu_345_p2[27:2]}};
    end
end

always @ (*) begin
    if (((icmp_ln167_reg_437 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln167_reg_437 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_fout_load = 5'd0;
    end else begin
        ap_sig_allocacmp_fout_load = fout_fu_90;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_98;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_nd_load = 5'd0;
    end else begin
        ap_sig_allocacmp_nd_load = nd_fu_94;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            out_nodes_features_V_address0 = zext_ln712_7_fu_330_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            out_nodes_features_V_address0 = tmp_65_fu_245_p3;
        end else begin
            out_nodes_features_V_address0 = 'bx;
        end
    end else begin
        out_nodes_features_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            out_nodes_features_V_address1 = zext_ln712_6_fu_319_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            out_nodes_features_V_address1 = zext_ln712_fu_234_p1;
        end else begin
            out_nodes_features_V_address1 = 'bx;
        end
    end else begin
        out_nodes_features_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        out_nodes_features_V_ce0 = 1'b1;
    end else begin
        out_nodes_features_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        out_nodes_features_V_ce1 = 1'b1;
    end else begin
        out_nodes_features_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_nodes_features_skip_concat_bias_V_ce1 = 1'b1;
    end else begin
        out_nodes_features_skip_concat_bias_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_nodes_features_skip_concat_bias_V_we1 = 1'b1;
    end else begin
        out_nodes_features_skip_concat_bias_V_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln167_1_fu_184_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);

assign add_ln167_fu_196_p2 = (ap_sig_allocacmp_nd_load + 5'd1);

assign add_ln168_fu_254_p2 = (select_ln167_fu_208_p3 + 5'd1);

assign add_ln712_19_fu_345_p2 = (add_ln712_20_reg_486 + add_ln712_fu_341_p2);

assign add_ln712_20_fu_335_p2 = (out_nodes_features_V_q1 + out_nodes_features_V_q0);

assign add_ln712_21_fu_313_p2 = (tmp_112_cast_fu_288_p3 + zext_ln712_5_fu_310_p1);

assign add_ln712_22_fu_324_p2 = (tmp_113_cast_fu_302_p3 + zext_ln712_5_fu_310_p1);

assign add_ln712_fu_341_p2 = (out_nodes_features_V_load_reg_476 + out_nodes_features_V_load_2_reg_481);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign icmp_ln167_fu_178_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd304) ? 1'b1 : 1'b0);

assign icmp_ln168_fu_202_p2 = ((ap_sig_allocacmp_fout_load == 5'd16) ? 1'b1 : 1'b0);

assign or_ln712_1_fu_296_p2 = (tmp_fu_275_p3 | 11'd48);

assign or_ln712_2_fu_239_p2 = (tmp_s_fu_224_p4 | 11'd32);

assign or_ln712_fu_282_p2 = (tmp_fu_275_p3 | 11'd16);

assign out_nodes_features_skip_concat_bias_V_address1 = zext_ln712_reg_451_pp0_iter1_reg;

assign out_nodes_features_skip_concat_bias_V_d1 = $signed(select_ln1201_fu_404_p3);

assign select_ln1201_fu_404_p3 = ((tmp_39_reg_491[0:0] == 1'b1) ? sub_ln1201_1_fu_398_p2 : zext_ln1201_fu_395_p1);

assign select_ln167_1_fu_216_p3 = ((icmp_ln168_fu_202_p2[0:0] == 1'b1) ? add_ln167_fu_196_p2 : ap_sig_allocacmp_nd_load);

assign select_ln167_fu_208_p3 = ((icmp_ln168_fu_202_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_fout_load);

assign sub_ln1201_1_fu_398_p2 = (27'd0 - zext_ln1201_1_fu_392_p1);

assign sub_ln1201_fu_366_p2 = (46'd0 - t_fu_350_p3);

assign t_fu_350_p3 = {{add_ln712_19_fu_345_p2}, {18'd0}};

assign tmp_112_cast_fu_288_p3 = {{2'd0}, {or_ln712_fu_282_p2}};

assign tmp_113_cast_fu_302_p3 = {{2'd0}, {or_ln712_1_fu_296_p2}};

assign tmp_65_fu_245_p3 = {{53'd0}, {or_ln712_2_fu_239_p2}};

assign tmp_fu_275_p3 = {{select_ln167_1_reg_446}, {6'd0}};

assign tmp_s_fu_224_p4 = {{{select_ln167_1_fu_216_p3}, {1'd0}}, {select_ln167_fu_208_p3}};

assign zext_ln1201_1_fu_392_p1 = tmp_66_reg_496;

assign zext_ln1201_fu_395_p1 = trunc_ln1201_2_reg_501;

assign zext_ln712_5_fu_310_p1 = select_ln167_reg_441;

assign zext_ln712_6_fu_319_p1 = add_ln712_21_fu_313_p2;

assign zext_ln712_7_fu_330_p1 = add_ln712_22_fu_324_p2;

assign zext_ln712_fu_234_p1 = tmp_s_fu_224_p4;

always @ (posedge ap_clk) begin
    zext_ln712_reg_451[5] <= 1'b0;
    zext_ln712_reg_451[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln712_reg_451_pp0_iter1_reg[5] <= 1'b0;
    zext_ln712_reg_451_pp0_iter1_reg[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end

endmodule //GAT_compute_one_graph_compute_not_concat
