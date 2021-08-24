`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/31 23:58:44
// Design Name: 
// Module Name: timer
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
//q是十位 Q是个位

module timer(clk,rst,Q_L,Q_R);
input clk,rst;
output [3:0] Q_L;
output [3:0] Q_R;
reg [3:0] Q_L;
reg [3:0] Q_R;
always@(posedge clk or posedge rst)begin
    if(rst==1)begin Q_L<=4'b0000;Q_R<=4'b0000;end
    else if(Q_R==4'b1001&&Q_L<4'b0101) begin Q_R<=4'b0000;Q_L<=Q_L+1;end
    else if (Q_R==4'b1001&&Q_L==4'b0101)begin Q_L<=4'b0000;Q_R<=4'b0000;end
    else Q_R<=Q_R+1;
end    
endmodule
