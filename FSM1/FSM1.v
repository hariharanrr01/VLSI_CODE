`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:50 07/29/2023 
// Design Name: 
// Module Name:    FSM1 
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
module FSM1(seq,clk,rst,dout);
input clk,rst,seq;
output reg dout;
parameter A=2'b00;
parameter B=2'b01;
parameter C=2'b10;
parameter D=2'b11;
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
A:begin
if(seq)
next=B;
else
next=A;
end
B:begin
if(seq)
next=C;
else
next=B;
end
C:begin
if(seq)
next=D;
else
next=C;
end
D:begin
if(seq)
next=A;
 dout=1'b1;
end
default:next=A;
endcase
end
always @(current)
begin 
 case(current) 
 A:   dout = 0;
 B:   dout = 0;
 C:  dout = 0;
 D:  dout = 1;
 default:  dout = 0;
 endcase
end 
endmodule
