`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module SumadorCompleto_tb;
    parameter PERIOD = 5;

    reg clk = 0;
    reg operandX;
    reg operandY;
    reg carryIn;
    wire sum;
    wire carryOut;

    initial begin
        forever #PERIOD clk = ~clk;
    end

    SumadorCompleto DUT (
        .operandX   (operandX),
        .operandY   (operandY),
        .carryIn    (carryIn),
        .sum        (sum),
        .carryOut   (carryOut)
    );
    
    initial begin
        operandX = 1;
        operandY = 1;
        carryIn = 0;

        for (integer i = 0; i < 10; i = i + 1) begin
            #PERIOD
            operandX = $random;
            operandY = $random;
            carryIn = {$random} % 2;
        end
        #PERIOD
        $finish;
    end

endmodule
