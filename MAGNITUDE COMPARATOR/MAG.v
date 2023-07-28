`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:05:37 07/28/2023 
// Design Name: 
// Module Name:    MAG 
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
module MAG ( a ,b ,equal ,greater ,lower );
output equal ;
output greater ;
output lower ;
input a ;
input b ;
assign equal = a ~^ b;
assign lower = (~a) & b;
assign greater = a & (~b);

endmodule