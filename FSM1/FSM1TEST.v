`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:05:30 07/29/2023
// Design Name:   FSM1
// Module Name:   D:/20L118/FSM1/FSM1TEST.v
// Project Name:  FSM1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R
module FSM1TEST;

	// Inputs
	reg seq;
	reg clk;
	reg rst;

	// Outputs
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	FSM1 uut (
		.seq(seq), 
		.clk(clk), 
		.rst(rst), 
		.dout(dout)
	);

	initial begin
   clk = 0;
   forever #5 clk = ~clk;
    end 
		
		initial begin
		 seq = 0;
       rst = 1;
		 
		// Wait 100 ns for global reset to finish
		#30;
      rst = 0;
  #60;
  seq = 1;
  #30;
  seq = 0;
  #100;
  seq = 1; 
  #40;
  seq = 0; 
  #40;
  seq = 1; 
  #40;
  seq = 0;  
        
		// Add stimulus here

	end
      
endmodule

