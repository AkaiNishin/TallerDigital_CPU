`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module Mux_4_1_tb;
    parameter PERIOD = 5;

    reg       clk = 0;
    reg [3:0] inputData;
    reg [1:0] selection;
    wire      outputData;

    initial begin
        forever #PERIOD clk = ~clk;
    end

    Mux_4_1 DUT (
        .inputData  (inputData),
        .selection  (selection),
        .outputData (outputData)
    );

    initial begin
        inputData = 0;
        selection = 0;

        for (integer i = 0; i < 10; i = i + 1) begin
            #PERIOD
            inputData = $random;
            selection = $random;
        end
        #PERIOD
        $finish;
    end

endmodule
