`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:30 07/29/2023 
// Design Name: 
// Module Name:    FSM4 
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
module FSM4(seq,clk,rst,dout);
input clk,rst,seq;
output reg dout;
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;
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
s0:begin
if(seq)
next=s1;
else
next=s0;
end
s1:begin
if(seq)
next=s2;
else
next=s1;
end
s2:begin
if(seq)
dout=1'b1;
next=s3;
end
s3:begin
if(seq)
next=s2;
else
next=s3;
end
default:next=s0;
endcase
end
always @(current)
begin 
 case(current) 
 s0:   dout = 0;
 s1:   dout = 0;
 s2:  dout = 1;
 s3:   dout = 0;
 default:  dout = 0;
 endcase
end 
endmodule
