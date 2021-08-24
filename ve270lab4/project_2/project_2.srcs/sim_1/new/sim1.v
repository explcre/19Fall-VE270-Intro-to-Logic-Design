`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/25 17:08:57
// Design Name: 
// Module Name: sim1
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
module test_counter_4bit;
    parameter half_period=10;
    wire [3:0] Q;
     wire An;
     wire a;
     wire b;
     wire c;
     wire d;
     wire e;
     wire f;
     wire g;
    reg reset;
    reg clock;
    reg updown;
    counter_4_bit UUT(clock,reset,updown,Q,An,a,b,c,d,e,f,g);
     initial begin
        #0 clock=0;
        #0 reset=1;
        #0 updown=0;
        #50 reset=0;
        #600 updown=1;
        #2000 updown=0;
    end
    always #half_period clock=~clock;
    initial #5000 $stop;
endmodule


