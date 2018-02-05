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

// modules are like classes in C++
module helloworld_top(
	// every module has a list of inputs and outputs, think like a black box.
	// all variables are assumed to have type wire unless stated to be of type reg
	input Button,
	input Switch,
	input clk,
	input reset,
	// outputs are generally of type reg
	output reg LED_B,
	output reg LED_S 
	);
	
	// can allocate internal registers and wires in the body of the module
	//wire internal_a;
	//wire [7:0] internal_b; // this is a data bus, 8 wires named internal_b
	//reg register_c // in general, if using the keyword reg, alter the value in an 
	
	// the always keyword usually has an argument @(posedge clk_i)
	// the '*' symbol means wildcard, everything between 'begin' and 'end' is to be run on any change at all.
	// state machines are written between 
	always @(*) begin
		// both statements happen at the exact same time.
		// like C++: registers go on the left; assigned value goes on the right. 
		LED_B <= Button; 
		LED_S <= Switch;
		// can dereference data busses like so
		// register_c <= internal_b[2]
	end
	
	// state machine behaviour
	// things change on the clock input
	always @(posedge clk) begin
		if (reset) begin
			// what if reset was pressed (set to high)
		end else begin
			// normal state machine behaviour
			// extra detail omitted from this file.
		end
	end
	
	// if still lost, refer to google searches regarding Verilog syntax
endmodule // need to end the module (similar to ending the scope of a function in C++ using curly brackets {} )
