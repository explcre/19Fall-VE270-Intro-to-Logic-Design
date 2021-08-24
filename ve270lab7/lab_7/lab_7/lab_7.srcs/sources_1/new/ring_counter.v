`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/31 23:06:26
// Design Name: 
// Module Name: ring_counter
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
//initial value shold be 1000!

module ring_counter(rst,clk,Q,A);
input rst;
input clk;
output [3:0] Q;
output [3:0] A;
reg [3:0] Q;
reg [3:0] A;
always@(posedge clk or posedge rst)begin
if(rst==1) begin Q<=4'b1000; A<=~Q; end
else begin
    Q[0]<=Q[3];
    Q[3]<=Q[2];
    Q[2]<=Q[1];
    Q[1]<=Q[0];
    A<=~Q;
    end 
end
endmodule
