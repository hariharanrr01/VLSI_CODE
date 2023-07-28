`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:06:45 07/28/2023
// Design Name:   MAG
// Module Name:   D:/20L118/MAG/MAGTEST.v
// Project Name:  MAG
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MAG
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
//20L118 HARIHARAN R R
module MAGTEST;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire equal;
	wire greater;
	wire lower;

	// Instantiate the Unit Under Test (UUT)
	MAG uut (
		.a(a), 
		.b(b), 
		.equal(equal), 
		.greater(greater), 
		.lower(lower)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;a=1'b0;b=1'b1;
      #100;a=1'b1;b=1'b1;  
		#100;a=1'b0;b=1'b0;
        
		// Add stimulus here

	end
      
endmodule

