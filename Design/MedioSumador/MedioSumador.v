`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module MedioSumador(
   input    operandX,
   input    operandY,
   output   sum, 
   output   carryOut
);

 assign sum = operandX ^ operandY;
 assign carryOut = operandX & operandY;
     
endmodule
