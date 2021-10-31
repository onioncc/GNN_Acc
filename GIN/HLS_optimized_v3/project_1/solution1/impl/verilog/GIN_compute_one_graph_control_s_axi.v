// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module GIN_compute_one_graph_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [63:0]                   node_feature_in,
    output wire [63:0]                   edge_list_in,
    output wire [63:0]                   edge_attr_in,
    output wire [63:0]                   graph_attr,
    output wire [63:0]                   task_r,
    output wire [63:0]                   gnn_node_mlp_1_weights_fixed,
    output wire [63:0]                   gnn_node_mlp_1_bias_fixed,
    output wire [63:0]                   gnn_node_mlp_2_weights_fixed,
    output wire [63:0]                   gnn_node_mlp_2_bias_fixed,
    output wire [63:0]                   gnn_node_embedding_fixed,
    output wire [63:0]                   gnn_edge_embedding_fixed,
    output wire [63:0]                   graph_pred_linear_weight_fixed,
    output wire [63:0]                   graph_pred_linear_bias_fixed,
    output wire [63:0]                   eps_fixed,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of node_feature_in
//        bit 31~0 - node_feature_in[31:0] (Read/Write)
// 0x14 : Data signal of node_feature_in
//        bit 31~0 - node_feature_in[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of edge_list_in
//        bit 31~0 - edge_list_in[31:0] (Read/Write)
// 0x20 : Data signal of edge_list_in
//        bit 31~0 - edge_list_in[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of edge_attr_in
//        bit 31~0 - edge_attr_in[31:0] (Read/Write)
// 0x2c : Data signal of edge_attr_in
//        bit 31~0 - edge_attr_in[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of graph_attr
//        bit 31~0 - graph_attr[31:0] (Read/Write)
// 0x38 : Data signal of graph_attr
//        bit 31~0 - graph_attr[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of task_r
//        bit 31~0 - task_r[31:0] (Read/Write)
// 0x44 : Data signal of task_r
//        bit 31~0 - task_r[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of gnn_node_mlp_1_weights_fixed
//        bit 31~0 - gnn_node_mlp_1_weights_fixed[31:0] (Read/Write)
// 0x50 : Data signal of gnn_node_mlp_1_weights_fixed
//        bit 31~0 - gnn_node_mlp_1_weights_fixed[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of gnn_node_mlp_1_bias_fixed
//        bit 31~0 - gnn_node_mlp_1_bias_fixed[31:0] (Read/Write)
// 0x5c : Data signal of gnn_node_mlp_1_bias_fixed
//        bit 31~0 - gnn_node_mlp_1_bias_fixed[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of gnn_node_mlp_2_weights_fixed
//        bit 31~0 - gnn_node_mlp_2_weights_fixed[31:0] (Read/Write)
// 0x68 : Data signal of gnn_node_mlp_2_weights_fixed
//        bit 31~0 - gnn_node_mlp_2_weights_fixed[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of gnn_node_mlp_2_bias_fixed
//        bit 31~0 - gnn_node_mlp_2_bias_fixed[31:0] (Read/Write)
// 0x74 : Data signal of gnn_node_mlp_2_bias_fixed
//        bit 31~0 - gnn_node_mlp_2_bias_fixed[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of gnn_node_embedding_fixed
//        bit 31~0 - gnn_node_embedding_fixed[31:0] (Read/Write)
// 0x80 : Data signal of gnn_node_embedding_fixed
//        bit 31~0 - gnn_node_embedding_fixed[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of gnn_edge_embedding_fixed
//        bit 31~0 - gnn_edge_embedding_fixed[31:0] (Read/Write)
// 0x8c : Data signal of gnn_edge_embedding_fixed
//        bit 31~0 - gnn_edge_embedding_fixed[63:32] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of graph_pred_linear_weight_fixed
//        bit 31~0 - graph_pred_linear_weight_fixed[31:0] (Read/Write)
// 0x98 : Data signal of graph_pred_linear_weight_fixed
//        bit 31~0 - graph_pred_linear_weight_fixed[63:32] (Read/Write)
// 0x9c : reserved
// 0xa0 : Data signal of graph_pred_linear_bias_fixed
//        bit 31~0 - graph_pred_linear_bias_fixed[31:0] (Read/Write)
// 0xa4 : Data signal of graph_pred_linear_bias_fixed
//        bit 31~0 - graph_pred_linear_bias_fixed[63:32] (Read/Write)
// 0xa8 : reserved
// 0xac : Data signal of eps_fixed
//        bit 31~0 - eps_fixed[31:0] (Read/Write)
// 0xb0 : Data signal of eps_fixed
//        bit 31~0 - eps_fixed[63:32] (Read/Write)
// 0xb4 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                               = 8'h00,
    ADDR_GIE                                   = 8'h04,
    ADDR_IER                                   = 8'h08,
    ADDR_ISR                                   = 8'h0c,
    ADDR_NODE_FEATURE_IN_DATA_0                = 8'h10,
    ADDR_NODE_FEATURE_IN_DATA_1                = 8'h14,
    ADDR_NODE_FEATURE_IN_CTRL                  = 8'h18,
    ADDR_EDGE_LIST_IN_DATA_0                   = 8'h1c,
    ADDR_EDGE_LIST_IN_DATA_1                   = 8'h20,
    ADDR_EDGE_LIST_IN_CTRL                     = 8'h24,
    ADDR_EDGE_ATTR_IN_DATA_0                   = 8'h28,
    ADDR_EDGE_ATTR_IN_DATA_1                   = 8'h2c,
    ADDR_EDGE_ATTR_IN_CTRL                     = 8'h30,
    ADDR_GRAPH_ATTR_DATA_0                     = 8'h34,
    ADDR_GRAPH_ATTR_DATA_1                     = 8'h38,
    ADDR_GRAPH_ATTR_CTRL                       = 8'h3c,
    ADDR_TASK_R_DATA_0                         = 8'h40,
    ADDR_TASK_R_DATA_1                         = 8'h44,
    ADDR_TASK_R_CTRL                           = 8'h48,
    ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_0   = 8'h4c,
    ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_1   = 8'h50,
    ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_CTRL     = 8'h54,
    ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_0      = 8'h58,
    ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_1      = 8'h5c,
    ADDR_GNN_NODE_MLP_1_BIAS_FIXED_CTRL        = 8'h60,
    ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_0   = 8'h64,
    ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_1   = 8'h68,
    ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_CTRL     = 8'h6c,
    ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_0      = 8'h70,
    ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_1      = 8'h74,
    ADDR_GNN_NODE_MLP_2_BIAS_FIXED_CTRL        = 8'h78,
    ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_0       = 8'h7c,
    ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_1       = 8'h80,
    ADDR_GNN_NODE_EMBEDDING_FIXED_CTRL         = 8'h84,
    ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_0       = 8'h88,
    ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_1       = 8'h8c,
    ADDR_GNN_EDGE_EMBEDDING_FIXED_CTRL         = 8'h90,
    ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_0 = 8'h94,
    ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_1 = 8'h98,
    ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_CTRL   = 8'h9c,
    ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_0   = 8'ha0,
    ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_1   = 8'ha4,
    ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_CTRL     = 8'ha8,
    ADDR_EPS_FIXED_DATA_0                      = 8'hac,
    ADDR_EPS_FIXED_DATA_1                      = 8'hb0,
    ADDR_EPS_FIXED_CTRL                        = 8'hb4,
    WRIDLE                                     = 2'd0,
    WRDATA                                     = 2'd1,
    WRRESP                                     = 2'd2,
    WRRESET                                    = 2'd3,
    RDIDLE                                     = 2'd0,
    RDDATA                                     = 2'd1,
    RDRESET                                    = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [63:0]                   int_node_feature_in = 'b0;
    reg  [63:0]                   int_edge_list_in = 'b0;
    reg  [63:0]                   int_edge_attr_in = 'b0;
    reg  [63:0]                   int_graph_attr = 'b0;
    reg  [63:0]                   int_task_r = 'b0;
    reg  [63:0]                   int_gnn_node_mlp_1_weights_fixed = 'b0;
    reg  [63:0]                   int_gnn_node_mlp_1_bias_fixed = 'b0;
    reg  [63:0]                   int_gnn_node_mlp_2_weights_fixed = 'b0;
    reg  [63:0]                   int_gnn_node_mlp_2_bias_fixed = 'b0;
    reg  [63:0]                   int_gnn_node_embedding_fixed = 'b0;
    reg  [63:0]                   int_gnn_edge_embedding_fixed = 'b0;
    reg  [63:0]                   int_graph_pred_linear_weight_fixed = 'b0;
    reg  [63:0]                   int_graph_pred_linear_bias_fixed = 'b0;
    reg  [63:0]                   int_eps_fixed = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_NODE_FEATURE_IN_DATA_0: begin
                    rdata <= int_node_feature_in[31:0];
                end
                ADDR_NODE_FEATURE_IN_DATA_1: begin
                    rdata <= int_node_feature_in[63:32];
                end
                ADDR_EDGE_LIST_IN_DATA_0: begin
                    rdata <= int_edge_list_in[31:0];
                end
                ADDR_EDGE_LIST_IN_DATA_1: begin
                    rdata <= int_edge_list_in[63:32];
                end
                ADDR_EDGE_ATTR_IN_DATA_0: begin
                    rdata <= int_edge_attr_in[31:0];
                end
                ADDR_EDGE_ATTR_IN_DATA_1: begin
                    rdata <= int_edge_attr_in[63:32];
                end
                ADDR_GRAPH_ATTR_DATA_0: begin
                    rdata <= int_graph_attr[31:0];
                end
                ADDR_GRAPH_ATTR_DATA_1: begin
                    rdata <= int_graph_attr[63:32];
                end
                ADDR_TASK_R_DATA_0: begin
                    rdata <= int_task_r[31:0];
                end
                ADDR_TASK_R_DATA_1: begin
                    rdata <= int_task_r[63:32];
                end
                ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_0: begin
                    rdata <= int_gnn_node_mlp_1_weights_fixed[31:0];
                end
                ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_1: begin
                    rdata <= int_gnn_node_mlp_1_weights_fixed[63:32];
                end
                ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_0: begin
                    rdata <= int_gnn_node_mlp_1_bias_fixed[31:0];
                end
                ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_1: begin
                    rdata <= int_gnn_node_mlp_1_bias_fixed[63:32];
                end
                ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_0: begin
                    rdata <= int_gnn_node_mlp_2_weights_fixed[31:0];
                end
                ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_1: begin
                    rdata <= int_gnn_node_mlp_2_weights_fixed[63:32];
                end
                ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_0: begin
                    rdata <= int_gnn_node_mlp_2_bias_fixed[31:0];
                end
                ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_1: begin
                    rdata <= int_gnn_node_mlp_2_bias_fixed[63:32];
                end
                ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_0: begin
                    rdata <= int_gnn_node_embedding_fixed[31:0];
                end
                ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_1: begin
                    rdata <= int_gnn_node_embedding_fixed[63:32];
                end
                ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_0: begin
                    rdata <= int_gnn_edge_embedding_fixed[31:0];
                end
                ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_1: begin
                    rdata <= int_gnn_edge_embedding_fixed[63:32];
                end
                ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_0: begin
                    rdata <= int_graph_pred_linear_weight_fixed[31:0];
                end
                ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_1: begin
                    rdata <= int_graph_pred_linear_weight_fixed[63:32];
                end
                ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_0: begin
                    rdata <= int_graph_pred_linear_bias_fixed[31:0];
                end
                ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_1: begin
                    rdata <= int_graph_pred_linear_bias_fixed[63:32];
                end
                ADDR_EPS_FIXED_DATA_0: begin
                    rdata <= int_eps_fixed[31:0];
                end
                ADDR_EPS_FIXED_DATA_1: begin
                    rdata <= int_eps_fixed[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt                      = int_gie & (|int_isr);
assign ap_start                       = int_ap_start;
assign node_feature_in                = int_node_feature_in;
assign edge_list_in                   = int_edge_list_in;
assign edge_attr_in                   = int_edge_attr_in;
assign graph_attr                     = int_graph_attr;
assign task_r                         = int_task_r;
assign gnn_node_mlp_1_weights_fixed   = int_gnn_node_mlp_1_weights_fixed;
assign gnn_node_mlp_1_bias_fixed      = int_gnn_node_mlp_1_bias_fixed;
assign gnn_node_mlp_2_weights_fixed   = int_gnn_node_mlp_2_weights_fixed;
assign gnn_node_mlp_2_bias_fixed      = int_gnn_node_mlp_2_bias_fixed;
assign gnn_node_embedding_fixed       = int_gnn_node_embedding_fixed;
assign gnn_edge_embedding_fixed       = int_gnn_edge_embedding_fixed;
assign graph_pred_linear_weight_fixed = int_graph_pred_linear_weight_fixed;
assign graph_pred_linear_bias_fixed   = int_graph_pred_linear_bias_fixed;
assign eps_fixed                      = int_eps_fixed;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_node_feature_in[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_node_feature_in[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_NODE_FEATURE_IN_DATA_0)
            int_node_feature_in[31:0] <= (WDATA[31:0] & wmask) | (int_node_feature_in[31:0] & ~wmask);
    end
end

// int_node_feature_in[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_node_feature_in[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_NODE_FEATURE_IN_DATA_1)
            int_node_feature_in[63:32] <= (WDATA[31:0] & wmask) | (int_node_feature_in[63:32] & ~wmask);
    end
end

// int_edge_list_in[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_edge_list_in[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_EDGE_LIST_IN_DATA_0)
            int_edge_list_in[31:0] <= (WDATA[31:0] & wmask) | (int_edge_list_in[31:0] & ~wmask);
    end
end

// int_edge_list_in[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_edge_list_in[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_EDGE_LIST_IN_DATA_1)
            int_edge_list_in[63:32] <= (WDATA[31:0] & wmask) | (int_edge_list_in[63:32] & ~wmask);
    end
end

// int_edge_attr_in[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_edge_attr_in[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_EDGE_ATTR_IN_DATA_0)
            int_edge_attr_in[31:0] <= (WDATA[31:0] & wmask) | (int_edge_attr_in[31:0] & ~wmask);
    end
end

// int_edge_attr_in[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_edge_attr_in[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_EDGE_ATTR_IN_DATA_1)
            int_edge_attr_in[63:32] <= (WDATA[31:0] & wmask) | (int_edge_attr_in[63:32] & ~wmask);
    end
end

// int_graph_attr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_graph_attr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GRAPH_ATTR_DATA_0)
            int_graph_attr[31:0] <= (WDATA[31:0] & wmask) | (int_graph_attr[31:0] & ~wmask);
    end
end

// int_graph_attr[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_graph_attr[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GRAPH_ATTR_DATA_1)
            int_graph_attr[63:32] <= (WDATA[31:0] & wmask) | (int_graph_attr[63:32] & ~wmask);
    end
end

// int_task_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_task_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TASK_R_DATA_0)
            int_task_r[31:0] <= (WDATA[31:0] & wmask) | (int_task_r[31:0] & ~wmask);
    end
end

// int_task_r[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_task_r[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TASK_R_DATA_1)
            int_task_r[63:32] <= (WDATA[31:0] & wmask) | (int_task_r[63:32] & ~wmask);
    end
end

// int_gnn_node_mlp_1_weights_fixed[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_node_mlp_1_weights_fixed[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_0)
            int_gnn_node_mlp_1_weights_fixed[31:0] <= (WDATA[31:0] & wmask) | (int_gnn_node_mlp_1_weights_fixed[31:0] & ~wmask);
    end
end

// int_gnn_node_mlp_1_weights_fixed[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_node_mlp_1_weights_fixed[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_NODE_MLP_1_WEIGHTS_FIXED_DATA_1)
            int_gnn_node_mlp_1_weights_fixed[63:32] <= (WDATA[31:0] & wmask) | (int_gnn_node_mlp_1_weights_fixed[63:32] & ~wmask);
    end
end

// int_gnn_node_mlp_1_bias_fixed[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_node_mlp_1_bias_fixed[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_0)
            int_gnn_node_mlp_1_bias_fixed[31:0] <= (WDATA[31:0] & wmask) | (int_gnn_node_mlp_1_bias_fixed[31:0] & ~wmask);
    end
end

// int_gnn_node_mlp_1_bias_fixed[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_node_mlp_1_bias_fixed[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_NODE_MLP_1_BIAS_FIXED_DATA_1)
            int_gnn_node_mlp_1_bias_fixed[63:32] <= (WDATA[31:0] & wmask) | (int_gnn_node_mlp_1_bias_fixed[63:32] & ~wmask);
    end
end

// int_gnn_node_mlp_2_weights_fixed[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_node_mlp_2_weights_fixed[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_0)
            int_gnn_node_mlp_2_weights_fixed[31:0] <= (WDATA[31:0] & wmask) | (int_gnn_node_mlp_2_weights_fixed[31:0] & ~wmask);
    end
end

// int_gnn_node_mlp_2_weights_fixed[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_node_mlp_2_weights_fixed[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_NODE_MLP_2_WEIGHTS_FIXED_DATA_1)
            int_gnn_node_mlp_2_weights_fixed[63:32] <= (WDATA[31:0] & wmask) | (int_gnn_node_mlp_2_weights_fixed[63:32] & ~wmask);
    end
end

// int_gnn_node_mlp_2_bias_fixed[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_node_mlp_2_bias_fixed[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_0)
            int_gnn_node_mlp_2_bias_fixed[31:0] <= (WDATA[31:0] & wmask) | (int_gnn_node_mlp_2_bias_fixed[31:0] & ~wmask);
    end
end

// int_gnn_node_mlp_2_bias_fixed[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_node_mlp_2_bias_fixed[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_NODE_MLP_2_BIAS_FIXED_DATA_1)
            int_gnn_node_mlp_2_bias_fixed[63:32] <= (WDATA[31:0] & wmask) | (int_gnn_node_mlp_2_bias_fixed[63:32] & ~wmask);
    end
end

// int_gnn_node_embedding_fixed[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_node_embedding_fixed[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_0)
            int_gnn_node_embedding_fixed[31:0] <= (WDATA[31:0] & wmask) | (int_gnn_node_embedding_fixed[31:0] & ~wmask);
    end
end

// int_gnn_node_embedding_fixed[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_node_embedding_fixed[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_NODE_EMBEDDING_FIXED_DATA_1)
            int_gnn_node_embedding_fixed[63:32] <= (WDATA[31:0] & wmask) | (int_gnn_node_embedding_fixed[63:32] & ~wmask);
    end
end

// int_gnn_edge_embedding_fixed[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_edge_embedding_fixed[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_0)
            int_gnn_edge_embedding_fixed[31:0] <= (WDATA[31:0] & wmask) | (int_gnn_edge_embedding_fixed[31:0] & ~wmask);
    end
end

// int_gnn_edge_embedding_fixed[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_gnn_edge_embedding_fixed[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GNN_EDGE_EMBEDDING_FIXED_DATA_1)
            int_gnn_edge_embedding_fixed[63:32] <= (WDATA[31:0] & wmask) | (int_gnn_edge_embedding_fixed[63:32] & ~wmask);
    end
end

// int_graph_pred_linear_weight_fixed[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_graph_pred_linear_weight_fixed[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_0)
            int_graph_pred_linear_weight_fixed[31:0] <= (WDATA[31:0] & wmask) | (int_graph_pred_linear_weight_fixed[31:0] & ~wmask);
    end
end

// int_graph_pred_linear_weight_fixed[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_graph_pred_linear_weight_fixed[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GRAPH_PRED_LINEAR_WEIGHT_FIXED_DATA_1)
            int_graph_pred_linear_weight_fixed[63:32] <= (WDATA[31:0] & wmask) | (int_graph_pred_linear_weight_fixed[63:32] & ~wmask);
    end
end

// int_graph_pred_linear_bias_fixed[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_graph_pred_linear_bias_fixed[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_0)
            int_graph_pred_linear_bias_fixed[31:0] <= (WDATA[31:0] & wmask) | (int_graph_pred_linear_bias_fixed[31:0] & ~wmask);
    end
end

// int_graph_pred_linear_bias_fixed[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_graph_pred_linear_bias_fixed[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GRAPH_PRED_LINEAR_BIAS_FIXED_DATA_1)
            int_graph_pred_linear_bias_fixed[63:32] <= (WDATA[31:0] & wmask) | (int_graph_pred_linear_bias_fixed[63:32] & ~wmask);
    end
end

// int_eps_fixed[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_eps_fixed[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_EPS_FIXED_DATA_0)
            int_eps_fixed[31:0] <= (WDATA[31:0] & wmask) | (int_eps_fixed[31:0] & ~wmask);
    end
end

// int_eps_fixed[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_eps_fixed[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_EPS_FIXED_DATA_1)
            int_eps_fixed[63:32] <= (WDATA[31:0] & wmask) | (int_eps_fixed[63:32] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
