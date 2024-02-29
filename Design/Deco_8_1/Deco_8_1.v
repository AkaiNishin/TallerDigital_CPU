`timescale 1ns / 1ps
//Justin Corea M - 2020045294
                   
module Deco_8_1 (
    input       [7:0]   inputData,
    input       [2:0]   selection,
    output reg          outputData
);

    always @(*) begin
        case(inputData)
            8'b00000001: outputData = selection == 3'b000;
            8'b00000010: outputData = selection == 3'b001;
            8'b00000100: outputData = selection == 3'b010;
            8'b00001000: outputData = selection == 3'b011;
            8'b00010000: outputData = selection == 3'b100;
            8'b00100000: outputData = selection == 3'b101;
            8'b01000000: outputData = selection == 3'b110;
            8'b10000000: outputData = selection == 3'b111;
            default: outputData = 1'b0;
        endcase
    end

endmodule
