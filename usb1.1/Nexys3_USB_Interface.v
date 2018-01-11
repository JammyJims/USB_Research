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
	inout JA_dn
	);
	
	wire tx_dp;
	wire tx_dn;
	wire tx_oe;
	reg rx_d;
	reg rx_dp;
	reg rx_dn;
	
	// tristate buffer to handle bi-directional data lines.
	assign JA_dp = rx_d ? rx_dp : 1'hZ;
	assign JA_dn = rx_d ? rx_dn : 1'hZ;
	assign tx_dp = JA_dp;
	assign tx_dn = JA_dn;
	
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
//		 .loop(loop), 
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
		 .rx_dn(rx_dn)
//		 .ep1_din(ep1_din), 
//		 .ep1_we(ep1_we), 
//		 .ep1_stat(ep1_stat), 
//		 .ep2_dout(ep2_dout), 
//		 .ep2_re(ep2_re), 
//		 .ep2_stat(ep2_stat), 
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

endmodule
