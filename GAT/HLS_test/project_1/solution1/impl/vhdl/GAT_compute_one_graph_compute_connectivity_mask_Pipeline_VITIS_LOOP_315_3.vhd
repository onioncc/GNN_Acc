-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_315_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    num_of_edges : IN STD_LOGIC_VECTOR (31 downto 0);
    edge_list_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    edge_list_ce0 : OUT STD_LOGIC;
    edge_list_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    edge_list_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    edge_list_ce1 : OUT STD_LOGIC;
    edge_list_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    connectivity_mask_ce0 : OUT STD_LOGIC;
    connectivity_mask_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_address1 : OUT STD_LOGIC_VECTOR (13 downto 0);
    connectivity_mask_ce1 : OUT STD_LOGIC;
    connectivity_mask_we1 : OUT STD_LOGIC;
    connectivity_mask_d1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_315_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv64_FFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv14_64 : STD_LOGIC_VECTOR (13 downto 0) := "00000001100100";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_state6_pp0_stage1_iter2 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal icmp_ln315_reg_238 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln315_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln315_reg_238_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal shl_ln_fu_134_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal shl_ln_reg_242 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal connectivity_mask_addr_reg_267 : STD_LOGIC_VECTOR (13 downto 0);
    signal addr_cmp_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal addr_cmp_reg_273 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln317_fu_198_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln317_reg_278 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal zext_ln317_fu_142_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln317_1_fu_161_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln317_2_fu_170_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal reuse_addr_reg_fu_40 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal reuse_reg_fu_44 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal i_fu_48 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_allocacmp_i_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln315_fu_124_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln317_fu_130_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal or_ln317_fu_156_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln317_2_fu_170_p0 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_fu_208_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal reuse_select_fu_191_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_208_p0 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_fu_208_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_fu_208_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_condition_exit_pp0_iter2_stage0 : STD_LOGIC;
    signal ap_idle_pp0_0to1 : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_1to3 : STD_LOGIC;
    signal ap_done_pending_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (13 downto 0);
        din1 : IN STD_LOGIC_VECTOR (6 downto 0);
        din2 : IN STD_LOGIC_VECTOR (13 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (13 downto 0) );
    end component;


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
    mac_muladd_14s_7ns_14ns_14_4_1_U76 : component GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 14,
        din1_WIDTH => 7,
        din2_WIDTH => 14,
        dout_WIDTH => 14)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_208_p0,
        din1 => grp_fu_208_p1,
        din2 => grp_fu_208_p2,
        ce => ap_const_logic_1,
        dout => grp_fu_208_p3);

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_loop_exit_ready_pp0_iter1_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_idle_pp0_0to1 = ap_const_logic_1) and (ap_const_logic_1 = ap_condition_exit_pp0_iter2_stage0))) then 
                ap_loop_exit_ready_pp0_iter1_reg <= ap_const_logic_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
            end if; 
        end if;
    end process;

    ap_loop_exit_ready_pp0_iter2_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_idle_pp0_0to1 = ap_const_logic_1) and (ap_const_logic_1 = ap_condition_exit_pp0_iter2_stage0))) then 
                ap_loop_exit_ready_pp0_iter2_reg <= ap_const_logic_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
            end if; 
        end if;
    end process;

    i_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln315_fu_118_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_48 <= add_ln315_fu_124_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_48 <= ap_const_lv32_0;
                end if;
            end if; 
        end if;
    end process;

    reuse_addr_reg_fu_40_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    reuse_addr_reg_fu_40 <= ap_const_lv64_FFFFFFFFFFFFFFFF;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    reuse_addr_reg_fu_40 <= zext_ln317_2_fu_170_p1;
                end if;
            end if; 
        end if;
    end process;

    reuse_reg_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    reuse_reg_fu_44 <= ap_const_lv32_0;
                elsif ((ap_enable_reg_pp0_iter3 = ap_const_logic_1)) then 
                    reuse_reg_fu_44 <= add_ln317_reg_278;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                add_ln317_reg_278 <= add_ln317_fu_198_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                addr_cmp_reg_273 <= addr_cmp_fu_177_p2;
                connectivity_mask_addr_reg_267 <= zext_ln317_2_fu_170_p1(14 - 1 downto 0);
                icmp_ln315_reg_238 <= icmp_ln315_fu_118_p2;
                icmp_ln315_reg_238_pp0_iter1_reg <= icmp_ln315_reg_238;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln315_fu_118_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    shl_ln_reg_242(9 downto 1) <= shl_ln_fu_134_p3(9 downto 1);
            end if;
        end if;
    end process;
    shl_ln_reg_242(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_condition_exit_pp0_iter2_stage0, ap_idle_pp0_0to1, ap_idle_pp0_1to3, ap_done_pending_pp0, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if (((ap_idle_pp0_0to1 = ap_const_logic_1) and (ap_const_logic_1 = ap_condition_exit_pp0_iter2_stage0))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_start_int = ap_const_logic_0) and (ap_done_pending_pp0 = ap_const_logic_0) and (ap_idle_pp0_1to3 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln315_fu_124_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_8) + unsigned(ap_const_lv32_1));
    add_ln317_fu_198_p2 <= std_logic_vector(unsigned(reuse_select_fu_191_p3) + unsigned(ap_const_lv32_1));
    addr_cmp_fu_177_p2 <= "1" when (reuse_addr_reg_fu_40 = zext_ln317_2_fu_170_p1) else "0";
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage1_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, icmp_ln315_reg_238)
    begin
        if (((icmp_ln315_reg_238 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter2_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2, icmp_ln315_reg_238_pp0_iter1_reg, ap_block_pp0_stage0_subdone)
    begin
        if (((icmp_ln315_reg_238_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter2_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter2_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_done_pending_pp0_assign_proc : process(ap_loop_exit_ready, ap_loop_exit_ready_pp0_iter1_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (not(((ap_loop_exit_ready = ap_const_logic_0) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_0)))) then 
            ap_done_pending_pp0 <= ap_const_logic_1;
        else 
            ap_done_pending_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0_0to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to3_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0_1to3 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to3 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_8_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_fu_48)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_8 <= ap_const_lv32_0;
        else 
            ap_sig_allocacmp_i_8 <= i_fu_48;
        end if; 
    end process;

    connectivity_mask_address0 <= zext_ln317_2_fu_170_p1(14 - 1 downto 0);
    connectivity_mask_address1 <= connectivity_mask_addr_reg_267;

    connectivity_mask_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            connectivity_mask_ce0 <= ap_const_logic_1;
        else 
            connectivity_mask_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    connectivity_mask_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            connectivity_mask_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_d1 <= add_ln317_reg_278;

    connectivity_mask_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            connectivity_mask_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_we1 <= ap_const_logic_0;
        end if; 
    end process;

    edge_list_address0 <= zext_ln317_1_fu_161_p1(10 - 1 downto 0);
    edge_list_address1 <= zext_ln317_fu_142_p1(10 - 1 downto 0);

    edge_list_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            edge_list_ce0 <= ap_const_logic_1;
        else 
            edge_list_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    edge_list_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            edge_list_ce1 <= ap_const_logic_1;
        else 
            edge_list_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_208_p0 <= edge_list_q1(14 - 1 downto 0);
    grp_fu_208_p1 <= ap_const_lv14_64(7 - 1 downto 0);
    grp_fu_208_p2 <= edge_list_q0(14 - 1 downto 0);
    icmp_ln315_fu_118_p2 <= "1" when (ap_sig_allocacmp_i_8 = num_of_edges) else "0";
    or_ln317_fu_156_p2 <= (shl_ln_reg_242 or ap_const_lv10_1);
    reuse_select_fu_191_p3 <= 
        reuse_reg_fu_44 when (addr_cmp_reg_273(0) = '1') else 
        connectivity_mask_q0;
    shl_ln_fu_134_p3 <= (trunc_ln317_fu_130_p1 & ap_const_lv1_0);
    trunc_ln317_fu_130_p1 <= ap_sig_allocacmp_i_8(9 - 1 downto 0);
    zext_ln317_1_fu_161_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln317_fu_156_p2),64));
    zext_ln317_2_fu_170_p0 <= grp_fu_208_p3;
    zext_ln317_2_fu_170_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln317_2_fu_170_p0),64));
    zext_ln317_fu_142_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_134_p3),64));
end behav;
