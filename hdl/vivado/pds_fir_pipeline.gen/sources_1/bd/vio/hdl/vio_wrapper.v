//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
//Date        : Sat Oct 16 10:10:14 2021
//Host        : DESKTOP-K6NCE0H running 64-bit major release  (build 9200)
//Command     : generate_target vio_wrapper.bd
//Design      : vio_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module vio_wrapper
   (clk_0,
    probe_in0_0,
    probe_out0_0);
  input clk_0;
  input [7:0]probe_in0_0;
  output [0:0]probe_out0_0;

  wire clk_0;
  wire [7:0]probe_in0_0;
  wire [0:0]probe_out0_0;

  vio vio_i
       (.clk_0(clk_0),
        .probe_in0_0(probe_in0_0),
        .probe_out0_0(probe_out0_0));
endmodule
