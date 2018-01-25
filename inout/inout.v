`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:20:17 01/24/2018 
// Design Name: 
// Module Name:    inout 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Physical_Interface (
	input clk_i,
	input rst_i,
	input tx_oe,
	inout [7:0] data_line_io
	);
	
	// internal wires and registers
	
	// wire assignments
	//assign data_line_io = tx_oe ? data_i : data_o ;
	
	// initialisation
	initial begin
	
	end
	
	// clocked behaviour
	always @(posedge clk_i) begin
		if (rst_i) begin

		end else begin
			
		end 
	end
endmodule
