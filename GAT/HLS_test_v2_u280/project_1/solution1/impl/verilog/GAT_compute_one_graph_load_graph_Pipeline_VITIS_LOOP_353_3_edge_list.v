// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module GAT_compute_one_graph_load_graph_Pipeline_VITIS_LOOP_353_3_edge_list (address1, ce1, d1, we1,  reset,clk);

parameter DataWidth = 32;
parameter AddressWidth = 10;
parameter AddressRange = 1000;

input[AddressWidth-1:0] address1;
input ce1;
input[DataWidth-1:0] d1;
input we1;
input reset;
input clk;

(* ram_style = "block" *)reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./GAT_compute_one_graph_load_graph_Pipeline_VITIS_LOOP_353_3_edge_list.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce1) begin
        if (we1) 
            ram[address1] <= d1; 
    end
end


endmodule

