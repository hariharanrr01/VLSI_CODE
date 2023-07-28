`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:53:05 07/26/2023
// Design Name:   BINARY4BITSUB
// Module Name:   D:/20L118/BINARY4BITSUB/BINARY4BITSUBTEST.v
// Project Name:  BINARY4BITSUB
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BINARY4BITSUB
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R
module BINARY4BITSUBTEST;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	BINARY4BITSUB uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100 a=4'b1000; b=4'b1000;
		#100 a=4'b0100; b=4'b0100;
		#100 a=4'b0010; b=4'b0010;
		#100 a=4'b0001; b=4'b0001;
      #100 a=4'b0011; b=4'b0101; 
        
		// Add stimulus here

	end
      
endmodule

