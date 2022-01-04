// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_load_misc_weights (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_mem_AWVALID,
        m_axi_mem_AWREADY,
        m_axi_mem_AWADDR,
        m_axi_mem_AWID,
        m_axi_mem_AWLEN,
        m_axi_mem_AWSIZE,
        m_axi_mem_AWBURST,
        m_axi_mem_AWLOCK,
        m_axi_mem_AWCACHE,
        m_axi_mem_AWPROT,
        m_axi_mem_AWQOS,
        m_axi_mem_AWREGION,
        m_axi_mem_AWUSER,
        m_axi_mem_WVALID,
        m_axi_mem_WREADY,
        m_axi_mem_WDATA,
        m_axi_mem_WSTRB,
        m_axi_mem_WLAST,
        m_axi_mem_WID,
        m_axi_mem_WUSER,
        m_axi_mem_ARVALID,
        m_axi_mem_ARREADY,
        m_axi_mem_ARADDR,
        m_axi_mem_ARID,
        m_axi_mem_ARLEN,
        m_axi_mem_ARSIZE,
        m_axi_mem_ARBURST,
        m_axi_mem_ARLOCK,
        m_axi_mem_ARCACHE,
        m_axi_mem_ARPROT,
        m_axi_mem_ARQOS,
        m_axi_mem_ARREGION,
        m_axi_mem_ARUSER,
        m_axi_mem_RVALID,
        m_axi_mem_RREADY,
        m_axi_mem_RDATA,
        m_axi_mem_RLAST,
        m_axi_mem_RID,
        m_axi_mem_RUSER,
        m_axi_mem_RRESP,
        m_axi_mem_BVALID,
        m_axi_mem_BREADY,
        m_axi_mem_BRESP,
        m_axi_mem_BID,
        m_axi_mem_BUSER,
        graph_pred_linear_weight_fixed,
        graph_pred_linear_bias_fixed,
        pred_linear_bias_V_0,
        pred_linear_bias_V_0_ap_vld,
        pred_linear_weight_V_address0,
        pred_linear_weight_V_ce0,
        pred_linear_weight_V_we0,
        pred_linear_weight_V_d0
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
output   m_axi_mem_AWVALID;
input   m_axi_mem_AWREADY;
output  [63:0] m_axi_mem_AWADDR;
output  [0:0] m_axi_mem_AWID;
output  [31:0] m_axi_mem_AWLEN;
output  [2:0] m_axi_mem_AWSIZE;
output  [1:0] m_axi_mem_AWBURST;
output  [1:0] m_axi_mem_AWLOCK;
output  [3:0] m_axi_mem_AWCACHE;
output  [2:0] m_axi_mem_AWPROT;
output  [3:0] m_axi_mem_AWQOS;
output  [3:0] m_axi_mem_AWREGION;
output  [0:0] m_axi_mem_AWUSER;
output   m_axi_mem_WVALID;
input   m_axi_mem_WREADY;
output  [31:0] m_axi_mem_WDATA;
output  [3:0] m_axi_mem_WSTRB;
output   m_axi_mem_WLAST;
output  [0:0] m_axi_mem_WID;
output  [0:0] m_axi_mem_WUSER;
output   m_axi_mem_ARVALID;
input   m_axi_mem_ARREADY;
output  [63:0] m_axi_mem_ARADDR;
output  [0:0] m_axi_mem_ARID;
output  [31:0] m_axi_mem_ARLEN;
output  [2:0] m_axi_mem_ARSIZE;
output  [1:0] m_axi_mem_ARBURST;
output  [1:0] m_axi_mem_ARLOCK;
output  [3:0] m_axi_mem_ARCACHE;
output  [2:0] m_axi_mem_ARPROT;
output  [3:0] m_axi_mem_ARQOS;
output  [3:0] m_axi_mem_ARREGION;
output  [0:0] m_axi_mem_ARUSER;
input   m_axi_mem_RVALID;
output   m_axi_mem_RREADY;
input  [31:0] m_axi_mem_RDATA;
input   m_axi_mem_RLAST;
input  [0:0] m_axi_mem_RID;
input  [0:0] m_axi_mem_RUSER;
input  [1:0] m_axi_mem_RRESP;
input   m_axi_mem_BVALID;
output   m_axi_mem_BREADY;
input  [1:0] m_axi_mem_BRESP;
input  [0:0] m_axi_mem_BID;
input  [0:0] m_axi_mem_BUSER;
input  [63:0] graph_pred_linear_weight_fixed;
input  [63:0] graph_pred_linear_bias_fixed;
output  [27:0] pred_linear_bias_V_0;
output   pred_linear_bias_V_0_ap_vld;
output  [3:0] pred_linear_weight_V_address0;
output   pred_linear_weight_V_ce0;
output   pred_linear_weight_V_we0;
output  [27:0] pred_linear_weight_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_mem_ARVALID;
reg[63:0] m_axi_mem_ARADDR;
reg[0:0] m_axi_mem_ARID;
reg[31:0] m_axi_mem_ARLEN;
reg[2:0] m_axi_mem_ARSIZE;
reg[1:0] m_axi_mem_ARBURST;
reg[1:0] m_axi_mem_ARLOCK;
reg[3:0] m_axi_mem_ARCACHE;
reg[2:0] m_axi_mem_ARPROT;
reg[3:0] m_axi_mem_ARQOS;
reg[3:0] m_axi_mem_ARREGION;
reg[0:0] m_axi_mem_ARUSER;
reg m_axi_mem_RREADY;
reg pred_linear_bias_V_0_ap_vld;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    mem_blk_n_AR;
reg    mem_blk_n_R;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state2;
wire  signed [61:0] trunc_ln_fu_105_p4;
reg   [61:0] trunc_ln_reg_142;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_idle;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_ready;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWVALID;
wire   [63:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWADDR;
wire   [0:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWID;
wire   [31:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWLEN;
wire   [2:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWSIZE;
wire   [1:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWBURST;
wire   [1:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWLOCK;
wire   [3:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWCACHE;
wire   [2:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWPROT;
wire   [3:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWQOS;
wire   [3:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWREGION;
wire   [0:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWUSER;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WVALID;
wire   [31:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WDATA;
wire   [3:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WSTRB;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WLAST;
wire   [0:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WID;
wire   [0:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WUSER;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARVALID;
wire   [63:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARADDR;
wire   [0:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARID;
wire   [31:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLEN;
wire   [2:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARSIZE;
wire   [1:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARBURST;
wire   [1:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLOCK;
wire   [3:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARCACHE;
wire   [2:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARPROT;
wire   [3:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARQOS;
wire   [3:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARREGION;
wire   [0:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARUSER;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_RREADY;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_BREADY;
wire   [3:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_address0;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_ce0;
wire    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_we0;
wire   [27:0] grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_d0;
reg    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire  signed [63:0] sext_ln334_fu_94_p1;
wire  signed [63:0] sext_ln335_fu_115_p1;
wire   [61:0] trunc_ln334_1_fu_84_p4;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg = 1'b0;
end

GAT_compute_one_graph_load_misc_weights_Pipeline_VITIS_LOOP_335_2 grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start),
    .ap_done(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done),
    .ap_idle(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_idle),
    .ap_ready(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_ready),
    .m_axi_mem_AWVALID(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWVALID),
    .m_axi_mem_AWREADY(1'b0),
    .m_axi_mem_AWADDR(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWADDR),
    .m_axi_mem_AWID(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWID),
    .m_axi_mem_AWLEN(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWLEN),
    .m_axi_mem_AWSIZE(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWSIZE),
    .m_axi_mem_AWBURST(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWBURST),
    .m_axi_mem_AWLOCK(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWLOCK),
    .m_axi_mem_AWCACHE(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWCACHE),
    .m_axi_mem_AWPROT(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWPROT),
    .m_axi_mem_AWQOS(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWQOS),
    .m_axi_mem_AWREGION(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWREGION),
    .m_axi_mem_AWUSER(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWUSER),
    .m_axi_mem_WVALID(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WVALID),
    .m_axi_mem_WREADY(1'b0),
    .m_axi_mem_WDATA(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WDATA),
    .m_axi_mem_WSTRB(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WSTRB),
    .m_axi_mem_WLAST(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WLAST),
    .m_axi_mem_WID(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WID),
    .m_axi_mem_WUSER(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WUSER),
    .m_axi_mem_ARVALID(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARVALID),
    .m_axi_mem_ARREADY(m_axi_mem_ARREADY),
    .m_axi_mem_ARADDR(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARADDR),
    .m_axi_mem_ARID(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARID),
    .m_axi_mem_ARLEN(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLEN),
    .m_axi_mem_ARSIZE(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARSIZE),
    .m_axi_mem_ARBURST(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARBURST),
    .m_axi_mem_ARLOCK(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLOCK),
    .m_axi_mem_ARCACHE(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARCACHE),
    .m_axi_mem_ARPROT(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARPROT),
    .m_axi_mem_ARQOS(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARQOS),
    .m_axi_mem_ARREGION(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARREGION),
    .m_axi_mem_ARUSER(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARUSER),
    .m_axi_mem_RVALID(m_axi_mem_RVALID),
    .m_axi_mem_RREADY(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_RREADY),
    .m_axi_mem_RDATA(m_axi_mem_RDATA),
    .m_axi_mem_RLAST(m_axi_mem_RLAST),
    .m_axi_mem_RID(m_axi_mem_RID),
    .m_axi_mem_RUSER(m_axi_mem_RUSER),
    .m_axi_mem_RRESP(m_axi_mem_RRESP),
    .m_axi_mem_BVALID(1'b0),
    .m_axi_mem_BREADY(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_BREADY),
    .m_axi_mem_BRESP(2'd0),
    .m_axi_mem_BID(1'd0),
    .m_axi_mem_BUSER(1'd0),
    .sext_ln335(trunc_ln_reg_142),
    .pred_linear_weight_V_address0(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_address0),
    .pred_linear_weight_V_ce0(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_ce0),
    .pred_linear_weight_V_we0(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_we0),
    .pred_linear_weight_V_d0(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_d0)
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
        grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg <= 1'b1;
        end else if ((grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_ready == 1'b1)) begin
            grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        trunc_ln_reg_142 <= {{graph_pred_linear_weight_fixed[63:2]}};
    end
end

always @ (*) begin
    if ((grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_mem_ARREADY == 1'b0) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((m_axi_mem_ARREADY == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if ((m_axi_mem_RVALID == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state10) & (grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done == 1'b1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state10) & (grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_mem_ARADDR = sext_ln335_fu_115_p1;
    end else if ((~((m_axi_mem_ARREADY == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_mem_ARADDR = sext_ln334_fu_94_p1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARADDR = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARADDR;
    end else begin
        m_axi_mem_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARBURST = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARBURST;
    end else begin
        m_axi_mem_ARBURST = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARCACHE = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARCACHE;
    end else begin
        m_axi_mem_ARCACHE = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARID = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARID;
    end else begin
        m_axi_mem_ARID = 1'd0;
    end
end

always @ (*) begin
    if (((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_mem_ARLEN = 32'd16;
    end else if ((~((m_axi_mem_ARREADY == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_mem_ARLEN = 32'd1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARLEN = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLEN;
    end else begin
        m_axi_mem_ARLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARLOCK = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLOCK;
    end else begin
        m_axi_mem_ARLOCK = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARPROT = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARPROT;
    end else begin
        m_axi_mem_ARPROT = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARQOS = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARQOS;
    end else begin
        m_axi_mem_ARQOS = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARREGION = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARREGION;
    end else begin
        m_axi_mem_ARREGION = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARSIZE = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARSIZE;
    end else begin
        m_axi_mem_ARSIZE = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARUSER = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARUSER;
    end else begin
        m_axi_mem_ARUSER = 1'd0;
    end
end

always @ (*) begin
    if ((((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2)) | (~((m_axi_mem_ARREADY == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        m_axi_mem_ARVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_ARVALID = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARVALID;
    end else begin
        m_axi_mem_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_mem_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        m_axi_mem_RREADY = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_mem_RREADY = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_RREADY;
    end else begin
        m_axi_mem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        mem_blk_n_AR = m_axi_mem_ARREADY;
    end else begin
        mem_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mem_blk_n_R = m_axi_mem_RVALID;
    end else begin
        mem_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((m_axi_mem_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        pred_linear_bias_V_0_ap_vld = 1'b1;
    end else begin
        pred_linear_bias_V_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((m_axi_mem_ARREADY == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
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
            if (((m_axi_mem_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg;

assign m_axi_mem_AWADDR = 64'd0;

assign m_axi_mem_AWBURST = 2'd0;

assign m_axi_mem_AWCACHE = 4'd0;

assign m_axi_mem_AWID = 1'd0;

assign m_axi_mem_AWLEN = 32'd0;

assign m_axi_mem_AWLOCK = 2'd0;

assign m_axi_mem_AWPROT = 3'd0;

assign m_axi_mem_AWQOS = 4'd0;

assign m_axi_mem_AWREGION = 4'd0;

assign m_axi_mem_AWSIZE = 3'd0;

assign m_axi_mem_AWUSER = 1'd0;

assign m_axi_mem_AWVALID = 1'b0;

assign m_axi_mem_BREADY = 1'b0;

assign m_axi_mem_WDATA = 32'd0;

assign m_axi_mem_WID = 1'd0;

assign m_axi_mem_WLAST = 1'b0;

assign m_axi_mem_WSTRB = 4'd0;

assign m_axi_mem_WUSER = 1'd0;

assign m_axi_mem_WVALID = 1'b0;

assign pred_linear_bias_V_0 = m_axi_mem_RDATA[27:0];

assign pred_linear_weight_V_address0 = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_address0;

assign pred_linear_weight_V_ce0 = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_ce0;

assign pred_linear_weight_V_d0 = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_d0;

assign pred_linear_weight_V_we0 = grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_we0;

assign sext_ln334_fu_94_p1 = $signed(trunc_ln334_1_fu_84_p4);

assign sext_ln335_fu_115_p1 = trunc_ln_fu_105_p4;

assign trunc_ln334_1_fu_84_p4 = {{graph_pred_linear_bias_fixed[63:2]}};

assign trunc_ln_fu_105_p4 = {{graph_pred_linear_weight_fixed[63:2]}};

endmodule //GAT_compute_one_graph_load_misc_weights
