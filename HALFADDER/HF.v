`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:29 07/26/2023 
// Design Name: 
// Module Name:    HF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//20L118 - HARIHARAN R R
module HF(
    input a,b,
    output s,c
    );
	 assign s=a^b;
	 assign c=a&b;
endmodule
