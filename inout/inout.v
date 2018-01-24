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
module input_output_example(
	input clk_i,
	input rst_i,
	input [7:0] a_i,
	input tx_oe,
	output reg [7:0] b_o,
	inout [7:0] data_line_io
	);
	
	// internal wires and registers
	wire [7:0] tx;
	wire [7:0] rx;
	reg [7:0] data_a;
	reg [7:0] data_b;
	reg [7:0] data_c;
	
	// wire assignments
	assign rx = a_i;
	assign tx = b_o;
	assign data_line_io = tx_oe ? tx : rx ;
	
	// initialisation
	integer sel;
	initial begin
		sel = 0;
		data_a <= 8'b1111_0000;
		data_b <= 8'b0000_1111;
		data_c <= 8'b0011_1100;
	end
	
	// clocked behaviour
	always @(posedge clk_i) begin
		if 			(sel == 0) begin
			b_o = data_a;
			sel = 1;
		end else if (sel == 1) begin
			b_o = data_b;
			sel = 2;
		end else if (sel == 2) begin
			b_o = data_c;
			sel = 0;
		end else begin
			sel = 0;
		end
	end

endmodule
