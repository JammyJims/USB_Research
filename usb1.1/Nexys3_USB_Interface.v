`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Adelaide
// Engineer: Jimmy Tang
// 
// Create Date:    11:37:51 12/19/2017 
// Design Name: Nexys3_USB_Interface
// Module Name:    Nexys3_USB_Interface 
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

module Nexys3_USB_Interface(
	input clk_i,
	input rst_i,
	
	// Pmod outputs
	
	inout JA_dp,
	inout JA_dn,
	
	// LEDS
	output reg [7:0] Led
	);
	
	// Physical interface wires
	wire tx_dp;
	wire tx_dn;
	wire tx_oe;
	reg rx_d;
	reg rx_dp;
	reg rx_dn;
	
	// endpoint wires
	wire ep1_din;
	wire ep1_we; 
	wire ep1_stat;
	wire ep2_dout;
	wire ep2_re;
	wire ep2_stat;
	
	reg loop;
	
	// turn on LEDs
	always begin
		Led <= 8'b1000_0001;
	end
	
	// tristate buffer to handle bi-directional data lines.
	assign JA_dp = tx_oe ? tx_dp : rx_dp ;
	assign JA_dn = tx_oe ? tx_dn : rx_dn ;
	
	// input wires to USB 1.1 Function Core
	always begin
		rx_dp <= JA_dp;
		rx_dn <= JA_dn;
	end
	
	initial begin
		rx_d = 1'b0;
		rx_dp = 1'b0;
		rx_dn = 1'b0;
	end
	
	// Instantiate the module
	usb1_top usb (
		 .clk_i(clk_i), 
		 .rst_i(rst_i), 
//		 .phy_tx_mode(phy_tx_mode), 
//		 .usb_rst(usb_rst), 
		 .loop(loop), 
//		 .dropped_frame(dropped_frame), 
//		 .misaligned_frame(misaligned_frame), 
//		 .crc16_err(crc16_err), 
//		 .v_set_int(v_set_int), 
//		 .v_set_feature(v_set_feature), 
//		 .wValue(wValue), 
//		 .wIndex(wIndex), 
//		 .vendor_data(vendor_data), 
		 .tx_dp(tx_dp), 
		 .tx_dn(tx_dn), 
		 .tx_oe(tx_oe), 
		 .rx_d(rx_d), 
		 .rx_dp(rx_dp), 
		 .rx_dn(rx_dn),
		 .ep1_din(ep1_din), 
		 .ep1_we(ep1_we), 
		 .ep1_stat(ep1_stat), 
		 .ep2_dout(ep2_dout), 
		 .ep2_re(ep2_re), 
		 .ep2_stat(ep2_stat)
//		 .ep3_din(ep3_din), 
//		 .ep3_we(ep3_we), 
//		 .ep3_stat(ep3_stat), 
//		 .ep4_dout(ep4_dout), 
//		 .ep4_re(ep4_re), 
//		 .ep4_stat(ep4_stat), 
//		 .ep5_din(ep5_din), 
//		 .ep5_we(ep5_we), 
//		 .ep5_stat(ep5_stat), 
//		 .iso_idle(iso_idle), 
//		 .bulk_idle(bulk_idle), 
//		 .clr_iso(clr_iso), 
//		 .clr_bulk(clr_bulk)
		 );

	// state machine behaviour
	reg [7:0] data1 = 8'b1111_1010;
	reg [7:0] data2 = 8'b1111_1010;
	reg [7:0] data3 = 8'b1111_1010;
	reg [7:0] data4 = 8'b1111_1010;
	integer iterator;
	initial begin
		iterator = 0;
	end
	always @(posedge clk_i) begin
		iterator =1 ;
		ep1_din
	end

endmodule
