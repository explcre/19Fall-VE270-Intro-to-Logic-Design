`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/01 18:22:22
// Design Name: 
// Module Name: SSD_3
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


module SSD_3(in,out);
input [3:0] in;
output [6:0] out;
reg [6:0] out;
always@(in) begin
case (in)
              4'b0000: out<=7'b0000001;     //0
              4'b0001: out<=7'b1001111;     //1                       
              4'b0010: out<=7'b0010010;    //2                           
              4'b0011: out<=7'b0000110;    // 3                         
              4'b0100: out<=7'b1001100;    //4                           
              4'b0101: out<=7'b0100100;    //5                                                    
              4'b0110: out<=7'b0100000;    //6                          
              4'b0111: out<=7'b0001111;     //7                          
              4'b1000: out<=7'b0000000;     //8                         
              4'b1001: out<=7'b0000100;      //9  
              4'b1111: out<=7'b1111111;  
              4'b1110: out<=7'b1111110;  
endcase
end
endmodule
