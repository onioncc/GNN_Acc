// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module GIN_compute_one_graph_load_graph_edge_attr_0_ram (addr1, ce1, d1, we1,  clk);

parameter DWIDTH = 32;
parameter AWIDTH = 9;
parameter MEM_SIZE = 500;

input[AWIDTH-1:0] addr1;
input ce1;
input[DWIDTH-1:0] d1;
input we1;
input clk;

(* ram_style = "block" *)reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("./GIN_compute_one_graph_load_graph_edge_attr_0_ram.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce1) begin
        if (we1) 
            ram[addr1] <= d1; 
    end
end


endmodule

`timescale 1 ns / 1 ps
module GIN_compute_one_graph_load_graph_edge_attr_0(
    reset,
    clk,
    address1,
    ce1,
    we1,
    d1);

parameter DataWidth = 32'd32;
parameter AddressRange = 32'd500;
parameter AddressWidth = 32'd9;
input reset;
input clk;
input[AddressWidth - 1:0] address1;
input ce1;
input we1;
input[DataWidth - 1:0] d1;



GIN_compute_one_graph_load_graph_edge_attr_0_ram GIN_compute_one_graph_load_graph_edge_attr_0_ram_U(
    .clk( clk ),
    .addr1( address1 ),
    .ce1( ce1 ),
    .we1( we1 ),
    .d1( d1 ));

endmodule

