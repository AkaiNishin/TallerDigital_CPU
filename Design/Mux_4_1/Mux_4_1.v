`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module Mux_4_1(
    input       [3 : 0] inputData, 
    input       [1 : 0] selection,
    output reg  [3 : 0] outputData
);

    always @(*) begin
        case(selection)
            2'b00: outputData = inputData[0];
            2'b01: outputData = inputData[1];
            2'b10: outputData = inputData[2];
            2'b11: outputData = inputData[3];
            default: outputData = 1'b0;
        endcase end

endmodule
