-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity GIN_compute_one_graph_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 8;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    node_feature_in       :out  STD_LOGIC_VECTOR(63 downto 0);
    edge_list_in          :out  STD_LOGIC_VECTOR(63 downto 0);
    edge_attr_in          :out  STD_LOGIC_VECTOR(63 downto 0);
    graph_attr            :out  STD_LOGIC_VECTOR(63 downto 0);
    task_r                :out  STD_LOGIC_VECTOR(63 downto 0);
    gnn_node_mlp_1_weights_fixed :out  STD_LOGIC_VECTOR(63 downto 0);
    gnn_node_mlp_1_bias_fixed :out  STD_LOGIC_VECTOR(63 downto 0);
    gnn_node_mlp_2_weights_fixed :out  STD_LOGIC_VECTOR(63 downto 0);
    gnn_node_mlp_2_bias_fixed :out  STD_LOGIC_VECTOR(63 downto 0);
    gnn_node_embedding_fixed :out  STD_LOGIC_VECTOR(63 downto 0);
    gnn_edge_embedding_fixed :out  STD_LOGIC_VECTOR(63 downto 0);
    graph_pred_linear_weight_fixed :out  STD_LOGIC_VECTOR(63 downto 0);
    graph_pred_linear_bias_fixed :out  STD_LOGIC_VECTOR(63 downto 0);
    eps_fixed             :out  STD_LOGIC_VECTOR(63 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity GIN_compute_one_graph_control_s_axi;

-- ------------------------Address Info-------------------
-- 0x00 : Control signals
--        bit 0  - ap_start (Read/Write/COH)
--        bit 1  - ap_done (Read/COR)
--        bit 2  - ap_idle (Read)
--        bit 3  - ap_ready (Read)
--        bit 7  - auto_restart (Read/Write)
--        others - reserved
-- 0x04 : Global Interrupt Enable Register
--        bit 0  - Global Interrupt Enable (Read/Write)
--        others - reserved
-- 0x08 : IP Interrupt Enable Register (Read/Write)
--        bit 0  - enable ap_done interrupt (Read/Write)
--        bit 1  - enable ap_ready interrupt (Read/Write)
--        others - reserved
-- 0x0c : IP Interrupt Status Register (Read/TOW)
--        bit 0  - ap_done (COR/TOW)
--        bit 1  - ap_ready (COR/TOW)
--        others - reserved
-- 0x10 : Data signal of node_feature_in
--        bit 31~0 - node_feature_in[31:0] (Read/Write)
-- 0x14 : Data signal of node_feature_in
--        bit 31~0 - node_feature_in[63:32] (Read/Write)
-- 0x18 : reserved
-- 0x1c : Data signal of edge_list_in
--        bit 31~0 - edge_list_in[31:0] (Read/Write)
-- 0x20 : Data signal of edge_list_in
--        bit 31~0 - edge_list_in[63:32] (Read/Write)
-- 0x24 : reserved
-- 0x28 : Data signal of edge_attr_in
--        bit 31~0 - edge_attr_in[31:0] (Read/Write)
-- 0x2c : Data signal of edge_attr_in
--        bit 31~0 - edge_attr_in[63:32] (Read/Write)
-- 0x30 : reserved
-- 0x34 : Data signal of graph_attr
--        bit 31~0 - graph_attr[31:0] (Read/Write)
-- 0x38 : Data signal of graph_attr
--        bit 31~0 - graph_attr[63:32] (Read/Write)
-- 0x3c : reserved
-- 0x40 : Data signal of task_r
--        bit 31~0 - task_r[31:0] (Read/Write)
-- 0x44 : Data signal of task_r
--        bit 31~0 - task_r[63:32] (Read/Write)
-- 0x48 : reserved
-- 0x4c : Data signal of gnn_node_mlp_1_weights_fixed
--        bit 31~0 - gnn_node_mlp_1_weights_fixed[31:0] (Read/Write)
-- 0x50 : Data signal of gnn_node_mlp_1_weights_fixed
--        bit 31~0 - gnn_node_mlp_1_weights_fixed[63:32] (Read/Write)
-- 0x54 : reserved
-- 0x58 : Data signal of gnn_node_mlp_1_bias_fixed
--        bit 31~0 - gnn_node_mlp_1_bias_fixed[31:0] (Read/Write)
-- 0x5c : Data signal of gnn_node_mlp_1_bias_fixed
--        bit 31~0 - gnn_node_mlp_1_bias_fixed[63:32] (Read/Write)
-- 0x60 : reserved
-- 0x64 : Data signal of gnn_node_mlp_2_weights_fixed
--        bit 31~0 - gnn_node_mlp_2_weights_fixed[31:0] (Read/Write)
-- 0x68 : Data signal of gnn_node_mlp_2_weights_fixed
--        bit 31~0 - gnn_node_mlp_2_weights_fixed[63:32] (Read/Write)
-- 0x6c : reserved
-- 0x70 : Data signal of gnn_node_mlp_2_bias_fixed
--        bit 31~0 - gnn_node_mlp_2_bias_fixed[31:0] (Read/Write)
-- 0x74 : Data signal of gnn_node_mlp_2_bias_fixed
--        bit 31~0 - gnn_node_mlp_2_bias_fixed[63:32] (Read/Write)
-- 0x78 : reserved
-- 0x7c : Data signal of gnn_node_embedding_fixed
--        bit 31~0 - gnn_node_embedding_fixed[31:0] (Read/Write)
-- 0x80 : Data signal of gnn_node_embedding_fixed
--        bit 31~0 - gnn_node_embedding_fixed[63:32] (Read/Write)
-- 0x84 : reserved
-- 0x88 : Data signal of gnn_edge_embedding_fixed
--        bit 31~0 - gnn_edge_embedding_fixed[31:0] (Read/Write)
-- 0x8c : Data signal of gnn_edge_embedding_fixed
--        bit 31~0 - gnn_edge_embedding_fixed[63:32] (Read/Write)
-- 0x90 : reserved
-- 0x94 : Data signal of graph_pred_linear_weight_fixed
--        bit 31~0 - graph_pred_linear_weight_fixed[31:0] (Read/Write)
-- 0x98 : Data signal of graph_pred_linear_weight_fixed
--        bit 31~0 - graph_pred_linear_weight_fixed[63:32] (Read/Write)
-- 0x9c : reserved
-- 0xa0 : Data signal of graph_pred_linear_bias_fixed
--        bit 31~0 - graph_pred_linear_bias_fixed[31:0] (Read/Write)
-- 0xa4 : Data signal of graph_pred_linear_bias_fixed
--        bit 31~0 - graph_pred_linear_bias_fixed[63:32] (Read/Write)
-- 0xa8 : reserved
-- 0xac : Data signal of eps_fixed
--        bit 31~0 - eps_fixed[31:0] (Read/Write)
-- 0xb0 : Data signal of eps_fixed
--        bit 31~0 - eps_fixed[63:32] (Read/Write)
-- 0xb4 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of GIN_compute_one_graph_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL                               : INTEGER := 16#00#;
    constant ADDR_GIE                                   : INTEGER := 16#04#;
    constant ADDR_IER                                   : INTEGER := 16#08#;
    constant ADDR_ISR                                   : INTEGER := 16#0c#;
    constant ADDR_NODE_FEATURE_IN_DATA_0                : INTEGER := 16#10#;
    constant ADDR_NODE_FEATURE_IN_DATA_1                : INTEGER := 16#14#;
    constant ADDR_NODE_FEATURE_IN_CTRL                  : INTEGER := 16#18#;
    constant ADDR_EDGE_LIST_IN_DATA_0                   : INTEGER := 16#1c#;
    constant ADDR_EDGE_LIST_IN_DATA_1                   : INTEGER := 16#20#;
    constant ADDR_EDGE_LIST_IN_CTRL                     : INTEGER := 16#24#;
    constant ADDR_EDGE_ATTR_IN_DATA_0                   : INTEGER := 16#28#;
    constant ADDR_EDGE_ATTR_IN_DATA_1                   : INTEGER := 16#2c#;
    constant ADDR_EDGE_ATTR_IN_CTRL                     : INTEGER := 16#30#;
    constant ADDR_GRAPH_ATTR_DATA_0                     : INTEGER := 16#34#;
    constant ADDR_GRAPH_ATTR_DATA_1                     : INTEGER := 16#38#;
    constant ADDR_GRAPH_ATTR_CTRL                       : INTEGER := 16#3c#;
    constant ADDR_TASK_R_DATA_0                         : INTEGER := 16#40#;
    constant ADDR_TASK_R_DATA_1                         : INTEGER := 16#44#;
    constant ADDR_TASK_R_CTRL                           : INTEGER := 16#48#;
    constant ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_0   : INTEGER := 16#4c#;
    constant ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_1   : INTEGER := 16#50#;
    constant ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_CTRL     : INTEGER := 16#54#;
    constant ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_0      : INTEGER := 16#58#;
    constant ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_1      : INTEGER := 16#5c#;
    constant ADDR_GNN_NODE_MLP_1_BIAS_FIXED_CTRL        : INTEGER := 16#60#;
    constant ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_0   : INTEGER := 16#64#;
    constant ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_1   : INTEGER := 16#68#;
    constant ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_CTRL     : INTEGER := 16#6c#;
    constant ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_0      : INTEGER := 16#70#;
    constant ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_1      : INTEGER := 16#74#;
    constant ADDR_GNN_NODE_MLP_2_BIAS_FIXED_CTRL        : INTEGER := 16#78#;
    constant ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_0       : INTEGER := 16#7c#;
    constant ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_1       : INTEGER := 16#80#;
    constant ADDR_GNN_NODE_EMBEDDING_FIXED_CTRL         : INTEGER := 16#84#;
    constant ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_0       : INTEGER := 16#88#;
    constant ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_1       : INTEGER := 16#8c#;
    constant ADDR_GNN_EDGE_EMBEDDING_FIXED_CTRL         : INTEGER := 16#90#;
    constant ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_0 : INTEGER := 16#94#;
    constant ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_1 : INTEGER := 16#98#;
    constant ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_CTRL   : INTEGER := 16#9c#;
    constant ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_0   : INTEGER := 16#a0#;
    constant ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_1   : INTEGER := 16#a4#;
    constant ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_CTRL     : INTEGER := 16#a8#;
    constant ADDR_EPS_FIXED_DATA_0                      : INTEGER := 16#ac#;
    constant ADDR_EPS_FIXED_DATA_1                      : INTEGER := 16#b0#;
    constant ADDR_EPS_FIXED_CTRL                        : INTEGER := 16#b4#;
    constant ADDR_BITS         : INTEGER := 8;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC;
    signal int_ap_ready        : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_node_feature_in : UNSIGNED(63 downto 0) := (others => '0');
    signal int_edge_list_in    : UNSIGNED(63 downto 0) := (others => '0');
    signal int_edge_attr_in    : UNSIGNED(63 downto 0) := (others => '0');
    signal int_graph_attr      : UNSIGNED(63 downto 0) := (others => '0');
    signal int_task_r          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_gnn_node_mlp_1_weights_fixed : UNSIGNED(63 downto 0) := (others => '0');
    signal int_gnn_node_mlp_1_bias_fixed : UNSIGNED(63 downto 0) := (others => '0');
    signal int_gnn_node_mlp_2_weights_fixed : UNSIGNED(63 downto 0) := (others => '0');
    signal int_gnn_node_mlp_2_bias_fixed : UNSIGNED(63 downto 0) := (others => '0');
    signal int_gnn_node_embedding_fixed : UNSIGNED(63 downto 0) := (others => '0');
    signal int_gnn_edge_embedding_fixed : UNSIGNED(63 downto 0) := (others => '0');
    signal int_graph_pred_linear_weight_fixed : UNSIGNED(63 downto 0) := (others => '0');
    signal int_graph_pred_linear_bias_fixed : UNSIGNED(63 downto 0) := (others => '0');
    signal int_eps_fixed       : UNSIGNED(63 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_NODE_FEATURE_IN_DATA_0 =>
                        rdata_data <= RESIZE(int_node_feature_in(31 downto 0), 32);
                    when ADDR_NODE_FEATURE_IN_DATA_1 =>
                        rdata_data <= RESIZE(int_node_feature_in(63 downto 32), 32);
                    when ADDR_EDGE_LIST_IN_DATA_0 =>
                        rdata_data <= RESIZE(int_edge_list_in(31 downto 0), 32);
                    when ADDR_EDGE_LIST_IN_DATA_1 =>
                        rdata_data <= RESIZE(int_edge_list_in(63 downto 32), 32);
                    when ADDR_EDGE_ATTR_IN_DATA_0 =>
                        rdata_data <= RESIZE(int_edge_attr_in(31 downto 0), 32);
                    when ADDR_EDGE_ATTR_IN_DATA_1 =>
                        rdata_data <= RESIZE(int_edge_attr_in(63 downto 32), 32);
                    when ADDR_GRAPH_ATTR_DATA_0 =>
                        rdata_data <= RESIZE(int_graph_attr(31 downto 0), 32);
                    when ADDR_GRAPH_ATTR_DATA_1 =>
                        rdata_data <= RESIZE(int_graph_attr(63 downto 32), 32);
                    when ADDR_TASK_R_DATA_0 =>
                        rdata_data <= RESIZE(int_task_r(31 downto 0), 32);
                    when ADDR_TASK_R_DATA_1 =>
                        rdata_data <= RESIZE(int_task_r(63 downto 32), 32);
                    when ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_0 =>
                        rdata_data <= RESIZE(int_gnn_node_mlp_1_weights_fixed(31 downto 0), 32);
                    when ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_1 =>
                        rdata_data <= RESIZE(int_gnn_node_mlp_1_weights_fixed(63 downto 32), 32);
                    when ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_0 =>
                        rdata_data <= RESIZE(int_gnn_node_mlp_1_bias_fixed(31 downto 0), 32);
                    when ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_1 =>
                        rdata_data <= RESIZE(int_gnn_node_mlp_1_bias_fixed(63 downto 32), 32);
                    when ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_0 =>
                        rdata_data <= RESIZE(int_gnn_node_mlp_2_weights_fixed(31 downto 0), 32);
                    when ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_1 =>
                        rdata_data <= RESIZE(int_gnn_node_mlp_2_weights_fixed(63 downto 32), 32);
                    when ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_0 =>
                        rdata_data <= RESIZE(int_gnn_node_mlp_2_bias_fixed(31 downto 0), 32);
                    when ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_1 =>
                        rdata_data <= RESIZE(int_gnn_node_mlp_2_bias_fixed(63 downto 32), 32);
                    when ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_0 =>
                        rdata_data <= RESIZE(int_gnn_node_embedding_fixed(31 downto 0), 32);
                    when ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_1 =>
                        rdata_data <= RESIZE(int_gnn_node_embedding_fixed(63 downto 32), 32);
                    when ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_0 =>
                        rdata_data <= RESIZE(int_gnn_edge_embedding_fixed(31 downto 0), 32);
                    when ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_1 =>
                        rdata_data <= RESIZE(int_gnn_edge_embedding_fixed(63 downto 32), 32);
                    when ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_0 =>
                        rdata_data <= RESIZE(int_graph_pred_linear_weight_fixed(31 downto 0), 32);
                    when ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_1 =>
                        rdata_data <= RESIZE(int_graph_pred_linear_weight_fixed(63 downto 32), 32);
                    when ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_0 =>
                        rdata_data <= RESIZE(int_graph_pred_linear_bias_fixed(31 downto 0), 32);
                    when ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_1 =>
                        rdata_data <= RESIZE(int_graph_pred_linear_bias_fixed(63 downto 32), 32);
                    when ADDR_EPS_FIXED_DATA_0 =>
                        rdata_data <= RESIZE(int_eps_fixed(31 downto 0), 32);
                    when ADDR_EPS_FIXED_DATA_1 =>
                        rdata_data <= RESIZE(int_eps_fixed(63 downto 32), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1));
    ap_start             <= int_ap_start;
    node_feature_in      <= STD_LOGIC_VECTOR(int_node_feature_in);
    edge_list_in         <= STD_LOGIC_VECTOR(int_edge_list_in);
    edge_attr_in         <= STD_LOGIC_VECTOR(int_edge_attr_in);
    graph_attr           <= STD_LOGIC_VECTOR(int_graph_attr);
    task_r               <= STD_LOGIC_VECTOR(int_task_r);
    gnn_node_mlp_1_weights_fixed <= STD_LOGIC_VECTOR(int_gnn_node_mlp_1_weights_fixed);
    gnn_node_mlp_1_bias_fixed <= STD_LOGIC_VECTOR(int_gnn_node_mlp_1_bias_fixed);
    gnn_node_mlp_2_weights_fixed <= STD_LOGIC_VECTOR(int_gnn_node_mlp_2_weights_fixed);
    gnn_node_mlp_2_bias_fixed <= STD_LOGIC_VECTOR(int_gnn_node_mlp_2_bias_fixed);
    gnn_node_embedding_fixed <= STD_LOGIC_VECTOR(int_gnn_node_embedding_fixed);
    gnn_edge_embedding_fixed <= STD_LOGIC_VECTOR(int_gnn_edge_embedding_fixed);
    graph_pred_linear_weight_fixed <= STD_LOGIC_VECTOR(int_graph_pred_linear_weight_fixed);
    graph_pred_linear_bias_fixed <= STD_LOGIC_VECTOR(int_graph_pred_linear_bias_fixed);
    eps_fixed            <= STD_LOGIC_VECTOR(int_eps_fixed);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (ap_done = '1') then
                    int_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_ready <= ap_ready;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= "00";
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_NODE_FEATURE_IN_DATA_0) then
                    int_node_feature_in(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_node_feature_in(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_NODE_FEATURE_IN_DATA_1) then
                    int_node_feature_in(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_node_feature_in(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_EDGE_LIST_IN_DATA_0) then
                    int_edge_list_in(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_edge_list_in(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_EDGE_LIST_IN_DATA_1) then
                    int_edge_list_in(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_edge_list_in(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_EDGE_ATTR_IN_DATA_0) then
                    int_edge_attr_in(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_edge_attr_in(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_EDGE_ATTR_IN_DATA_1) then
                    int_edge_attr_in(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_edge_attr_in(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GRAPH_ATTR_DATA_0) then
                    int_graph_attr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_graph_attr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GRAPH_ATTR_DATA_1) then
                    int_graph_attr(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_graph_attr(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TASK_R_DATA_0) then
                    int_task_r(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_task_r(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_TASK_R_DATA_1) then
                    int_task_r(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_task_r(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_0) then
                    int_gnn_node_mlp_1_weights_fixed(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_node_mlp_1_weights_fixed(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_1) then
                    int_gnn_node_mlp_1_weights_fixed(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_node_mlp_1_weights_fixed(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_0) then
                    int_gnn_node_mlp_1_bias_fixed(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_node_mlp_1_bias_fixed(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_1) then
                    int_gnn_node_mlp_1_bias_fixed(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_node_mlp_1_bias_fixed(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_0) then
                    int_gnn_node_mlp_2_weights_fixed(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_node_mlp_2_weights_fixed(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_1) then
                    int_gnn_node_mlp_2_weights_fixed(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_node_mlp_2_weights_fixed(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_0) then
                    int_gnn_node_mlp_2_bias_fixed(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_node_mlp_2_bias_fixed(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_1) then
                    int_gnn_node_mlp_2_bias_fixed(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_node_mlp_2_bias_fixed(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_0) then
                    int_gnn_node_embedding_fixed(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_node_embedding_fixed(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_1) then
                    int_gnn_node_embedding_fixed(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_node_embedding_fixed(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_0) then
                    int_gnn_edge_embedding_fixed(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_edge_embedding_fixed(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_1) then
                    int_gnn_edge_embedding_fixed(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gnn_edge_embedding_fixed(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_0) then
                    int_graph_pred_linear_weight_fixed(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_graph_pred_linear_weight_fixed(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_1) then
                    int_graph_pred_linear_weight_fixed(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_graph_pred_linear_weight_fixed(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_0) then
                    int_graph_pred_linear_bias_fixed(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_graph_pred_linear_bias_fixed(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_1) then
                    int_graph_pred_linear_bias_fixed(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_graph_pred_linear_bias_fixed(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_EPS_FIXED_DATA_0) then
                    int_eps_fixed(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_eps_fixed(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_EPS_FIXED_DATA_1) then
                    int_eps_fixed(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_eps_fixed(63 downto 32));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
