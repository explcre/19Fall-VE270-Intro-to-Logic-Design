`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/17 14:26:07
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
parameter half_period = 5;

reg clk;
reg rst;
lab_6 lab_6(.row(row),.col(col),.clock(clock),.reset(reset),.out(out));
initial begin
#0 clk = 0; rst= 1; 
#100 rst=0;
#200 rst=1;
end
always #half_period clk = ~clk;
initial #2100 $stop;
endmodule

