-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GAT_compute_one_graph_load_misc_weights is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_mem_AWVALID : OUT STD_LOGIC;
    m_axi_mem_AWREADY : IN STD_LOGIC;
    m_axi_mem_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_mem_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mem_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_mem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_mem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_mem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mem_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mem_WVALID : OUT STD_LOGIC;
    m_axi_mem_WREADY : IN STD_LOGIC;
    m_axi_mem_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_mem_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mem_WLAST : OUT STD_LOGIC;
    m_axi_mem_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mem_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mem_ARVALID : OUT STD_LOGIC;
    m_axi_mem_ARREADY : IN STD_LOGIC;
    m_axi_mem_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_mem_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mem_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_mem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_mem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_mem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_mem_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mem_RVALID : IN STD_LOGIC;
    m_axi_mem_RREADY : OUT STD_LOGIC;
    m_axi_mem_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_mem_RLAST : IN STD_LOGIC;
    m_axi_mem_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mem_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mem_BVALID : IN STD_LOGIC;
    m_axi_mem_BREADY : OUT STD_LOGIC;
    m_axi_mem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_mem_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_mem_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    graph_pred_linear_weight_fixed : IN STD_LOGIC_VECTOR (63 downto 0);
    graph_pred_linear_bias_fixed : IN STD_LOGIC_VECTOR (63 downto 0);
    pred_linear_bias_V_0 : OUT STD_LOGIC_VECTOR (27 downto 0);
    pred_linear_bias_V_0_ap_vld : OUT STD_LOGIC;
    pred_linear_weight_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    pred_linear_weight_V_ce0 : OUT STD_LOGIC;
    pred_linear_weight_V_we0 : OUT STD_LOGIC;
    pred_linear_weight_V_d0 : OUT STD_LOGIC_VECTOR (27 downto 0) );
end;


architecture behav of GAT_compute_one_graph_load_misc_weights is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal mem_blk_n_AR : STD_LOGIC;
    signal mem_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal trunc_ln_fu_105_p4 : STD_LOGIC_VECTOR (61 downto 0);
    signal trunc_ln_reg_142 : STD_LOGIC_VECTOR (61 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_idle : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_ready : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWVALID : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WVALID : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WDATA : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WSTRB : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WLAST : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARVALID : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_RREADY : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_BREADY : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_ce0 : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_we0 : STD_LOGIC;
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_d0 : STD_LOGIC_VECTOR (27 downto 0);
    signal grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal sext_ln334_fu_94_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln335_fu_115_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln334_1_fu_84_p4 : STD_LOGIC_VECTOR (61 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ST_fsm_state9_blk : STD_LOGIC;
    signal ap_ST_fsm_state10_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component GAT_compute_one_graph_load_misc_weights_Pipeline_VITIS_LOOP_335_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        m_axi_mem_AWVALID : OUT STD_LOGIC;
        m_axi_mem_AWREADY : IN STD_LOGIC;
        m_axi_mem_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_mem_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_mem_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_mem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_mem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_mem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_mem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_mem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_mem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_mem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_mem_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_mem_WVALID : OUT STD_LOGIC;
        m_axi_mem_WREADY : IN STD_LOGIC;
        m_axi_mem_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_mem_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_mem_WLAST : OUT STD_LOGIC;
        m_axi_mem_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_mem_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_mem_ARVALID : OUT STD_LOGIC;
        m_axi_mem_ARREADY : IN STD_LOGIC;
        m_axi_mem_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_mem_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_mem_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_mem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_mem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_mem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_mem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_mem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_mem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_mem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_mem_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_mem_RVALID : IN STD_LOGIC;
        m_axi_mem_RREADY : OUT STD_LOGIC;
        m_axi_mem_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
        m_axi_mem_RLAST : IN STD_LOGIC;
        m_axi_mem_RID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_mem_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_mem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_mem_BVALID : IN STD_LOGIC;
        m_axi_mem_BREADY : OUT STD_LOGIC;
        m_axi_mem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_mem_BID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_mem_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        sext_ln335 : IN STD_LOGIC_VECTOR (61 downto 0);
        pred_linear_weight_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        pred_linear_weight_V_ce0 : OUT STD_LOGIC;
        pred_linear_weight_V_we0 : OUT STD_LOGIC;
        pred_linear_weight_V_d0 : OUT STD_LOGIC_VECTOR (27 downto 0) );
    end component;



begin
    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75 : component GAT_compute_one_graph_load_misc_weights_Pipeline_VITIS_LOOP_335_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start,
        ap_done => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done,
        ap_idle => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_idle,
        ap_ready => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_ready,
        m_axi_mem_AWVALID => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWVALID,
        m_axi_mem_AWREADY => ap_const_logic_0,
        m_axi_mem_AWADDR => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWADDR,
        m_axi_mem_AWID => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWID,
        m_axi_mem_AWLEN => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWLEN,
        m_axi_mem_AWSIZE => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWSIZE,
        m_axi_mem_AWBURST => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWBURST,
        m_axi_mem_AWLOCK => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWLOCK,
        m_axi_mem_AWCACHE => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWCACHE,
        m_axi_mem_AWPROT => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWPROT,
        m_axi_mem_AWQOS => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWQOS,
        m_axi_mem_AWREGION => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWREGION,
        m_axi_mem_AWUSER => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_AWUSER,
        m_axi_mem_WVALID => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WVALID,
        m_axi_mem_WREADY => ap_const_logic_0,
        m_axi_mem_WDATA => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WDATA,
        m_axi_mem_WSTRB => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WSTRB,
        m_axi_mem_WLAST => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WLAST,
        m_axi_mem_WID => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WID,
        m_axi_mem_WUSER => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_WUSER,
        m_axi_mem_ARVALID => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARVALID,
        m_axi_mem_ARREADY => m_axi_mem_ARREADY,
        m_axi_mem_ARADDR => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARADDR,
        m_axi_mem_ARID => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARID,
        m_axi_mem_ARLEN => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLEN,
        m_axi_mem_ARSIZE => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARSIZE,
        m_axi_mem_ARBURST => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARBURST,
        m_axi_mem_ARLOCK => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLOCK,
        m_axi_mem_ARCACHE => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARCACHE,
        m_axi_mem_ARPROT => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARPROT,
        m_axi_mem_ARQOS => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARQOS,
        m_axi_mem_ARREGION => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARREGION,
        m_axi_mem_ARUSER => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARUSER,
        m_axi_mem_RVALID => m_axi_mem_RVALID,
        m_axi_mem_RREADY => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_RREADY,
        m_axi_mem_RDATA => m_axi_mem_RDATA,
        m_axi_mem_RLAST => m_axi_mem_RLAST,
        m_axi_mem_RID => m_axi_mem_RID,
        m_axi_mem_RUSER => m_axi_mem_RUSER,
        m_axi_mem_RRESP => m_axi_mem_RRESP,
        m_axi_mem_BVALID => ap_const_logic_0,
        m_axi_mem_BREADY => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_BREADY,
        m_axi_mem_BRESP => ap_const_lv2_0,
        m_axi_mem_BID => ap_const_lv1_0,
        m_axi_mem_BUSER => ap_const_lv1_0,
        sext_ln335 => trunc_ln_reg_142,
        pred_linear_weight_V_address0 => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_address0,
        pred_linear_weight_V_ce0 => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_ce0,
        pred_linear_weight_V_we0 => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_we0,
        pred_linear_weight_V_d0 => grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_d0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_ready = ap_const_logic_1)) then 
                    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                trunc_ln_reg_142 <= graph_pred_linear_weight_fixed(63 downto 2);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, m_axi_mem_ARREADY, m_axi_mem_RVALID, ap_CS_fsm_state8, ap_CS_fsm_state2, grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done, ap_CS_fsm_state10)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((m_axi_mem_ARREADY = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((m_axi_mem_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if (((m_axi_mem_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state10) and (grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_ST_fsm_state10_blk_assign_proc : process(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done)
    begin
        if ((grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state10_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state10_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, m_axi_mem_ARREADY)
    begin
        if (((m_axi_mem_ARREADY = ap_const_logic_0) or (ap_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(m_axi_mem_ARREADY)
    begin
        if ((m_axi_mem_ARREADY = ap_const_logic_0)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;

    ap_ST_fsm_state8_blk_assign_proc : process(m_axi_mem_RVALID)
    begin
        if ((m_axi_mem_RVALID = ap_const_logic_0)) then 
            ap_ST_fsm_state8_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state8_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state9_blk <= ap_const_logic_0;

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done, ap_CS_fsm_state10)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)) or ((ap_const_logic_1 = ap_CS_fsm_state10) and (grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done = ap_const_logic_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) and (grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_done = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_ap_start_reg;

    m_axi_mem_ARADDR_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_mem_ARREADY, ap_CS_fsm_state2, grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARADDR, ap_CS_fsm_state9, ap_CS_fsm_state10, sext_ln334_fu_94_p1, sext_ln335_fu_115_p1)
    begin
        if (((m_axi_mem_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_mem_ARADDR <= sext_ln335_fu_115_p1;
        elsif ((not(((m_axi_mem_ARREADY = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            m_axi_mem_ARADDR <= sext_ln334_fu_94_p1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARADDR <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARADDR;
        else 
            m_axi_mem_ARADDR <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    m_axi_mem_ARBURST_assign_proc : process(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARBURST, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARBURST <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARBURST;
        else 
            m_axi_mem_ARBURST <= ap_const_lv2_0;
        end if; 
    end process;


    m_axi_mem_ARCACHE_assign_proc : process(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARCACHE, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARCACHE <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARCACHE;
        else 
            m_axi_mem_ARCACHE <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_mem_ARID_assign_proc : process(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARID, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARID <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARID;
        else 
            m_axi_mem_ARID <= ap_const_lv1_0;
        end if; 
    end process;


    m_axi_mem_ARLEN_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_mem_ARREADY, ap_CS_fsm_state2, grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLEN, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((m_axi_mem_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_mem_ARLEN <= ap_const_lv32_10;
        elsif ((not(((m_axi_mem_ARREADY = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            m_axi_mem_ARLEN <= ap_const_lv32_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARLEN <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLEN;
        else 
            m_axi_mem_ARLEN <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    m_axi_mem_ARLOCK_assign_proc : process(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLOCK, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARLOCK <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARLOCK;
        else 
            m_axi_mem_ARLOCK <= ap_const_lv2_0;
        end if; 
    end process;


    m_axi_mem_ARPROT_assign_proc : process(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARPROT, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARPROT <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARPROT;
        else 
            m_axi_mem_ARPROT <= ap_const_lv3_0;
        end if; 
    end process;


    m_axi_mem_ARQOS_assign_proc : process(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARQOS, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARQOS <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARQOS;
        else 
            m_axi_mem_ARQOS <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_mem_ARREGION_assign_proc : process(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARREGION, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARREGION <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARREGION;
        else 
            m_axi_mem_ARREGION <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_mem_ARSIZE_assign_proc : process(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARSIZE, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARSIZE <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARSIZE;
        else 
            m_axi_mem_ARSIZE <= ap_const_lv3_0;
        end if; 
    end process;


    m_axi_mem_ARUSER_assign_proc : process(grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARUSER, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARUSER <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARUSER;
        else 
            m_axi_mem_ARUSER <= ap_const_lv1_0;
        end if; 
    end process;


    m_axi_mem_ARVALID_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_mem_ARREADY, ap_CS_fsm_state2, grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARVALID, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if ((((m_axi_mem_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or (not(((m_axi_mem_ARREADY = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            m_axi_mem_ARVALID <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_ARVALID <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_ARVALID;
        else 
            m_axi_mem_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_mem_AWADDR <= ap_const_lv64_0;
    m_axi_mem_AWBURST <= ap_const_lv2_0;
    m_axi_mem_AWCACHE <= ap_const_lv4_0;
    m_axi_mem_AWID <= ap_const_lv1_0;
    m_axi_mem_AWLEN <= ap_const_lv32_0;
    m_axi_mem_AWLOCK <= ap_const_lv2_0;
    m_axi_mem_AWPROT <= ap_const_lv3_0;
    m_axi_mem_AWQOS <= ap_const_lv4_0;
    m_axi_mem_AWREGION <= ap_const_lv4_0;
    m_axi_mem_AWSIZE <= ap_const_lv3_0;
    m_axi_mem_AWUSER <= ap_const_lv1_0;
    m_axi_mem_AWVALID <= ap_const_logic_0;
    m_axi_mem_BREADY <= ap_const_logic_0;

    m_axi_mem_RREADY_assign_proc : process(m_axi_mem_RVALID, ap_CS_fsm_state8, grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_RREADY, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((m_axi_mem_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            m_axi_mem_RREADY <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_RREADY <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_m_axi_mem_RREADY;
        else 
            m_axi_mem_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_mem_WDATA <= ap_const_lv32_0;
    m_axi_mem_WID <= ap_const_lv1_0;
    m_axi_mem_WLAST <= ap_const_logic_0;
    m_axi_mem_WSTRB <= ap_const_lv4_0;
    m_axi_mem_WUSER <= ap_const_lv1_0;
    m_axi_mem_WVALID <= ap_const_logic_0;

    mem_blk_n_AR_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_mem_ARREADY, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            mem_blk_n_AR <= m_axi_mem_ARREADY;
        else 
            mem_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    mem_blk_n_R_assign_proc : process(m_axi_mem_RVALID, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            mem_blk_n_R <= m_axi_mem_RVALID;
        else 
            mem_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    pred_linear_bias_V_0 <= m_axi_mem_RDATA(28 - 1 downto 0);

    pred_linear_bias_V_0_ap_vld_assign_proc : process(m_axi_mem_RVALID, ap_CS_fsm_state8)
    begin
        if (((m_axi_mem_RVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            pred_linear_bias_V_0_ap_vld <= ap_const_logic_1;
        else 
            pred_linear_bias_V_0_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    pred_linear_weight_V_address0 <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_address0;
    pred_linear_weight_V_ce0 <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_ce0;
    pred_linear_weight_V_d0 <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_d0;
    pred_linear_weight_V_we0 <= grp_load_misc_weights_Pipeline_VITIS_LOOP_335_2_fu_75_pred_linear_weight_V_we0;
        sext_ln334_fu_94_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln334_1_fu_84_p4),64));

        sext_ln335_fu_115_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln_fu_105_p4),64));

    trunc_ln334_1_fu_84_p4 <= graph_pred_linear_bias_fixed(63 downto 2);
    trunc_ln_fu_105_p4 <= graph_pred_linear_weight_fixed(63 downto 2);
end behav;
