-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GAT_compute_one_graph_load_misc_weights_Pipeline_VITIS_LOOP_316_2 is
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
    sext_ln316 : IN STD_LOGIC_VECTOR (61 downto 0);
    pred_linear_weight_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    pred_linear_weight_V_ce0 : OUT STD_LOGIC;
    pred_linear_weight_V_we0 : OUT STD_LOGIC;
    pred_linear_weight_V_d0 : OUT STD_LOGIC_VECTOR (27 downto 0) );
end;


architecture behav of GAT_compute_one_graph_load_misc_weights_Pipeline_VITIS_LOOP_316_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln316_reg_138 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln316_fu_90_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal mem_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_2_reg_133 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_2_reg_133_pp0_iter1_reg : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln317_fu_113_p1 : STD_LOGIC_VECTOR (27 downto 0);
    signal trunc_ln317_reg_142 : STD_LOGIC_VECTOR (27 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal j_cast_fu_117_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_50 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_2 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln316_fu_96_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component GAT_compute_one_graph_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component GAT_compute_one_graph_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    j_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln316_fu_90_p2 = ap_const_lv1_0))) then 
                    j_fu_50 <= add_ln316_fu_96_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_50 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                icmp_ln316_reg_138 <= icmp_ln316_fu_90_p2;
                j_2_reg_133 <= ap_sig_allocacmp_j_2;
                j_2_reg_133_pp0_iter1_reg <= j_2_reg_133;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln316_reg_138 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                trunc_ln317_reg_142 <= trunc_ln317_fu_113_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln316_fu_96_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j_2) + unsigned(ap_const_lv5_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_mem_RVALID, icmp_ln316_reg_138)
    begin
                ap_block_pp0_stage0_11001 <= ((icmp_ln316_reg_138 = ap_const_lv1_0) and (m_axi_mem_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_mem_RVALID, icmp_ln316_reg_138)
    begin
                ap_block_pp0_stage0_subdone <= ((icmp_ln316_reg_138 = ap_const_lv1_0) and (m_axi_mem_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(m_axi_mem_RVALID, icmp_ln316_reg_138)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((icmp_ln316_reg_138 = ap_const_lv1_0) and (m_axi_mem_RVALID = ap_const_logic_0));
    end process;

        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln316_fu_90_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln316_fu_90_p2 = ap_const_lv1_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln316_reg_138, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln316_reg_138 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_j_2_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_fu_50, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_2 <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_j_2 <= j_fu_50;
        end if; 
    end process;

    icmp_ln316_fu_90_p2 <= "1" when (ap_sig_allocacmp_j_2 = ap_const_lv5_10) else "0";
    j_cast_fu_117_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_2_reg_133_pp0_iter1_reg),64));
    m_axi_mem_ARADDR <= ap_const_lv64_0;
    m_axi_mem_ARBURST <= ap_const_lv2_0;
    m_axi_mem_ARCACHE <= ap_const_lv4_0;
    m_axi_mem_ARID <= ap_const_lv1_0;
    m_axi_mem_ARLEN <= ap_const_lv32_0;
    m_axi_mem_ARLOCK <= ap_const_lv2_0;
    m_axi_mem_ARPROT <= ap_const_lv3_0;
    m_axi_mem_ARQOS <= ap_const_lv4_0;
    m_axi_mem_ARREGION <= ap_const_lv4_0;
    m_axi_mem_ARSIZE <= ap_const_lv3_0;
    m_axi_mem_ARUSER <= ap_const_lv1_0;
    m_axi_mem_ARVALID <= ap_const_logic_0;
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

    m_axi_mem_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln316_reg_138, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln316_reg_138 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axi_mem_RREADY <= ap_const_logic_1;
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

    mem_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_mem_RVALID, icmp_ln316_reg_138, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln316_reg_138 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mem_blk_n_R <= m_axi_mem_RVALID;
        else 
            mem_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    pred_linear_weight_V_address0 <= j_cast_fu_117_p1(4 - 1 downto 0);

    pred_linear_weight_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            pred_linear_weight_V_ce0 <= ap_const_logic_1;
        else 
            pred_linear_weight_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    pred_linear_weight_V_d0 <= trunc_ln317_reg_142;

    pred_linear_weight_V_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            pred_linear_weight_V_we0 <= ap_const_logic_1;
        else 
            pred_linear_weight_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln317_fu_113_p1 <= m_axi_mem_RDATA(28 - 1 downto 0);
end behav;
