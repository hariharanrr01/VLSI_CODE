`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:11:30 07/24/2023
// Design Name:   DEMUX1TO4
// Module Name:   D:/20L118/DEMUX1TO4/DEMUX1TO4TEST.v
// Project Name:  DEMUX1TO4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DEMUX1TO4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DEMUX1TO4TEST;

	// Inputs
	reg a;
	reg [3:0] s;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	DEMUX1TO4 uut (
		.a(a), 
		.s(s), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		
		#100 s=2'b00; a=0;    
		#100 s=2'b00; a=1; 
      #100 s=2'b01; a=0; 
      #100 s=2'b01; a=1; 
      #100 s=2'b10; a=0; 
      #100 s=2'b10; a=1; 
      #100 s=2'b11; a=0; 
      #100 s=2'b11; a=1; 
        
		// Add stimulus here

	end
      
endmodule

