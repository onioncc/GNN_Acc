-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_323_5_VITIS_LOOP_324_6 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    num_of_nodes : IN STD_LOGIC_VECTOR (30 downto 0);
    bound : IN STD_LOGIC_VECTOR (61 downto 0);
    connectivity_mask_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    connectivity_mask_ce0 : OUT STD_LOGIC;
    connectivity_mask_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_address1 : OUT STD_LOGIC_VECTOR (13 downto 0);
    connectivity_mask_ce1 : OUT STD_LOGIC;
    connectivity_mask_we1 : OUT STD_LOGIC;
    connectivity_mask_d1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_323_5_VITIS_LOOP_324_6 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv62_0 : STD_LOGIC_VECTOR (61 downto 0) := "00000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_80000000 : STD_LOGIC_VECTOR (31 downto 0) := "10000000000000000000000000000000";
    constant ap_const_lv62_1 : STD_LOGIC_VECTOR (61 downto 0) := "00000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv14_1 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000001";
    constant ap_const_lv14_64 : STD_LOGIC_VECTOR (13 downto 0) := "00000001100100";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter6 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln323_fu_127_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln323_fu_147_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal select_ln323_reg_242 : STD_LOGIC_VECTOR (13 downto 0);
    signal select_ln323_reg_242_pp0_iter2_reg : STD_LOGIC_VECTOR (13 downto 0);
    signal select_ln323_1_fu_155_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal connectivity_mask_addr_reg_253 : STD_LOGIC_VECTOR (13 downto 0);
    signal connectivity_mask_addr_reg_253_pp0_iter5_reg : STD_LOGIC_VECTOR (13 downto 0);
    signal icmp_ln325_fu_187_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln325_reg_259 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln327_fu_193_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln327_reg_263 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln325_fu_183_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal j_fu_54 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln324_fu_173_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_sig_allocacmp_j_3 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal i_fu_58 : STD_LOGIC_VECTOR (13 downto 0);
    signal indvar_flatten7_fu_62 : STD_LOGIC_VECTOR (61 downto 0);
    signal add_ln323_1_fu_132_p2 : STD_LOGIC_VECTOR (61 downto 0);
    signal j_7_cast1_fu_118_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal icmp_ln324_fu_122_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln323_fu_141_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln325_fu_183_p0 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_fu_199_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_fu_199_p0 : STD_LOGIC_VECTOR (13 downto 0);
    signal grp_fu_199_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
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
    mac_muladd_14s_7ns_14ns_14_4_1_U82 : component GAT_compute_one_graph_mac_muladd_14s_7ns_14ns_14_4_1
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
        din0 => grp_fu_199_p0,
        din1 => grp_fu_199_p1,
        din2 => select_ln323_reg_242_pp0_iter2_reg,
        ce => ap_const_logic_1,
        dout => grp_fu_199_p3);

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter5_reg = ap_const_logic_1))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    i_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_58 <= ap_const_lv14_0;
                elsif (((icmp_ln323_fu_127_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_fu_58 <= select_ln323_1_fu_155_p3;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten7_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten7_fu_62 <= ap_const_lv62_0;
                elsif (((icmp_ln323_fu_127_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten7_fu_62 <= add_ln323_1_fu_132_p2;
                end if;
            end if; 
        end if;
    end process;

    j_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    j_fu_54 <= ap_const_lv14_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    j_fu_54 <= add_ln324_fu_173_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
                connectivity_mask_addr_reg_253 <= zext_ln325_fu_183_p1(14 - 1 downto 0);
                connectivity_mask_addr_reg_253_pp0_iter5_reg <= connectivity_mask_addr_reg_253;
                icmp_ln325_reg_259 <= icmp_ln325_fu_187_p2;
                select_ln323_reg_242_pp0_iter2_reg <= select_ln323_reg_242;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln325_fu_187_p2 = ap_const_lv1_0))) then
                icmp_ln327_reg_263 <= icmp_ln327_fu_193_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln323_fu_127_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln323_reg_242 <= select_ln323_fu_147_p3;
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
    add_ln323_1_fu_132_p2 <= std_logic_vector(unsigned(indvar_flatten7_fu_62) + unsigned(ap_const_lv62_1));
    add_ln323_fu_141_p2 <= std_logic_vector(unsigned(i_fu_58) + unsigned(ap_const_lv14_1));
    add_ln324_fu_173_p2 <= std_logic_vector(unsigned(select_ln323_reg_242) + unsigned(ap_const_lv14_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter6 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln323_fu_127_p2)
    begin
        if (((icmp_ln323_fu_127_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter5_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter5_reg = ap_const_logic_1))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6)
    begin
        if (((ap_enable_reg_pp0_iter6 = ap_const_logic_0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_j_3_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, j_fu_54, add_ln324_fu_173_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_3 <= add_ln324_fu_173_p2;
        else 
            ap_sig_allocacmp_j_3 <= j_fu_54;
        end if; 
    end process;

    connectivity_mask_address0 <= zext_ln325_fu_183_p1(14 - 1 downto 0);
    connectivity_mask_address1 <= connectivity_mask_addr_reg_253_pp0_iter5_reg;

    connectivity_mask_ce0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            connectivity_mask_ce0 <= ap_const_logic_1;
        else 
            connectivity_mask_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    connectivity_mask_ce1_assign_proc : process(ap_enable_reg_pp0_iter6, ap_block_pp0_stage0_11001, icmp_ln325_reg_259, icmp_ln327_reg_263)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter6 = ap_const_logic_1) and (icmp_ln325_reg_259 = ap_const_lv1_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter6 = ap_const_logic_1) and (icmp_ln327_reg_263 = ap_const_lv1_1) and (icmp_ln325_reg_259 = ap_const_lv1_0)))) then 
            connectivity_mask_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    connectivity_mask_d1_assign_proc : process(ap_enable_reg_pp0_iter6, icmp_ln325_reg_259, icmp_ln327_reg_263, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter6 = ap_const_logic_1))) then
            if ((icmp_ln325_reg_259 = ap_const_lv1_1)) then 
                connectivity_mask_d1 <= ap_const_lv32_80000000;
            elsif (((icmp_ln327_reg_263 = ap_const_lv1_1) and (icmp_ln325_reg_259 = ap_const_lv1_0))) then 
                connectivity_mask_d1 <= ap_const_lv32_0;
            else 
                connectivity_mask_d1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            connectivity_mask_d1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    connectivity_mask_we1_assign_proc : process(ap_enable_reg_pp0_iter6, ap_block_pp0_stage0_11001, icmp_ln325_reg_259, icmp_ln327_reg_263)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter6 = ap_const_logic_1) and (icmp_ln325_reg_259 = ap_const_lv1_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter6 = ap_const_logic_1) and (icmp_ln327_reg_263 = ap_const_lv1_1) and (icmp_ln325_reg_259 = ap_const_lv1_0)))) then 
            connectivity_mask_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_we1 <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_199_p0 <= 
        add_ln323_fu_141_p2 when (icmp_ln324_fu_122_p2(0) = '1') else 
        i_fu_58;
    grp_fu_199_p1 <= ap_const_lv14_64(7 - 1 downto 0);
    icmp_ln323_fu_127_p2 <= "1" when (indvar_flatten7_fu_62 = bound) else "0";
    icmp_ln324_fu_122_p2 <= "1" when (j_7_cast1_fu_118_p1 = num_of_nodes) else "0";
    icmp_ln325_fu_187_p2 <= "1" when (connectivity_mask_q0 = ap_const_lv32_0) else "0";
    icmp_ln327_fu_193_p2 <= "1" when (signed(connectivity_mask_q0) > signed(ap_const_lv32_0)) else "0";
    j_7_cast1_fu_118_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_j_3),31));
    select_ln323_1_fu_155_p3 <= 
        add_ln323_fu_141_p2 when (icmp_ln324_fu_122_p2(0) = '1') else 
        i_fu_58;
    select_ln323_fu_147_p3 <= 
        ap_const_lv14_0 when (icmp_ln324_fu_122_p2(0) = '1') else 
        ap_sig_allocacmp_j_3;
    zext_ln325_fu_183_p0 <= grp_fu_199_p3;
    zext_ln325_fu_183_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln325_fu_183_p0),64));
end behav;
