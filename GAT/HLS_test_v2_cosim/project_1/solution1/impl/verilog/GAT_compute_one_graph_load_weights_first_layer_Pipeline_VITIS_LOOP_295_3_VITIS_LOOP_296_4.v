// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_load_weights_first_layer_Pipeline_VITIS_LOOP_295_3_VITIS_LOOP_296_4 (
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
        sext_ln295,
        scoring_fn_source_V_0_address0,
        scoring_fn_source_V_0_ce0,
        scoring_fn_source_V_0_we0,
        scoring_fn_source_V_0_d0,
        scoring_fn_source_V_1_address0,
        scoring_fn_source_V_1_ce0,
        scoring_fn_source_V_1_we0,
        scoring_fn_source_V_1_d0,
        scoring_fn_source_V_2_address0,
        scoring_fn_source_V_2_ce0,
        scoring_fn_source_V_2_we0,
        scoring_fn_source_V_2_d0,
        scoring_fn_source_V_3_address0,
        scoring_fn_source_V_3_ce0,
        scoring_fn_source_V_3_we0,
        scoring_fn_source_V_3_d0,
        scoring_fn_source_V_4_address0,
        scoring_fn_source_V_4_ce0,
        scoring_fn_source_V_4_we0,
        scoring_fn_source_V_4_d0,
        scoring_fn_source_V_5_address0,
        scoring_fn_source_V_5_ce0,
        scoring_fn_source_V_5_we0,
        scoring_fn_source_V_5_d0,
        scoring_fn_source_V_6_address0,
        scoring_fn_source_V_6_ce0,
        scoring_fn_source_V_6_we0,
        scoring_fn_source_V_6_d0,
        scoring_fn_source_V_7_address0,
        scoring_fn_source_V_7_ce0,
        scoring_fn_source_V_7_we0,
        scoring_fn_source_V_7_d0,
        scoring_fn_source_V_8_address0,
        scoring_fn_source_V_8_ce0,
        scoring_fn_source_V_8_we0,
        scoring_fn_source_V_8_d0,
        scoring_fn_source_V_9_address0,
        scoring_fn_source_V_9_ce0,
        scoring_fn_source_V_9_we0,
        scoring_fn_source_V_9_d0,
        scoring_fn_source_V_10_address0,
        scoring_fn_source_V_10_ce0,
        scoring_fn_source_V_10_we0,
        scoring_fn_source_V_10_d0,
        scoring_fn_source_V_11_address0,
        scoring_fn_source_V_11_ce0,
        scoring_fn_source_V_11_we0,
        scoring_fn_source_V_11_d0,
        scoring_fn_source_V_12_address0,
        scoring_fn_source_V_12_ce0,
        scoring_fn_source_V_12_we0,
        scoring_fn_source_V_12_d0,
        scoring_fn_source_V_13_address0,
        scoring_fn_source_V_13_ce0,
        scoring_fn_source_V_13_we0,
        scoring_fn_source_V_13_d0,
        scoring_fn_source_V_14_address0,
        scoring_fn_source_V_14_ce0,
        scoring_fn_source_V_14_we0,
        scoring_fn_source_V_14_d0,
        scoring_fn_source_V_15_address0,
        scoring_fn_source_V_15_ce0,
        scoring_fn_source_V_15_we0,
        scoring_fn_source_V_15_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

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
input  [61:0] sext_ln295;
output  [4:0] scoring_fn_source_V_0_address0;
output   scoring_fn_source_V_0_ce0;
output   scoring_fn_source_V_0_we0;
output  [27:0] scoring_fn_source_V_0_d0;
output  [4:0] scoring_fn_source_V_1_address0;
output   scoring_fn_source_V_1_ce0;
output   scoring_fn_source_V_1_we0;
output  [27:0] scoring_fn_source_V_1_d0;
output  [4:0] scoring_fn_source_V_2_address0;
output   scoring_fn_source_V_2_ce0;
output   scoring_fn_source_V_2_we0;
output  [27:0] scoring_fn_source_V_2_d0;
output  [4:0] scoring_fn_source_V_3_address0;
output   scoring_fn_source_V_3_ce0;
output   scoring_fn_source_V_3_we0;
output  [27:0] scoring_fn_source_V_3_d0;
output  [4:0] scoring_fn_source_V_4_address0;
output   scoring_fn_source_V_4_ce0;
output   scoring_fn_source_V_4_we0;
output  [27:0] scoring_fn_source_V_4_d0;
output  [4:0] scoring_fn_source_V_5_address0;
output   scoring_fn_source_V_5_ce0;
output   scoring_fn_source_V_5_we0;
output  [27:0] scoring_fn_source_V_5_d0;
output  [4:0] scoring_fn_source_V_6_address0;
output   scoring_fn_source_V_6_ce0;
output   scoring_fn_source_V_6_we0;
output  [27:0] scoring_fn_source_V_6_d0;
output  [4:0] scoring_fn_source_V_7_address0;
output   scoring_fn_source_V_7_ce0;
output   scoring_fn_source_V_7_we0;
output  [27:0] scoring_fn_source_V_7_d0;
output  [4:0] scoring_fn_source_V_8_address0;
output   scoring_fn_source_V_8_ce0;
output   scoring_fn_source_V_8_we0;
output  [27:0] scoring_fn_source_V_8_d0;
output  [4:0] scoring_fn_source_V_9_address0;
output   scoring_fn_source_V_9_ce0;
output   scoring_fn_source_V_9_we0;
output  [27:0] scoring_fn_source_V_9_d0;
output  [4:0] scoring_fn_source_V_10_address0;
output   scoring_fn_source_V_10_ce0;
output   scoring_fn_source_V_10_we0;
output  [27:0] scoring_fn_source_V_10_d0;
output  [4:0] scoring_fn_source_V_11_address0;
output   scoring_fn_source_V_11_ce0;
output   scoring_fn_source_V_11_we0;
output  [27:0] scoring_fn_source_V_11_d0;
output  [4:0] scoring_fn_source_V_12_address0;
output   scoring_fn_source_V_12_ce0;
output   scoring_fn_source_V_12_we0;
output  [27:0] scoring_fn_source_V_12_d0;
output  [4:0] scoring_fn_source_V_13_address0;
output   scoring_fn_source_V_13_ce0;
output   scoring_fn_source_V_13_we0;
output  [27:0] scoring_fn_source_V_13_d0;
output  [4:0] scoring_fn_source_V_14_address0;
output   scoring_fn_source_V_14_ce0;
output   scoring_fn_source_V_14_we0;
output  [27:0] scoring_fn_source_V_14_d0;
output  [4:0] scoring_fn_source_V_15_address0;
output   scoring_fn_source_V_15_ce0;
output   scoring_fn_source_V_15_we0;
output  [27:0] scoring_fn_source_V_15_d0;

reg ap_idle;
reg m_axi_mem_RREADY;
reg scoring_fn_source_V_0_ce0;
reg scoring_fn_source_V_0_we0;
reg scoring_fn_source_V_1_ce0;
reg scoring_fn_source_V_1_we0;
reg scoring_fn_source_V_2_ce0;
reg scoring_fn_source_V_2_we0;
reg scoring_fn_source_V_3_ce0;
reg scoring_fn_source_V_3_we0;
reg scoring_fn_source_V_4_ce0;
reg scoring_fn_source_V_4_we0;
reg scoring_fn_source_V_5_ce0;
reg scoring_fn_source_V_5_we0;
reg scoring_fn_source_V_6_ce0;
reg scoring_fn_source_V_6_we0;
reg scoring_fn_source_V_7_ce0;
reg scoring_fn_source_V_7_we0;
reg scoring_fn_source_V_8_ce0;
reg scoring_fn_source_V_8_we0;
reg scoring_fn_source_V_9_ce0;
reg scoring_fn_source_V_9_we0;
reg scoring_fn_source_V_10_ce0;
reg scoring_fn_source_V_10_we0;
reg scoring_fn_source_V_11_ce0;
reg scoring_fn_source_V_11_we0;
reg scoring_fn_source_V_12_ce0;
reg scoring_fn_source_V_12_we0;
reg scoring_fn_source_V_13_ce0;
reg scoring_fn_source_V_13_we0;
reg scoring_fn_source_V_14_ce0;
reg scoring_fn_source_V_14_we0;
reg scoring_fn_source_V_15_ce0;
reg scoring_fn_source_V_15_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln295_reg_502;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln295_fu_375_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    mem_blk_n_R;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [27:0] trunc_ln297_1_fu_398_p1;
reg   [27:0] trunc_ln297_1_reg_506;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln295_fu_436_p1;
reg   [4:0] j_fu_122;
wire   [4:0] add_ln296_fu_460_p2;
wire    ap_loop_init;
reg   [2:0] i_4_fu_126;
wire   [2:0] select_ln295_1_fu_428_p3;
reg   [6:0] indvar_flatten39_fu_130;
reg   [6:0] ap_sig_allocacmp_indvar_flatten39_load;
wire   [6:0] add_ln295_1_fu_381_p2;
wire   [3:0] trunc_ln297_fu_456_p1;
wire   [0:0] icmp_ln296_fu_414_p2;
wire   [2:0] add_ln295_fu_408_p2;
wire   [4:0] select_ln295_fu_420_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            i_4_fu_126 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            i_4_fu_126 <= select_ln295_1_fu_428_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln295_fu_375_p2 == 1'd0))) begin
            indvar_flatten39_fu_130 <= add_ln295_1_fu_381_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten39_fu_130 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            j_fu_122 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            j_fu_122 <= add_ln296_fu_460_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln295_reg_502 <= icmp_ln295_fu_375_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln295_reg_502 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln297_1_reg_506 <= trunc_ln297_1_fu_398_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln295_fu_375_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln295_reg_502 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten39_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten39_load = indvar_flatten39_fu_130;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln295_reg_502 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_mem_RREADY = 1'b1;
    end else begin
        m_axi_mem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln295_reg_502 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mem_blk_n_R = m_axi_mem_RVALID;
    end else begin
        mem_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_0_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_0_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_10_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd10) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_10_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_10_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_11_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd11) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_11_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_11_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_12_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd12) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_12_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_12_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_13_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd13) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_13_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_13_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_14_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd14) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_14_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_14_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_15_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd15) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_15_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_15_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_1_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_1_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_2_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd2) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_2_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_3_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd3) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_3_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_4_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd4) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_4_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_5_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd5) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_5_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_6_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd6) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_6_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_7_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd7) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_7_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_8_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd8) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_8_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_8_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_9_ce0 = 1'b1;
    end else begin
        scoring_fn_source_V_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln297_fu_456_p1 == 4'd9) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        scoring_fn_source_V_9_we0 = 1'b1;
    end else begin
        scoring_fn_source_V_9_we0 = 1'b0;
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

assign add_ln295_1_fu_381_p2 = (ap_sig_allocacmp_indvar_flatten39_load + 7'd1);

assign add_ln295_fu_408_p2 = (i_4_fu_126 + 3'd1);

assign add_ln296_fu_460_p2 = (select_ln295_fu_420_p3 + 5'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln295_reg_502 == 1'd0) & (m_axi_mem_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln295_reg_502 == 1'd0) & (m_axi_mem_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln295_reg_502 == 1'd0) & (m_axi_mem_RVALID == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln295_fu_375_p2 = ((ap_sig_allocacmp_indvar_flatten39_load == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln296_fu_414_p2 = ((j_fu_122 == 5'd16) ? 1'b1 : 1'b0);

assign m_axi_mem_ARADDR = 64'd0;

assign m_axi_mem_ARBURST = 2'd0;

assign m_axi_mem_ARCACHE = 4'd0;

assign m_axi_mem_ARID = 1'd0;

assign m_axi_mem_ARLEN = 32'd0;

assign m_axi_mem_ARLOCK = 2'd0;

assign m_axi_mem_ARPROT = 3'd0;

assign m_axi_mem_ARQOS = 4'd0;

assign m_axi_mem_ARREGION = 4'd0;

assign m_axi_mem_ARSIZE = 3'd0;

assign m_axi_mem_ARUSER = 1'd0;

assign m_axi_mem_ARVALID = 1'b0;

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

assign scoring_fn_source_V_0_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_0_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_10_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_10_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_11_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_11_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_12_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_12_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_13_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_13_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_14_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_14_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_15_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_15_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_1_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_1_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_2_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_2_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_3_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_3_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_4_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_4_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_5_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_5_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_6_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_6_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_7_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_7_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_8_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_8_d0 = trunc_ln297_1_reg_506;

assign scoring_fn_source_V_9_address0 = zext_ln295_fu_436_p1;

assign scoring_fn_source_V_9_d0 = trunc_ln297_1_reg_506;

assign select_ln295_1_fu_428_p3 = ((icmp_ln296_fu_414_p2[0:0] == 1'b1) ? add_ln295_fu_408_p2 : i_4_fu_126);

assign select_ln295_fu_420_p3 = ((icmp_ln296_fu_414_p2[0:0] == 1'b1) ? 5'd0 : j_fu_122);

assign trunc_ln297_1_fu_398_p1 = m_axi_mem_RDATA[27:0];

assign trunc_ln297_fu_456_p1 = select_ln295_fu_420_p3[3:0];

assign zext_ln295_fu_436_p1 = select_ln295_1_fu_428_p3;

endmodule //GAT_compute_one_graph_load_weights_first_layer_Pipeline_VITIS_LOOP_295_3_VITIS_LOOP_296_4
