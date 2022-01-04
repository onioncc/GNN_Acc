// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_compute_nodes_features_proj (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        num_in_features,
        layer,
        out_nodes_features_skip_concat_bias_V_address0,
        out_nodes_features_skip_concat_bias_V_ce0,
        out_nodes_features_skip_concat_bias_V_q0,
        linear_proj_weight_V_address0,
        linear_proj_weight_V_ce0,
        linear_proj_weight_V_q0,
        nodes_features_proj_V_address1,
        nodes_features_proj_V_ce1,
        nodes_features_proj_V_we1,
        nodes_features_proj_V_d1
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] num_in_features;
input  [2:0] layer;
output  [12:0] out_nodes_features_skip_concat_bias_V_address0;
output   out_nodes_features_skip_concat_bias_V_ce0;
input  [27:0] out_nodes_features_skip_concat_bias_V_q0;
output  [14:0] linear_proj_weight_V_address0;
output   linear_proj_weight_V_ce0;
input  [27:0] linear_proj_weight_V_q0;
output  [12:0] nodes_features_proj_V_address1;
output   nodes_features_proj_V_ce1;
output   nodes_features_proj_V_we1;
output  [27:0] nodes_features_proj_V_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg nodes_features_proj_V_ce1;
reg nodes_features_proj_V_we1;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] tmp_fu_121_p3;
reg   [8:0] tmp_reg_290;
wire   [4:0] select_ln31_1_fu_185_p3;
reg   [4:0] select_ln31_1_reg_298;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln31_fu_147_p2;
wire   [8:0] add_ln1171_fu_197_p2;
reg   [8:0] add_ln1171_reg_304;
wire   [5:0] trunc_ln37_fu_202_p1;
reg   [5:0] trunc_ln37_reg_309;
wire   [10:0] tmp_s_fu_227_p3;
reg   [10:0] tmp_s_reg_314;
wire    ap_CS_fsm_state3;
wire   [14:0] tmp_119_cast_fu_235_p3;
reg   [14:0] tmp_119_cast_reg_319;
wire    grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_start;
wire    grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_done;
wire    grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_idle;
wire    grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_ready;
wire   [27:0] grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_sum_V_2_out;
wire    grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_sum_V_2_out_ap_vld;
wire   [12:0] grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_out_nodes_features_skip_concat_bias_V_address0;
wire    grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_out_nodes_features_skip_concat_bias_V_ce0;
wire   [14:0] grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_linear_proj_weight_V_address0;
wire    grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_linear_proj_weight_V_ce0;
reg    grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_start_reg;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln37_fu_253_p1;
wire    ap_CS_fsm_state5;
reg   [6:0] dim_out_fu_64;
wire   [6:0] add_ln32_fu_206_p2;
reg   [4:0] nd_fu_68;
reg   [10:0] indvar_flatten_fu_72;
wire   [10:0] add_ln31_1_fu_153_p2;
wire   [0:0] icmp_ln32_fu_171_p2;
wire   [4:0] add_ln31_fu_165_p2;
wire   [6:0] select_ln31_fu_177_p3;
wire   [8:0] zext_ln1171_fu_193_p1;
wire   [10:0] tmp_67_fu_247_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_start_reg = 1'b0;
end

GAT_compute_one_graph_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3 grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_start),
    .ap_done(grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_done),
    .ap_idle(grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_idle),
    .ap_ready(grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_ready),
    .num_in_features(num_in_features),
    .tmp_119(tmp_119_cast_reg_319),
    .zext_ln1169(tmp_s_reg_314),
    .sum_V_2_out(grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_sum_V_2_out),
    .sum_V_2_out_ap_vld(grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_sum_V_2_out_ap_vld),
    .out_nodes_features_skip_concat_bias_V_address0(grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_out_nodes_features_skip_concat_bias_V_address0),
    .out_nodes_features_skip_concat_bias_V_ce0(grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_out_nodes_features_skip_concat_bias_V_ce0),
    .out_nodes_features_skip_concat_bias_V_q0(out_nodes_features_skip_concat_bias_V_q0),
    .linear_proj_weight_V_address0(grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_linear_proj_weight_V_address0),
    .linear_proj_weight_V_ce0(grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_linear_proj_weight_V_ce0),
    .linear_proj_weight_V_q0(linear_proj_weight_V_q0)
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
        grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_start_reg <= 1'b1;
        end else if ((grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_ready == 1'b1)) begin
            grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        dim_out_fu_64 <= 7'd0;
    end else if (((icmp_ln31_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        dim_out_fu_64 <= add_ln32_fu_206_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_flatten_fu_72 <= 11'd0;
    end else if (((icmp_ln31_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten_fu_72 <= add_ln31_1_fu_153_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        nd_fu_68 <= 5'd0;
    end else if (((icmp_ln31_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        nd_fu_68 <= select_ln31_1_fu_185_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        add_ln1171_reg_304 <= add_ln1171_fu_197_p2;
        select_ln31_1_reg_298 <= select_ln31_1_fu_185_p3;
        trunc_ln37_reg_309 <= trunc_ln37_fu_202_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_119_cast_reg_319[14 : 6] <= tmp_119_cast_fu_235_p3[14 : 6];
        tmp_s_reg_314[10 : 6] <= tmp_s_fu_227_p3[10 : 6];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_290[8 : 6] <= tmp_fu_121_p3[8 : 6];
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
    if ((grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln31_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        nodes_features_proj_V_ce1 = 1'b1;
    end else begin
        nodes_features_proj_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        nodes_features_proj_V_we1 = 1'b1;
    end else begin
        nodes_features_proj_V_we1 = 1'b0;
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
            if (((icmp_ln31_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1171_fu_197_p2 = (tmp_reg_290 + zext_ln1171_fu_193_p1);

assign add_ln31_1_fu_153_p2 = (indvar_flatten_fu_72 + 11'd1);

assign add_ln31_fu_165_p2 = (nd_fu_68 + 5'd1);

assign add_ln32_fu_206_p2 = (select_ln31_fu_177_p3 + 7'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_start = grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_ap_start_reg;

assign icmp_ln31_fu_147_p2 = ((indvar_flatten_fu_72 == 11'd1216) ? 1'b1 : 1'b0);

assign icmp_ln32_fu_171_p2 = ((dim_out_fu_64 == 7'd64) ? 1'b1 : 1'b0);

assign linear_proj_weight_V_address0 = grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_linear_proj_weight_V_address0;

assign linear_proj_weight_V_ce0 = grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_linear_proj_weight_V_ce0;

assign nodes_features_proj_V_address1 = zext_ln37_fu_253_p1;

assign nodes_features_proj_V_d1 = grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_sum_V_2_out;

assign out_nodes_features_skip_concat_bias_V_address0 = grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_out_nodes_features_skip_concat_bias_V_address0;

assign out_nodes_features_skip_concat_bias_V_ce0 = grp_compute_nodes_features_proj_Pipeline_VITIS_LOOP_34_3_fu_109_out_nodes_features_skip_concat_bias_V_ce0;

assign select_ln31_1_fu_185_p3 = ((icmp_ln32_fu_171_p2[0:0] == 1'b1) ? add_ln31_fu_165_p2 : nd_fu_68);

assign select_ln31_fu_177_p3 = ((icmp_ln32_fu_171_p2[0:0] == 1'b1) ? 7'd0 : dim_out_fu_64);

assign tmp_119_cast_fu_235_p3 = {{add_ln1171_reg_304}, {6'd0}};

assign tmp_67_fu_247_p3 = {{select_ln31_1_reg_298}, {trunc_ln37_reg_309}};

assign tmp_fu_121_p3 = {{layer}, {6'd0}};

assign tmp_s_fu_227_p3 = {{select_ln31_1_reg_298}, {6'd0}};

assign trunc_ln37_fu_202_p1 = select_ln31_fu_177_p3[5:0];

assign zext_ln1171_fu_193_p1 = select_ln31_fu_177_p3;

assign zext_ln37_fu_253_p1 = tmp_67_fu_247_p3;

always @ (posedge ap_clk) begin
    tmp_reg_290[5:0] <= 6'b000000;
    tmp_s_reg_314[5:0] <= 6'b000000;
    tmp_119_cast_reg_319[5:0] <= 6'b000000;
end

endmodule //GAT_compute_one_graph_compute_nodes_features_proj
