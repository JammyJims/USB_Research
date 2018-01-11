`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:44 01/10/2018
// Design Name:   usb1_ctrl
// Module Name:   C:/Users/jimmy/Desktop/USB_Research/usb1.1/usb1_ctrl_TEST.v
// Project Name:  usb1.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: usb1_ctrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module usb1_ctrl_TEST;

	// Inputs
	reg clk;
	reg rst;
	reg ctrl_setup;
	reg ctrl_in;
	reg ctrl_out;
	reg [7:0] ep0_din;
	reg [3:0] ep0_stat;
	reg [10:0] frame_no;
	reg [15:0] vendor_data;

	// Outputs
	wire [7:0] ep0_dout;
	wire ep0_re;
	wire ep0_we;
	wire [7:0] ep0_size;
	wire send_stall;
	wire [6:0] funct_adr;
	wire configured;
	wire halt;
	wire v_set_int;
	wire v_set_feature;
	wire [15:0] wValue;
	wire [15:0] wIndex;

	// Instantiate the Unit Under Test (UUT)
	usb1_ctrl uut (
		.clk(clk), 
		.rst(rst), 
		.ctrl_setup(ctrl_setup), 
		.ctrl_in(ctrl_in), 
		.ctrl_out(ctrl_out), 
		.ep0_din(ep0_din), 
		.ep0_dout(ep0_dout), 
		.ep0_re(ep0_re), 
		.ep0_we(ep0_we), 
		.ep0_stat(ep0_stat), 
		.ep0_size(ep0_size), 
		.send_stall(send_stall), 
		.frame_no(frame_no), 
		.funct_adr(funct_adr), 
		.configured(configured), 
		.halt(halt), 
		.v_set_int(v_set_int), 
		.v_set_feature(v_set_feature), 
		.wValue(wValue), 
		.wIndex(wIndex), 
		.vendor_data(vendor_data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		ctrl_setup = 0;
		ctrl_in = 0;
		ctrl_out = 0;
		ep0_din = 8'b0000_0000;
		ep0_stat = 4'b0000;
		frame_no = 11'b0000_0000_000;
		vendor_data = 16'b0000_0000_0000_0000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//************************************//
		#10;
		rst = 0;
		ctrl_setup = 0;
		ctrl_in = 1;
		ctrl_out = 0;
		ep0_din = 8'b1111_1100;
		ep0_stat = 4'b0000;
		frame_no = 11'b0000_0000_000;
		vendor_data = 16'b0000_0000_0000_0000;
		//************************************//
		#10;
		rst = 0;
		ctrl_setup = 0;
		ctrl_in = 0;
		ctrl_out = 0;
		ep0_din = 8'b0000_0000;
		ep0_stat = 4'b0000;
		frame_no = 11'b0000_0000_000;
		vendor_data = 16'b0000_0000_0000_0000;
		//************************************//
		#10;
		rst = 0;
		ctrl_setup = 0;
		ctrl_in = 0;
		ctrl_out = 1;
		ep0_din = 8'b0000_0000;
		ep0_stat = 4'b0000;
		frame_no = 11'b0000_0000_000;
		vendor_data = 16'b0000_0000_0000_0000;
		//************************************//
		#10;
		rst = 0;
		ctrl_setup = 0;
		ctrl_in = 0;
		ctrl_out = 0;
		ep0_din = 8'b0000_0000;
		ep0_stat = 4'b0000;
		frame_no = 11'b0000_0000_000;
		vendor_data = 16'b0000_0000_0000_0000;
		//************************************//
		#10;
		rst = 0;
		ctrl_setup = 0;
		ctrl_in = 0;
		ctrl_out = 0;
		ep0_din = 8'b0000_0000;
		ep0_stat = 4'b0000;
		frame_no = 11'b0000_0000_000;
		vendor_data = 16'b0000_0000_0000_0000;
		//************************************//
	end
	always begin
		#5 clk = ~clk;
	end
endmodule

