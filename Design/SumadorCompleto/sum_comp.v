`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module sum_comp(
input x, y, z,
output s, c,
wire ms, tc, mc
    );
 medio_sum msum1 (
     .x(x), 
     .y(y), 
     .s(ms),
     .c(mc));  
 medio_sum msum2 (
      .x(ms),
      .y(z),
      .s(s),
      .c(tc));
         
 assign c = tc | mc;
   
endmodule
