`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:48 07/26/2023 
// Design Name: 
// Module Name:    DFLIPFLOP 
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
module dflip(d,clk,q,qb);
input d,clk;
output q,qb;
reg q,qb;
always @(*)
begin 
q=d;
qb=~d;
end
endmodule
