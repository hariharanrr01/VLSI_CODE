`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:31 07/26/2023
// Design Name:   SISO
// Module Name:   D:/20L118/SISO/SISOTEST.v
// Project Name:  SISO
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SISO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

//20L118 HARIHARAN R R
module SISOTEST;

// Inputs
reg d;
reg clk;

// Outputs
wire [3:0] q;

// Instantiate the Unit Under Test (UUT)
SISO uut (
.d(d),
.clk(clk),
.q(q)
);
always#100 clk=~clk;
initial begin
// Initialize Inputs
d = 0;
clk = 0;

// Wait 100 ns for global reset to finish
#100;d=1;
       
// Add stimulus here

end
     
endmodule
