`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module SumadorCompleto(
    input   operandX,
    input   operandY,
    input   carryIn,
    output  sum,
    output  carryOut,
);
    
    wire mediaSuma, medioCarry, totalCarry; 

    MedioSumador mediaSum0 (
        .operandX   (operandX), 
        .operandY   (operandY), 
        .sum        (mediaSuma),
        .carryOut   (medioCarry)
    );  
    
    MedioSumador mediaSum1 (
        .operandX   (mediaSuma),
        .operandY   (carryIn),
        .sum        (sum),
        .carryOut   (totalCarry)
    );
         
    assign carryOut = totalCarry | medioCarry;
   
endmodule
