`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:25:11 01/06/2018
// Design Name:   usb1_ep
// Module Name:   C:/Users/jimmy/Desktop/USB_Research/usb1.1/test.v
// Project Name:  usb1.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: usb1_ep
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg rst;
	reg clr;
	reg [3:0] ep_sel;
	reg [7:0] usb_din;
	reg usb_we;
	reg usb_re;
	reg [7:0] ep_din;
	reg ep_re;
	reg ep_we;

	// Outputs
	wire [7:0] usb_dout;
	wire [7:0] ep_dout;
	wire [3:0] ep_stat;

	// Instantiate the Unit Under Test (UUT)
	usb1_ep uut (
		.clk(clk), 
		.rst(rst), 
		.clr(clr), 
		.ep_sel(ep_sel), 
		.usb_dout(usb_dout), 
		.usb_din(usb_din), 
		.usb_we(usb_we), 
		.usb_re(usb_re), 
		.ep_din(ep_din), 
		.ep_dout(ep_dout), 
		.ep_re(ep_re), 
		.ep_we(ep_we), 
		.ep_stat(ep_stat)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		clr = 0;
		ep_sel = 4'b1111;
		usb_din = 8'b00000000;
		usb_we = 0;
		usb_re = 0;
		ep_din = 8'b000000000;
		ep_re = 0;
		ep_we = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//************************************************//
		#10;
		rst = 1'b0;
		clr = 1'b0;
		ep_sel = 4'hA;
		usb_din = 8'hAA;
		usb_we = 1'b1;
		usb_re = 1'b0;
		ep_din = 8'hBB;
		ep_re = 1'b0;
		ep_we = 1'b0;
		//************************************************//
		#10;
		rst = 1'b0;
		clr = 1'b0;
		ep_sel = 4'h0;
		usb_din = 8'hBB;
		usb_we = 1'b1;
		usb_re = 1'b0;
		ep_din = 8'hBB;
		ep_re = 1'b0;
		ep_we = 1'b0;
		//************************************************//
		#10;
		rst = 1'b0;
		clr = 1'b0;
		ep_sel = 4'h2;
		usb_din = 8'hCC;
		usb_we = 1'b1;
		usb_re = 1'b0;
		ep_din = 8'hBB;
		ep_re = 1'b0;
		ep_we = 1'b0;
		//************************************************//
		#10;
		rst = 1'b0;
		clr = 1'b0;
		ep_sel = 4'h3;
		usb_din = 8'hEE;
		usb_we = 1'b1;
		usb_re = 1'b0;
		ep_din = 8'hBB;
		ep_re = 1'b0;
		ep_we = 1'b0;
		//************************************************//
		#10;
		rst = 1'b0;
		clr = 1'b0;
		ep_sel = 4'h4;
		usb_din = 8'hFF;
		usb_we = 1'b1;
		usb_re = 1'b0;
		ep_din = 8'hBB;
		ep_re = 1'b0;
		ep_we = 1'b0;
		//************************************************//
		#10;
		rst = 1'b0;
		clr = 1'b0;
		ep_sel = 4'h0;
		usb_din = 8'hFF;
		usb_we = 1'b0;
		usb_re = 1'b1;
		ep_din = 8'hBB;
		ep_re = 1'b0;
		ep_we = 1'b0;
		//************************************************//
		#10;
		rst = 1'b0;
		clr = 1'b0;
		ep_sel = 4'h1;
		usb_din = 8'hFF;
		usb_we = 1'b0;
		usb_re = 1'b1;
		ep_din = 8'hBB;
		ep_re = 1'b0;
		ep_we = 1'b0;
		//************************************************//
		#10;
		rst = 1'b0;
		clr = 1'b0;
		ep_sel = 4'h2;
		usb_din = 8'hFF;
		usb_we = 1'b0;
		usb_re = 1'b1;
		ep_din = 8'hBB;
		ep_re = 1'b0;
		ep_we = 1'b0;
		//************************************************//
		#10;
		rst = 1'b0;
		clr = 1'b0;
		ep_sel = 4'h3;
		usb_din = 8'hFF;
		usb_we = 1'b0;
		usb_re = 1'b1;
		ep_din = 8'hBB;
		ep_re = 1'b0;
		ep_we = 1'b0;
		
		
	end
always begin
	#5 clk = ~clk;
end
endmodule

