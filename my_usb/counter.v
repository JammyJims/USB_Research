`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Adelaide
// Engineer: Jimmy Tang
// 
// Create Date:    11:26:07 11/30/2017 
// Design Name: project0 counter
// Module Name:    counter 
// Project Name: 
// Target Devices: XC6LX16-CS324
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
module counter(
	input clk,
	input [7:0]sw,
	output reg [7:0]seg
	);
	initial begin
		seg[7:0] = 8'b00000000;
	end
	always @ (posedge clk) begin
		if (sw[0]) begin
			seg[7:0] = 8'b11111111;
		end
		else if (sw[1]) begin
			seg[7:0] = 8'b10101010;
		end
	end
	
endmodule
