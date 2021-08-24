`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/18 12:35:17
// Design Name: 
// Module Name: clk_div
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

module clk_div(clk,rst,out_500);
input clk;
input rst;
output out_500=0;
reg [17:0]Q2;
reg out_500;
always @(posedge clk or posedge rst)
if(rst==1)begin Q2<=18'b0; out_500<=0; end
else if (Q2==18'd200000)begin Q2<=18'b0; out_500<=1; end
else begin  Q2<=Q2+1; out_500<=0;end
endmodule