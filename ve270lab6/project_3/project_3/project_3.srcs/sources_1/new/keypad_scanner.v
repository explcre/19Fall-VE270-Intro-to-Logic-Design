`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/17 13:48:15
// Design Name: 
// Module Name: keypad_scanner
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

module keypad_scanner(or_row,clock, reset,row,col,code,reg_load,state);
input clock,reset;
input [3:0]row;
input or_row;
output [3:0] col;
output [3:0] code;
output reg_load;
output [3:0]state;
reg [3:0] curr_state;
reg [3:0] next_state;
reg reg_load;
reg [3:0]col;
reg [3:0]code;
reg [3:0]state;
parameter init = 4'b0000;

always @ (posedge clock or posedge reset)
    begin
 
    if (reset == 1) begin curr_state <= init; /*reg_load<=1;code=4'b0000;*/end
    else curr_state <= next_state;
    end
    
always @ (curr_state or or_row)
begin
    case (curr_state)
    4'b0000: begin
             state<=4'b0000;
            col<=4'b1111;
            if (or_row == 0) next_state <= 4'b0000; 
            else if (or_row == 1) next_state <= 4'b0001; 
            end
    4'b0001: begin 
            state<=4'b0001;
            col<=4'b0001;
            if (or_row == 0) next_state <= 4'b0010; 
            else if (or_row == 1) next_state <= 4'b0101; 
            end
    4'b0010: begin 
            state<=4'b0010;
            col<=4'b0010;
            if (or_row == 0) next_state <= 4'b0011; 
            else if (or_row == 1) next_state <= 4'b0110; 
            end
    4'b0011:begin 
            state<=4'b0011;
            col<=4'b0100;
            if (or_row == 0) next_state <= 4'b0100; 
            else if (or_row == 1) next_state <= 4'b0111; 
            end
    4'b0100: begin 
            state<=4'b0100;
            col<=4'b1000;
            if (or_row == 0) next_state <= 4'b0000; 
            else if (or_row == 1) next_state <= 4'b1000; 
            end
    4'b0101:begin 
            state<=4'b0101;
            col<=4'b0001;
            reg_load<=1;
            
            next_state <= 4'b1001; 
            end
    4'b0110:begin 
        state<=4'b0110;
            col<=4'b0010;
            reg_load<=1;
            
            next_state <= 4'b1001; 
            end
    4'b0111:begin 
        state<=4'b0111;
            col<=4'b0100;
            reg_load<=1;
            
            next_state <= 4'b1001; 
            end
    4'b1000:begin 
           state<=4'b1000;
            col<=4'b1000;
            reg_load<=1;
            
            next_state <= 4'b1001; 
            end
    4'b1001:begin 
           state<=4'b1001;
            col<=4'b1111;
            reg_load<=0;
            if (or_row == 0) next_state <= 4'b0000; 
            else if (or_row == 1) next_state <= 4'b1001; 
            end
    default: next_state <= init;
endcase

if (curr_state==4'b0101||curr_state==4'b0110||curr_state==4'b0111||curr_state==4'b1000)
begin
if(row==4'b0001  &&col==4'b0001  )code<=4'b0000;
else if (row==4'b0001  &&col==4'b0010  )code<=4'b0001;
else if (row==4'b0001  &&col==4'b0100  )code<=4'b0010;
else if (row==4'b0001  &&col==4'b1000  )code<=4'b0011;
else if (row==4'b0010  &&col==4'b0001  )code<=4'b0100;
else if (row==4'b0010  &&col==4'b0010  )code<=4'b0101;
else if (row==4'b0010  &&col==4'b0100  )code<=4'b0110;
else if (row==4'b0010  &&col==4'b1000  )code<=4'b0111;
else if (row==4'b0100  &&col==4'b0001  )code<=4'b1000;
else if (row==4'b0100  &&col==4'b0010  )code<=4'b1001;
else if (row==4'b0100  &&col==4'b0100  )code<=4'b1010;
else if (row==4'b0100  &&col==4'b1000  )code<=4'b1011;
else if (row==4'b1000  &&col==4'b0001  )code<=4'b1100;
else if (row==4'b1000  &&col==4'b0010  )code<=4'b1101;
else if (row==4'b1000  &&col==4'b0100  )code<=4'b1110;
else if (row==4'b1000  &&col==4'b1000  )code<=4'b1111;
end

end
endmodule
