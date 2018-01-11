`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:00:23 01/10/2018
// Design Name:   physical_transfer
// Module Name:   C:/Users/jimmy/Desktop/USB_Research/usb1.1/Physical_Transfer_TEST.v
// Project Name:  usb1.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: physical_transfer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Physical_Transfer_TEST;

	// Inputs
	reg clk_i;
	reg rst_i;

	// Outputs
	wire [7:0] byte_i;

	// Bidirs
	wire JA_dp;
	wire JA_dn;

	// Instantiate the Unit Under Test (UUT)
	physical_transfer uut (
		.clk_i(clk_i), 
		.rst_i(rst_i), 
		.JA_dp(JA_dp), 
		.JA_dn(JA_dn), 
		.byte_i(byte_i)
	);
	reg out_valid;
	reg data_out;
	assign JA_dp = out_valid ? data_out : 1'bZ;
	initial begin
		// Initialize Inputs
		clk_i = 0;
		rst_i = 0;
		data_out = 0;
		out_valid = 0;
		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		rst_i = 1;
		out_valid = 1;
		#10 data_out = 1;
		#10 data_out = 0;
		#10 data_out = 1;
		#10 data_out = 1;
		#10 data_out = 0;
		#10 data_out = 1;
		#10 data_out = 0;
		#10 data_out = 1;
		out_valid = 0;
		rst_i = 0;
		#10 data_out = 0;
	end
	always begin
		#5 clk_i = ~clk_i;
	end
endmodule

