`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 20:30:32
// Design Name: 
// Module Name: mux_a
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


module mux_a(inr_3,inr_2,inr_1,inr_0,S,C,q_3,q_2,q_1,q_0,switch);
input switch;
input [3:0] inr_3,inr_2,inr_1,inr_0,S,C;
output [3:0] q_3,q_2,q_1,q_0;
reg[3:0] q_3,q_2,q_1,q_0;
always@(switch)begin
    case(switch)
    0:begin q_3<=inr_3;q_2<=inr_2;q_1<=inr_1;q_0<=inr_0; end
    1:begin q_1<=S;q_0<=C; q_2<=4'b1111;q_3<=4'b1111;end
    endcase
end
endmodule
