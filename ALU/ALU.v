`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:01 07/26/2023 
// Design Name: 
// Module Name:    ALU 
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
	 module ALU(
    input [3:0] a,b,
    input [2:0] s,
    output reg [7:0] y
    );


always @(a,b,s) 

begin
case(s)

3'b000:y=a+b;

3'b001:y=a-b;

3'b010:y=a*b;

3'b011:y=a/b;

3'b100:y=a^b;

3'b101:y=~(a&b);

3'b110:y=a%b;

default:y=(~a)+1;

endcase

end

endmodule


