`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:05:22 07/28/2023
// Design Name:   LFSR
// Module Name:   D:/20L118/LFSR/LFSRTEST.v
// Project Name:  LFSR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LFSR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LFSRTEST;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire [2:0] q;

	// Instantiate the Unit Under Test (UUT)
	LFSR uut (
		.rst(rst), 
		.clk(clk), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		rst = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;rst=1;clk=1;
		#100;rst=0;clk=0;
		#100;clk=1;
	   #100;clk=0;
		#100;clk=1;
	   #100;clk=0;	
		#100;clk=1;
	   #100;clk=0;	
		#100;clk=1;
	   #100;clk=0;	
		
        
		// Add stimulus here

	end
      
endmodule

