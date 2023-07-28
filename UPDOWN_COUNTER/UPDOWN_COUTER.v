`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:58:31 07/26/2023 
// Design Name: 
// Module Name:    UPDOWN_COUTER 
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
module UPDOWN_COUTER(input clk,reset,up_down,
output reg [7:0] count);
always @(posedge clk, negedge reset) begin
if (!reset) begin
count <= 2'b0;
end
else if (up_down) begin
count <= count + 1;
end
else begin
count <= count - 1;
end
end
endmodule

