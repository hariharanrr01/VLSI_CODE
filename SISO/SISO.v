`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:44 07/26/2023 
// Design Name: 
// Module Name:    SISO 
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
module SISO(d,clk,q);
input d,clk;
output [3:0]q;
reg[3:0]q;
always@(posedge clk)
begin
q[3]<=d;
q[2]<=q[3];
q[1]<=q[2];
q[0]<=q[1];
end
endmodule
