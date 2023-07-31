`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:08:44 07/31/2023
// Design Name:   FSM3
// Module Name:   D:/20L118/FSM3/FSM3TEST.v
// Project Name:  FSM3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FSM3TEST;

	// Inputs
	reg seq;
	reg clk;
	reg rst;

	// Outputs
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	FSM3 uut (
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

		// Wait 100 ns for global reset to finish
		always #100 clk=~clk;
		initial begin
		#100 rst=1'b0;seq=2'b00;
		#100 rst=1'b1;seq=2'b01;
		#100 rst=1'b0;seq=2'b10;
		#100 rst=1'b1;seq=2'b11;
        
		// Add stimulus here

	end
      
endmodule

