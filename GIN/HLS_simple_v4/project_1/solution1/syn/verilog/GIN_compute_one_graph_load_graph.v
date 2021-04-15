// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GIN_compute_one_graph_load_graph (
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
        node_feature_in,
        edge_list_in,
        edge_attr_in,
        node_feature_address1,
        node_feature_ce1,
        node_feature_we1,
        node_feature_d1,
        edge_attr_address1,
        edge_attr_ce1,
        edge_attr_we1,
        edge_attr_d1,
        edge_list_address1,
        edge_list_ce1,
        edge_list_we1,
        edge_list_d1
);

parameter    ap_ST_fsm_state1 = 25'd1;
parameter    ap_ST_fsm_state2 = 25'd2;
parameter    ap_ST_fsm_state3 = 25'd4;
parameter    ap_ST_fsm_state4 = 25'd8;
parameter    ap_ST_fsm_state5 = 25'd16;
parameter    ap_ST_fsm_state6 = 25'd32;
parameter    ap_ST_fsm_state7 = 25'd64;
parameter    ap_ST_fsm_pp0_stage0 = 25'd128;
parameter    ap_ST_fsm_state11 = 25'd256;
parameter    ap_ST_fsm_state12 = 25'd512;
parameter    ap_ST_fsm_state13 = 25'd1024;
parameter    ap_ST_fsm_state14 = 25'd2048;
parameter    ap_ST_fsm_state15 = 25'd4096;
parameter    ap_ST_fsm_state16 = 25'd8192;
parameter    ap_ST_fsm_state17 = 25'd16384;
parameter    ap_ST_fsm_pp1_stage0 = 25'd32768;
parameter    ap_ST_fsm_state21 = 25'd65536;
parameter    ap_ST_fsm_state22 = 25'd131072;
parameter    ap_ST_fsm_state23 = 25'd262144;
parameter    ap_ST_fsm_state24 = 25'd524288;
parameter    ap_ST_fsm_state25 = 25'd1048576;
parameter    ap_ST_fsm_state26 = 25'd2097152;
parameter    ap_ST_fsm_state27 = 25'd4194304;
parameter    ap_ST_fsm_pp2_stage0 = 25'd8388608;
parameter    ap_ST_fsm_state31 = 25'd16777216;

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
input  [63:0] node_feature_in;
input  [63:0] edge_list_in;
input  [63:0] edge_attr_in;
output  [10:0] node_feature_address1;
output   node_feature_ce1;
output   node_feature_we1;
output  [31:0] node_feature_d1;
output  [10:0] edge_attr_address1;
output   edge_attr_ce1;
output   edge_attr_we1;
output  [31:0] edge_attr_d1;
output  [9:0] edge_list_address1;
output   edge_list_ce1;
output   edge_list_we1;
output  [31:0] edge_list_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_mem_ARVALID;
reg[63:0] m_axi_mem_ARADDR;
reg[31:0] m_axi_mem_ARLEN;
reg m_axi_mem_RREADY;
reg node_feature_ce1;
reg node_feature_we1;
reg edge_attr_ce1;
reg edge_attr_we1;
reg edge_list_ce1;
reg edge_list_we1;

(* fsm_encoding = "none" *) reg   [24:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    mem_blk_n_AR;
reg    mem_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln333_reg_370;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] icmp_ln337_reg_390;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_pp2_stage0;
reg    ap_enable_reg_pp2_iter1;
wire    ap_block_pp2_stage0;
reg   [0:0] icmp_ln341_reg_410;
reg   [7:0] i_reg_201;
reg   [7:0] i_reg_201_pp0_iter1_reg;
wire    ap_block_state8_pp0_stage0_iter0;
reg    ap_block_state9_pp0_stage0_iter1;
wire    ap_block_state10_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_213;
reg   [6:0] i_1_reg_213_pp1_iter1_reg;
wire    ap_block_state18_pp1_stage0_iter0;
reg    ap_block_state19_pp1_stage0_iter1;
wire    ap_block_state20_pp1_stage0_iter2;
reg    ap_block_pp1_stage0_11001;
reg   [6:0] i_2_reg_225;
reg   [6:0] i_2_reg_225_pp2_iter1_reg;
wire    ap_block_state28_pp2_stage0_iter0;
reg    ap_block_state29_pp2_stage0_iter1;
wire    ap_block_state30_pp2_stage0_iter2;
reg    ap_block_pp2_stage0_11001;
wire    ap_CS_fsm_state7;
wire   [7:0] add_ln333_fu_258_p2;
reg   [7:0] add_ln333_reg_365;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] icmp_ln333_fu_264_p2;
reg   [0:0] icmp_ln333_reg_370_pp0_iter1_reg;
reg   [31:0] mem_addr_read_reg_374;
wire   [6:0] add_ln337_fu_295_p2;
reg   [6:0] add_ln337_reg_385;
reg    ap_enable_reg_pp1_iter0;
wire   [0:0] icmp_ln337_fu_301_p2;
reg   [0:0] icmp_ln337_reg_390_pp1_iter1_reg;
reg   [31:0] mem_addr_1_read_reg_394;
wire   [6:0] add_ln341_fu_332_p2;
reg   [6:0] add_ln341_reg_405;
reg    ap_enable_reg_pp2_iter0;
wire   [0:0] icmp_ln341_fu_338_p2;
reg   [0:0] icmp_ln341_reg_410_pp2_iter1_reg;
reg   [31:0] mem_addr_2_read_reg_414;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state8;
reg    ap_enable_reg_pp0_iter2;
wire    ap_CS_fsm_state17;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state18;
reg    ap_enable_reg_pp1_iter2;
wire    ap_CS_fsm_state27;
reg    ap_block_pp2_stage0_subdone;
reg    ap_condition_pp2_exit_iter0_state28;
reg    ap_enable_reg_pp2_iter2;
reg   [7:0] ap_phi_mux_i_phi_fu_205_p4;
reg   [6:0] ap_phi_mux_i_1_phi_fu_217_p4;
reg   [6:0] ap_phi_mux_i_2_phi_fu_229_p4;
wire   [63:0] i_cast_fu_270_p1;
wire   [63:0] i_1_cast_fu_307_p1;
wire   [63:0] i_2_cast_fu_344_p1;
wire  signed [63:0] sext_ln333_fu_247_p1;
wire  signed [63:0] sext_ln337_fu_284_p1;
wire  signed [63:0] sext_ln341_fu_321_p1;
wire   [61:0] trunc_ln_fu_237_p4;
wire   [61:0] trunc_ln1_fu_275_p4;
wire   [61:0] trunc_ln2_fu_312_p4;
wire    ap_CS_fsm_state31;
reg   [24:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_idle_pp2;
wire    ap_enable_pp2;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 25'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp2_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp2_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
#0 ap_enable_reg_pp2_iter2 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state8) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state8)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state8);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp1_exit_iter0_state18) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state17)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp1_exit_iter0_state18)) begin
                ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state18);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end else if ((1'b1 == ap_CS_fsm_state17)) begin
            ap_enable_reg_pp1_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp2_exit_iter0_state28) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_subdone))) begin
            ap_enable_reg_pp2_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_enable_reg_pp2_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp2_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp2_exit_iter0_state28)) begin
                ap_enable_reg_pp2_iter1 <= (1'b1 ^ ap_condition_pp2_exit_iter0_state28);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp2_iter1 <= ap_enable_reg_pp2_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp2_stage0_subdone)) begin
            ap_enable_reg_pp2_iter2 <= ap_enable_reg_pp2_iter1;
        end else if ((1'b1 == ap_CS_fsm_state27)) begin
            ap_enable_reg_pp2_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        i_1_reg_213 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln337_reg_390 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        i_1_reg_213 <= add_ln337_reg_385;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        i_2_reg_225 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_pp2_stage0) & (icmp_ln341_reg_410 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        i_2_reg_225 <= add_ln341_reg_405;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_reg_201 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln333_reg_370 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_reg_201 <= add_ln333_reg_365;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln333_reg_365 <= add_ln333_fu_258_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        add_ln337_reg_385 <= add_ln337_fu_295_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp2_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        add_ln341_reg_405 <= add_ln341_fu_332_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        i_1_reg_213_pp1_iter1_reg <= i_1_reg_213;
        icmp_ln337_reg_390 <= icmp_ln337_fu_301_p2;
        icmp_ln337_reg_390_pp1_iter1_reg <= icmp_ln337_reg_390;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        i_2_reg_225_pp2_iter1_reg <= i_2_reg_225;
        icmp_ln341_reg_410 <= icmp_ln341_fu_338_p2;
        icmp_ln341_reg_410_pp2_iter1_reg <= icmp_ln341_reg_410;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_201_pp0_iter1_reg <= i_reg_201;
        icmp_ln333_reg_370 <= icmp_ln333_fu_264_p2;
        icmp_ln333_reg_370_pp0_iter1_reg <= icmp_ln333_reg_370;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln337_reg_390 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        mem_addr_1_read_reg_394 <= m_axi_mem_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp2_stage0) & (icmp_ln341_reg_410 == 1'd0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        mem_addr_2_read_reg_414 <= m_axi_mem_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln333_reg_370 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mem_addr_read_reg_374 <= m_axi_mem_RDATA;
    end
end

always @ (*) begin
    if ((icmp_ln333_fu_264_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state8 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state8 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln337_fu_301_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state18 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state18 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln341_fu_338_p2 == 1'd1)) begin
        ap_condition_pp2_exit_iter0_state28 = 1'b1;
    end else begin
        ap_condition_pp2_exit_iter0_state28 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state31) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter2 == 1'b0) & (ap_enable_reg_pp2_iter0 == 1'b0) & (ap_enable_reg_pp2_iter1 == 1'b0))) begin
        ap_idle_pp2 = 1'b1;
    end else begin
        ap_idle_pp2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln337_reg_390 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b0 == ap_block_pp1_stage0))) begin
        ap_phi_mux_i_1_phi_fu_217_p4 = add_ln337_reg_385;
    end else begin
        ap_phi_mux_i_1_phi_fu_217_p4 = i_1_reg_213;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp2_stage0) & (icmp_ln341_reg_410 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b0 == ap_block_pp2_stage0))) begin
        ap_phi_mux_i_2_phi_fu_229_p4 = add_ln341_reg_405;
    end else begin
        ap_phi_mux_i_2_phi_fu_229_p4 = i_2_reg_225;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln333_reg_370 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_i_phi_fu_205_p4 = add_ln333_reg_365;
    end else begin
        ap_phi_mux_i_phi_fu_205_p4 = i_reg_201;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        edge_attr_ce1 = 1'b1;
    end else begin
        edge_attr_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b1) & (icmp_ln337_reg_390_pp1_iter1_reg == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        edge_attr_we1 = 1'b1;
    end else begin
        edge_attr_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter2 == 1'b1) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        edge_list_ce1 = 1'b1;
    end else begin
        edge_list_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter2 == 1'b1) & (icmp_ln341_reg_410_pp2_iter1_reg == 1'd0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        edge_list_we1 = 1'b1;
    end else begin
        edge_list_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        m_axi_mem_ARADDR = sext_ln341_fu_321_p1;
    end else if (((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        m_axi_mem_ARADDR = sext_ln337_fu_284_p1;
    end else if ((~((m_axi_mem_ARREADY == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_mem_ARADDR = sext_ln333_fu_247_p1;
    end else begin
        m_axi_mem_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        m_axi_mem_ARLEN = 32'd80;
    end else if (((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        m_axi_mem_ARLEN = 32'd120;
    end else if ((~((m_axi_mem_ARREADY == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_mem_ARLEN = 32'd171;
    end else begin
        m_axi_mem_ARLEN = 'bx;
    end
end

always @ (*) begin
    if ((((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | (~((m_axi_mem_ARREADY == 1'b0) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        m_axi_mem_ARVALID = 1'b1;
    end else begin
        m_axi_mem_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp2_stage0) & (icmp_ln341_reg_410 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b0 == ap_block_pp2_stage0_11001)) | ((1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln337_reg_390 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln333_reg_370 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        m_axi_mem_RREADY = 1'b1;
    end else begin
        m_axi_mem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state11) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        mem_blk_n_AR = m_axi_mem_ARREADY;
    end else begin
        mem_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp2_stage0) & (icmp_ln341_reg_410 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b0 == ap_block_pp2_stage0)) | ((1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln337_reg_390 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b0 == ap_block_pp1_stage0)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln333_reg_370 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        mem_blk_n_R = m_axi_mem_RVALID;
    end else begin
        mem_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_feature_ce1 = 1'b1;
    end else begin
        node_feature_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln333_reg_370_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        node_feature_we1 = 1'b1;
    end else begin
        node_feature_we1 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
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
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln333_fu_264_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((icmp_ln333_fu_264_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((icmp_ln337_fu_301_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone)) & ~((ap_enable_reg_pp1_iter2 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((((ap_enable_reg_pp1_iter2 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone)) | ((icmp_ln337_fu_301_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state21 : begin
            if (((m_axi_mem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_pp2_stage0;
        end
        ap_ST_fsm_pp2_stage0 : begin
            if ((~((icmp_ln341_fu_338_p2 == 1'd1) & (ap_enable_reg_pp2_iter0 == 1'b1) & (ap_enable_reg_pp2_iter1 == 1'b0) & (1'b0 == ap_block_pp2_stage0_subdone)) & ~((ap_enable_reg_pp2_iter2 == 1'b1) & (ap_enable_reg_pp2_iter1 == 1'b0) & (1'b0 == ap_block_pp2_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end else if ((((ap_enable_reg_pp2_iter2 == 1'b1) & (ap_enable_reg_pp2_iter1 == 1'b0) & (1'b0 == ap_block_pp2_stage0_subdone)) | ((icmp_ln341_fu_338_p2 == 1'd1) & (ap_enable_reg_pp2_iter0 == 1'b1) & (ap_enable_reg_pp2_iter1 == 1'b0) & (1'b0 == ap_block_pp2_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln333_fu_258_p2 = (ap_phi_mux_i_phi_fu_205_p4 + 8'd1);

assign add_ln337_fu_295_p2 = (ap_phi_mux_i_1_phi_fu_217_p4 + 7'd1);

assign add_ln341_fu_332_p2 = (ap_phi_mux_i_2_phi_fu_229_p4 + 7'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_pp2_stage0 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state31 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_mem_RVALID == 1'b0) & (icmp_ln333_reg_370 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_mem_RVALID == 1'b0) & (icmp_ln333_reg_370 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((m_axi_mem_RVALID == 1'b0) & (icmp_ln337_reg_390 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((m_axi_mem_RVALID == 1'b0) & (icmp_ln337_reg_390 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

assign ap_block_pp2_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp2_stage0_11001 = ((m_axi_mem_RVALID == 1'b0) & (icmp_ln341_reg_410 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp2_stage0_subdone = ((m_axi_mem_RVALID == 1'b0) & (icmp_ln341_reg_410 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state19_pp1_stage0_iter1 = ((m_axi_mem_RVALID == 1'b0) & (icmp_ln337_reg_390 == 1'd0));
end

assign ap_block_state20_pp1_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp2_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state29_pp2_stage0_iter1 = ((m_axi_mem_RVALID == 1'b0) & (icmp_ln341_reg_410 == 1'd0));
end

assign ap_block_state30_pp2_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_pp0_stage0_iter1 = ((m_axi_mem_RVALID == 1'b0) & (icmp_ln333_reg_370 == 1'd0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_enable_pp2 = (ap_idle_pp2 ^ 1'b1);

assign edge_attr_address1 = i_1_cast_fu_307_p1;

assign edge_attr_d1 = mem_addr_1_read_reg_394;

assign edge_list_address1 = i_2_cast_fu_344_p1;

assign edge_list_d1 = mem_addr_2_read_reg_414;

assign i_1_cast_fu_307_p1 = i_1_reg_213_pp1_iter1_reg;

assign i_2_cast_fu_344_p1 = i_2_reg_225_pp2_iter1_reg;

assign i_cast_fu_270_p1 = i_reg_201_pp0_iter1_reg;

assign icmp_ln333_fu_264_p2 = ((ap_phi_mux_i_phi_fu_205_p4 == 8'd171) ? 1'b1 : 1'b0);

assign icmp_ln337_fu_301_p2 = ((ap_phi_mux_i_1_phi_fu_217_p4 == 7'd120) ? 1'b1 : 1'b0);

assign icmp_ln341_fu_338_p2 = ((ap_phi_mux_i_2_phi_fu_229_p4 == 7'd80) ? 1'b1 : 1'b0);

assign m_axi_mem_ARBURST = 2'd0;

assign m_axi_mem_ARCACHE = 4'd0;

assign m_axi_mem_ARID = 1'd0;

assign m_axi_mem_ARLOCK = 2'd0;

assign m_axi_mem_ARPROT = 3'd0;

assign m_axi_mem_ARQOS = 4'd0;

assign m_axi_mem_ARREGION = 4'd0;

assign m_axi_mem_ARSIZE = 3'd0;

assign m_axi_mem_ARUSER = 1'd0;

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

assign node_feature_address1 = i_cast_fu_270_p1;

assign node_feature_d1 = mem_addr_read_reg_374;

assign sext_ln333_fu_247_p1 = $signed(trunc_ln_fu_237_p4);

assign sext_ln337_fu_284_p1 = $signed(trunc_ln1_fu_275_p4);

assign sext_ln341_fu_321_p1 = $signed(trunc_ln2_fu_312_p4);

assign trunc_ln1_fu_275_p4 = {{edge_attr_in[63:2]}};

assign trunc_ln2_fu_312_p4 = {{edge_list_in[63:2]}};

assign trunc_ln_fu_237_p4 = {{node_feature_in[63:2]}};

endmodule //GIN_compute_one_graph_load_graph
