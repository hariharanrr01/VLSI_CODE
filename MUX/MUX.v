`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:47 07/26/2023 
// Design Name: 
// Module Name:    MUX 
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
//20L118 HARIHARAN R R
module MUX(i,s,o);
input[3:0]i;
input[1:0]s;
output o;
assign o=((i[0]&~s[0]&~s[1])|(i[1]&~s[0]&s[1])|(i[2]&s[0]&~s[1])|(i[3]&s[0]&s[1]));

endmodule