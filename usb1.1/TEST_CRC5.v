`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:21:51 01/06/2018
// Design Name:   usb1_crc5
// Module Name:   C:/Users/jimmy/Desktop/USB_Research/usb1.1/TEST_CRC5.v
// Project Name:  usb1.1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: usb1_crc5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_CRC5;

	// Inputs
	reg [4:0] crc_in;
	reg [10:0] din;

	// Outputs
	wire [4:0] crc_out;

	// Instantiate the Unit Under Test (UUT)
	usb1_crc5 uut (
		.crc_in(crc_in), 
		.din(din), 
		.crc_out(crc_out)
	);

	initial begin
		// Initialize Inputs
		crc_in = 5'b00000;
		din = 11'b00000000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//*********************//
		#10;
		crc_in = 5'b00000;
		din = 11'b10101010101;
		//*********************//
		#10;
		crc_in = 5'b11100;
		din = 11'b00001111111;
		//*********************//
		#10;
		crc_in = 5'b00011;
		din = 11'b00001101010;
		//*********************//
		#10;
		crc_in = 5'b00011;
		din = 11'b11000111111;
		//*********************//
		#10;
		crc_in = 5'b10101;
		din = 11'b00010011011;
		//*********************//
		#10;
		crc_in = 5'b01110;
		din = 11'b11110000001;
		//*********************//
	end
endmodule

