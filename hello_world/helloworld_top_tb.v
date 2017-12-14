`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:34:46 12/07/2017
// Design Name:   helloworld_top
// Module Name:   /media/sf_Red/Xilinx/14.7/ISE_DS/hello_world/helloworld_top_tb.v
// Project Name:  hello_world
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: helloworld_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module helloworld_top_tb;

	// Inputs
	reg Button;
	reg Switch;

	// Outputs
	wire LED_B;
	wire LED_S;

	// Instantiate the Unit Under Test (UUT)
	helloworld_top uut (
		.Button(Button), 
		.Switch(Switch), 
		.LED_B(LED_B), 
		.LED_S(LED_S)
	);

	initial begin
		// Initialize Inputs
		Button = 0;
		Switch = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// This is the stimulus for the test bench.
		// set these buttons
		Button = 0;
		Switch = 0;
		Button = 0;
		Switch = 0;
		
		// wait 10 units of time?
		#10;
		// set Button = 1
		Button = 1;
		#10;
		Switch = 1;
		Button = 0;
		#10;
		Button = 1;
		#10;
		Switch = 0;
		#10;
		Button = 0;
		#10;
	end
      
endmodule

