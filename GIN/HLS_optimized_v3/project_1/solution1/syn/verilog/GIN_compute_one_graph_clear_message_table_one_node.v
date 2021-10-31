// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Version: 2020.2.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GIN_compute_one_graph_clear_message_table_one_node (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        message_tb_address1,
        message_tb_ce1,
        message_tb_we1,
        message_tb_d1,
        message_tb_offset
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
output  [14:0] message_tb_address1;
output   message_tb_ce1;
output   message_tb_we1;
output  [31:0] message_tb_d1;
input  [4:0] message_tb_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg message_tb_ce1;
reg message_tb_we1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [11:0] mul_ln219_fu_81_p2;
reg   [11:0] mul_ln219_reg_113;
wire   [6:0] add_ln218_fu_87_p2;
wire    ap_CS_fsm_state2;
reg   [6:0] dim_reg_66;
wire   [0:0] icmp_ln218_fu_93_p2;
wire   [63:0] zext_ln219_2_fu_108_p1;
wire   [4:0] mul_ln219_fu_81_p0;
wire   [7:0] mul_ln219_fu_81_p1;
wire   [11:0] zext_ln219_1_fu_99_p1;
wire   [11:0] add_ln219_fu_103_p2;
wire    ap_CS_fsm_state3;
reg   [2:0] ap_NS_fsm;
wire   [11:0] mul_ln219_fu_81_p00;
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
mul_5ns_8ns_12_1_1_U11(
    .din0(mul_ln219_fu_81_p0),
    .din1(mul_ln219_fu_81_p1),
    .dout(mul_ln219_fu_81_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln218_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        dim_reg_66 <= add_ln218_fu_87_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dim_reg_66 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        mul_ln219_reg_113 <= mul_ln219_fu_81_p2;
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
        message_tb_ce1 = 1'b1;
    end else begin
        message_tb_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln218_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        message_tb_we1 = 1'b1;
    end else begin
        message_tb_we1 = 1'b0;
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
            if (((icmp_ln218_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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

assign add_ln218_fu_87_p2 = (dim_reg_66 + 7'd1);

assign add_ln219_fu_103_p2 = (mul_ln219_reg_113 + zext_ln219_1_fu_99_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign icmp_ln218_fu_93_p2 = ((dim_reg_66 == 7'd100) ? 1'b1 : 1'b0);

assign message_tb_address1 = zext_ln219_2_fu_108_p1;

assign message_tb_d1 = 32'd0;

assign mul_ln219_fu_81_p0 = mul_ln219_fu_81_p00;

assign mul_ln219_fu_81_p00 = message_tb_offset;

assign mul_ln219_fu_81_p1 = 12'd100;

assign zext_ln219_1_fu_99_p1 = dim_reg_66;

assign zext_ln219_2_fu_108_p1 = add_ln219_fu_103_p2;

endmodule //GIN_compute_one_graph_clear_message_table_one_node
