`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 11:26:03
// Design Name: 
// Module Name: lab5
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


module lab5(clk,rst,switch,eq,X,Y,A,C,overflow);
input switch;
input eq;
input clk;
input rst;
input [3:0]X;
input [3:0]Y;
output [3:0]A;
output [6:0]C;
output overflow;
wire [3:0]Q;
wire [3:0]q_0;
wire [3:0]q_1;
wire [3:0]q_2;
wire [3:0]q_3;
wire [3:0]inr_0;
wire [3:0]inr_1;
wire [3:0]inr_2;
wire [3:0]inr_3;
wire [3:0]inc_0;
wire [3:0]inc_1;
wire [3:0]inc_2;
wire [3:0]inc_3;
wire [6:0]out_0;
wire [6:0]out_1;
wire [6:0]out_2;
wire [6:0]out_3;
wire clk_500;
wire clk_1;
wire roll;
ring_counter r_c(rst,clk_500,Q,A);

mux(out_3,out_2,out_1,out_0,Q,C);

roll r(clk_1,rst,inr_0,inr_1,inr_2,inr_3);
calcu cal(X,Y,eq,inc_1,inc_0,overflow);
mux_a ma(inr_3,inr_2,inr_1,inr_0,inc_1,inc_0,q_3,q_2,q_1,q_0,switch);

SSD_0 s0(q_0,out_0);
SSD_1 s1(q_1,out_1);
SSD_2 s2(q_2,out_2);
SSD_3 s3(q_3,out_3);
clk_div_500 c1(clk,rst,clk_500);
clk_div1 c2(clk,rst,clk_1);

endmodule
