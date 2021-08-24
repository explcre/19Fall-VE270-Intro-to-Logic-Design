`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 12:49:00
// Design Name: 
// Module Name: sim
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


module sim;
parameter half_period = 1;

reg clk;
reg rst;
wire A;
wire C;
lab lab5(.clk(clk),.rst(rst),.A(A),.C(C));
initial begin
#0 clk = 0; rst= 1; 
#100000000 rst=0;
#2000000000 rst=1;
end
always #half_period clk = ~clk;
initial #210000000 $stop;
endmodule
