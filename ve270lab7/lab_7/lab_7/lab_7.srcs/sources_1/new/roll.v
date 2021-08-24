`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 16:56:27
// Design Name: 
// Module Name: roll
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


module roll(clk,rst,Q_0,Q_1,Q_2,Q_3);
input clk,rst;
output [3:0] Q_0;
output [3:0] Q_1;
output [3:0] Q_2;
output [3:0] Q_3;
reg [3:0] Q_0;
reg [3:0] Q_1;
reg [3:0] Q_2;
reg [3:0] Q_3;
reg [3:0] roll;
always@(posedge clk)begin
    roll=roll+1;
    case (roll)
    0:begin Q_3=4'b0101; Q_2=4'b0001; Q_1=4'b1000; Q_0=4'b0011;end
    1:begin Q_3=4'b0001; Q_2=4'b1000; Q_1=4'b0011; Q_0=4'b0111;end
    2:begin Q_3=4'b1000; Q_2=4'b0011; Q_1=4'b0111; Q_0=4'b0000;end
    3:begin Q_3=4'b0011; Q_2=4'b0111; Q_1=4'b0000; Q_0=4'b1001;end
    4:begin Q_3=4'b0111; Q_2=4'b0000; Q_1=4'b1001; Q_0=4'b0001;end
    5:begin Q_3=4'b0000; Q_2=4'b1001; Q_1=4'b0001; Q_0=4'b0000;end
    6:begin Q_3=4'b1001; Q_2=4'b0001; Q_1=4'b0000; Q_0=4'b0001;end
    7:begin Q_3=4'b0001; Q_2=4'b0000; Q_1=4'b0001; Q_0=4'b1000;end
    8:begin Q_3=4'b0000; Q_2=4'b0001; Q_1=4'b1000; Q_0=4'b1001;end
    endcase
end    
endmodule
