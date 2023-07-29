`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:29:06 07/29/2023
// Design Name:   MEALYMODEL
// Module Name:   D:/20L118/MEALAYMODEL/MEALYMODELTEST.v
// Project Name:  MEALAYMODEL
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MEALYMODEL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MEALYMODELTEST;

	// Inputs
	reg x;
	reg rst;
	reg clk;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	MEALYMODEL uut (
		.x(x), 
		.rst(rst), 
		.clk(clk), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100 rst=1;x=0;
		#100 rst=0;x=0;
		#100 x=1;
        
		// Add stimulus here

	end
      
endmodule

