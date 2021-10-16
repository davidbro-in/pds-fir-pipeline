//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
//Date        : Sat Oct 16 10:10:14 2021
//Host        : DESKTOP-K6NCE0H running 64-bit major release  (build 9200)
//Command     : generate_target vio.bd
//Design      : vio
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "vio,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=vio,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "vio.hwdef" *) 
module vio
   (clk_0,
    probe_in0_0,
    probe_out0_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN vio_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  input [7:0]probe_in0_0;
  output [0:0]probe_out0_0;

  wire clk_0_1;
  wire [7:0]probe_in0_0_1;
  wire [0:0]vio_0_probe_out0;

  assign clk_0_1 = clk_0;
  assign probe_in0_0_1 = probe_in0_0[7:0];
  assign probe_out0_0[0] = vio_0_probe_out0;
  vio_vio_0_0 vio_0
       (.clk(clk_0_1),
        .probe_in0(probe_in0_0_1),
        .probe_out0(vio_0_probe_out0));
endmodule
