`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 13:35:38
// Design Name: 
// Module Name: clk_div1
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

module clk_div1(clk,rst,out_1);
input clk;
input rst;
output out_1=0;
reg [26:0]Q2;
reg out_1;
always @(posedge clk or posedge rst)
if(rst==1)begin Q2<=27'b0; out_1<=0; end
else if (Q2==27'd100000000)begin Q2<=27'b0; out_1<=1; end
else begin  Q2<=Q2+1; out_1<=0;end
endmodule
