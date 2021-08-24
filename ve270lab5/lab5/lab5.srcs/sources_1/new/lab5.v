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


module lab5(clk,rst,A,C);

input clk;
input rst;
output [3:0]A;
output [6:0]C;

wire [3:0]Q;
wire [7:0]Q_L;
wire [7:0]Q_R;
wire [7:0]out_L;
wire [7:0]out_R;
wire clk_500;
wire clk_1;
reg [7:0] H3=8'b11111111;
reg [7:0] H2=8'b11111111;
ring_counter r_c(rst,clk_500,Q,A);

mux(H3,H2,out_L,out_R,Q,C);
timer t(clk_1,rst,Q_L,Q_R);
SSD_ten s_t(Q_L,out_L);
SSD_ones s_o(Q_R,out_R);
clk_div_500 c1(clk,rst,clk_500);
clk_div1 c2(clk,rst,clk_1);

endmodule
