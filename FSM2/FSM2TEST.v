`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:31:08 07/31/2023
// Design Name:   FSM2
// Module Name:   D:/20L118/FSM2/FSM2TEST.v
// Project Name:  FSM2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R
module FSM2TEST;

	// Inputs
	reg x;
	reg rst;
	reg clk;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	FSM2 uut (
		.x(x), 
		.rst(rst), 
		.clk(clk), 
		.y(y)
	);

	always #50 clk =~clk;
	
	initial begin
		// Initialize Inputs
		x = 0; rst = 1; clk =0;

		// Wait 100 ns for global reset to finish
		#100 rst=0;x=1;
		#100 x=0;
		#100 x=1;
		#100 x=0;
		#100 x=1;
		end
		endmodule