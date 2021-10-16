//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
//Date        : Sat Oct 16 10:27:11 2021
//Host        : DESKTOP-K6NCE0H running 64-bit major release  (build 9200)
//Command     : generate_target ila_wrapper.bd
//Design      : ila_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ila_wrapper
   (clk_0,
    probe0_0,
    probe1_0);
  input clk_0;
  input [7:0]probe0_0;
  input [7:0]probe1_0;

  wire clk_0;
  wire [7:0]probe0_0;
  wire [7:0]probe1_0;

  ila ila_i
       (.clk_0(clk_0),
        .probe0_0(probe0_0),
        .probe1_0(probe1_0));
endmodule
