// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_exp_28_10_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [27:0] x;
output  [27:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_pp0_stage0_subdone;
wire   [2:0] f_x_msb_4_h_table_V_address0;
reg    f_x_msb_4_h_table_V_ce0;
wire   [5:0] f_x_msb_4_h_table_V_q0;
wire   [2:0] f_x_msb_4_l_table_V_address0;
reg    f_x_msb_4_l_table_V_ce0;
wire   [6:0] f_x_msb_4_l_table_V_q0;
wire   [4:0] f_x_msb_3_table_V_address0;
reg    f_x_msb_3_table_V_ce0;
wire   [31:0] f_x_msb_3_table_V_q0;
wire   [7:0] f_x_msb_2_table_V_address0;
reg    f_x_msb_2_table_V_ce0;
wire   [45:0] f_x_msb_2_table_V_q0;
wire   [7:0] exp_x_msb_1_table_V_address0;
reg    exp_x_msb_1_table_V_ce0;
wire   [49:0] exp_x_msb_1_table_V_q0;
wire   [0:0] tmp_fu_249_p3;
reg   [0:0] tmp_reg_779;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_779_pp0_iter1_reg;
reg   [0:0] tmp_reg_779_pp0_iter2_reg;
reg   [0:0] tmp_reg_779_pp0_iter3_reg;
reg   [0:0] tmp_reg_779_pp0_iter4_reg;
reg   [0:0] tmp_reg_779_pp0_iter5_reg;
reg   [0:0] tmp_reg_779_pp0_iter6_reg;
reg   [0:0] tmp_reg_779_pp0_iter7_reg;
reg   [0:0] tmp_reg_779_pp0_iter8_reg;
reg   [0:0] tmp_reg_779_pp0_iter9_reg;
reg   [0:0] tmp_reg_779_pp0_iter10_reg;
reg   [0:0] tmp_reg_779_pp0_iter11_reg;
reg   [6:0] p_Result_s_reg_785;
reg   [6:0] p_Result_s_reg_785_pp0_iter1_reg;
reg   [6:0] p_Result_s_reg_785_pp0_iter2_reg;
reg   [6:0] p_Result_s_reg_785_pp0_iter3_reg;
reg   [6:0] p_Result_s_reg_785_pp0_iter4_reg;
reg   [6:0] p_Result_s_reg_785_pp0_iter5_reg;
reg   [6:0] p_Result_s_reg_785_pp0_iter6_reg;
reg   [7:0] tmp_16_reg_790;
reg   [7:0] tmp_16_reg_790_pp0_iter1_reg;
reg   [7:0] tmp_16_reg_790_pp0_iter2_reg;
reg   [7:0] tmp_16_reg_790_pp0_iter3_reg;
wire   [4:0] tmp_17_fu_365_p4;
reg   [4:0] tmp_17_reg_796;
reg   [4:0] tmp_17_reg_796_pp0_iter1_reg;
reg   [4:0] tmp_17_reg_796_pp0_iter2_reg;
reg   [4:0] tmp_17_reg_796_pp0_iter3_reg;
wire   [1:0] trunc_ln640_1_fu_375_p1;
reg   [1:0] trunc_ln640_1_reg_802;
reg   [1:0] trunc_ln640_1_reg_802_pp0_iter1_reg;
wire   [0:0] or_ln300_1_fu_404_p2;
reg   [0:0] or_ln300_1_reg_822;
reg   [0:0] or_ln300_1_reg_822_pp0_iter1_reg;
reg   [0:0] or_ln300_1_reg_822_pp0_iter2_reg;
reg   [0:0] or_ln300_1_reg_822_pp0_iter3_reg;
reg   [0:0] or_ln300_1_reg_822_pp0_iter4_reg;
reg   [0:0] or_ln300_1_reg_822_pp0_iter5_reg;
reg   [0:0] or_ln300_1_reg_822_pp0_iter6_reg;
reg   [0:0] or_ln300_1_reg_822_pp0_iter7_reg;
reg   [0:0] or_ln300_1_reg_822_pp0_iter8_reg;
reg   [0:0] or_ln300_1_reg_822_pp0_iter9_reg;
reg   [0:0] or_ln300_1_reg_822_pp0_iter10_reg;
reg   [0:0] or_ln300_1_reg_822_pp0_iter11_reg;
wire   [0:0] or_ln300_3_fu_416_p2;
reg   [0:0] or_ln300_3_reg_827;
reg   [0:0] or_ln300_3_reg_827_pp0_iter1_reg;
reg   [0:0] or_ln300_3_reg_827_pp0_iter2_reg;
reg   [0:0] or_ln300_3_reg_827_pp0_iter3_reg;
reg   [0:0] or_ln300_3_reg_827_pp0_iter4_reg;
reg   [0:0] or_ln300_3_reg_827_pp0_iter5_reg;
reg   [0:0] or_ln300_3_reg_827_pp0_iter6_reg;
reg   [0:0] or_ln300_3_reg_827_pp0_iter7_reg;
reg   [0:0] or_ln300_3_reg_827_pp0_iter8_reg;
reg   [0:0] or_ln300_3_reg_827_pp0_iter9_reg;
reg   [0:0] or_ln300_3_reg_827_pp0_iter10_reg;
reg   [0:0] or_ln300_3_reg_827_pp0_iter11_reg;
reg   [5:0] f_x_msb_4_h_V_reg_832;
reg   [6:0] f_x_msb_4_l_V_reg_837;
reg   [31:0] f_x_msb_3_V_reg_842;
reg   [31:0] f_x_msb_3_V_reg_842_pp0_iter2_reg;
reg   [31:0] f_x_msb_3_V_reg_842_pp0_iter3_reg;
wire   [41:0] p_Result_5_fu_422_p6;
reg   [41:0] p_Result_5_reg_848;
reg   [41:0] p_Result_5_reg_848_pp0_iter3_reg;
reg   [30:0] trunc_ln_reg_863;
wire   [47:0] exp_x_msb_3_4_lsb_m_1_V_fu_499_p2;
reg   [47:0] exp_x_msb_3_4_lsb_m_1_V_reg_873;
reg   [47:0] exp_x_msb_3_4_lsb_m_1_V_reg_873_pp0_iter5_reg;
reg   [47:0] exp_x_msb_3_4_lsb_m_1_V_reg_873_pp0_iter6_reg;
reg   [47:0] exp_x_msb_3_4_lsb_m_1_V_reg_873_pp0_iter7_reg;
wire   [8:0] ret_V_3_fu_522_p2;
reg   [8:0] ret_V_3_reg_879;
reg   [8:0] ret_V_3_reg_879_pp0_iter5_reg;
reg   [8:0] ret_V_3_reg_879_pp0_iter6_reg;
reg   [8:0] ret_V_3_reg_879_pp0_iter7_reg;
wire   [40:0] trunc_ln640_2_fu_528_p1;
reg   [40:0] trunc_ln640_2_reg_885;
reg   [40:0] trunc_ln640_2_reg_885_pp0_iter5_reg;
reg   [40:0] trunc_ln640_2_reg_885_pp0_iter6_reg;
reg   [40:0] trunc_ln640_2_reg_885_pp0_iter7_reg;
reg   [45:0] trunc_ln1245_1_reg_901;
reg   [49:0] exp_x_msb_2_3_4_lsb_m_1_V_reg_911;
reg   [49:0] exp_x_msb_1_V_reg_916;
reg   [49:0] exp_x_msb_1_V_reg_916_pp0_iter9_reg;
reg   [49:0] exp_x_msb_1_V_reg_916_pp0_iter10_reg;
reg   [49:0] exp_x_msb_1_V_reg_916_pp0_iter11_reg;
reg   [47:0] trunc_ln712_2_reg_932;
wire   [63:0] zext_ln573_fu_387_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln573_1_fu_393_p1;
wire   [63:0] zext_ln573_2_fu_465_p1;
wire   [63:0] zext_ln573_3_fu_567_p1;
wire   [17:0] trunc_ln640_fu_237_p1;
wire   [0:0] tmp_3_fu_257_p3;
wire   [0:0] tmp_4_fu_271_p3;
wire   [0:0] tmp_5_fu_285_p3;
wire   [0:0] tmp_6_fu_299_p3;
wire   [0:0] tmp_7_fu_313_p3;
wire   [4:0] p_Result_2_fu_227_p4;
wire   [22:0] p_Result_3_fu_241_p3;
wire   [0:0] icmp_ln1551_fu_327_p2;
wire   [0:0] icmp_ln1549_fu_333_p2;
wire   [2:0] tmp_18_fu_379_p3;
wire   [0:0] overf_fu_265_p2;
wire   [0:0] xor_ln222_3_fu_293_p2;
wire   [0:0] or_ln300_fu_398_p2;
wire   [0:0] xor_ln222_2_fu_279_p2;
wire   [0:0] xor_ln222_fu_321_p2;
wire   [0:0] and_ln300_fu_339_p2;
wire   [0:0] or_ln300_2_fu_410_p2;
wire   [0:0] xor_ln222_4_fu_307_p2;
wire   [43:0] p_Result_6_fu_433_p4;
wire   [43:0] grp_fu_449_p0;
wire   [41:0] grp_fu_449_p1;
wire   [85:0] grp_fu_449_p2;
wire   [46:0] rhs_1_fu_472_p5;
wire   [42:0] zext_ln712_fu_486_p1;
wire   [42:0] zext_ln1245_fu_469_p1;
wire   [42:0] add_ln712_fu_489_p2;
wire   [47:0] zext_ln712_1_fu_495_p1;
wire   [47:0] zext_ln1245_1_fu_482_p1;
wire   [4:0] p_Result_7_fu_505_p4;
wire   [8:0] zext_ln712_4_fu_519_p1;
wire   [8:0] zext_ln712_2_fu_515_p1;
wire   [49:0] p_Result_8_fu_532_p3;
wire   [49:0] grp_fu_545_p0;
wire   [47:0] grp_fu_545_p1;
wire   [97:0] grp_fu_545_p2;
wire   [7:0] p_Result_4_fu_551_p3;
wire   [55:0] rhs_3_fu_575_p4;
wire   [55:0] zext_ln1245_2_fu_572_p1;
wire   [55:0] ret_V_4_fu_583_p2;
wire   [55:0] zext_ln1245_3_fu_589_p1;
wire   [55:0] ret_V_fu_592_p2;
wire   [49:0] grp_fu_614_p0;
wire   [49:0] grp_fu_614_p1;
wire   [99:0] grp_fu_614_p2;
wire   [0:0] xor_ln288_fu_630_p2;
wire   [49:0] zext_ln712_3_fu_643_p1;
wire   [49:0] y_l_V_fu_646_p2;
wire   [0:0] or_ln300_4_fu_661_p2;
wire   [45:0] select_ln640_fu_635_p3;
wire   [45:0] y_V_fu_651_p4;
wire   [45:0] y_V_2_fu_665_p3;
wire   [1:0] tmp_11_fu_673_p4;
wire   [0:0] overf_1_fu_683_p2;
wire   [0:0] p_Result_1_fu_697_p3;
wire   [0:0] or_ln533_fu_705_p2;
wire   [0:0] p_Result_s_93_fu_689_p3;
wire   [2:0] tmp_14_fu_717_p4;
wire   [0:0] icmp_ln533_fu_727_p2;
wire   [0:0] or_ln533_1_fu_711_p2;
wire   [6:0] tmp_15_fu_739_p4;
wire   [0:0] icmp_ln533_1_fu_749_p2;
wire   [0:0] or_ln533_2_fu_733_p2;
wire   [0:0] overf_2_fu_755_p2;
wire   [27:0] tmp_s_fu_761_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to11;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire   [85:0] grp_fu_449_p00;
wire   [85:0] grp_fu_449_p10;
wire   [97:0] grp_fu_545_p00;
wire   [97:0] grp_fu_545_p10;
wire   [99:0] grp_fu_614_p00;
wire   [99:0] grp_fu_614_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
end

GAT_compute_one_graph_exp_28_10_s_f_x_msb_4_h_table_V #(
    .DataWidth( 6 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
f_x_msb_4_h_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(f_x_msb_4_h_table_V_address0),
    .ce0(f_x_msb_4_h_table_V_ce0),
    .q0(f_x_msb_4_h_table_V_q0)
);

GAT_compute_one_graph_exp_28_10_s_f_x_msb_4_l_table_V #(
    .DataWidth( 7 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
f_x_msb_4_l_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(f_x_msb_4_l_table_V_address0),
    .ce0(f_x_msb_4_l_table_V_ce0),
    .q0(f_x_msb_4_l_table_V_q0)
);

GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
f_x_msb_3_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(f_x_msb_3_table_V_address0),
    .ce0(f_x_msb_3_table_V_ce0),
    .q0(f_x_msb_3_table_V_q0)
);

GAT_compute_one_graph_exp_28_10_s_f_x_msb_2_table_V #(
    .DataWidth( 46 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
f_x_msb_2_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(f_x_msb_2_table_V_address0),
    .ce0(f_x_msb_2_table_V_ce0),
    .q0(f_x_msb_2_table_V_q0)
);

GAT_compute_one_graph_exp_28_10_s_exp_x_msb_1_table_V #(
    .DataWidth( 50 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
exp_x_msb_1_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(exp_x_msb_1_table_V_address0),
    .ce0(exp_x_msb_1_table_V_ce0),
    .q0(exp_x_msb_1_table_V_q0)
);

GAT_compute_one_graph_mul_44ns_42ns_86_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 44 ),
    .din1_WIDTH( 42 ),
    .dout_WIDTH( 86 ))
mul_44ns_42ns_86_2_1_U1905(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_449_p0),
    .din1(grp_fu_449_p1),
    .ce(1'b1),
    .dout(grp_fu_449_p2)
);

GAT_compute_one_graph_mul_50ns_48ns_98_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 50 ),
    .din1_WIDTH( 48 ),
    .dout_WIDTH( 98 ))
mul_50ns_48ns_98_3_1_U1906(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_545_p0),
    .din1(grp_fu_545_p1),
    .ce(1'b1),
    .dout(grp_fu_545_p2)
);

GAT_compute_one_graph_mul_50ns_50ns_100_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 50 ),
    .din1_WIDTH( 50 ),
    .dout_WIDTH( 100 ))
mul_50ns_50ns_100_3_1_U1907(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_614_p0),
    .din1(grp_fu_614_p1),
    .ce(1'b1),
    .dout(grp_fu_614_p2)
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
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        exp_x_msb_1_V_reg_916 <= exp_x_msb_1_table_V_q0;
        exp_x_msb_1_V_reg_916_pp0_iter10_reg <= exp_x_msb_1_V_reg_916_pp0_iter9_reg;
        exp_x_msb_1_V_reg_916_pp0_iter11_reg <= exp_x_msb_1_V_reg_916_pp0_iter10_reg;
        exp_x_msb_1_V_reg_916_pp0_iter9_reg <= exp_x_msb_1_V_reg_916;
        exp_x_msb_2_3_4_lsb_m_1_V_reg_911 <= {{ret_V_fu_592_p2[55:6]}};
        exp_x_msb_3_4_lsb_m_1_V_reg_873 <= exp_x_msb_3_4_lsb_m_1_V_fu_499_p2;
        exp_x_msb_3_4_lsb_m_1_V_reg_873_pp0_iter5_reg <= exp_x_msb_3_4_lsb_m_1_V_reg_873;
        exp_x_msb_3_4_lsb_m_1_V_reg_873_pp0_iter6_reg <= exp_x_msb_3_4_lsb_m_1_V_reg_873_pp0_iter5_reg;
        exp_x_msb_3_4_lsb_m_1_V_reg_873_pp0_iter7_reg <= exp_x_msb_3_4_lsb_m_1_V_reg_873_pp0_iter6_reg;
        f_x_msb_3_V_reg_842_pp0_iter2_reg <= f_x_msb_3_V_reg_842;
        f_x_msb_3_V_reg_842_pp0_iter3_reg <= f_x_msb_3_V_reg_842_pp0_iter2_reg;
        or_ln300_1_reg_822_pp0_iter10_reg <= or_ln300_1_reg_822_pp0_iter9_reg;
        or_ln300_1_reg_822_pp0_iter11_reg <= or_ln300_1_reg_822_pp0_iter10_reg;
        or_ln300_1_reg_822_pp0_iter2_reg <= or_ln300_1_reg_822_pp0_iter1_reg;
        or_ln300_1_reg_822_pp0_iter3_reg <= or_ln300_1_reg_822_pp0_iter2_reg;
        or_ln300_1_reg_822_pp0_iter4_reg <= or_ln300_1_reg_822_pp0_iter3_reg;
        or_ln300_1_reg_822_pp0_iter5_reg <= or_ln300_1_reg_822_pp0_iter4_reg;
        or_ln300_1_reg_822_pp0_iter6_reg <= or_ln300_1_reg_822_pp0_iter5_reg;
        or_ln300_1_reg_822_pp0_iter7_reg <= or_ln300_1_reg_822_pp0_iter6_reg;
        or_ln300_1_reg_822_pp0_iter8_reg <= or_ln300_1_reg_822_pp0_iter7_reg;
        or_ln300_1_reg_822_pp0_iter9_reg <= or_ln300_1_reg_822_pp0_iter8_reg;
        or_ln300_3_reg_827_pp0_iter10_reg <= or_ln300_3_reg_827_pp0_iter9_reg;
        or_ln300_3_reg_827_pp0_iter11_reg <= or_ln300_3_reg_827_pp0_iter10_reg;
        or_ln300_3_reg_827_pp0_iter2_reg <= or_ln300_3_reg_827_pp0_iter1_reg;
        or_ln300_3_reg_827_pp0_iter3_reg <= or_ln300_3_reg_827_pp0_iter2_reg;
        or_ln300_3_reg_827_pp0_iter4_reg <= or_ln300_3_reg_827_pp0_iter3_reg;
        or_ln300_3_reg_827_pp0_iter5_reg <= or_ln300_3_reg_827_pp0_iter4_reg;
        or_ln300_3_reg_827_pp0_iter6_reg <= or_ln300_3_reg_827_pp0_iter5_reg;
        or_ln300_3_reg_827_pp0_iter7_reg <= or_ln300_3_reg_827_pp0_iter6_reg;
        or_ln300_3_reg_827_pp0_iter8_reg <= or_ln300_3_reg_827_pp0_iter7_reg;
        or_ln300_3_reg_827_pp0_iter9_reg <= or_ln300_3_reg_827_pp0_iter8_reg;
        p_Result_5_reg_848[6 : 0] <= p_Result_5_fu_422_p6[6 : 0];
p_Result_5_reg_848[24 : 19] <= p_Result_5_fu_422_p6[24 : 19];
p_Result_5_reg_848[41 : 40] <= p_Result_5_fu_422_p6[41 : 40];
        p_Result_5_reg_848_pp0_iter3_reg[6 : 0] <= p_Result_5_reg_848[6 : 0];
p_Result_5_reg_848_pp0_iter3_reg[24 : 19] <= p_Result_5_reg_848[24 : 19];
p_Result_5_reg_848_pp0_iter3_reg[41 : 40] <= p_Result_5_reg_848[41 : 40];
        p_Result_s_reg_785_pp0_iter2_reg <= p_Result_s_reg_785_pp0_iter1_reg;
        p_Result_s_reg_785_pp0_iter3_reg <= p_Result_s_reg_785_pp0_iter2_reg;
        p_Result_s_reg_785_pp0_iter4_reg <= p_Result_s_reg_785_pp0_iter3_reg;
        p_Result_s_reg_785_pp0_iter5_reg <= p_Result_s_reg_785_pp0_iter4_reg;
        p_Result_s_reg_785_pp0_iter6_reg <= p_Result_s_reg_785_pp0_iter5_reg;
        ret_V_3_reg_879 <= ret_V_3_fu_522_p2;
        ret_V_3_reg_879_pp0_iter5_reg <= ret_V_3_reg_879;
        ret_V_3_reg_879_pp0_iter6_reg <= ret_V_3_reg_879_pp0_iter5_reg;
        ret_V_3_reg_879_pp0_iter7_reg <= ret_V_3_reg_879_pp0_iter6_reg;
        tmp_16_reg_790_pp0_iter2_reg <= tmp_16_reg_790_pp0_iter1_reg;
        tmp_16_reg_790_pp0_iter3_reg <= tmp_16_reg_790_pp0_iter2_reg;
        tmp_17_reg_796_pp0_iter2_reg <= tmp_17_reg_796_pp0_iter1_reg;
        tmp_17_reg_796_pp0_iter3_reg <= tmp_17_reg_796_pp0_iter2_reg;
        tmp_reg_779_pp0_iter10_reg <= tmp_reg_779_pp0_iter9_reg;
        tmp_reg_779_pp0_iter11_reg <= tmp_reg_779_pp0_iter10_reg;
        tmp_reg_779_pp0_iter2_reg <= tmp_reg_779_pp0_iter1_reg;
        tmp_reg_779_pp0_iter3_reg <= tmp_reg_779_pp0_iter2_reg;
        tmp_reg_779_pp0_iter4_reg <= tmp_reg_779_pp0_iter3_reg;
        tmp_reg_779_pp0_iter5_reg <= tmp_reg_779_pp0_iter4_reg;
        tmp_reg_779_pp0_iter6_reg <= tmp_reg_779_pp0_iter5_reg;
        tmp_reg_779_pp0_iter7_reg <= tmp_reg_779_pp0_iter6_reg;
        tmp_reg_779_pp0_iter8_reg <= tmp_reg_779_pp0_iter7_reg;
        tmp_reg_779_pp0_iter9_reg <= tmp_reg_779_pp0_iter8_reg;
        trunc_ln1245_1_reg_901 <= {{grp_fu_545_p2[97:52]}};
        trunc_ln640_2_reg_885 <= trunc_ln640_2_fu_528_p1;
        trunc_ln640_2_reg_885_pp0_iter5_reg <= trunc_ln640_2_reg_885;
        trunc_ln640_2_reg_885_pp0_iter6_reg <= trunc_ln640_2_reg_885_pp0_iter5_reg;
        trunc_ln640_2_reg_885_pp0_iter7_reg <= trunc_ln640_2_reg_885_pp0_iter6_reg;
        trunc_ln712_2_reg_932 <= {{grp_fu_614_p2[99:52]}};
        trunc_ln_reg_863 <= {{grp_fu_449_p2[85:55]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        f_x_msb_3_V_reg_842 <= f_x_msb_3_table_V_q0;
        f_x_msb_4_h_V_reg_832 <= f_x_msb_4_h_table_V_q0;
        f_x_msb_4_l_V_reg_837 <= f_x_msb_4_l_table_V_q0;
        or_ln300_1_reg_822 <= or_ln300_1_fu_404_p2;
        or_ln300_1_reg_822_pp0_iter1_reg <= or_ln300_1_reg_822;
        or_ln300_3_reg_827 <= or_ln300_3_fu_416_p2;
        or_ln300_3_reg_827_pp0_iter1_reg <= or_ln300_3_reg_827;
        p_Result_s_reg_785 <= {{x[21:15]}};
        p_Result_s_reg_785_pp0_iter1_reg <= p_Result_s_reg_785;
        tmp_16_reg_790 <= {{x[14:7]}};
        tmp_16_reg_790_pp0_iter1_reg <= tmp_16_reg_790;
        tmp_17_reg_796 <= {{x[6:2]}};
        tmp_17_reg_796_pp0_iter1_reg <= tmp_17_reg_796;
        tmp_reg_779 <= x[32'd27];
        tmp_reg_779_pp0_iter1_reg <= tmp_reg_779;
        trunc_ln640_1_reg_802 <= trunc_ln640_1_fu_375_p1;
        trunc_ln640_1_reg_802_pp0_iter1_reg <= trunc_ln640_1_reg_802;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter12 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to11 = 1'b1;
    end else begin
        ap_idle_pp0_0to11 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to11 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        exp_x_msb_1_table_V_ce0 = 1'b1;
    end else begin
        exp_x_msb_1_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        f_x_msb_2_table_V_ce0 = 1'b1;
    end else begin
        f_x_msb_2_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        f_x_msb_3_table_V_ce0 = 1'b1;
    end else begin
        f_x_msb_3_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        f_x_msb_4_h_table_V_ce0 = 1'b1;
    end else begin
        f_x_msb_4_h_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        f_x_msb_4_l_table_V_ce0 = 1'b1;
    end else begin
        f_x_msb_4_l_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln712_fu_489_p2 = (zext_ln712_fu_486_p1 + zext_ln1245_fu_469_p1);

assign and_ln300_fu_339_p2 = (icmp_ln1551_fu_327_p2 & icmp_ln1549_fu_333_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_return = ((overf_2_fu_755_p2[0:0] == 1'b1) ? 28'd134217727 : tmp_s_fu_761_p4);

assign exp_x_msb_1_table_V_address0 = zext_ln573_3_fu_567_p1;

assign exp_x_msb_3_4_lsb_m_1_V_fu_499_p2 = (zext_ln712_1_fu_495_p1 + zext_ln1245_1_fu_482_p1);

assign f_x_msb_2_table_V_address0 = zext_ln573_2_fu_465_p1;

assign f_x_msb_3_table_V_address0 = zext_ln573_1_fu_393_p1;

assign f_x_msb_4_h_table_V_address0 = zext_ln573_fu_387_p1;

assign f_x_msb_4_l_table_V_address0 = zext_ln573_fu_387_p1;

assign grp_fu_449_p0 = grp_fu_449_p00;

assign grp_fu_449_p00 = p_Result_6_fu_433_p4;

assign grp_fu_449_p1 = grp_fu_449_p10;

assign grp_fu_449_p10 = p_Result_5_fu_422_p6;

assign grp_fu_545_p0 = grp_fu_545_p00;

assign grp_fu_545_p00 = p_Result_8_fu_532_p3;

assign grp_fu_545_p1 = grp_fu_545_p10;

assign grp_fu_545_p10 = exp_x_msb_3_4_lsb_m_1_V_reg_873;

assign grp_fu_614_p0 = grp_fu_614_p00;

assign grp_fu_614_p00 = exp_x_msb_2_3_4_lsb_m_1_V_reg_911;

assign grp_fu_614_p1 = grp_fu_614_p10;

assign grp_fu_614_p10 = exp_x_msb_1_V_reg_916;

assign icmp_ln1549_fu_333_p2 = ((p_Result_3_fu_241_p3 > 23'd7905299) ? 1'b1 : 1'b0);

assign icmp_ln1551_fu_327_p2 = ((p_Result_2_fu_227_p4 == 5'd15) ? 1'b1 : 1'b0);

assign icmp_ln533_1_fu_749_p2 = ((tmp_15_fu_739_p4 != 7'd0) ? 1'b1 : 1'b0);

assign icmp_ln533_fu_727_p2 = ((tmp_14_fu_717_p4 != 3'd0) ? 1'b1 : 1'b0);

assign or_ln300_1_fu_404_p2 = (xor_ln222_2_fu_279_p2 | or_ln300_fu_398_p2);

assign or_ln300_2_fu_410_p2 = (xor_ln222_fu_321_p2 | and_ln300_fu_339_p2);

assign or_ln300_3_fu_416_p2 = (xor_ln222_4_fu_307_p2 | or_ln300_2_fu_410_p2);

assign or_ln300_4_fu_661_p2 = (or_ln300_3_reg_827_pp0_iter11_reg | or_ln300_1_reg_822_pp0_iter11_reg);

assign or_ln300_fu_398_p2 = (xor_ln222_3_fu_293_p2 | overf_fu_265_p2);

assign or_ln533_1_fu_711_p2 = (p_Result_s_93_fu_689_p3 | or_ln533_fu_705_p2);

assign or_ln533_2_fu_733_p2 = (or_ln533_1_fu_711_p2 | icmp_ln533_fu_727_p2);

assign or_ln533_fu_705_p2 = (p_Result_1_fu_697_p3 | overf_1_fu_683_p2);

assign overf_1_fu_683_p2 = ((tmp_11_fu_673_p4 != 2'd0) ? 1'b1 : 1'b0);

assign overf_2_fu_755_p2 = (or_ln533_2_fu_733_p2 | icmp_ln533_1_fu_749_p2);

assign overf_fu_265_p2 = (tmp_fu_249_p3 ^ tmp_3_fu_257_p3);

assign p_Result_1_fu_697_p3 = y_V_2_fu_665_p3[32'd42];

assign p_Result_2_fu_227_p4 = {{x[22:18]}};

assign p_Result_3_fu_241_p3 = {{trunc_ln640_fu_237_p1}, {5'd0}};

assign p_Result_4_fu_551_p3 = {{tmp_reg_779_pp0_iter6_reg}, {p_Result_s_reg_785_pp0_iter6_reg}};

assign p_Result_5_fu_422_p6 = {{{{{trunc_ln640_1_reg_802_pp0_iter1_reg}, {15'd0}}, {f_x_msb_4_h_V_reg_832}}, {12'd0}}, {f_x_msb_4_l_V_reg_837}};

assign p_Result_6_fu_433_p4 = {{{tmp_17_reg_796_pp0_iter1_reg}, {7'd0}}, {f_x_msb_3_V_reg_842}};

assign p_Result_7_fu_505_p4 = {{f_x_msb_2_table_V_q0[45:41]}};

assign p_Result_8_fu_532_p3 = {{ret_V_3_reg_879}, {trunc_ln640_2_reg_885}};

assign p_Result_s_93_fu_689_p3 = y_V_2_fu_665_p3[32'd43];

assign ret_V_3_fu_522_p2 = (zext_ln712_4_fu_519_p1 + zext_ln712_2_fu_515_p1);

assign ret_V_4_fu_583_p2 = (rhs_3_fu_575_p4 + zext_ln1245_2_fu_572_p1);

assign ret_V_fu_592_p2 = (ret_V_4_fu_583_p2 + zext_ln1245_3_fu_589_p1);

assign rhs_1_fu_472_p5 = {{{{tmp_17_reg_796_pp0_iter3_reg}, {7'd0}}, {f_x_msb_3_V_reg_842_pp0_iter3_reg}}, {3'd0}};

assign rhs_3_fu_575_p4 = {{{ret_V_3_reg_879_pp0_iter7_reg}, {trunc_ln640_2_reg_885_pp0_iter7_reg}}, {6'd0}};

assign select_ln640_fu_635_p3 = ((xor_ln288_fu_630_p2[0:0] == 1'b1) ? 46'd70368744177663 : 46'd0);

assign tmp_11_fu_673_p4 = {{y_V_2_fu_665_p3[45:44]}};

assign tmp_14_fu_717_p4 = {{y_V_2_fu_665_p3[41:39]}};

assign tmp_15_fu_739_p4 = {{y_V_2_fu_665_p3[38:32]}};

assign tmp_17_fu_365_p4 = {{x[6:2]}};

assign tmp_18_fu_379_p3 = {{trunc_ln640_1_fu_375_p1}, {1'd0}};

assign tmp_3_fu_257_p3 = x[32'd22];

assign tmp_4_fu_271_p3 = x[32'd23];

assign tmp_5_fu_285_p3 = x[32'd24];

assign tmp_6_fu_299_p3 = x[32'd25];

assign tmp_7_fu_313_p3 = x[32'd26];

assign tmp_fu_249_p3 = x[32'd27];

assign tmp_s_fu_761_p4 = {{y_V_2_fu_665_p3[32:5]}};

assign trunc_ln640_1_fu_375_p1 = x[1:0];

assign trunc_ln640_2_fu_528_p1 = f_x_msb_2_table_V_q0[40:0];

assign trunc_ln640_fu_237_p1 = x[17:0];

assign xor_ln222_2_fu_279_p2 = (tmp_fu_249_p3 ^ tmp_4_fu_271_p3);

assign xor_ln222_3_fu_293_p2 = (tmp_fu_249_p3 ^ tmp_5_fu_285_p3);

assign xor_ln222_4_fu_307_p2 = (tmp_fu_249_p3 ^ tmp_6_fu_299_p3);

assign xor_ln222_fu_321_p2 = (tmp_fu_249_p3 ^ tmp_7_fu_313_p3);

assign xor_ln288_fu_630_p2 = (tmp_reg_779_pp0_iter11_reg ^ 1'd1);

assign y_V_2_fu_665_p3 = ((or_ln300_4_fu_661_p2[0:0] == 1'b1) ? select_ln640_fu_635_p3 : y_V_fu_651_p4);

assign y_V_fu_651_p4 = {{y_l_V_fu_646_p2[49:4]}};

assign y_l_V_fu_646_p2 = (exp_x_msb_1_V_reg_916_pp0_iter11_reg + zext_ln712_3_fu_643_p1);

assign zext_ln1245_1_fu_482_p1 = rhs_1_fu_472_p5;

assign zext_ln1245_2_fu_572_p1 = trunc_ln1245_1_reg_901;

assign zext_ln1245_3_fu_589_p1 = exp_x_msb_3_4_lsb_m_1_V_reg_873_pp0_iter7_reg;

assign zext_ln1245_fu_469_p1 = trunc_ln_reg_863;

assign zext_ln573_1_fu_393_p1 = tmp_17_fu_365_p4;

assign zext_ln573_2_fu_465_p1 = tmp_16_reg_790_pp0_iter2_reg;

assign zext_ln573_3_fu_567_p1 = p_Result_4_fu_551_p3;

assign zext_ln573_fu_387_p1 = tmp_18_fu_379_p3;

assign zext_ln712_1_fu_495_p1 = add_ln712_fu_489_p2;

assign zext_ln712_2_fu_515_p1 = p_Result_7_fu_505_p4;

assign zext_ln712_3_fu_643_p1 = trunc_ln712_2_reg_932;

assign zext_ln712_4_fu_519_p1 = tmp_16_reg_790_pp0_iter3_reg;

assign zext_ln712_fu_486_p1 = p_Result_5_reg_848_pp0_iter3_reg;

always @ (posedge ap_clk) begin
    p_Result_5_reg_848[18:7] <= 12'b000000000000;
    p_Result_5_reg_848[39:25] <= 15'b000000000000000;
    p_Result_5_reg_848_pp0_iter3_reg[18:7] <= 12'b000000000000;
    p_Result_5_reg_848_pp0_iter3_reg[39:25] <= 15'b000000000000000;
end

endmodule //GAT_compute_one_graph_exp_28_10_s
