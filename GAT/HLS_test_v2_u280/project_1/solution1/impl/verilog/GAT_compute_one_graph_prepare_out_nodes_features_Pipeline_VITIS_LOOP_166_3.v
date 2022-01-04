// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_prepare_out_nodes_features_Pipeline_VITIS_LOOP_166_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_nodes_features_V_load,
        num_in_features,
        tmp_2,
        out_nodes_features_skip_concat_bias_V_0_load,
        out_nodes_features_skip_concat_bias_V_1_load,
        out_nodes_features_skip_concat_bias_V_2_load,
        out_nodes_features_skip_concat_bias_V_3_load,
        out_nodes_features_skip_concat_bias_V_4_load,
        out_nodes_features_skip_concat_bias_V_5_load,
        out_nodes_features_skip_concat_bias_V_6_load,
        out_nodes_features_skip_concat_bias_V_7_load,
        out_nodes_features_skip_concat_bias_V_8_load,
        out_nodes_features_skip_concat_bias_V_9_load,
        out_nodes_features_skip_concat_bias_V_10_load,
        out_nodes_features_skip_concat_bias_V_11_load,
        out_nodes_features_skip_concat_bias_V_12_load,
        out_nodes_features_skip_concat_bias_V_13_load,
        out_nodes_features_skip_concat_bias_V_14_load,
        out_nodes_features_skip_concat_bias_V_15_load,
        out_nodes_features_skip_concat_bias_V_16_load,
        out_nodes_features_skip_concat_bias_V_17_load,
        out_nodes_features_skip_concat_bias_V_18_load,
        out_nodes_features_skip_concat_bias_V_19_load,
        out_nodes_features_skip_concat_bias_V_20_load,
        out_nodes_features_skip_concat_bias_V_21_load,
        out_nodes_features_skip_concat_bias_V_22_load,
        out_nodes_features_skip_concat_bias_V_23_load,
        out_nodes_features_skip_concat_bias_V_24_load,
        out_nodes_features_skip_concat_bias_V_25_load,
        out_nodes_features_skip_concat_bias_V_26_load,
        out_nodes_features_skip_concat_bias_V_27_load,
        out_nodes_features_skip_concat_bias_V_28_load,
        out_nodes_features_skip_concat_bias_V_29_load,
        out_nodes_features_skip_concat_bias_V_30_load,
        out_nodes_features_skip_concat_bias_V_31_load,
        out_nodes_features_skip_concat_bias_V_32_load,
        out_nodes_features_skip_concat_bias_V_33_load,
        out_nodes_features_skip_concat_bias_V_34_load,
        out_nodes_features_skip_concat_bias_V_35_load,
        out_nodes_features_skip_concat_bias_V_36_load,
        out_nodes_features_skip_concat_bias_V_37_load,
        out_nodes_features_skip_concat_bias_V_38_load,
        out_nodes_features_skip_concat_bias_V_39_load,
        out_nodes_features_skip_concat_bias_V_40_load,
        out_nodes_features_skip_concat_bias_V_41_load,
        out_nodes_features_skip_concat_bias_V_42_load,
        out_nodes_features_skip_concat_bias_V_43_load,
        out_nodes_features_skip_concat_bias_V_44_load,
        out_nodes_features_skip_concat_bias_V_45_load,
        out_nodes_features_skip_concat_bias_V_46_load,
        out_nodes_features_skip_concat_bias_V_47_load,
        out_nodes_features_skip_concat_bias_V_48_load,
        out_nodes_features_skip_concat_bias_V_49_load,
        out_nodes_features_skip_concat_bias_V_50_load,
        out_nodes_features_skip_concat_bias_V_51_load,
        out_nodes_features_skip_concat_bias_V_52_load,
        out_nodes_features_skip_concat_bias_V_53_load,
        out_nodes_features_skip_concat_bias_V_54_load,
        out_nodes_features_skip_concat_bias_V_55_load,
        out_nodes_features_skip_concat_bias_V_56_load,
        out_nodes_features_skip_concat_bias_V_57_load,
        out_nodes_features_skip_concat_bias_V_58_load,
        out_nodes_features_skip_concat_bias_V_59_load,
        out_nodes_features_skip_concat_bias_V_60_load,
        out_nodes_features_skip_concat_bias_V_61_load,
        out_nodes_features_skip_concat_bias_V_62_load,
        out_nodes_features_skip_concat_bias_V_63_load,
        lhs_out,
        lhs_out_ap_vld,
        skip_proj_weight_V_address0,
        skip_proj_weight_V_ce0,
        skip_proj_weight_V_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [27:0] out_nodes_features_V_load;
input  [6:0] num_in_features;
input  [14:0] tmp_2;
input  [27:0] out_nodes_features_skip_concat_bias_V_0_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_1_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_2_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_3_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_4_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_5_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_6_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_7_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_8_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_9_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_10_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_11_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_12_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_13_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_14_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_15_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_16_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_17_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_18_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_19_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_20_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_21_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_22_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_23_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_24_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_25_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_26_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_27_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_28_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_29_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_30_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_31_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_32_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_33_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_34_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_35_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_36_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_37_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_38_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_39_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_40_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_41_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_42_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_43_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_44_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_45_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_46_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_47_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_48_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_49_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_50_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_51_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_52_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_53_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_54_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_55_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_56_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_57_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_58_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_59_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_60_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_61_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_62_load;
input  [27:0] out_nodes_features_skip_concat_bias_V_63_load;
output  [27:0] lhs_out;
output   lhs_out_ap_vld;
output  [14:0] skip_proj_weight_V_address0;
output   skip_proj_weight_V_ce0;
input  [27:0] skip_proj_weight_V_q0;

reg ap_idle;
reg lhs_out_ap_vld;
reg skip_proj_weight_V_ce0;

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
wire   [0:0] icmp_ln166_fu_627_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln166_reg_859;
reg   [0:0] icmp_ln166_reg_859_pp0_iter1_reg;
reg   [0:0] icmp_ln166_reg_859_pp0_iter2_reg;
reg   [0:0] icmp_ln166_reg_859_pp0_iter3_reg;
wire   [27:0] r_V_fu_658_p66;
reg   [27:0] r_V_reg_868;
reg  signed [27:0] r_V_reg_868_pp0_iter1_reg;
reg  signed [27:0] skip_proj_weight_V_load_reg_873;
wire   [45:0] grp_fu_803_p2;
reg   [45:0] r_V_1_reg_888;
wire   [63:0] zext_ln1171_1_fu_649_p1;
wire    ap_block_pp0_stage0;
reg   [27:0] lhs_fu_184;
wire    ap_loop_init;
reg   [6:0] dim_in_fu_188;
reg   [6:0] ap_sig_allocacmp_dim_in_1;
wire   [6:0] add_ln166_fu_633_p2;
wire    ap_block_pp0_stage0_01001;
wire   [14:0] zext_ln1171_fu_639_p1;
wire   [14:0] add_ln1171_fu_643_p2;
wire   [5:0] r_V_fu_658_p65;
wire   [45:0] lhs_1_fu_812_p3;
wire   [45:0] ret_V_fu_820_p2;
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

GAT_compute_one_graph_mux_646_28_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 28 ),
    .din1_WIDTH( 28 ),
    .din2_WIDTH( 28 ),
    .din3_WIDTH( 28 ),
    .din4_WIDTH( 28 ),
    .din5_WIDTH( 28 ),
    .din6_WIDTH( 28 ),
    .din7_WIDTH( 28 ),
    .din8_WIDTH( 28 ),
    .din9_WIDTH( 28 ),
    .din10_WIDTH( 28 ),
    .din11_WIDTH( 28 ),
    .din12_WIDTH( 28 ),
    .din13_WIDTH( 28 ),
    .din14_WIDTH( 28 ),
    .din15_WIDTH( 28 ),
    .din16_WIDTH( 28 ),
    .din17_WIDTH( 28 ),
    .din18_WIDTH( 28 ),
    .din19_WIDTH( 28 ),
    .din20_WIDTH( 28 ),
    .din21_WIDTH( 28 ),
    .din22_WIDTH( 28 ),
    .din23_WIDTH( 28 ),
    .din24_WIDTH( 28 ),
    .din25_WIDTH( 28 ),
    .din26_WIDTH( 28 ),
    .din27_WIDTH( 28 ),
    .din28_WIDTH( 28 ),
    .din29_WIDTH( 28 ),
    .din30_WIDTH( 28 ),
    .din31_WIDTH( 28 ),
    .din32_WIDTH( 28 ),
    .din33_WIDTH( 28 ),
    .din34_WIDTH( 28 ),
    .din35_WIDTH( 28 ),
    .din36_WIDTH( 28 ),
    .din37_WIDTH( 28 ),
    .din38_WIDTH( 28 ),
    .din39_WIDTH( 28 ),
    .din40_WIDTH( 28 ),
    .din41_WIDTH( 28 ),
    .din42_WIDTH( 28 ),
    .din43_WIDTH( 28 ),
    .din44_WIDTH( 28 ),
    .din45_WIDTH( 28 ),
    .din46_WIDTH( 28 ),
    .din47_WIDTH( 28 ),
    .din48_WIDTH( 28 ),
    .din49_WIDTH( 28 ),
    .din50_WIDTH( 28 ),
    .din51_WIDTH( 28 ),
    .din52_WIDTH( 28 ),
    .din53_WIDTH( 28 ),
    .din54_WIDTH( 28 ),
    .din55_WIDTH( 28 ),
    .din56_WIDTH( 28 ),
    .din57_WIDTH( 28 ),
    .din58_WIDTH( 28 ),
    .din59_WIDTH( 28 ),
    .din60_WIDTH( 28 ),
    .din61_WIDTH( 28 ),
    .din62_WIDTH( 28 ),
    .din63_WIDTH( 28 ),
    .din64_WIDTH( 6 ),
    .dout_WIDTH( 28 ))
mux_646_28_1_1_U998(
    .din0(out_nodes_features_skip_concat_bias_V_0_load),
    .din1(out_nodes_features_skip_concat_bias_V_1_load),
    .din2(out_nodes_features_skip_concat_bias_V_2_load),
    .din3(out_nodes_features_skip_concat_bias_V_3_load),
    .din4(out_nodes_features_skip_concat_bias_V_4_load),
    .din5(out_nodes_features_skip_concat_bias_V_5_load),
    .din6(out_nodes_features_skip_concat_bias_V_6_load),
    .din7(out_nodes_features_skip_concat_bias_V_7_load),
    .din8(out_nodes_features_skip_concat_bias_V_8_load),
    .din9(out_nodes_features_skip_concat_bias_V_9_load),
    .din10(out_nodes_features_skip_concat_bias_V_10_load),
    .din11(out_nodes_features_skip_concat_bias_V_11_load),
    .din12(out_nodes_features_skip_concat_bias_V_12_load),
    .din13(out_nodes_features_skip_concat_bias_V_13_load),
    .din14(out_nodes_features_skip_concat_bias_V_14_load),
    .din15(out_nodes_features_skip_concat_bias_V_15_load),
    .din16(out_nodes_features_skip_concat_bias_V_16_load),
    .din17(out_nodes_features_skip_concat_bias_V_17_load),
    .din18(out_nodes_features_skip_concat_bias_V_18_load),
    .din19(out_nodes_features_skip_concat_bias_V_19_load),
    .din20(out_nodes_features_skip_concat_bias_V_20_load),
    .din21(out_nodes_features_skip_concat_bias_V_21_load),
    .din22(out_nodes_features_skip_concat_bias_V_22_load),
    .din23(out_nodes_features_skip_concat_bias_V_23_load),
    .din24(out_nodes_features_skip_concat_bias_V_24_load),
    .din25(out_nodes_features_skip_concat_bias_V_25_load),
    .din26(out_nodes_features_skip_concat_bias_V_26_load),
    .din27(out_nodes_features_skip_concat_bias_V_27_load),
    .din28(out_nodes_features_skip_concat_bias_V_28_load),
    .din29(out_nodes_features_skip_concat_bias_V_29_load),
    .din30(out_nodes_features_skip_concat_bias_V_30_load),
    .din31(out_nodes_features_skip_concat_bias_V_31_load),
    .din32(out_nodes_features_skip_concat_bias_V_32_load),
    .din33(out_nodes_features_skip_concat_bias_V_33_load),
    .din34(out_nodes_features_skip_concat_bias_V_34_load),
    .din35(out_nodes_features_skip_concat_bias_V_35_load),
    .din36(out_nodes_features_skip_concat_bias_V_36_load),
    .din37(out_nodes_features_skip_concat_bias_V_37_load),
    .din38(out_nodes_features_skip_concat_bias_V_38_load),
    .din39(out_nodes_features_skip_concat_bias_V_39_load),
    .din40(out_nodes_features_skip_concat_bias_V_40_load),
    .din41(out_nodes_features_skip_concat_bias_V_41_load),
    .din42(out_nodes_features_skip_concat_bias_V_42_load),
    .din43(out_nodes_features_skip_concat_bias_V_43_load),
    .din44(out_nodes_features_skip_concat_bias_V_44_load),
    .din45(out_nodes_features_skip_concat_bias_V_45_load),
    .din46(out_nodes_features_skip_concat_bias_V_46_load),
    .din47(out_nodes_features_skip_concat_bias_V_47_load),
    .din48(out_nodes_features_skip_concat_bias_V_48_load),
    .din49(out_nodes_features_skip_concat_bias_V_49_load),
    .din50(out_nodes_features_skip_concat_bias_V_50_load),
    .din51(out_nodes_features_skip_concat_bias_V_51_load),
    .din52(out_nodes_features_skip_concat_bias_V_52_load),
    .din53(out_nodes_features_skip_concat_bias_V_53_load),
    .din54(out_nodes_features_skip_concat_bias_V_54_load),
    .din55(out_nodes_features_skip_concat_bias_V_55_load),
    .din56(out_nodes_features_skip_concat_bias_V_56_load),
    .din57(out_nodes_features_skip_concat_bias_V_57_load),
    .din58(out_nodes_features_skip_concat_bias_V_58_load),
    .din59(out_nodes_features_skip_concat_bias_V_59_load),
    .din60(out_nodes_features_skip_concat_bias_V_60_load),
    .din61(out_nodes_features_skip_concat_bias_V_61_load),
    .din62(out_nodes_features_skip_concat_bias_V_62_load),
    .din63(out_nodes_features_skip_concat_bias_V_63_load),
    .din64(r_V_fu_658_p65),
    .dout(r_V_fu_658_p66)
);

GAT_compute_one_graph_mul_28s_28s_46_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 28 ),
    .din1_WIDTH( 28 ),
    .dout_WIDTH( 46 ))
mul_28s_28s_46_3_1_U999(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(skip_proj_weight_V_load_reg_873),
    .din1(r_V_reg_868_pp0_iter1_reg),
    .ce(1'b1),
    .dout(grp_fu_803_p2)
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
        if (((icmp_ln166_fu_627_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            dim_in_fu_188 <= add_ln166_fu_633_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            dim_in_fu_188 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            lhs_fu_184 <= out_nodes_features_V_load;
        end else if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
            lhs_fu_184 <= {{ret_V_fu_820_p2[45:18]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln166_reg_859 <= icmp_ln166_fu_627_p2;
        icmp_ln166_reg_859_pp0_iter1_reg <= icmp_ln166_reg_859;
        r_V_reg_868_pp0_iter1_reg <= r_V_reg_868;
        skip_proj_weight_V_load_reg_873 <= skip_proj_weight_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        icmp_ln166_reg_859_pp0_iter2_reg <= icmp_ln166_reg_859_pp0_iter1_reg;
        icmp_ln166_reg_859_pp0_iter3_reg <= icmp_ln166_reg_859_pp0_iter2_reg;
        r_V_1_reg_888 <= grp_fu_803_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln166_fu_627_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_V_reg_868 <= r_V_fu_658_p66;
    end
end

always @ (*) begin
    if (((icmp_ln166_fu_627_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_dim_in_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_dim_in_1 = dim_in_fu_188;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln166_reg_859_pp0_iter3_reg == 1'd1))) begin
        lhs_out_ap_vld = 1'b1;
    end else begin
        lhs_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        skip_proj_weight_V_ce0 = 1'b1;
    end else begin
        skip_proj_weight_V_ce0 = 1'b0;
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

assign add_ln1171_fu_643_p2 = (tmp_2 + zext_ln1171_fu_639_p1);

assign add_ln166_fu_633_p2 = (ap_sig_allocacmp_dim_in_1 + 7'd1);

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

assign icmp_ln166_fu_627_p2 = ((ap_sig_allocacmp_dim_in_1 == num_in_features) ? 1'b1 : 1'b0);

assign lhs_1_fu_812_p3 = {{lhs_fu_184}, {18'd0}};

assign lhs_out = lhs_fu_184;

assign r_V_fu_658_p65 = ap_sig_allocacmp_dim_in_1[5:0];

assign ret_V_fu_820_p2 = (lhs_1_fu_812_p3 + r_V_1_reg_888);

assign skip_proj_weight_V_address0 = zext_ln1171_1_fu_649_p1;

assign zext_ln1171_1_fu_649_p1 = add_ln1171_fu_643_p2;

assign zext_ln1171_fu_639_p1 = ap_sig_allocacmp_dim_in_1;

endmodule //GAT_compute_one_graph_prepare_out_nodes_features_Pipeline_VITIS_LOOP_166_3
