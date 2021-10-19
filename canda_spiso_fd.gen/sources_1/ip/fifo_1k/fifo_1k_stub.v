// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Sep 21 12:45:53 2021
// Host        : pc running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/master/FPGA_proj/canda_vhdl/canda_vhdl.gen/sources_1/ip/fifo_1k/fifo_1k_stub.v
// Design      : fifo_1k
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *)
module fifo_1k(wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty, 
  rd_data_count, prog_full, prog_empty)
/* synthesis syn_black_box black_box_pad_pin="wr_clk,rd_clk,din[9:0],wr_en,rd_en,dout[4:0],full,empty,rd_data_count[10:0],prog_full,prog_empty" */;
  input wr_clk;
  input rd_clk;
  input [9:0]din;
  input wr_en;
  input rd_en;
  output [4:0]dout;
  output full;
  output empty;
  output [10:0]rd_data_count;
  output prog_full;
  output prog_empty;
endmodule
