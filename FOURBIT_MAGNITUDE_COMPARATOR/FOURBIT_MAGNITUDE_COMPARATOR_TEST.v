`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:11:58 07/28/2023
// Design Name:   FOURBIT_MAGNITUDE_COMPARATOR
// Module Name:   D:/20L118/FOURBIT_MAGNITUDE_COMPARATOR/FOURBIT_MAGNITUDE_COMPARATOR_TEST.v
// Project Name:  FOURBIT_MAGNITUDE_COMPARATOR
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FOURBIT_MAGNITUDE_COMPARATOR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R
module FOURBIT_MAGNITUDE_COMPARATOR_TEST;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire less;
	wire equal;
	wire greater;

	// Instantiate the Unit Under Test (UUT)
	FOURBIT_MAGNITUDE_COMPARATOR uut (
		.A(A), 
		.B(B), 
		.less(less), 
		.equal(equal), 
		.greater(greater)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		  #100;A=4'b0001;B=4'b0100;
        #100;A=4'b0101;B=4'b0100;
		  #100;A=4'b0001;B=4'b1100;
		  #100;A=4'b0011;B=4'b0100;
        
		// Add stimulus here

	end
      
endmodule

