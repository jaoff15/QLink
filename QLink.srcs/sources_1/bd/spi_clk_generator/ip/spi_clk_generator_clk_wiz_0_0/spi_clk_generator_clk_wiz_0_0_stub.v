// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sat Apr 11 16:22:22 2020
// Host        : JacobOffersen running 64-bit Ubuntu 19.10
// Command     : write_verilog -force -mode synth_stub
//               /home/jacoboffersen/advanced_programmable_electronics/QLink_/QLink.srcs/sources_1/bd/spi_clk_generator/ip/spi_clk_generator_clk_wiz_0_0/spi_clk_generator_clk_wiz_0_0_stub.v
// Design      : spi_clk_generator_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s25ftgb196-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module spi_clk_generator_clk_wiz_0_0(clk_out1, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,locked,clk_in1" */;
  output clk_out1;
  output locked;
  input clk_in1;
endmodule
