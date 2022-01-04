// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_load_weights_first_layer_Pipeline_VITIS_LOOP_216_3_VITIS_LOOP_217_4 (
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
        sext_ln216,
        sext_ln216_1,
        linear_proj_weight_V_address0,
        linear_proj_weight_V_ce0,
        linear_proj_weight_V_we0,
        linear_proj_weight_V_d0,
        skip_proj_weight_V_address0,
        skip_proj_weight_V_ce0,
        skip_proj_weight_V_we0,
        skip_proj_weight_V_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

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
input  [61:0] sext_ln216;
input  [61:0] sext_ln216_1;
output  [14:0] linear_proj_weight_V_address0;
output   linear_proj_weight_V_ce0;
output   linear_proj_weight_V_we0;
output  [27:0] linear_proj_weight_V_d0;
output  [14:0] skip_proj_weight_V_address0;
output   skip_proj_weight_V_ce0;
output   skip_proj_weight_V_we0;
output  [27:0] skip_proj_weight_V_d0;

reg ap_idle;
reg m_axi_mem_ARVALID;
reg[63:0] m_axi_mem_ARADDR;
reg m_axi_mem_RREADY;
reg linear_proj_weight_V_ce0;
reg linear_proj_weight_V_we0;
reg skip_proj_weight_V_ce0;
reg skip_proj_weight_V_we0;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_state6_pp0_stage1_iter2;
wire    ap_block_state8_pp0_stage1_iter3;
reg    ap_block_state10_pp0_stage1_iter4;
wire    ap_block_state12_pp0_stage1_iter5;
reg    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln216_reg_363;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    mem_blk_n_AR;
wire    ap_block_pp0_stage0;
reg    mem_blk_n_R;
wire    ap_block_pp0_stage1;
wire  signed [62:0] sext_ln216_1_cast_fu_150_p1;
reg  signed [62:0] sext_ln216_1_cast_reg_353;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state7_pp0_stage0_iter3;
wire    ap_block_state9_pp0_stage0_iter4;
reg    ap_block_state11_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_11001;
wire  signed [62:0] sext_ln216_cast_fu_154_p1;
reg  signed [62:0] sext_ln216_cast_reg_358;
wire   [0:0] icmp_ln216_fu_176_p2;
wire   [3:0] select_ln216_fu_206_p3;
reg   [3:0] select_ln216_reg_367;
reg   [3:0] select_ln216_reg_367_pp0_iter1_reg;
reg   [3:0] select_ln216_reg_367_pp0_iter2_reg;
reg   [3:0] select_ln216_reg_367_pp0_iter3_reg;
reg   [3:0] select_ln216_reg_367_pp0_iter4_reg;
wire   [6:0] select_ln216_1_fu_214_p3;
reg   [6:0] select_ln216_1_reg_372;
reg   [6:0] select_ln216_1_reg_372_pp0_iter1_reg;
reg   [6:0] select_ln216_1_reg_372_pp0_iter2_reg;
reg   [6:0] select_ln216_1_reg_372_pp0_iter3_reg;
reg   [6:0] select_ln216_1_reg_372_pp0_iter4_reg;
wire   [5:0] trunc_ln216_fu_222_p1;
reg   [5:0] trunc_ln216_reg_377;
wire   [6:0] add_ln218_2_fu_230_p2;
reg   [6:0] add_ln218_2_reg_382;
reg   [63:0] mem_addr_reg_387;
reg    ap_block_pp0_stage1_11001;
reg   [63:0] mem_addr_2_reg_393;
wire   [27:0] trunc_ln218_fu_311_p1;
reg   [27:0] trunc_ln218_reg_399;
wire   [63:0] zext_ln218_2_fu_323_p1;
reg   [63:0] zext_ln218_2_reg_404;
wire   [27:0] trunc_ln219_fu_328_p1;
reg   [27:0] trunc_ln219_reg_409;
reg    ap_enable_reg_pp0_iter0_reg;
wire  signed [63:0] sext_ln218_fu_286_p1;
wire  signed [63:0] sext_ln219_fu_301_p1;
reg   [3:0] j_fu_76;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_j_load;
wire   [3:0] add_ln217_fu_236_p2;
reg   [6:0] i_fu_80;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [9:0] indvar_flatten7_fu_84;
reg   [9:0] ap_sig_allocacmp_indvar_flatten7_load;
wire   [9:0] add_ln216_1_fu_182_p2;
wire   [0:0] icmp_ln217_fu_200_p2;
wire   [6:0] add_ln216_fu_194_p2;
wire   [6:0] j_2_cast_fu_226_p1;
wire   [8:0] zext_ln217_mid2_v_fu_257_p3;
wire   [9:0] zext_ln218_fu_268_p1;
wire   [9:0] zext_ln216_fu_264_p1;
wire   [9:0] add_ln218_fu_271_p2;
wire   [62:0] zext_ln218_1_fu_277_p1;
wire   [62:0] add_ln218_1_fu_281_p2;
wire   [62:0] add_ln219_fu_296_p2;
wire   [12:0] tmp_s_fu_315_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln216_fu_176_p2 == 1'd0))) begin
            i_fu_80 <= select_ln216_1_fu_214_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_80 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln216_fu_176_p2 == 1'd0))) begin
            indvar_flatten7_fu_84 <= add_ln216_1_fu_182_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten7_fu_84 <= 10'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln216_fu_176_p2 == 1'd0))) begin
            j_fu_76 <= add_ln217_fu_236_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_76 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln216_fu_176_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln218_2_reg_382 <= add_ln218_2_fu_230_p2;
        select_ln216_1_reg_372 <= select_ln216_1_fu_214_p3;
        select_ln216_reg_367 <= select_ln216_fu_206_p3;
        trunc_ln216_reg_377 <= trunc_ln216_fu_222_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        trunc_ln218_reg_399 <= trunc_ln218_fu_311_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln216_reg_363 <= icmp_ln216_fu_176_p2;
        select_ln216_1_reg_372_pp0_iter1_reg <= select_ln216_1_reg_372;
        select_ln216_1_reg_372_pp0_iter2_reg <= select_ln216_1_reg_372_pp0_iter1_reg;
        select_ln216_1_reg_372_pp0_iter3_reg <= select_ln216_1_reg_372_pp0_iter2_reg;
        select_ln216_1_reg_372_pp0_iter4_reg <= select_ln216_1_reg_372_pp0_iter3_reg;
        select_ln216_reg_367_pp0_iter1_reg <= select_ln216_reg_367;
        select_ln216_reg_367_pp0_iter2_reg <= select_ln216_reg_367_pp0_iter1_reg;
        select_ln216_reg_367_pp0_iter3_reg <= select_ln216_reg_367_pp0_iter2_reg;
        select_ln216_reg_367_pp0_iter4_reg <= select_ln216_reg_367_pp0_iter3_reg;
        sext_ln216_1_cast_reg_353 <= sext_ln216_1_cast_fu_150_p1;
        sext_ln216_cast_reg_358 <= sext_ln216_cast_fu_154_p1;
        trunc_ln219_reg_409 <= trunc_ln219_fu_328_p1;
        zext_ln218_2_reg_404[3 : 0] <= zext_ln218_2_fu_323_p1[3 : 0];
zext_ln218_2_reg_404[12 : 6] <= zext_ln218_2_fu_323_p1[12 : 6];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln216_reg_363 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        mem_addr_2_reg_393 <= sext_ln219_fu_301_p1;
        mem_addr_reg_387 <= sext_ln218_fu_286_p1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln216_reg_363 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_80;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten7_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten7_load = indvar_flatten7_fu_84;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 4'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_76;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        linear_proj_weight_V_ce0 = 1'b1;
    end else begin
        linear_proj_weight_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        linear_proj_weight_V_we0 = 1'b1;
    end else begin
        linear_proj_weight_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
            m_axi_mem_ARADDR = mem_addr_2_reg_393;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            m_axi_mem_ARADDR = mem_addr_reg_387;
        end else begin
            m_axi_mem_ARADDR = 'bx;
        end
    end else begin
        m_axi_mem_ARADDR = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        m_axi_mem_ARVALID = 1'b1;
    end else begin
        m_axi_mem_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        m_axi_mem_RREADY = 1'b1;
    end else begin
        m_axi_mem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        mem_blk_n_AR = m_axi_mem_ARREADY;
    end else begin
        mem_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)))) begin
        mem_blk_n_R = m_axi_mem_RVALID;
    end else begin
        mem_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        skip_proj_weight_V_ce0 = 1'b1;
    end else begin
        skip_proj_weight_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        skip_proj_weight_V_we0 = 1'b1;
    end else begin
        skip_proj_weight_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln216_1_fu_182_p2 = (ap_sig_allocacmp_indvar_flatten7_load + 10'd1);

assign add_ln216_fu_194_p2 = (ap_sig_allocacmp_i_load + 7'd1);

assign add_ln217_fu_236_p2 = (select_ln216_fu_206_p3 + 4'd1);

assign add_ln218_1_fu_281_p2 = ($signed(zext_ln218_1_fu_277_p1) + $signed(sext_ln216_cast_reg_358));

assign add_ln218_2_fu_230_p2 = (select_ln216_1_fu_214_p3 + j_2_cast_fu_226_p1);

assign add_ln218_fu_271_p2 = (zext_ln218_fu_268_p1 + zext_ln216_fu_264_p1);

assign add_ln219_fu_296_p2 = ($signed(zext_ln218_1_fu_277_p1) + $signed(sext_ln216_1_cast_reg_353));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((m_axi_mem_RVALID == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((m_axi_mem_ARREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((m_axi_mem_RVALID == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((m_axi_mem_ARREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = (((m_axi_mem_RVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((m_axi_mem_ARREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = (((m_axi_mem_RVALID == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((m_axi_mem_ARREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state10_pp0_stage1_iter4 = (m_axi_mem_RVALID == 1'b0);
end

always @ (*) begin
    ap_block_state11_pp0_stage0_iter5 = (m_axi_mem_RVALID == 1'b0);
end

assign ap_block_state12_pp0_stage1_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign icmp_ln216_fu_176_p2 = ((ap_sig_allocacmp_indvar_flatten7_load == 10'd576) ? 1'b1 : 1'b0);

assign icmp_ln217_fu_200_p2 = ((ap_sig_allocacmp_j_load == 4'd9) ? 1'b1 : 1'b0);

assign j_2_cast_fu_226_p1 = select_ln216_fu_206_p3;

assign linear_proj_weight_V_address0 = zext_ln218_2_fu_323_p1;

assign linear_proj_weight_V_d0 = trunc_ln218_reg_399;

assign m_axi_mem_ARBURST = 2'd0;

assign m_axi_mem_ARCACHE = 4'd0;

assign m_axi_mem_ARID = 1'd0;

assign m_axi_mem_ARLEN = 32'd1;

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

assign select_ln216_1_fu_214_p3 = ((icmp_ln217_fu_200_p2[0:0] == 1'b1) ? add_ln216_fu_194_p2 : ap_sig_allocacmp_i_load);

assign select_ln216_fu_206_p3 = ((icmp_ln217_fu_200_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_j_load);

assign sext_ln216_1_cast_fu_150_p1 = $signed(sext_ln216_1);

assign sext_ln216_cast_fu_154_p1 = $signed(sext_ln216);

assign sext_ln218_fu_286_p1 = $signed(add_ln218_1_fu_281_p2);

assign sext_ln219_fu_301_p1 = $signed(add_ln219_fu_296_p2);

assign skip_proj_weight_V_address0 = zext_ln218_2_reg_404;

assign skip_proj_weight_V_d0 = trunc_ln219_reg_409;

assign tmp_s_fu_315_p4 = {{{select_ln216_1_reg_372_pp0_iter4_reg}, {2'd0}}, {select_ln216_reg_367_pp0_iter4_reg}};

assign trunc_ln216_fu_222_p1 = select_ln216_1_fu_214_p3[5:0];

assign trunc_ln218_fu_311_p1 = m_axi_mem_RDATA[27:0];

assign trunc_ln219_fu_328_p1 = m_axi_mem_RDATA[27:0];

assign zext_ln216_fu_264_p1 = zext_ln217_mid2_v_fu_257_p3;

assign zext_ln217_mid2_v_fu_257_p3 = {{trunc_ln216_reg_377}, {3'd0}};

assign zext_ln218_1_fu_277_p1 = add_ln218_fu_271_p2;

assign zext_ln218_2_fu_323_p1 = tmp_s_fu_315_p4;

assign zext_ln218_fu_268_p1 = add_ln218_2_reg_382;

always @ (posedge ap_clk) begin
    zext_ln218_2_reg_404[5:4] <= 2'b00;
    zext_ln218_2_reg_404[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end

endmodule //GAT_compute_one_graph_load_weights_first_layer_Pipeline_VITIS_LOOP_216_3_VITIS_LOOP_217_4
