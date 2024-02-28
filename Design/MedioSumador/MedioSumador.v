`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module medio_sum(
 input x, y,
 output s, c
    );
 assign s = x^y;
 assign c = x&y;
     
endmodule
