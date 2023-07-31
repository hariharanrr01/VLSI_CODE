`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:16:31 07/31/2023
// Design Name:   SEQUENCE_DETECTOR_3
// Module Name:   D:/20L118/SEQUENCE_DETECTOR_3/SEQUENCE_DETECTOR_3_TEST.v
// Project Name:  SEQUENCE_DETECTOR_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SEQUENCE_DETECTOR_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R

module SEQUENCE_DETECTOR_3_TEST;

	// Inputs
	reg seq;
	reg clk;
	reg rst;

	// Outputs
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	SEQUENCE_DETECTOR_3 uut (
		.seq(seq), 
		.clk(clk), 
		.rst(rst), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		seq = 0;
		clk = 0;
		rst = 0;
      end
	   always #10 clk=~clk;
		initial begin
		// Wait 100 ns for global reset to finish
		#100 rst=1'b1;seq=1'b0;
		#10 rst=1'b0;seq=1'b0;
		#100 rst=1'b1;seq=1'b0;
		#100 rst=1'b0;seq=1'b1;
		#10 rst=1'b1;seq=1'b0;
		#10 rst=1'b1;seq=1'b1;
        
		// Add stimulus here

	end
      
endmodule

