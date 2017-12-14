`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:48:52 11/30/2017
// Design Name:   counter
// Module Name:   /media/jimmy/Passport/Programs/XilinxLinux/14.7/ISE_DS/project0/testbench.v
// Project Name:  project0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg CLOCK;
	reg DIRECTION;

	// Outputs
	wire [3:0] COUNT_OUT;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.CLOCK(CLOCK), 
		.DIRECTION(DIRECTION), 
		.COUNT_OUT(COUNT_OUT)
	);

	initial begin
		// Initialize Inputs
		CLOCK = 0;
		DIRECTION = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
	end
      
endmodule

