`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:49 07/29/2023 
// Design Name: 
// Module Name:    FSM6 
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
module FSM6(seq,clk,rst,dout);
input clk,rst,seq;
output reg dout;
parameter si=2'b00;
parameter s0=2'b01;
parameter s1=2'b10;
reg[2:0]current,next;
always @(posedge clk,posedge rst)
begin
if(rst)
current=1'b0;
else
current=next;
end
always @(current,seq)
begin
case(current)
si:begin
if(seq)
next=s0;
else
next=s1;
end
s0:begin
if(seq)
next=s1;
dout=1'b1;
end
s1:begin
if(seq)
next=s1;
else
next=s0;
end
default:next=si;
endcase
end
always @(current)
begin 
 case(current) 
 si:   dout = 0;
 s0:   dout = 1;
 s1:  dout = 0;
 default:  dout = 0;
 endcase
end 
endmodule
