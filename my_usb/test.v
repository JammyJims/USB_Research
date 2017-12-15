`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:27:24 12/15/2017
// Design Name:   counter
// Module Name:   U:/Desktop/XilinxProject/my_usb/test.v
// Project Name:  my_usb
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

module test;

	// Inputs
	reg clk;
	reg [7:0] sw;

	// Outputs
	wire [7:0] seg;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.sw(sw), 
		.seg(seg)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		sw = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		sw[0] = 1;
	end
	always begin
		#5 clk = ~clk;
	end
endmodule

