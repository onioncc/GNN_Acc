// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        num_in_features,
        tmp_119,
        zext_ln1169,
        sum_V_2_out,
        sum_V_2_out_ap_vld,
        out_nodes_features_skip_concat_bias_V_address0,
        out_nodes_features_skip_concat_bias_V_ce0,
        out_nodes_features_skip_concat_bias_V_q0,
        linear_proj_weight_V_address0,
        linear_proj_weight_V_ce0,
        linear_proj_weight_V_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] num_in_features;
input  [14:0] tmp_119;
input  [10:0] zext_ln1169;
output  [27:0] sum_V_2_out;
output   sum_V_2_out_ap_vld;
output  [12:0] out_nodes_features_skip_concat_bias_V_address0;
output   out_nodes_features_skip_concat_bias_V_ce0;
input  [27:0] out_nodes_features_skip_concat_bias_V_q0;
output  [14:0] linear_proj_weight_V_address0;
output   linear_proj_weight_V_ce0;
input  [27:0] linear_proj_weight_V_q0;

reg ap_idle;
reg sum_V_2_out_ap_vld;
reg out_nodes_features_skip_concat_bias_V_ce0;
reg linear_proj_weight_V_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln34_fu_142_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln34_reg_251;
reg   [0:0] icmp_ln34_reg_251_pp0_iter1_reg;
reg   [0:0] icmp_ln34_reg_251_pp0_iter2_reg;
reg   [0:0] icmp_ln34_reg_251_pp0_iter3_reg;
reg  signed [27:0] r_V_reg_265;
reg  signed [27:0] linear_proj_weight_V_load_reg_270;
wire   [45:0] grp_fu_195_p2;
reg   [45:0] r_V_8_reg_285;
wire   [63:0] zext_ln1171_58_fu_168_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1169_63_fu_179_p1;
reg   [27:0] lhs_fu_66;
wire    ap_loop_init;
reg   [6:0] dim_in_fu_70;
reg   [6:0] ap_sig_allocacmp_dim_in_2;
wire   [6:0] add_ln34_fu_148_p2;
wire    ap_block_pp0_stage0_01001;
wire   [14:0] zext_ln1171_57_fu_158_p1;
wire   [14:0] add_ln1171_fu_162_p2;
wire   [11:0] zext_ln1169_cast_fu_125_p1;
wire   [11:0] zext_ln1171_fu_154_p1;
wire   [11:0] add_ln1169_fu_173_p2;
wire   [45:0] lhs_3_fu_204_p3;
wire   [45:0] ret_V_fu_212_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
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
#0 ap_done_reg = 1'b0;
end

GAT_compute_one_graph_mul_28s_28s_46_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 28 ),
    .din1_WIDTH( 28 ),
    .dout_WIDTH( 46 ))
mul_28s_28s_46_3_1_U71(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(linear_proj_weight_V_load_reg_270),
    .din1(r_V_reg_265),
    .ce(1'b1),
    .dout(grp_fu_195_p2)
);

GAT_compute_one_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln34_fu_142_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            dim_in_fu_70 <= add_ln34_fu_148_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            dim_in_fu_70 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            lhs_fu_66 <= 28'd0;
        end else if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
            lhs_fu_66 <= {{ret_V_fu_212_p2[45:18]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln34_reg_251 <= icmp_ln34_fu_142_p2;
        icmp_ln34_reg_251_pp0_iter1_reg <= icmp_ln34_reg_251;
        linear_proj_weight_V_load_reg_270 <= linear_proj_weight_V_q0;
        r_V_reg_265 <= out_nodes_features_skip_concat_bias_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        icmp_ln34_reg_251_pp0_iter2_reg <= icmp_ln34_reg_251_pp0_iter1_reg;
        icmp_ln34_reg_251_pp0_iter3_reg <= icmp_ln34_reg_251_pp0_iter2_reg;
        r_V_8_reg_285 <= grp_fu_195_p2;
    end
end

always @ (*) begin
    if (((icmp_ln34_fu_142_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_dim_in_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_dim_in_2 = dim_in_fu_70;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        linear_proj_weight_V_ce0 = 1'b1;
    end else begin
        linear_proj_weight_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_nodes_features_skip_concat_bias_V_ce0 = 1'b1;
    end else begin
        out_nodes_features_skip_concat_bias_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln34_reg_251_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sum_V_2_out_ap_vld = 1'b1;
    end else begin
        sum_V_2_out_ap_vld = 1'b0;
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

assign add_ln1169_fu_173_p2 = (zext_ln1169_cast_fu_125_p1 + zext_ln1171_fu_154_p1);

assign add_ln1171_fu_162_p2 = (tmp_119 + zext_ln1171_57_fu_158_p1);

assign add_ln34_fu_148_p2 = (ap_sig_allocacmp_dim_in_2 + 7'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln34_fu_142_p2 = ((ap_sig_allocacmp_dim_in_2 == num_in_features) ? 1'b1 : 1'b0);

assign lhs_3_fu_204_p3 = {{lhs_fu_66}, {18'd0}};

assign linear_proj_weight_V_address0 = zext_ln1171_58_fu_168_p1;

assign out_nodes_features_skip_concat_bias_V_address0 = zext_ln1169_63_fu_179_p1;

assign ret_V_fu_212_p2 = (lhs_3_fu_204_p3 + r_V_8_reg_285);

assign sum_V_2_out = lhs_fu_66;

assign zext_ln1169_63_fu_179_p1 = add_ln1169_fu_173_p2;

assign zext_ln1169_cast_fu_125_p1 = zext_ln1169;

assign zext_ln1171_57_fu_158_p1 = ap_sig_allocacmp_dim_in_2;

assign zext_ln1171_58_fu_168_p1 = add_ln1171_fu_162_p2;

assign zext_ln1171_fu_154_p1 = ap_sig_allocacmp_dim_in_2;

endmodule //GAT_compute_one_graph_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3
