`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/31 23:31:49
// Design Name: 
// Module Name: SSD_ten
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//from 1 to 5

module SSD_ten(in,out);
input [3:0] in;
output [6:0] out;
reg [6:0] out;
always@(in) begin
case (in)
              4'b0000: out<=7'b0000001; 
              4'b0001: out<=7'b1001111;                            
              4'b0010: out<=7'b0010010;                               
              4'b0011: out<=7'b0000110;                               
              4'b0100: out<=7'b1001100;                               
              4'b0101: out<=7'b0100100;      
endcase
end
endmodule
