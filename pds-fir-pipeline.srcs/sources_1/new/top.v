`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2021 12:46:23
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// Definitions
`define N_LEDS 4
`define NB_SEL 2
`define NB_COUNT 32
`define NB_SW 4

module top
   #(
      // Parameters
      parameter N_LEDS    = `N_LEDS  , //! Number of leds (4)
      parameter NB_SEL    = `NB_SEL  , //! Number of bits of the selectors (2)
      parameter NB_COUNT  = `NB_COUNT, //! Number of bits of the counter (32)
      parameter NB_SW     = `NB_SW     //! Number of bits of the switch (4)
   )
   (
      // Ports
    output [N_LEDS - 1 : 0] o_led , //! Leds
    output [N_LEDS - 1 : 0] o_led_b , //! RGB Leds - Color Blue
    output [N_LEDS - 1 : 0] o_led_g , //! RGB Leds - Color Green
    input [NB_SW - 1 : 0]   i_sw , //! Switchs
    input 		    i_reset , //! Reset **active low**
    input 		    clock     //! System clock
   );



   vio
     u_vio
       (
        .clk_0       (clock),
        .probe_in0_0 (o_led),
        .probe_in1_0 (o_led_b),
        .probe_in2_0 (o_led_g),
        .probe_out0_0(selMux),
        .probe_out1_0(reset_from_VIO),
        .probe_out2_0(sw_from_VIO)
        );


   ila
     u_ila
       (
        .clk_0    (clock),
	    .probe0_0 (o_led)
	    );
   
endmodule
