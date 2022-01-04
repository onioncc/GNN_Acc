// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_prepare_out_nodes_features (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        num_in_features,
        layer,
        out_nodes_features_V_address0,
        out_nodes_features_V_ce0,
        out_nodes_features_V_q0,
        out_nodes_features_V_address1,
        out_nodes_features_V_ce1,
        out_nodes_features_V_we1,
        out_nodes_features_V_d1,
        out_nodes_features_skip_concat_bias_V_address0,
        out_nodes_features_skip_concat_bias_V_ce0,
        out_nodes_features_skip_concat_bias_V_q0,
        skip_proj_weight_V_address0,
        skip_proj_weight_V_ce0,
        skip_proj_weight_V_q0
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] num_in_features;
input  [2:0] layer;
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
output  [14:0] skip_proj_weight_V_address0;
output   skip_proj_weight_V_ce0;
input  [27:0] skip_proj_weight_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_nodes_features_V_ce0;
reg out_nodes_features_V_ce1;
reg out_nodes_features_V_we1;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] tmp_fu_122_p3;
reg   [8:0] tmp_reg_293;
wire   [4:0] select_ln154_1_fu_186_p3;
reg   [4:0] select_ln154_1_reg_301;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln154_fu_148_p2;
wire   [8:0] add_ln1171_fu_198_p2;
reg   [8:0] add_ln1171_reg_306;
reg   [12:0] out_nodes_features_V_addr_reg_311;
reg   [27:0] out_nodes_features_V_load_reg_317;
wire    ap_CS_fsm_state3;
wire   [10:0] tmp_1_fu_241_p3;
reg   [10:0] tmp_1_reg_322;
wire    ap_CS_fsm_state4;
wire   [14:0] tmp_3_cast_fu_249_p3;
reg   [14:0] tmp_3_cast_reg_327;
wire    grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_start;
wire    grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_done;
wire    grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_idle;
wire    grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_ready;
wire   [27:0] grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_lhs_out;
wire    grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_lhs_out_ap_vld;
wire   [12:0] grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_out_nodes_features_skip_concat_bias_V_address0;
wire    grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_out_nodes_features_skip_concat_bias_V_ce0;
wire   [14:0] grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_skip_proj_weight_V_address0;
wire    grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_skip_proj_weight_V_ce0;
reg    grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_start_reg;
wire    ap_CS_fsm_state5;
wire   [63:0] tmp_5_cast_fu_215_p1;
reg   [6:0] dim_out_fu_64;
wire   [6:0] add_ln155_fu_220_p2;
reg   [4:0] nd_fu_68;
reg   [10:0] indvar_flatten_fu_72;
wire   [10:0] add_ln154_1_fu_154_p2;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln155_fu_172_p2;
wire   [4:0] add_ln154_fu_166_p2;
wire   [6:0] select_ln154_fu_178_p3;
wire   [8:0] zext_ln1171_fu_194_p1;
wire   [5:0] empty_78_fu_203_p1;
wire   [10:0] tmp_5_fu_207_p3;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_start_reg = 1'b0;
end

GAT_compute_one_graph_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3 grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_start),
    .ap_done(grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_done),
    .ap_idle(grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_idle),
    .ap_ready(grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_ready),
    .out_nodes_features_V_load(out_nodes_features_V_load_reg_317),
    .num_in_features(num_in_features),
    .zext_ln1169(tmp_1_reg_322),
    .tmp_3(tmp_3_cast_reg_327),
    .lhs_out(grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_lhs_out),
    .lhs_out_ap_vld(grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_lhs_out_ap_vld),
    .out_nodes_features_skip_concat_bias_V_address0(grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_out_nodes_features_skip_concat_bias_V_address0),
    .out_nodes_features_skip_concat_bias_V_ce0(grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_out_nodes_features_skip_concat_bias_V_ce0),
    .out_nodes_features_skip_concat_bias_V_q0(out_nodes_features_skip_concat_bias_V_q0),
    .skip_proj_weight_V_address0(grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_skip_proj_weight_V_address0),
    .skip_proj_weight_V_ce0(grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_skip_proj_weight_V_ce0),
    .skip_proj_weight_V_q0(skip_proj_weight_V_q0)
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
        grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_start_reg <= 1'b1;
        end else if ((grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_ready == 1'b1)) begin
            grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        dim_out_fu_64 <= 7'd0;
    end else if (((icmp_ln154_fu_148_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        dim_out_fu_64 <= add_ln155_fu_220_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_flatten_fu_72 <= 11'd0;
    end else if (((icmp_ln154_fu_148_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten_fu_72 <= add_ln154_1_fu_154_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        nd_fu_68 <= 5'd0;
    end else if (((icmp_ln154_fu_148_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        nd_fu_68 <= select_ln154_1_fu_186_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln154_fu_148_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        add_ln1171_reg_306 <= add_ln1171_fu_198_p2;
        out_nodes_features_V_addr_reg_311[10 : 0] <= tmp_5_cast_fu_215_p1[10 : 0];
        select_ln154_1_reg_301 <= select_ln154_1_fu_186_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        out_nodes_features_V_load_reg_317 <= out_nodes_features_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_322[10 : 6] <= tmp_1_fu_241_p3[10 : 6];
        tmp_3_cast_reg_327[14 : 6] <= tmp_3_cast_fu_249_p3[14 : 6];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_293[8 : 6] <= tmp_fu_122_p3[8 : 6];
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

assign ap_ST_fsm_state4_blk = 1'b0;

always @ (*) begin
    if ((grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln154_fu_148_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln154_fu_148_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        out_nodes_features_V_ce0 = 1'b1;
    end else begin
        out_nodes_features_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_nodes_features_V_ce1 = 1'b1;
    end else begin
        out_nodes_features_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_nodes_features_V_we1 = 1'b1;
    end else begin
        out_nodes_features_V_we1 = 1'b0;
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
            if (((icmp_ln154_fu_148_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1171_fu_198_p2 = (tmp_reg_293 + zext_ln1171_fu_194_p1);

assign add_ln154_1_fu_154_p2 = (indvar_flatten_fu_72 + 11'd1);

assign add_ln154_fu_166_p2 = (nd_fu_68 + 5'd1);

assign add_ln155_fu_220_p2 = (select_ln154_fu_178_p3 + 7'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign empty_78_fu_203_p1 = select_ln154_fu_178_p3[5:0];

assign grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_start = grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_ap_start_reg;

assign icmp_ln154_fu_148_p2 = ((indvar_flatten_fu_72 == 11'd1216) ? 1'b1 : 1'b0);

assign icmp_ln155_fu_172_p2 = ((dim_out_fu_64 == 7'd64) ? 1'b1 : 1'b0);

assign out_nodes_features_V_address0 = tmp_5_cast_fu_215_p1;

assign out_nodes_features_V_address1 = out_nodes_features_V_addr_reg_311;

assign out_nodes_features_V_d1 = grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_lhs_out;

assign out_nodes_features_skip_concat_bias_V_address0 = grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_out_nodes_features_skip_concat_bias_V_address0;

assign out_nodes_features_skip_concat_bias_V_ce0 = grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_out_nodes_features_skip_concat_bias_V_ce0;

assign select_ln154_1_fu_186_p3 = ((icmp_ln155_fu_172_p2[0:0] == 1'b1) ? add_ln154_fu_166_p2 : nd_fu_68);

assign select_ln154_fu_178_p3 = ((icmp_ln155_fu_172_p2[0:0] == 1'b1) ? 7'd0 : dim_out_fu_64);

assign skip_proj_weight_V_address0 = grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_skip_proj_weight_V_address0;

assign skip_proj_weight_V_ce0 = grp_prepare_out_nodes_features_Pipeline_VITIS_LOOP_156_3_fu_109_skip_proj_weight_V_ce0;

assign tmp_1_fu_241_p3 = {{select_ln154_1_reg_301}, {6'd0}};

assign tmp_3_cast_fu_249_p3 = {{add_ln1171_reg_306}, {6'd0}};

assign tmp_5_cast_fu_215_p1 = tmp_5_fu_207_p3;

assign tmp_5_fu_207_p3 = {{select_ln154_1_fu_186_p3}, {empty_78_fu_203_p1}};

assign tmp_fu_122_p3 = {{layer}, {6'd0}};

assign zext_ln1171_fu_194_p1 = select_ln154_fu_178_p3;

always @ (posedge ap_clk) begin
    tmp_reg_293[5:0] <= 6'b000000;
    out_nodes_features_V_addr_reg_311[12:11] <= 2'b00;
    tmp_1_reg_322[5:0] <= 6'b000000;
    tmp_3_cast_reg_327[5:0] <= 6'b000000;
end

endmodule //GAT_compute_one_graph_prepare_out_nodes_features
