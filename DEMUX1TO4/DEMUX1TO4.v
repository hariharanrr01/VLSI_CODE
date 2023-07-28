`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:01:31 07/24/2023 
// Design Name: 
// Module Name:    DEMUX1TO4 
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
module DEMUX1TO4(
    input a,
    input [3:0] s,
    output reg[3:0] out   
    );
	 always @(*)
	 begin
	 case (s)
	 2'b00: out[0]=a;
	 2'b01: out[1]=a;
	 2'b10: out[2]=a;
	 default:out[3]=a;
    endcase
    end	 
endmodule
