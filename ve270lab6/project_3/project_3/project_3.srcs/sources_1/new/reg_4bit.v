`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/17 13:46:31
// Design Name: 
// Module Name: reg_4bit
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

module reg_4bit (Q,Din,reg_load,clock);

input clock,reg_load;
input [3:0] Din;
output [3:0] Q;
reg [3:0]Q;
always @ (posedge clock)
begin
if(reg_load==1'b1)Q <= Din;
end
endmodule
