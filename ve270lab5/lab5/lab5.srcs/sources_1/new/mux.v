`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 14:30:39
// Design Name: 
// Module Name: mux
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
module mux(I3,I2,I1,I0,sel,out);
input [7:0]I3;
input [7:0]I2;
input [7:0]I1;
input [7:0]I0;
input [3:0]sel;
output [7:0]out;
reg [7:0]out;
always@(sel)begin
    case(sel)
    4'b1000:out<=I3;
    4'b0100:out<=I2;
    4'b0010:out<=I1;
    4'b0001:out<=I0;
    default out=0;
    endcase
end
endmodule
