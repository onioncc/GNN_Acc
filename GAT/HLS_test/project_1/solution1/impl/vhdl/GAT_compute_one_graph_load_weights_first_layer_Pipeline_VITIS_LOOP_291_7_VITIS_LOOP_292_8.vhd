-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GAT_compute_one_graph_load_weights_first_layer_Pipeline_VITIS_LOOP_291_7_VITIS_LOOP_292_8 is
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
    sext_ln291 : IN STD_LOGIC_VECTOR (61 downto 0);
    skip_proj_weight_V_0_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    skip_proj_weight_V_0_ce0 : OUT STD_LOGIC;
    skip_proj_weight_V_0_we0 : OUT STD_LOGIC;
    skip_proj_weight_V_0_d0 : OUT STD_LOGIC_VECTOR (27 downto 0);
    skip_proj_weight_V_1_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    skip_proj_weight_V_1_ce0 : OUT STD_LOGIC;
    skip_proj_weight_V_1_we0 : OUT STD_LOGIC;
    skip_proj_weight_V_1_d0 : OUT STD_LOGIC_VECTOR (27 downto 0);
    skip_proj_weight_V_2_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    skip_proj_weight_V_2_ce0 : OUT STD_LOGIC;
    skip_proj_weight_V_2_we0 : OUT STD_LOGIC;
    skip_proj_weight_V_2_d0 : OUT STD_LOGIC_VECTOR (27 downto 0);
    skip_proj_weight_V_3_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    skip_proj_weight_V_3_ce0 : OUT STD_LOGIC;
    skip_proj_weight_V_3_we0 : OUT STD_LOGIC;
    skip_proj_weight_V_3_d0 : OUT STD_LOGIC_VECTOR (27 downto 0);
    skip_proj_weight_V_4_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    skip_proj_weight_V_4_ce0 : OUT STD_LOGIC;
    skip_proj_weight_V_4_we0 : OUT STD_LOGIC;
    skip_proj_weight_V_4_d0 : OUT STD_LOGIC_VECTOR (27 downto 0);
    skip_proj_weight_V_5_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    skip_proj_weight_V_5_ce0 : OUT STD_LOGIC;
    skip_proj_weight_V_5_we0 : OUT STD_LOGIC;
    skip_proj_weight_V_5_d0 : OUT STD_LOGIC_VECTOR (27 downto 0);
    skip_proj_weight_V_6_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    skip_proj_weight_V_6_ce0 : OUT STD_LOGIC;
    skip_proj_weight_V_6_we0 : OUT STD_LOGIC;
    skip_proj_weight_V_6_d0 : OUT STD_LOGIC_VECTOR (27 downto 0);
    skip_proj_weight_V_7_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    skip_proj_weight_V_7_ce0 : OUT STD_LOGIC;
    skip_proj_weight_V_7_we0 : OUT STD_LOGIC;
    skip_proj_weight_V_7_d0 : OUT STD_LOGIC_VECTOR (27 downto 0);
    skip_proj_weight_V_8_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    skip_proj_weight_V_8_ce0 : OUT STD_LOGIC;
    skip_proj_weight_V_8_we0 : OUT STD_LOGIC;
    skip_proj_weight_V_8_d0 : OUT STD_LOGIC_VECTOR (27 downto 0) );
end;


architecture behav of GAT_compute_one_graph_load_weights_first_layer_Pipeline_VITIS_LOOP_291_7_VITIS_LOOP_292_8 is 
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
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant ap_const_lv4_6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";
    constant ap_const_lv4_5 : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    constant ap_const_lv4_4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv10_240 : STD_LOGIC_VECTOR (9 downto 0) := "1001000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";

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
    signal icmp_ln291_reg_368 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln291_fu_252_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal mem_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal trunc_ln293_fu_275_p1 : STD_LOGIC_VECTOR (27 downto 0);
    signal trunc_ln293_reg_372 : STD_LOGIC_VECTOR (27 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal zext_ln291_fu_313_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_90 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln292_fu_326_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal i_fu_94 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln291_1_fu_305_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal indvar_flatten73_fu_98 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_sig_allocacmp_indvar_flatten73_load : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln291_1_fu_258_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln291_fu_297_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln292_fu_291_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln291_fu_285_p2 : STD_LOGIC_VECTOR (6 downto 0);
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    i_fu_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    i_fu_94 <= ap_const_lv7_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    i_fu_94 <= select_ln291_1_fu_305_p3;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten73_fu_98_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln291_fu_252_p2 = ap_const_lv1_0))) then 
                    indvar_flatten73_fu_98 <= add_ln291_1_fu_258_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten73_fu_98 <= ap_const_lv10_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    j_fu_90 <= ap_const_lv4_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    j_fu_90 <= add_ln292_fu_326_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                icmp_ln291_reg_368 <= icmp_ln291_fu_252_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln291_reg_368 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                trunc_ln293_reg_372 <= trunc_ln293_fu_275_p1;
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
    add_ln291_1_fu_258_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten73_load) + unsigned(ap_const_lv10_1));
    add_ln291_fu_285_p2 <= std_logic_vector(unsigned(i_fu_94) + unsigned(ap_const_lv7_1));
    add_ln292_fu_326_p2 <= std_logic_vector(unsigned(select_ln291_fu_297_p3) + unsigned(ap_const_lv4_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_mem_RVALID, icmp_ln291_reg_368)
    begin
                ap_block_pp0_stage0_11001 <= ((icmp_ln291_reg_368 = ap_const_lv1_0) and (m_axi_mem_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_mem_RVALID, icmp_ln291_reg_368)
    begin
                ap_block_pp0_stage0_subdone <= ((icmp_ln291_reg_368 = ap_const_lv1_0) and (m_axi_mem_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(m_axi_mem_RVALID, icmp_ln291_reg_368)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((icmp_ln291_reg_368 = ap_const_lv1_0) and (m_axi_mem_RVALID = ap_const_logic_0));
    end process;

        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln291_fu_252_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln291_fu_252_p2 = ap_const_lv1_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln291_reg_368, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln291_reg_368 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_sig_allocacmp_indvar_flatten73_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten73_fu_98)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_indvar_flatten73_load <= ap_const_lv10_0;
        else 
            ap_sig_allocacmp_indvar_flatten73_load <= indvar_flatten73_fu_98;
        end if; 
    end process;

    icmp_ln291_fu_252_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten73_load = ap_const_lv10_240) else "0";
    icmp_ln292_fu_291_p2 <= "1" when (j_fu_90 = ap_const_lv4_9) else "0";
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

    m_axi_mem_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln291_reg_368, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln291_reg_368 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    mem_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_mem_RVALID, icmp_ln291_reg_368, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln291_reg_368 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mem_blk_n_R <= m_axi_mem_RVALID;
        else 
            mem_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    select_ln291_1_fu_305_p3 <= 
        add_ln291_fu_285_p2 when (icmp_ln292_fu_291_p2(0) = '1') else 
        i_fu_94;
    select_ln291_fu_297_p3 <= 
        ap_const_lv4_0 when (icmp_ln292_fu_291_p2(0) = '1') else 
        j_fu_90;
    skip_proj_weight_V_0_address0 <= zext_ln291_fu_313_p1(9 - 1 downto 0);

    skip_proj_weight_V_0_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            skip_proj_weight_V_0_ce0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_0_d0 <= trunc_ln293_reg_372;

    skip_proj_weight_V_0_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, select_ln291_fu_297_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (select_ln291_fu_297_p3 = ap_const_lv4_0))) then 
            skip_proj_weight_V_0_we0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_1_address0 <= zext_ln291_fu_313_p1(9 - 1 downto 0);

    skip_proj_weight_V_1_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            skip_proj_weight_V_1_ce0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_1_d0 <= trunc_ln293_reg_372;

    skip_proj_weight_V_1_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, select_ln291_fu_297_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (select_ln291_fu_297_p3 = ap_const_lv4_1))) then 
            skip_proj_weight_V_1_we0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_2_address0 <= zext_ln291_fu_313_p1(9 - 1 downto 0);

    skip_proj_weight_V_2_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            skip_proj_weight_V_2_ce0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_2_d0 <= trunc_ln293_reg_372;

    skip_proj_weight_V_2_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, select_ln291_fu_297_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (select_ln291_fu_297_p3 = ap_const_lv4_2))) then 
            skip_proj_weight_V_2_we0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_3_address0 <= zext_ln291_fu_313_p1(9 - 1 downto 0);

    skip_proj_weight_V_3_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            skip_proj_weight_V_3_ce0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_3_d0 <= trunc_ln293_reg_372;

    skip_proj_weight_V_3_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, select_ln291_fu_297_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (select_ln291_fu_297_p3 = ap_const_lv4_3))) then 
            skip_proj_weight_V_3_we0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_3_we0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_4_address0 <= zext_ln291_fu_313_p1(9 - 1 downto 0);

    skip_proj_weight_V_4_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            skip_proj_weight_V_4_ce0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_4_d0 <= trunc_ln293_reg_372;

    skip_proj_weight_V_4_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, select_ln291_fu_297_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (select_ln291_fu_297_p3 = ap_const_lv4_4))) then 
            skip_proj_weight_V_4_we0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_4_we0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_5_address0 <= zext_ln291_fu_313_p1(9 - 1 downto 0);

    skip_proj_weight_V_5_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            skip_proj_weight_V_5_ce0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_5_d0 <= trunc_ln293_reg_372;

    skip_proj_weight_V_5_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, select_ln291_fu_297_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (select_ln291_fu_297_p3 = ap_const_lv4_5))) then 
            skip_proj_weight_V_5_we0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_5_we0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_6_address0 <= zext_ln291_fu_313_p1(9 - 1 downto 0);

    skip_proj_weight_V_6_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            skip_proj_weight_V_6_ce0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_6_d0 <= trunc_ln293_reg_372;

    skip_proj_weight_V_6_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, select_ln291_fu_297_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (select_ln291_fu_297_p3 = ap_const_lv4_6))) then 
            skip_proj_weight_V_6_we0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_6_we0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_7_address0 <= zext_ln291_fu_313_p1(9 - 1 downto 0);

    skip_proj_weight_V_7_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            skip_proj_weight_V_7_ce0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_7_d0 <= trunc_ln293_reg_372;

    skip_proj_weight_V_7_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, select_ln291_fu_297_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (select_ln291_fu_297_p3 = ap_const_lv4_7))) then 
            skip_proj_weight_V_7_we0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_7_we0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_8_address0 <= zext_ln291_fu_313_p1(9 - 1 downto 0);

    skip_proj_weight_V_8_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            skip_proj_weight_V_8_ce0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_8_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    skip_proj_weight_V_8_d0 <= trunc_ln293_reg_372;

    skip_proj_weight_V_8_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, select_ln291_fu_297_p3)
    begin
        if ((not((select_ln291_fu_297_p3 = ap_const_lv4_0)) and not((select_ln291_fu_297_p3 = ap_const_lv4_1)) and not((select_ln291_fu_297_p3 = ap_const_lv4_2)) and not((select_ln291_fu_297_p3 = ap_const_lv4_3)) and not((select_ln291_fu_297_p3 = ap_const_lv4_4)) and not((select_ln291_fu_297_p3 = ap_const_lv4_5)) and not((select_ln291_fu_297_p3 = ap_const_lv4_6)) and not((select_ln291_fu_297_p3 = ap_const_lv4_7)) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            skip_proj_weight_V_8_we0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_8_we0 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln293_fu_275_p1 <= m_axi_mem_RDATA(28 - 1 downto 0);
    zext_ln291_fu_313_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln291_1_fu_305_p3),64));
end behav;
