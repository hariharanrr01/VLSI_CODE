`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:45 07/28/2023 
// Design Name: 
// Module Name:    LFSR 
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
module LFSR(input rst,clk,output reg[2:0]q);
always@(posedge clk or posedge rst)
begin
if(rst)
begin
q=3'b100;
end
else
begin
q={q[0],q[1],(q[0]^q[2])};
end
end

endmodule
