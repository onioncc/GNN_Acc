-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GIN_compute_one_graph_global_graph_prediction is
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
    d_out : IN STD_LOGIC_VECTOR (63 downto 0);
    graph_pred_bias_V_0 : IN STD_LOGIC_VECTOR (31 downto 0);
    graph_embedding_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    graph_embedding_V_ce0 : OUT STD_LOGIC;
    graph_embedding_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    graph_pred_weights_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    graph_pred_weights_V_ce0 : OUT STD_LOGIC;
    graph_pred_weights_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of GIN_compute_one_graph_global_graph_prediction is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv9_12C : STD_LOGIC_VECTOR (8 downto 0) := "100101100";
    constant ap_const_lv22_0 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000000";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_35 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110101";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal mem_blk_n_AW : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal mem_blk_n_W : STD_LOGIC;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal mem_blk_n_B : STD_LOGIC;
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal dim_reg_132 : STD_LOGIC_VECTOR (8 downto 0);
    signal lhs_reg_143 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_addr_reg_239 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln336_fu_178_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln336_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln336_reg_250 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal dim_cast_fu_190_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln335_fu_168_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln_fu_158_p4 : STD_LOGIC_VECTOR (61 downto 0);
    signal lhs_1_fu_210_p3 : STD_LOGIC_VECTOR (53 downto 0);
    signal r_V_1_fu_204_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal ret_V_fu_218_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component GIN_compute_one_graph_mul_32s_32s_54_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (53 downto 0) );
    end component;



begin
    mul_32s_32s_54_1_1_U7183 : component GIN_compute_one_graph_mul_32s_32s_54_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 54)
    port map (
        din0 => graph_pred_weights_V_q0,
        din1 => graph_embedding_V_q0,
        dout => r_V_1_fu_204_p2);





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


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
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
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    dim_reg_132_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln336_fu_184_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                dim_reg_132 <= add_ln336_fu_178_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                dim_reg_132 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    lhs_reg_143_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln336_reg_250 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                lhs_reg_143 <= ret_V_fu_218_p2(53 downto 22);
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                lhs_reg_143 <= graph_pred_bias_V_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln336_reg_250 <= icmp_ln336_fu_184_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                mem_addr_reg_239 <= sext_ln335_fu_168_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, m_axi_mem_AWREADY, m_axi_mem_WREADY, m_axi_mem_BVALID, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state10, ap_enable_reg_pp0_iter0, icmp_ln336_fu_184_p2, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((icmp_ln336_fu_184_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((icmp_ln336_fu_184_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                if (((m_axi_mem_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if (((m_axi_mem_WREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((m_axi_mem_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    add_ln336_fu_178_p2 <= std_logic_vector(unsigned(dim_reg_132) + unsigned(ap_const_lv9_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(8);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln336_fu_184_p2)
    begin
        if ((icmp_ln336_fu_184_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_mem_BVALID, ap_CS_fsm_state10)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)) or ((m_axi_mem_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(m_axi_mem_BVALID, ap_CS_fsm_state10)
    begin
        if (((m_axi_mem_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    dim_cast_fu_190_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(dim_reg_132),64));
    graph_embedding_V_address0 <= dim_cast_fu_190_p1(9 - 1 downto 0);

    graph_embedding_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            graph_embedding_V_ce0 <= ap_const_logic_1;
        else 
            graph_embedding_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    graph_pred_weights_V_address0 <= dim_cast_fu_190_p1(9 - 1 downto 0);

    graph_pred_weights_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            graph_pred_weights_V_ce0 <= ap_const_logic_1;
        else 
            graph_pred_weights_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln336_fu_184_p2 <= "1" when (dim_reg_132 = ap_const_lv9_12C) else "0";
    lhs_1_fu_210_p3 <= (lhs_reg_143 & ap_const_lv22_0);
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
    m_axi_mem_AWADDR <= mem_addr_reg_239;
    m_axi_mem_AWBURST <= ap_const_lv2_0;
    m_axi_mem_AWCACHE <= ap_const_lv4_0;
    m_axi_mem_AWID <= ap_const_lv1_0;
    m_axi_mem_AWLEN <= ap_const_lv32_1;
    m_axi_mem_AWLOCK <= ap_const_lv2_0;
    m_axi_mem_AWPROT <= ap_const_lv3_0;
    m_axi_mem_AWQOS <= ap_const_lv4_0;
    m_axi_mem_AWREGION <= ap_const_lv4_0;
    m_axi_mem_AWSIZE <= ap_const_lv3_0;
    m_axi_mem_AWUSER <= ap_const_lv1_0;

    m_axi_mem_AWVALID_assign_proc : process(m_axi_mem_AWREADY, ap_CS_fsm_state4)
    begin
        if (((m_axi_mem_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            m_axi_mem_AWVALID <= ap_const_logic_1;
        else 
            m_axi_mem_AWVALID <= ap_const_logic_0;
        end if; 
    end process;


    m_axi_mem_BREADY_assign_proc : process(m_axi_mem_BVALID, ap_CS_fsm_state10)
    begin
        if (((m_axi_mem_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            m_axi_mem_BREADY <= ap_const_logic_1;
        else 
            m_axi_mem_BREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_mem_RREADY <= ap_const_logic_0;
    m_axi_mem_WDATA <= lhs_reg_143;
    m_axi_mem_WID <= ap_const_lv1_0;
    m_axi_mem_WLAST <= ap_const_logic_0;
    m_axi_mem_WSTRB <= ap_const_lv4_F;
    m_axi_mem_WUSER <= ap_const_lv1_0;

    m_axi_mem_WVALID_assign_proc : process(m_axi_mem_WREADY, ap_CS_fsm_state5)
    begin
        if (((m_axi_mem_WREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            m_axi_mem_WVALID <= ap_const_logic_1;
        else 
            m_axi_mem_WVALID <= ap_const_logic_0;
        end if; 
    end process;


    mem_blk_n_AW_assign_proc : process(m_axi_mem_AWREADY, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            mem_blk_n_AW <= m_axi_mem_AWREADY;
        else 
            mem_blk_n_AW <= ap_const_logic_1;
        end if; 
    end process;


    mem_blk_n_B_assign_proc : process(m_axi_mem_BVALID, ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            mem_blk_n_B <= m_axi_mem_BVALID;
        else 
            mem_blk_n_B <= ap_const_logic_1;
        end if; 
    end process;


    mem_blk_n_W_assign_proc : process(m_axi_mem_WREADY, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            mem_blk_n_W <= m_axi_mem_WREADY;
        else 
            mem_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    ret_V_fu_218_p2 <= std_logic_vector(unsigned(lhs_1_fu_210_p3) + unsigned(r_V_1_fu_204_p2));
        sext_ln335_fu_168_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln_fu_158_p4),64));

    trunc_ln_fu_158_p4 <= d_out(63 downto 2);
end behav;
