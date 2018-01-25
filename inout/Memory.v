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
`define RAM_SIZE 5
module Memory(
	input clk_i,
	input rst_i,
	inout [7:0] data_io,
	input tx_oe
	
	);
	
	// internal wires and registers
	reg write_enable;
	reg [7:0] ramA;
	reg [7:0] ramB;
	reg [7:0] ramC;
	reg [7:0] ramD;
	reg [7:0] ramE;
	//reg [`RAM_SIZE-1:0] RAM[7:0]; // 8 bits wide, RAM_SIZE long
	reg [7:0] data_o;
	reg [7:0] data_i;
	
	// wire assignments
	//assign write_enable = &data_i; // write enable on data_io == 1111_1111
	wire tx;
	wire rx;
	assign tx = data_o;
	assign rx = data_i;
	assign data_io = tx_oe ? tx : rx ;
	
	// initialisation
	initial begin
		// nuke the memory RAM
		ramA <= 8'b0000_0000;
		ramB <= 8'b0000_0000;
		ramC <= 8'b0000_0000;
		ramD <= 8'b0000_0000;
		ramE <= 8'b0000_0000;
	end
	
	// clocked behaviour
	integer address;
	always @(posedge clk_i) begin
		if (rst_i) begin
			// nuke the memory RAM
			ramA <= 8'b0000_0000;
			ramB <= 8'b0000_0000;
			ramC <= 8'b0000_0000;
			ramD <= 8'b0000_0000;
			ramE <= 8'b0000_0000;
			
			// reset address iterator
			address = 0;
		end else begin
			// normal behaviour
			if 			(data_i == 8'b1111_1111) begin
				write_enable = 1'b1;
			end else if (data_i == 8'b0000_0000) begin
				write_enable = 1'b0;
			end else begin
				if (write_enable) begin 
					if 			(address == 0) begin
						ramA <= data_i;
					end else if (address == 1) begin
						ramB <= data_i;
					end else if (address == 2) begin
						ramC <= data_i;
					end else if (address == 3) begin
						ramD <= data_i;
					end else if (address == 4) begin
						ramE <= data_i;
					end else begin
						address = 0;
					end
				end else begin // read enable
					if 			(address == 0) begin
						data_o <= ramA;
					end else if (address == 1) begin
						data_o <= ramB;
					end else if (address == 2) begin
						data_o <= ramC;
					end else if (address == 3) begin
						data_o <= ramD;
					end else if (address == 4) begin
						data_o <= ramE;
					end else begin
						address = 0;
					end
				end
				address = address + 1;
			end
		end
	end
endmodule
