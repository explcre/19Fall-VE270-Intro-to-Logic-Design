`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 20:28:12
// Design Name: 
// Module Name: calculator
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


module calcu(A,B,eq,sign,D,overflow);
input [3:0]A;
input [3:0]B;

input eq;
output [3:0] sign;//the sign 
output overflow;
output [3:0] D;
reg dd;
reg overflow;
reg [3:0] D;
reg [3:0] sign;
always@(A or B or eq)begin
    D<=A+B;
    overflow<= (A[3]^B[3]!=D[3]);
    if(D[3]==1)begin  D=~D+1;  end
    
    case(D)
    4'b0000:begin dd<=0;sign<=4'b1111;end
    4'b0001:begin dd<=1;sign<=4'b1111;end
    4'b0010:begin dd<=2;sign<=4'b1111;end
    4'b0011:begin dd<=3;sign<=4'b1111;end
    4'b0100:begin dd<=4;sign<=4'b1111;end
    4'b0101:begin dd<=5;sign<=4'b1111;end
    4'b0110:begin dd<=6;sign<=4'b1111;end
    4'b0111:begin dd<=7;sign<=4'b1111;end
    
    4'b1000:begin dd<=-8;sign<=4'b1110;end
    4'b1001:begin dd<=-7;sign<=4'b1110;end
    4'b1010:begin dd<=-6;sign<=4'b1110;end
    4'b1011:begin dd<=-5;sign<=4'b1110;end
    4'b1100:begin dd<=-4;sign<=4'b1110;end
    4'b1101:begin dd<=-3;sign<=4'b1110;end
    4'b1110:begin dd<=-2;sign<=4'b1110;end
    4'b1111:begin dd<=-1;sign<=4'b1110;end
    endcase
    end
endmodule
