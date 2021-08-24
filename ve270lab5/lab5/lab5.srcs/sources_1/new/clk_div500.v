`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/31 23:48:48
// Design Name: 
// Module Name: clk_div500
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


module clk_div500(clk,rst ,out_500);
input clk;
input rst;
output out_500=0;
reg [17:0]Q;
reg out_500;
always @(posedge clk or posedge rst)
if(rst==1)begin Q<=18'b0; out_500<=0; end
else if (Q==18'd200000)begin Q<=18'b0; out_500<=1; end
else begin  Q<=Q+1; out_500<=0;end
endmodule


module clk_div1(clk,rst,out_1);
input clk;
input rst;
output out_1=0;
reg [26:0]Q2;
reg out_1;
always @(posedge clk or rst)
if(rst==1)begin Q2<=27'b0; out_1<=0; end
else if (Q2==27'd100000000)begin Q2<=27'b0; out_1<=1; end
else begin  Q2<=Q2+1; out_1<=0;end
endmodule