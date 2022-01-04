// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_compute_attention_coefficients_sum (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        num_of_nodes,
        all_scores_V_address0,
        all_scores_V_ce0,
        all_scores_V_q0,
        all_scores_V_address1,
        all_scores_V_ce1,
        all_scores_V_we1,
        all_scores_V_d1,
        connectivity_mask_final_address0,
        connectivity_mask_final_ce0,
        connectivity_mask_final_q0,
        attention_coefficients_sum_V_address1,
        attention_coefficients_sum_V_ce1,
        attention_coefficients_sum_V_we1,
        attention_coefficients_sum_V_d1
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
output  [17:0] all_scores_V_address0;
output   all_scores_V_ce0;
input  [27:0] all_scores_V_q0;
output  [17:0] all_scores_V_address1;
output   all_scores_V_ce1;
output   all_scores_V_we1;
output  [27:0] all_scores_V_d1;
output  [15:0] connectivity_mask_final_address0;
output   connectivity_mask_final_ce0;
input  [31:0] connectivity_mask_final_q0;
output  [9:0] attention_coefficients_sum_V_address1;
output   attention_coefficients_sum_V_ce1;
output   attention_coefficients_sum_V_we1;
output  [27:0] attention_coefficients_sum_V_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg attention_coefficients_sum_V_ce1;
reg attention_coefficients_sum_V_we1;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [33:0] tmp_fu_125_p3;
reg   [33:0] tmp_reg_297;
wire   [9:0] select_ln108_fu_183_p3;
reg   [9:0] select_ln108_reg_305;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln108_fu_163_p2;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire   [11:0] grp_fu_241_p3;
reg   [11:0] add_ln116_reg_326;
wire  signed [17:0] grp_fu_250_p2;
reg   [17:0] mul_ln119_reg_336;
wire    ap_CS_fsm_state8;
wire  signed [15:0] grp_fu_257_p2;
reg   [15:0] mul_ln109_reg_341;
wire    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start;
wire    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_done;
wire    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_idle;
wire    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_ready;
wire   [27:0] grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_sum_V_out;
wire    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_sum_V_out_ap_vld;
wire   [17:0] grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address0;
wire    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce0;
wire   [17:0] grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address1;
wire    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce1;
wire    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_we1;
wire   [27:0] grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_d1;
wire   [15:0] grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_address0;
wire    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_ce0;
reg    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [63:0] zext_ln116_2_fu_233_p1;
wire    ap_CS_fsm_state10;
reg   [9:0] n1_fu_64;
wire   [9:0] add_ln109_fu_203_p2;
reg   [2:0] nh_fu_68;
wire   [2:0] select_ln108_1_fu_191_p3;
reg   [33:0] indvar_flatten_fu_72;
wire   [33:0] add_ln108_1_fu_168_p2;
wire   [31:0] zext_ln109_fu_154_p1;
wire   [0:0] icmp_ln109_fu_158_p2;
wire   [2:0] add_ln108_fu_177_p2;
wire   [2:0] grp_fu_241_p0;
wire   [7:0] grp_fu_241_p1;
wire   [9:0] grp_fu_241_p2;
wire   [11:0] grp_fu_250_p0;
wire   [7:0] grp_fu_250_p1;
wire   [9:0] grp_fu_257_p0;
wire   [7:0] grp_fu_257_p1;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire   [10:0] grp_fu_241_p00;
wire   [11:0] grp_fu_241_p20;
wire   [17:0] grp_fu_250_p00;
wire   [15:0] grp_fu_257_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg = 1'b0;
end

GAT_compute_one_graph_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3 grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start),
    .ap_done(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_done),
    .ap_idle(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_idle),
    .ap_ready(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_ready),
    .num_of_nodes(num_of_nodes),
    .mul_ln116_1(mul_ln119_reg_336),
    .mul_ln113(mul_ln109_reg_341),
    .sum_V_out(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_sum_V_out),
    .sum_V_out_ap_vld(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_sum_V_out_ap_vld),
    .all_scores_V_address0(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address0),
    .all_scores_V_ce0(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce0),
    .all_scores_V_q0(all_scores_V_q0),
    .all_scores_V_address1(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address1),
    .all_scores_V_ce1(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce1),
    .all_scores_V_we1(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_we1),
    .all_scores_V_d1(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_d1),
    .connectivity_mask_final_address0(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_address0),
    .connectivity_mask_final_ce0(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_ce0),
    .connectivity_mask_final_q0(connectivity_mask_final_q0)
);

GAT_compute_one_graph_mac_muladd_3ns_8ns_10ns_12_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 3 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 10 ),
    .dout_WIDTH( 12 ))
mac_muladd_3ns_8ns_10ns_12_4_1_U1048(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_241_p0),
    .din1(grp_fu_241_p1),
    .din2(grp_fu_241_p2),
    .ce(1'b1),
    .dout(grp_fu_241_p3)
);

GAT_compute_one_graph_mul_mul_12ns_8ns_18_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 18 ))
mul_mul_12ns_8ns_18_4_1_U1049(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_250_p0),
    .din1(grp_fu_250_p1),
    .ce(1'b1),
    .dout(grp_fu_250_p2)
);

GAT_compute_one_graph_mul_mul_10ns_8ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 16 ))
mul_mul_10ns_8ns_16_4_1_U1050(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_257_p0),
    .din1(grp_fu_257_p1),
    .ce(1'b1),
    .dout(grp_fu_257_p2)
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
        grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg <= 1'b1;
        end else if ((grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_ready == 1'b1)) begin
            grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_flatten_fu_72 <= 34'd0;
    end else if (((icmp_ln108_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten_fu_72 <= add_ln108_1_fu_168_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        n1_fu_64 <= 10'd0;
    end else if (((icmp_ln108_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        n1_fu_64 <= add_ln109_fu_203_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        nh_fu_68 <= 3'd0;
    end else if (((icmp_ln108_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        nh_fu_68 <= select_ln108_1_fu_191_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln116_reg_326 <= grp_fu_241_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln109_reg_341 <= grp_fu_257_p2;
        mul_ln119_reg_336 <= grp_fu_250_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln108_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        select_ln108_reg_305 <= select_ln108_fu_183_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_297[33 : 2] <= tmp_fu_125_p3[33 : 2];
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

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

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln108_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln108_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        attention_coefficients_sum_V_ce1 = 1'b1;
    end else begin
        attention_coefficients_sum_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        attention_coefficients_sum_V_we1 = 1'b1;
    end else begin
        attention_coefficients_sum_V_we1 = 1'b0;
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
            if (((icmp_ln108_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln108_1_fu_168_p2 = (indvar_flatten_fu_72 + 34'd1);

assign add_ln108_fu_177_p2 = (nh_fu_68 + 3'd1);

assign add_ln109_fu_203_p2 = (select_ln108_fu_183_p3 + 10'd1);

assign all_scores_V_address0 = grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address0;

assign all_scores_V_address1 = grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address1;

assign all_scores_V_ce0 = grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce0;

assign all_scores_V_ce1 = grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce1;

assign all_scores_V_d1 = grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_d1;

assign all_scores_V_we1 = grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_we1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign attention_coefficients_sum_V_address1 = zext_ln116_2_fu_233_p1;

assign attention_coefficients_sum_V_d1 = grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_sum_V_out;

assign connectivity_mask_final_address0 = grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_address0;

assign connectivity_mask_final_ce0 = grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_ce0;

assign grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start = grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg;

assign grp_fu_241_p0 = grp_fu_241_p00;

assign grp_fu_241_p00 = select_ln108_1_fu_191_p3;

assign grp_fu_241_p1 = 11'd200;

assign grp_fu_241_p2 = grp_fu_241_p20;

assign grp_fu_241_p20 = select_ln108_reg_305;

assign grp_fu_250_p0 = grp_fu_250_p00;

assign grp_fu_250_p00 = grp_fu_241_p3;

assign grp_fu_250_p1 = 18'd200;

assign grp_fu_257_p0 = grp_fu_257_p00;

assign grp_fu_257_p00 = select_ln108_reg_305;

assign grp_fu_257_p1 = 16'd200;

assign icmp_ln108_fu_163_p2 = ((indvar_flatten_fu_72 == tmp_reg_297) ? 1'b1 : 1'b0);

assign icmp_ln109_fu_158_p2 = ((zext_ln109_fu_154_p1 == num_of_nodes) ? 1'b1 : 1'b0);

assign select_ln108_1_fu_191_p3 = ((icmp_ln109_fu_158_p2[0:0] == 1'b1) ? add_ln108_fu_177_p2 : nh_fu_68);

assign select_ln108_fu_183_p3 = ((icmp_ln109_fu_158_p2[0:0] == 1'b1) ? 10'd0 : n1_fu_64);

assign tmp_fu_125_p3 = {{num_of_nodes}, {2'd0}};

assign zext_ln109_fu_154_p1 = n1_fu_64;

assign zext_ln116_2_fu_233_p1 = add_ln116_reg_326;

always @ (posedge ap_clk) begin
    tmp_reg_297[1:0] <= 2'b00;
end

endmodule //GAT_compute_one_graph_compute_attention_coefficients_sum
