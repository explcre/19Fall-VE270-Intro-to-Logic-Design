module test_counter_4bit;
    parameter half_period=10;
    wire [3:0] Q;
    reg reset;
    reg clock;
    reg updown;
    counter_4_bit #(4) UUT(clock,reset,updown,Q);
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