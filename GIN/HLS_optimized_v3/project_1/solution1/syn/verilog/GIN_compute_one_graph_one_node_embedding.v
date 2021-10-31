// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Version: 2020.2.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GIN_compute_one_graph_one_node_embedding (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        nd,
        emb_vec_address0,
        emb_vec_ce0,
        emb_vec_we0,
        emb_vec_d0,
        node_embedding_V_address1,
        node_embedding_V_ce1,
        node_embedding_V_we1,
        node_embedding_V_d1
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] nd;
output  [6:0] emb_vec_address0;
output   emb_vec_ce0;
output   emb_vec_we0;
output  [31:0] emb_vec_d0;
output  [14:0] node_embedding_V_address1;
output   node_embedding_V_ce1;
output   node_embedding_V_we1;
output  [31:0] node_embedding_V_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg emb_vec_ce0;
reg emb_vec_we0;
reg node_embedding_V_ce1;
reg node_embedding_V_we1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [11:0] mul_ln259_fu_97_p2;
reg   [11:0] mul_ln259_reg_134;
wire   [6:0] add_ln248_fu_103_p2;
wire    ap_CS_fsm_state2;
reg   [6:0] dim_reg_82;
wire   [0:0] icmp_ln248_fu_109_p2;
wire   [63:0] zext_ln259_2_fu_129_p1;
wire   [63:0] zext_ln248_fu_115_p1;
wire   [4:0] mul_ln259_fu_97_p0;
wire   [7:0] mul_ln259_fu_97_p1;
wire   [11:0] zext_ln259_1_fu_120_p1;
wire   [11:0] add_ln259_fu_124_p2;
wire    ap_CS_fsm_state3;
reg   [2:0] ap_NS_fsm;
wire   [11:0] mul_ln259_fu_97_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

GIN_compute_one_graph_mul_5ns_8ns_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 12 ))
mul_5ns_8ns_12_1_1_U16(
    .din0(mul_ln259_fu_97_p0),
    .din1(mul_ln259_fu_97_p1),
    .dout(mul_ln259_fu_97_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln248_fu_109_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        dim_reg_82 <= add_ln248_fu_103_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dim_reg_82 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        mul_ln259_reg_134 <= mul_ln259_fu_97_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        emb_vec_ce0 = 1'b1;
    end else begin
        emb_vec_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln248_fu_109_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        emb_vec_we0 = 1'b1;
    end else begin
        emb_vec_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        node_embedding_V_ce1 = 1'b1;
    end else begin
        node_embedding_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln248_fu_109_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        node_embedding_V_we1 = 1'b1;
    end else begin
        node_embedding_V_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln248_fu_109_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln248_fu_103_p2 = (dim_reg_82 + 7'd1);

assign add_ln259_fu_124_p2 = (mul_ln259_reg_134 + zext_ln259_1_fu_120_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign emb_vec_address0 = zext_ln248_fu_115_p1;

assign emb_vec_d0 = 32'd0;

assign icmp_ln248_fu_109_p2 = ((dim_reg_82 == 7'd100) ? 1'b1 : 1'b0);

assign mul_ln259_fu_97_p0 = mul_ln259_fu_97_p00;

assign mul_ln259_fu_97_p00 = nd;

assign mul_ln259_fu_97_p1 = 12'd100;

assign node_embedding_V_address1 = zext_ln259_2_fu_129_p1;

assign node_embedding_V_d1 = 32'd0;

assign zext_ln248_fu_115_p1 = dim_reg_82;

assign zext_ln259_1_fu_120_p1 = dim_reg_82;

assign zext_ln259_2_fu_129_p1 = add_ln259_fu_124_p2;

endmodule //GIN_compute_one_graph_one_node_embedding
