// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_CONV_Pipeline_VITIS_LOOP_47_6 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        scores_source_V_load,
        num_out_features,
        tmp_34,
        tmp_31,
        lhs_3_out,
        lhs_3_out_ap_vld,
        nodes_features_proj_V_address0,
        nodes_features_proj_V_ce0,
        nodes_features_proj_V_q0,
        scoring_fn_source_V_address0,
        scoring_fn_source_V_ce0,
        scoring_fn_source_V_q0,
        grp_fu_2684_p_din0,
        grp_fu_2684_p_din1,
        grp_fu_2684_p_dout0,
        grp_fu_2684_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [27:0] scores_source_V_load;
input  [30:0] num_out_features;
input  [12:0] tmp_34;
input  [8:0] tmp_31;
output  [27:0] lhs_3_out;
output   lhs_3_out_ap_vld;
output  [12:0] nodes_features_proj_V_address0;
output   nodes_features_proj_V_ce0;
input  [27:0] nodes_features_proj_V_q0;
output  [8:0] scoring_fn_source_V_address0;
output   scoring_fn_source_V_ce0;
input  [27:0] scoring_fn_source_V_q0;
output  [27:0] grp_fu_2684_p_din0;
output  [27:0] grp_fu_2684_p_din1;
input  [45:0] grp_fu_2684_p_dout0;
output   grp_fu_2684_p_ce;

reg ap_idle;
reg lhs_3_out_ap_vld;
reg nodes_features_proj_V_ce0;
reg scoring_fn_source_V_ce0;

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
wire   [0:0] icmp_ln47_fu_144_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln47_reg_253;
reg   [0:0] icmp_ln47_reg_253_pp0_iter1_reg;
reg   [0:0] icmp_ln47_reg_253_pp0_iter2_reg;
reg   [0:0] icmp_ln47_reg_253_pp0_iter3_reg;
reg   [27:0] r_V_reg_267;
reg   [27:0] scoring_fn_source_V_load_reg_272;
wire  signed [45:0] sext_ln1168_fu_191_p1;
wire  signed [45:0] sext_ln1171_fu_194_p1;
reg   [45:0] r_V_8_reg_287;
wire   [63:0] zext_ln1169_fu_170_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1171_fu_181_p1;
reg   [27:0] lhs_fu_66;
wire    ap_loop_init;
reg   [30:0] fout_fu_70;
reg   [30:0] ap_sig_allocacmp_fout_2;
wire   [30:0] add_ln47_fu_150_p2;
wire    ap_block_pp0_stage0_01001;
wire   [12:0] trunc_ln1169_2_fu_160_p1;
wire   [12:0] add_ln1169_fu_164_p2;
wire   [8:0] trunc_ln1169_fu_156_p1;
wire   [8:0] add_ln1171_fu_175_p2;
wire   [45:0] lhs_3_fu_206_p3;
wire   [45:0] ret_V_fu_214_p2;
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
        if (((icmp_ln47_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            fout_fu_70 <= add_ln47_fu_150_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            fout_fu_70 <= 31'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            lhs_fu_66 <= scores_source_V_load;
        end else if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
            lhs_fu_66 <= {{ret_V_fu_214_p2[45:18]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln47_reg_253 <= icmp_ln47_fu_144_p2;
        icmp_ln47_reg_253_pp0_iter1_reg <= icmp_ln47_reg_253;
        r_V_reg_267 <= nodes_features_proj_V_q0;
        scoring_fn_source_V_load_reg_272 <= scoring_fn_source_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        icmp_ln47_reg_253_pp0_iter2_reg <= icmp_ln47_reg_253_pp0_iter1_reg;
        icmp_ln47_reg_253_pp0_iter3_reg <= icmp_ln47_reg_253_pp0_iter2_reg;
        r_V_8_reg_287 <= grp_fu_2684_p_dout0;
    end
end

always @ (*) begin
    if (((icmp_ln47_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_fout_2 = 31'd0;
    end else begin
        ap_sig_allocacmp_fout_2 = fout_fu_70;
    end
end

always @ (*) begin
    if (((icmp_ln47_reg_253_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        lhs_3_out_ap_vld = 1'b1;
    end else begin
        lhs_3_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        nodes_features_proj_V_ce0 = 1'b1;
    end else begin
        nodes_features_proj_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        scoring_fn_source_V_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_ce0 = 1'b0;
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

assign add_ln1169_fu_164_p2 = (tmp_34 + trunc_ln1169_2_fu_160_p1);

assign add_ln1171_fu_175_p2 = (tmp_31 + trunc_ln1169_fu_156_p1);

assign add_ln47_fu_150_p2 = (ap_sig_allocacmp_fout_2 + 31'd1);

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

assign grp_fu_2684_p_ce = 1'b1;

assign grp_fu_2684_p_din0 = sext_ln1171_fu_194_p1;

assign grp_fu_2684_p_din1 = sext_ln1168_fu_191_p1;

assign icmp_ln47_fu_144_p2 = ((ap_sig_allocacmp_fout_2 == num_out_features) ? 1'b1 : 1'b0);

assign lhs_3_fu_206_p3 = {{lhs_fu_66}, {18'd0}};

assign lhs_3_out = lhs_fu_66;

assign nodes_features_proj_V_address0 = zext_ln1169_fu_170_p1;

assign ret_V_fu_214_p2 = (lhs_3_fu_206_p3 + r_V_8_reg_287);

assign scoring_fn_source_V_address0 = zext_ln1171_fu_181_p1;

assign sext_ln1168_fu_191_p1 = $signed(r_V_reg_267);

assign sext_ln1171_fu_194_p1 = $signed(scoring_fn_source_V_load_reg_272);

assign trunc_ln1169_2_fu_160_p1 = ap_sig_allocacmp_fout_2[12:0];

assign trunc_ln1169_fu_156_p1 = ap_sig_allocacmp_fout_2[8:0];

assign zext_ln1169_fu_170_p1 = add_ln1169_fu_164_p2;

assign zext_ln1171_fu_181_p1 = add_ln1171_fu_175_p2;

endmodule //GAT_compute_one_graph_CONV_Pipeline_VITIS_LOOP_47_6
