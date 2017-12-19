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


/*
	// USB Misc
	phy_tx_mode, usb_rst, loop,

	// Interrupts
	dropped_frame, misaligned_frame,
	crc16_err,

	// Vendor Features
	v_set_int, v_set_feature, wValue,
	wIndex, vendor_data,

	// USB PHY Interface
	tx_dp, tx_dn, tx_oe,
	rx_d, rx_dp, rx_dn,

	// Endpoint Interface
	ep1_din,  ep1_we, ep1_stat,
	ep2_dout, ep2_re, ep2_stat,
	ep3_din,  ep3_we, ep3_stat,
	ep4_dout, ep4_re, ep4_stat,
	ep5_din,  ep5_we, ep5_stat,

	// Clearing FIFOs
	iso_idle, bulk_idle,
	clr_iso, clr_bulk	
*/

module Nexys3_USB_Interface(
	input clk,
	input reset,
	
	// Pmod outputs
	output reg [7:0]JA,
	output reg [7:0]JB,
	output reg [7:0]JC,
	output reg [7:0]JD
	);
	
	// input/output 
	
	// Endpoint Interfaces
	
	// local wire and registers 
	
   // instantiations
   usb1_top usb (
   .phy_tx_mode         (),
   .usb_rst             (),
   .loop                (),
   .dropped_frame       (),
   .misaligned_frame    (),
   .crc16_err           (),
   .v_set_int           (),
   .v_set_feature       (), 
   .wValue              (),
   .wIndex              (),
   .vendor_data         (),
   .tx_dp               (),
   .tx_dn               (),
   .tx_oe               (),
   .rx_d                (),
   .rx_dp               (),
   .rx_dn               (),
   .ep1_din             (),  
   .ep1_we              (),
   .ep1_stat            (),
   .ep2_dout            (),
   .ep2_re              (),
   .ep2_stat            (),
   .ep3_din             (),
   .ep3_we              (),
   .ep3_stat            (),
   .ep4_dout            (),
   .ep4_re              (),
   .ep4_stat            (),
   .ep5_din             (),
   .ep5_we              (),
   .ep5_stat            (),
   .iso_idle            (),
   .bulk_idle           (),
   .clr_iso             (),
   .clr_bulk            ()
   );


endmodule
