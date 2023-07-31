`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:12 07/29/2023
// Design Name:   FSM5
// Module Name:   D:/20L118/FSM5/FSM5TEST.v
// Project Name:  FSM5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R

module FSM5TEST;

	// Inputs
	reg seq;
	reg clk;
	reg rst;

	// Outputs
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	FSM5 uut (
		.seq(seq), 
		.clk(clk), 
		.rst(rst), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		seq = 0;
		clk = 1;
		rst = 0;
		end
    always #100 clk=~clk;
	 initial begin
		// Wait 100 ns for global reset to finish
		#10 rst=1'b0;seq=2'b00;
		#10 rst=1'b0;seq=2'b11;
      #10 rst=1'b1;seq=2'b01;
		#20 rst=1'b1;seq=2'b10;
      #20 rst=1'b0;seq=2'b10;
		#20 rst=1'b1;seq=2'b11;
        
		// Add stimulus here

	end
      
endmodule

