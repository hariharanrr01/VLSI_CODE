`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:59:25 07/26/2023
// Design Name:   UPDOWN_COUTER
// Module Name:   D:/20L118/UPDOWN_COUNTER/UPDOWN_COUNTERTEST.v
// Project Name:  UPDOWN_COUNTER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UPDOWN_COUTER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R

module UPDOWN_COUNTERTEST;

	// Inputs
	reg clk;
	reg reset;
	reg up_down;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	UPDOWN_COUTER uut (
		.clk(clk), 
		.reset(reset), 
		.up_down(up_down), 
		.count(count)
	);
   always #100 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		up_down = 0;

		// Wait 100 ns for global reset to finish
		#100;reset=0;up_down=1;
		#100;reset=1;up_down=0;
        
		// Add stimulus here

	end
      
endmodule

