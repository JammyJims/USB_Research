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
	
	always @(*) begin
		LED_B <= Button;
		LED_S <= Switch;
	end
	
endmodule

// Examples of `define text macros
`define MY_NUMBER 5
`define MY_STRING "Hello world!"
`define ADD2PLUS2 2 + 2
`define ADD5(RESULT, SOURCE) \
  RESULT = SOURCE + 5; \
  $display("Inside ADD5 macro. Scope is %m");

module test;

  reg [7:0] a, b;

  initial begin
    $display(`MY_NUMBER);
    $display(`MY_STRING);
    $display(2 + 2);
    $display(`ADD2PLUS2);
    
    a = 1;
    `ifdef MY_FEATURE
      `ADD5(b, a)
      $display("a:%0d, b:%0d", a, b);
    `else
      $display("No feature");
    `endif
  end
  
endmodule

