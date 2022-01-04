// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_356_1_VITIS_LOOP_357_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        connectivity_mask_address1,
        connectivity_mask_ce1,
        connectivity_mask_we1,
        connectivity_mask_d1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] connectivity_mask_address1;
output   connectivity_mask_ce1;
output   connectivity_mask_we1;
output  [31:0] connectivity_mask_d1;

reg ap_idle;
reg connectivity_mask_ce1;
reg connectivity_mask_we1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln356_fu_94_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln356_fu_124_p3;
reg   [4:0] select_ln356_reg_206;
reg   [4:0] select_ln356_reg_206_pp0_iter1_reg;
wire   [63:0] zext_ln358_2_fu_168_p1;
wire    ap_block_pp0_stage0;
reg   [4:0] j_fu_46;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_j_load;
wire   [4:0] add_ln357_fu_144_p2;
reg   [4:0] i_fu_50;
reg   [4:0] ap_sig_allocacmp_i_load;
wire   [4:0] select_ln356_1_fu_132_p3;
reg   [8:0] indvar_flatten_fu_54;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [8:0] add_ln356_1_fu_100_p2;
wire   [0:0] icmp_ln357_fu_118_p2;
wire   [4:0] add_ln356_fu_112_p2;
wire   [11:0] grp_fu_172_p3;
wire   [4:0] grp_fu_172_p0;
wire   [6:0] grp_fu_172_p1;
wire   [4:0] grp_fu_172_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [11:0] grp_fu_172_p00;
wire   [11:0] grp_fu_172_p20;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

GAT_compute_one_graph_mac_muladd_5ns_7ns_5ns_12_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 7 ),
    .din2_WIDTH( 5 ),
    .dout_WIDTH( 12 ))
mac_muladd_5ns_7ns_5ns_12_4_1_U217(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_172_p0),
    .din1(grp_fu_172_p1),
    .din2(grp_fu_172_p2),
    .ce(1'b1),
    .dout(grp_fu_172_p3)
);

GAT_compute_one_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln356_fu_94_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_50 <= select_ln356_1_fu_132_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_50 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln356_fu_94_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_54 <= add_ln356_1_fu_100_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_54 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln356_fu_94_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_46 <= add_ln357_fu_144_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_46 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln356_reg_206_pp0_iter1_reg <= select_ln356_reg_206;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln356_fu_94_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln356_reg_206 <= select_ln356_fu_124_p3;
    end
end

always @ (*) begin
    if (((icmp_ln356_fu_94_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_50;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_54;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 5'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_46;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        connectivity_mask_ce1 = 1'b1;
    end else begin
        connectivity_mask_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        connectivity_mask_we1 = 1'b1;
    end else begin
        connectivity_mask_we1 = 1'b0;
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

assign add_ln356_1_fu_100_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);

assign add_ln356_fu_112_p2 = (ap_sig_allocacmp_i_load + 5'd1);

assign add_ln357_fu_144_p2 = (select_ln356_fu_124_p3 + 5'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign connectivity_mask_address1 = zext_ln358_2_fu_168_p1;

assign connectivity_mask_d1 = 32'd0;

assign grp_fu_172_p0 = grp_fu_172_p00;

assign grp_fu_172_p00 = select_ln356_1_fu_132_p3;

assign grp_fu_172_p1 = 12'd100;

assign grp_fu_172_p2 = grp_fu_172_p20;

assign grp_fu_172_p20 = select_ln356_reg_206_pp0_iter1_reg;

assign icmp_ln356_fu_94_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd361) ? 1'b1 : 1'b0);

assign icmp_ln357_fu_118_p2 = ((ap_sig_allocacmp_j_load == 5'd19) ? 1'b1 : 1'b0);

assign select_ln356_1_fu_132_p3 = ((icmp_ln357_fu_118_p2[0:0] == 1'b1) ? add_ln356_fu_112_p2 : ap_sig_allocacmp_i_load);

assign select_ln356_fu_124_p3 = ((icmp_ln357_fu_118_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_j_load);

assign zext_ln358_2_fu_168_p1 = grp_fu_172_p3;

endmodule //GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_356_1_VITIS_LOOP_357_2
