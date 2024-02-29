`timescale 1ns / 1ps
//Justin Corea M - 2020045294


module FlipFlopD(
    input       clk,
    input       reset,
    input       inputData,
    output reg  outputData
);
    
    always@(posedge clk or posedge reset) begin
        if (reset) begin
            outputData <= 0;
        end else begin 
            outputData <= inputData;
        end        
    end
    
endmodule
