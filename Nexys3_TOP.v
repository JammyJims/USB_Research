`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:49 02/08/2018 
// Design Name: 
// Module Name:    Nexys3_TOP 
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
`include "usb1_defines.v"
module Nexys3_TOP(
	input clk_i, 
	input rst_i, 
	// Pmod outputs to USB 1.1 interface
	inout dp, 
	inout dn,
	
	// Leds
	output reg [7:0] Led
	);
	
	// Physical interface wires
	wire tx_dp;
	wire tx_dn;
	wire tx_oe;
	wire rx_d;
	wire rx_dp;
	wire rx_dn;
	// bi-directional lines
	assign dp = tx_oe ? tx_dp : 1'bZ ;
	assign dn = tx_oe ? tx_dn : 1'bZ ;
	assign rx_dp = dp;
	assign rx_dn = dn;

	// USB configuration bits
	wire phy_tx_mode = 1'b0;
	wire usb_rst;
	wire dropped_frame;
	wire misaligned_frame;
	wire crc16_err;
	
	// Vendor Defined Features
	wire v_set_int;
	wire v_set_feature;
	wire [15:0] wValue;
	wire [15:0] wIndex;
	reg  [15:0] vendor_data;
	
	// end point in use
	wire usb_busy;
	wire [3:0] ep_sel;

	// configure end points
	wire [13:0] ep1_cfg;
	wire [13:0]	ep2_cfg;
	wire ep1_bf_en;
	wire [6:0] ep1_bf_size;
	wire ep2_bf_en;
	wire [6:0] ep2_bf_size;
	assign ep1_cfg = `INT | `IN | 14'd064;
	assign ep2_cfg = `INT | `OUT | 14'd064;
	assign ep1_bf_en = 0;
	assign ep1_bf_size = 7'b0000000;
	assign ep2_bf_en = 0;
	assign ep2_bf_size = 7'b0000000;
	// Endpoint Interface
	// Endpoint 1
	reg  [7:0] ep1_din;
	wire [7:0] ep1_dout = 8'b0000_0000;
	wire ep1_we;
	wire ep1_re;
	reg  ep1_empty;
	reg  ep1_full;
	// Endpoint 2
	wire [7:0] ep2_din = 8'b0000_0000;
	wire [7:0] ep2_dout;
	wire  ep2_we;
	wire  ep2_re;
	reg  ep2_empty;
	reg  ep2_full;

	always @(posedge clk_i) begin
		ep1_empty = 0;
		ep1_full = 0;
		if (ep1_we) begin
			ep1_din = 8'hAB;
			ep1_empty = 0;
			ep1_full = 1;
		end
	end
	
	initial begin
		Led = 8'b0000_1111;
	end
	always begin
		Led[6] = dp;
		Led[7] = dn;
	end

// Instantiate the module
usb1_core instance_name (
    .clk_i(clk_i), 
    .rst_i(rst_i), 
    .tx_dp(tx_dp), 
    .tx_dn(tx_dn), 
    .tx_oe(tx_oe), 
    .rx_d(rx_d), 
    .rx_dp(rx_dp), 
    .rx_dn(rx_dn), 
    .phy_tx_mode(phy_tx_mode), 
    .usb_rst(usb_rst), 
    .dropped_frame(dropped_frame), 
    .misaligned_frame(misaligned_frame), 
    .crc16_err(crc16_err), 
    .v_set_int(v_set_int), 
    .v_set_feature(v_set_feature), 
    .wValue(wValue), 
    .wIndex(wIndex), 
    .vendor_data(vendor_data), 
    .usb_busy(usb_busy), 
    .ep_sel(ep_sel), 
    .ep1_cfg(ep1_cfg), 
    .ep1_din(ep1_din), 
    .ep1_we(ep1_we), 
    .ep1_full(ep1_full), 
    .ep1_dout(ep1_dout), 
    .ep1_re(ep1_re), 
    .ep1_empty(ep1_empty), 
    .ep1_bf_en(ep1_bf_en), 
    .ep1_bf_size(ep1_bf_size), 
    .ep2_cfg(ep2_cfg), 
    .ep2_din(ep2_din), 
    .ep2_we(ep2_we), 
    .ep2_full(ep2_full), 
    .ep2_dout(ep2_dout), 
    .ep2_re(ep2_re), 
    .ep2_empty(ep2_empty), 
    .ep2_bf_en(ep2_bf_en), 
    .ep2_bf_size(ep2_bf_size)
//    .ep3_cfg(ep3_cfg), 
//    .ep3_din(ep3_din), 
//    .ep3_we(ep3_we), 
//    .ep3_full(ep3_full), 
//    .ep3_dout(ep3_dout), 
//    .ep3_re(ep3_re), 
//    .ep3_empty(ep3_empty), 
//    .ep3_bf_en(ep3_bf_en), 
//    .ep3_bf_size(ep3_bf_size), 
//    .ep4_cfg(ep4_cfg), 
//    .ep4_din(ep4_din), 
//    .ep4_we(ep4_we), 
//    .ep4_full(ep4_full), 
//    .ep4_dout(ep4_dout), 
//    .ep4_re(ep4_re), 
//    .ep4_empty(ep4_empty), 
//    .ep4_bf_en(ep4_bf_en), 
//    .ep4_bf_size(ep4_bf_size), 
//    .ep5_cfg(ep5_cfg), 
//    .ep5_din(ep5_din), 
//    .ep5_we(ep5_we), 
//    .ep5_full(ep5_full), 
//    .ep5_dout(ep5_dout), 
//    .ep5_re(ep5_re), 
//    .ep5_empty(ep5_empty), 
//    .ep5_bf_en(ep5_bf_en), 
//    .ep5_bf_size(ep5_bf_size), 
//    .ep6_cfg(ep6_cfg), 
//    .ep6_din(ep6_din), 
//    .ep6_we(ep6_we), 
//    .ep6_full(ep6_full), 
//    .ep6_dout(ep6_dout), 
//    .ep6_re(ep6_re), 
//    .ep6_empty(ep6_empty), 
//    .ep6_bf_en(ep6_bf_en), 
//    .ep6_bf_size(ep6_bf_size), 
//    .ep7_cfg(ep7_cfg), 
//    .ep7_din(ep7_din), 
//    .ep7_we(ep7_we), 
//    .ep7_full(ep7_full), 
//    .ep7_dout(ep7_dout), 
//    .ep7_re(ep7_re), 
//    .ep7_empty(ep7_empty), 
//    .ep7_bf_en(ep7_bf_en), 
//    .ep7_bf_size(ep7_bf_size)
    );




endmodule
