`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:33:23 07/29/2023
// Design Name:   FSM4
// Module Name:   D:/20L118/FSM4/FSM4TEST.v
// Project Name:  FSM4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R
module FSM4TEST;

	// Inputs
	reg seq;
	reg clk;
	reg rst;

	// Outputs
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	FSM4 uut (
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
      always #100 clk=~clk;
		// Wait 100 ns for global reset to finish
		initial begin
		#100 rst=1'b0;seq=1'b0;
	   #100 rst=1'b0;seq=1'b1;
		#100 rst=1'b1;seq=1'b0;
		#100 rst=1'b1;seq=1'b1;
        
		// Add stimulus here

	end
      
endmodule

