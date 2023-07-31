`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:50:10 07/29/2023 
// Design Name: 
// Module Name:    FSM5 
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
module FSM5(seq,clk,rst,dout);
input clk,rst,seq;
output reg dout;
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b10;
reg[2:0]current,next;
always @(posedge clk,posedge rst)
begin
if(rst)
current=2'b00;
else
current=next;
end
always @(current,seq)
begin
case(current)
s0:begin
if(seq==2'b00)
next=s0;
else if(seq==2'b01)
next=s1;
else if(seq==2'b10)
next=s2;
else
next=s3;
end
s1:begin
if(seq==2'b00)
next=s0;
else if(seq==2'b01)
next=s1;
else if(seq==2'b10)
next=s2;
else
next=s3;
end
s2:begin
if(seq==2'b00)
next=s0;
else if(seq==2'b01)
next=s1;
else if(seq==2'b10)
next=s2;
else
next=s3;
end
s3:begin
if(seq==2'b00)
next=s2;
else if(seq==2'b01)
next=s1;
else if(seq==2'b10)
next=s0;
else
next=s3;
dout=1'b1;
end
default:next=s0;
endcase
end
always @(current)
begin 
 case(current) 
 s0:   dout = 0;
 s1:   dout = 1;
 s2:  dout = 0;
  s3:  dout = 0;
 default:  dout = 0;
 endcase
end 
endmodule
