`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:03:26 07/26/2023
// Design Name:   MUX
// Module Name:   D:/20L118/MUX/MUXTEST.v
// Project Name:  MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R
module MUXTEST;

	// Inputs
	reg [3:0] i;
	reg [1:0] s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	MUX uut (
		.i(i), 
		.s(s), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		i = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;i[0]=1'b0;s[0]=1'b0;s[1]=1'b0;
		#100;i[1]=1'b1;s[0]=1'b1;s[1]=1'b0;
      #100;i[2]=1'b0;s[0]=1'b0;s[1]=1'b1;
		#100;i[3]=1'b1;s[0]=1'b1;s[1]=1'b1;
        
		// Add stimulus here

	end
      
endmodule

