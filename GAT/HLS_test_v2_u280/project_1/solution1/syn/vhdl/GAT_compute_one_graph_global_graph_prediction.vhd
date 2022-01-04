-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GAT_compute_one_graph_global_graph_prediction is
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
    task_r : IN STD_LOGIC_VECTOR (63 downto 0);
    pred_linear_bias_V_0 : IN STD_LOGIC_VECTOR (27 downto 0);
    h_graph_V_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    h_graph_V_ce0 : OUT STD_LOGIC;
    h_graph_V_q0 : IN STD_LOGIC_VECTOR (27 downto 0);
    pred_linear_weight_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    pred_linear_weight_V_ce0 : OUT STD_LOGIC;
    pred_linear_weight_V_q0 : IN STD_LOGIC_VECTOR (27 downto 0) );
end;


architecture behav of GAT_compute_one_graph_global_graph_prediction is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
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
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv18_0 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000000";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_2D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101101";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal mem_blk_n_AW : STD_LOGIC;
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal mem_blk_n_W : STD_LOGIC;
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal mem_blk_n_B : STD_LOGIC;
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal mem_addr_reg_262 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln249_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_reg_281 : STD_LOGIC_VECTOR (27 downto 0);
    signal pred_linear_weight_V_load_reg_286 : STD_LOGIC_VECTOR (27 downto 0);
    signal grp_fu_209_p2 : STD_LOGIC_VECTOR (45 downto 0);
    signal r_V_1_reg_301 : STD_LOGIC_VECTOR (45 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal dim_cast_fu_192_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal sext_ln248_fu_157_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lhs_fu_84 : STD_LOGIC_VECTOR (27 downto 0);
    signal dim_fu_88 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln249_fu_186_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln_fu_147_p4 : STD_LOGIC_VECTOR (61 downto 0);
    signal lhs_1_fu_215_p3 : STD_LOGIC_VECTOR (45 downto 0);
    signal ret_V_fu_223_p2 : STD_LOGIC_VECTOR (45 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ST_fsm_state9_blk : STD_LOGIC;
    signal ap_ST_fsm_state10_blk : STD_LOGIC;
    signal ap_ST_fsm_state11_blk : STD_LOGIC;
    signal ap_ST_fsm_state12_blk : STD_LOGIC;
    signal ap_ST_fsm_state13_blk : STD_LOGIC;
    signal ap_ST_fsm_state14_blk : STD_LOGIC;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component GAT_compute_one_graph_mul_28s_28s_46_3_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (27 downto 0);
        din1 : IN STD_LOGIC_VECTOR (27 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (45 downto 0) );
    end component;



begin
    mul_28s_28s_46_3_1_U3982 : component GAT_compute_one_graph_mul_28s_28s_46_3_1
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 28,
        din1_WIDTH => 28,
        dout_WIDTH => 46)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => pred_linear_weight_V_load_reg_286,
        din1 => r_V_reg_281,
        ce => ap_const_logic_1,
        dout => grp_fu_209_p2);





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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    dim_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                dim_fu_88 <= ap_const_lv5_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln249_fu_180_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                dim_fu_88 <= add_ln249_fu_186_p2;
            end if; 
        end if;
    end process;

    lhs_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                lhs_fu_84 <= pred_linear_bias_V_0;
            elsif (((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                lhs_fu_84 <= ret_V_fu_223_p2(45 downto 18);
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                mem_addr_reg_262 <= sext_ln248_fu_157_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                pred_linear_weight_V_load_reg_286 <= pred_linear_weight_V_q0;
                r_V_reg_281 <= h_graph_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                r_V_1_reg_301 <= grp_fu_209_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, m_axi_mem_AWREADY, m_axi_mem_WREADY, m_axi_mem_BVALID, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state14, icmp_ln249_fu_180_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln249_fu_180_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and not(((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln249_fu_180_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state8 => 
                if (((m_axi_mem_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state9 => 
                if (((m_axi_mem_WREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                if (((m_axi_mem_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state14))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state14;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    add_ln249_fu_186_p2 <= std_logic_vector(unsigned(dim_fu_88) + unsigned(ap_const_lv5_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state14 <= ap_CS_fsm(8);
    ap_CS_fsm_state8 <= ap_CS_fsm(2);
    ap_CS_fsm_state9 <= ap_CS_fsm(3);
    ap_ST_fsm_state10_blk <= ap_const_logic_0;
    ap_ST_fsm_state11_blk <= ap_const_logic_0;
    ap_ST_fsm_state12_blk <= ap_const_logic_0;
    ap_ST_fsm_state13_blk <= ap_const_logic_0;

    ap_ST_fsm_state14_blk_assign_proc : process(m_axi_mem_BVALID)
    begin
        if ((m_axi_mem_BVALID = ap_const_logic_0)) then 
            ap_ST_fsm_state14_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state14_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state8_blk_assign_proc : process(m_axi_mem_AWREADY)
    begin
        if ((m_axi_mem_AWREADY = ap_const_logic_0)) then 
            ap_ST_fsm_state8_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state8_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state9_blk_assign_proc : process(m_axi_mem_WREADY)
    begin
        if ((m_axi_mem_WREADY = ap_const_logic_0)) then 
            ap_ST_fsm_state9_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state9_blk <= ap_const_logic_0;
        end if; 
    end process;

        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln249_fu_180_p2)
    begin
        if ((icmp_ln249_fu_180_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_mem_BVALID, ap_CS_fsm_state14)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)) or ((m_axi_mem_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state14)))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5)
    begin
        if (((ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(m_axi_mem_BVALID, ap_CS_fsm_state14)
    begin
        if (((m_axi_mem_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state14))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    dim_cast_fu_192_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(dim_fu_88),64));
    h_graph_V_address0 <= dim_cast_fu_192_p1(7 - 1 downto 0);

    h_graph_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            h_graph_V_ce0 <= ap_const_logic_1;
        else 
            h_graph_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln249_fu_180_p2 <= "1" when (dim_fu_88 = ap_const_lv5_10) else "0";
    lhs_1_fu_215_p3 <= (lhs_fu_84 & ap_const_lv18_0);
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
    m_axi_mem_AWADDR <= mem_addr_reg_262;
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

    m_axi_mem_AWVALID_assign_proc : process(m_axi_mem_AWREADY, ap_CS_fsm_state8)
    begin
        if (((m_axi_mem_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            m_axi_mem_AWVALID <= ap_const_logic_1;
        else 
            m_axi_mem_AWVALID <= ap_const_logic_0;
        end if; 
    end process;


    m_axi_mem_BREADY_assign_proc : process(m_axi_mem_BVALID, ap_CS_fsm_state14)
    begin
        if (((m_axi_mem_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state14))) then 
            m_axi_mem_BREADY <= ap_const_logic_1;
        else 
            m_axi_mem_BREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_mem_RREADY <= ap_const_logic_0;
    m_axi_mem_WDATA <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lhs_fu_84),32));
    m_axi_mem_WID <= ap_const_lv1_0;
    m_axi_mem_WLAST <= ap_const_logic_0;
    m_axi_mem_WSTRB <= ap_const_lv4_F;
    m_axi_mem_WUSER <= ap_const_lv1_0;

    m_axi_mem_WVALID_assign_proc : process(m_axi_mem_WREADY, ap_CS_fsm_state9)
    begin
        if (((m_axi_mem_WREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_mem_WVALID <= ap_const_logic_1;
        else 
            m_axi_mem_WVALID <= ap_const_logic_0;
        end if; 
    end process;


    mem_blk_n_AW_assign_proc : process(m_axi_mem_AWREADY, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            mem_blk_n_AW <= m_axi_mem_AWREADY;
        else 
            mem_blk_n_AW <= ap_const_logic_1;
        end if; 
    end process;


    mem_blk_n_B_assign_proc : process(m_axi_mem_BVALID, ap_CS_fsm_state14)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            mem_blk_n_B <= m_axi_mem_BVALID;
        else 
            mem_blk_n_B <= ap_const_logic_1;
        end if; 
    end process;


    mem_blk_n_W_assign_proc : process(m_axi_mem_WREADY, ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            mem_blk_n_W <= m_axi_mem_WREADY;
        else 
            mem_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    pred_linear_weight_V_address0 <= dim_cast_fu_192_p1(4 - 1 downto 0);

    pred_linear_weight_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            pred_linear_weight_V_ce0 <= ap_const_logic_1;
        else 
            pred_linear_weight_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ret_V_fu_223_p2 <= std_logic_vector(unsigned(lhs_1_fu_215_p3) + unsigned(r_V_1_reg_301));
        sext_ln248_fu_157_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln_fu_147_p4),64));

    trunc_ln_fu_147_p4 <= task_r(63 downto 2);
end behav;
