`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:39:31 01/06/2018
// Design Name:   usb_phy
// Module Name:   C:/Users/jimmy/Desktop/USB_Research/usb1.1/TEST_PHY.v
// Project Name:  usb1.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: usb_phy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_PHY;

	// Inputs
	reg clk;
	reg rst;
	reg phy_tx_mode;
	reg rxd;
	reg rxdp;
	reg rxdn;
	reg [7:0] DataOut_i;
	reg TxValid_i;

	// Outputs
	wire usb_rst;
	wire txdp;
	wire txdn;
	wire txoe;
	wire TxReady_o;
	wire RxValid_o;
	wire RxActive_o;
	wire RxError_o;
	wire [7:0] DataIn_o;
	wire [1:0] LineState_o;

	// Instantiate the Unit Under Test (UUT)
	usb_phy uut (
		.clk(clk), 
		.rst(rst), 
		.phy_tx_mode(phy_tx_mode), 
		.usb_rst(usb_rst), 
		.txdp(txdp), 
		.txdn(txdn), 
		.txoe(txoe), 
		.rxd(rxd), 
		.rxdp(rxdp), 
		.rxdn(rxdn), 
		.DataOut_i(DataOut_i), 
		.TxValid_i(TxValid_i), 
		.TxReady_o(TxReady_o), 
		.RxValid_o(RxValid_o), 
		.RxActive_o(RxActive_o), 
		.RxError_o(RxError_o), 
		.DataIn_o(DataIn_o), 
		.LineState_o(LineState_o)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		phy_tx_mode = 0;
		rxd = 0;
		rxdp = 0;
		rxdn = 0;
		DataOut_i = 8'b00000000;
		TxValid_i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//************************//
		#10;
		rst = 1;
		phy_tx_mode = 1;
		rxd = 0;
		rxdp = 0;
		rxdn = 0;
		DataOut_i = 8'hAB;
		TxValid_i = 1;
		//************************//
		#10;
		rst = 1;
		phy_tx_mode = 1;
		rxd = 0;
		rxdp = 0;
		rxdn = 0;
		DataOut_i = 8'hCD;
		TxValid_i = 0;
		//************************//
		#10;
		rst = 1;
		phy_tx_mode = 1;
		rxd = 0;
		rxdp = 0;
		rxdn = 0;
		DataOut_i = 8'h72;
		TxValid_i = 1;
	end
	always begin
		#5 clk = ~clk;
	end
endmodule

