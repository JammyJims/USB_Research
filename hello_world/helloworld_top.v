`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Adelaide
// Engineer: Mr Jimmy Tang
// 
// Create Date:    12:25:04 12/07/2017 
// Design Name: hello_world
// Module Name:    helloworld_top 
// Project Name: 
// Target Devices: Nexys3 Board - Spartan6: XC6LX16-CS324
// Tool versions: 
// Description: 
//
// Dependencies: N/A
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module helloworld_top(
	input Button,
	input Switch,
	input clk,
	output reg LED_B,
	output reg LED_S
	);
	
	always @(posedge clk) begin
		LED_B <= Button;
		LED_S <= Switch;
	end
	
endmodule
