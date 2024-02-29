`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module SumadorNibble(
      input  [3 : 0] operandX,
      input  [3 : 0] operandY,
      input          carry0,
      output [3 : 0] sum,   
      output         carry4,
);
      wire [3 : 1] carryN

      SumadorCompleto bit0 (
            .operandX   (operandX[0]),
            .operandY   (operandY[0]),
            .carryIn    (carry0),
            .sum        (sum[0]),
            .carryOut   (carryN[1])
      );
      
      SumadorCompleto bit1 (
            .operandX   (operandX[1]),
            .operandY   (operandY[1]),
            .carryIn    (carryN[1]),
            .sum        (sum[1]),
            .carryOut   (carryN[2])
      ); 
      
      SumadorCompleto bit2 (
            .operandX   (operandX[2]),
            .operandY   (operandY[2]),
            .carryIn    (carryN[2]),
            .sum        (sum[2]),
            .carryOut   (carryN[3])
      );
      
      SumadorCompleto bit3 (
            .operandX   (operandX[3]),
            .operandY   (operandY[3]),
            .carryIn    (carryN[3]),
            .sum        (sum[3]),
            .carryOut   (carry4)
      );  

endmodule
