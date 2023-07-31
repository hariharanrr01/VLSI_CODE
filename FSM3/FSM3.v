`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:07:49 07/31/2023 
// Design Name: 
// Module Name:    FSM3 
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
module FSM3(seq,clk,rst,dout);
input clk,rst,seq;
output reg dout;
parameter W=2'b00;
parameter X=2'b01;
parameter Y=2'b10;
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
W:begin
if(seq)
next=X;
else
next=Y;
end
X:begin
if(seq)
next=Y;
dout=1'b0;
end
Y:begin
if(seq)
next=W;
else
next=X;
end
default:next=W;
endcase
end
always @(current)
begin 
 case(current) 
 W:   dout = 0;
 X:   dout = 1;
 Y:  dout = 0;
 default:  dout = 0;
 endcase
end 
endmodule
