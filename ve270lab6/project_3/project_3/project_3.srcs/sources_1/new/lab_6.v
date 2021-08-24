`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/17 13:47:35
// Design Name: 
// Module Name: lab_6
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


module lab_6(row,col,clock,reset,out,an,state);
input [3:0]row;
input clock,reset;
output [6:0]out;
output [3:0]col;
output an;
output [3:0]state;
wire [3:0]Q;
wire [3:0] code;
wire reg_load;
wire or_row;
wire clock_1;
wire reset;

or (or_row,row[3],row[2],row[1],row[0]);
keypad_scanner k(or_row,clock_1, reset,row,col,code,reg_load,state);
reg_4bit r(Q, code,reg_load, clock);
ssd s(Q,out);


clk_div c(clock,reset,clock_1);
assign an=0;

endmodule
