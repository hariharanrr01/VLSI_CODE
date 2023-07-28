`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:33 07/26/2023
// Design Name:   dflip
// Module Name:   D:/20L118/DFLIPFLOP/DFLIPFLOPTEST.v
// Project Name:  DFLIPFLOP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dflip
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R
module DFLIPFLOPTEST;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	dflip uut (
		.d(d), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;d=1'b0;clk=1'b0;
      #100;d=1'b1;clk=1'b1; 
		// Add stimulus here

	end
      
endmodule

