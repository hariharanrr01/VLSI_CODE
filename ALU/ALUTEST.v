`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:19:47 07/26/2023
// Design Name:   ALU
// Module Name:   D:/20L118/ALU/ALUTEST.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
//20L118 HARIHARAN R R
module ALUTEST;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg [2:0] s;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		a = 4'b1001;b = 4'b0011;s = 3'b000;
		#100 a = 4'b1001;b = 4'b1011;s = 3'b001;
		#100 a = 4'b1001;b = 4'b0111;s = 3'b010;
		#100 a = 4'b1101;b = 4'b1011;s = 3'b011;
		#100 a = 4'b1011;b = 4'b0111;s = 3'b100;
		#100 a = 4'b1010;b = 4'b1011;s = 3'b101;
		#100 a = 4'b1110;b = 4'b0111;s = 3'b110;
		#100 a = 4'b0101;b = 4'b1011;s = 3'b111;
        
		// Add stimulus here

	end
      
endmodule

