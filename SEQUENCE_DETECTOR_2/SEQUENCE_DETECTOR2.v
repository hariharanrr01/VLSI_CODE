`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:38 07/31/2023 
// Design Name: 
// Module Name:    SEQUENCE_DETECTOR2 
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
module SEQUENCE_DETECTOR2(seq,clk,rst,dout);
input clk,rst,seq;
output reg dout;
parameter A=2'b00;
parameter B=2'b01;
parameter C=2'b10;
parameter D=2'b10;
parameter E=2'b10;
parameter F=2'b10;
parameter G=2'b10;
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
next=A;
end
C:begin
if(seq)
next=C;
else
next=D;
end
D:begin
if(seq)
next=E;
else
next=A;
end
E:begin
if(seq)
next=F;
else
next=D;
end
F:begin
if(seq)
next=C;
else
next=G;
end
G:begin
if(seq)
next=E;
else
next=A;
dout=1'b1;
end
default:next=A;
endcase
end
always @(current)
begin 
 case(current) 
 A:   dout = 1'b0;
 B:   dout = 1'b0;
 C:  dout = 1'b0;
 D:  dout = 1'b0;
 E:  dout = 1'b0;
 F:  dout = 1'b0;
 G:  dout = 1'b1;
 default:  dout = 1'b0;
 endcase
end 
endmodule

