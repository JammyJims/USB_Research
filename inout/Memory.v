`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:41:10 01/25/2018 
// Design Name: 
// Module Name:    Memory 
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
`define RAM_SIZE 128
module Memory(
	input clk_i,
	input rst_i,
	inout [7:0] data_io,
	input tx_oe
	
	);
	
	// internal wires and registers
	reg write_enable;
	reg [`RAM_SIZE-1:0][7:0] RAM; // 8 bits wide, RAM_SIZE long
	reg [7:0] data_o;
	reg [7:0] data_i;
	
	// wire assignments
	//assign write_enable = &data_i; // write enable on data_io == 1111_1111
	assign data_io = tx_oe ? data_i : data_o ;
	
	// initialisation
	initial begin
		// nuke the memory RAM
		for (integer i=0; i<`RAM_SIZE; i=i+1) begin
			RAM[i] = 8'b0000_0000;
		end
	end
	
	// clocked behaviour
	integer address;
	always @(posedge clk_i) begin
		if (rst_i) begin
			// nuke the memory RAM
			for (integer i=0; i<`RAM_SIZE; i=i+1) begin
				RAM[i] = 8'b0000_0000;
			end
			
			// reset address iterator
			address = 0;
		end else begin
			// normal behaviour
			if 			(data_i == 8'b1111_1111) begin
				write_enable = 1'b1;
			end else if (data_i == 8'b0000_0000) begin
				write_enable = 1'b0;
			end else begin
				// cycles through all valid memory addresses
				data_o = RAM[address];
				if (address > `RAM_SIZE) begin
					address = 0;
				end else begin
					address = address+1;
				end
					
				// either read or write to/from memory
				if (write_enable) begin
					// data is sent into memory
					RAM[address] = data_i;
				end else begin // read enable
					// data is sent out via data_io bidir
					data_o = RAM[address];
				end
			end
		end
	end
endmodule
