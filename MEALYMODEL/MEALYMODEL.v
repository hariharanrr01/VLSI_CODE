`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:27:16 07/29/2023 
// Design Name: 
// Module Name:    MEALYMODEL 
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
module MEALYMODEL(input x,rst,clk,output reg y);
reg [1:0]p,n;
parameter A=2'b00,B=2'b01,C=2'b10,D=2'b11;
always @(posedge clk,posedge rst)begin
if(rst)
begin
 p=A;
 y=1'b1;
 end
else
p=n;
end
always@(p or x)
begin
y=1'b0;
 case(p)
 A:
 if(x) n=B;
 else n=A;
 B:
 if(x) n=B;
 else  n=C;
 C: 
 if(x) n=D;
 else n=A;
 D:
 if(x)begin n=B; y=1'b1; end
 else  n=C;
 
 endcase
 end

endmodule
