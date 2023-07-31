`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:57:39 07/29/2023
// Design Name:   FSM6
// Module Name:   D:/20L118/FSM6/FSM6TEST.v
// Project Name:  FSM6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM6
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R
module FSM6TEST;

	// Inputs
	reg seq;
	reg clk;
	reg rst;

	// Outputs
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	FSM6 uut (
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
		initial begin
		// Wait 100 ns for global reset to finish
		#10 rst=1'b0;seq=1'b0;
		#100 rst=1'b0;seq=1'b1;
		#20 rst=1'b1;seq=1'b0;
		#20 rst=1'b1;seq=1'b1;
        
		// Add stimulus here

	end
      
endmodule

