`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:06:27 01/10/2018 
// Design Name: 
// Module Name:    physical_transfer 
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
module physical_transfer(
	input clk_i,
	input rst_i,
	
	// Pmod outputs
	inout JA_dp,
	inout JA_dn,
	output [7:0] byte_i
	);
	
	// internal wires and registers
	wire tx_dp;
	wire tx_dn;
	wire tx_oe;
	wire rx_d;
	reg rx_dp;
	reg rx_dn;
	//reg [7:0] byte_i;
	reg [7:0] byte_o;
	wire data_bit = JA_dp;

	// tristate buffer to handle bi-directional data lines.
	assign JA_dp = rx_d ? rx_dp : 1'hZ;
	assign JA_dn = rx_d ? rx_dn : 1'hZ;
	assign tx_dp = JA_dp;
	assign tx_dn = JA_dn;
	assign rx_d = tx_oe ? 1'b0 : 1'b1;
	
	initial begin
		rx_d = 1'b0;
		rx_dp = 1'b0;
		rx_dn = 1'b0;
	end
	
	// clocked behaviour
	integer it;
	always @(posedge clk_i) begin
		it = (it < 8) ? it : 0;
		if (~rst_i) begin
			rx_d = 1'b0;
			rx_dp = 1'b0;
			rx_dn = 1'b0;
			it = 0;
		end else begin
			byte_i[it] = data_bit;
			it = it + 1;
		end
	end

endmodule
