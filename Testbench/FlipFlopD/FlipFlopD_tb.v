`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module FlipFlopD_tb;
    parameter PERIOD = 5;

    reg  clk = 0;
    reg  reset;
    reg  inputData;
    wire outputData;
    
    initial begin
        forever #PERIOD clk = ~clk;
    end

    FlipFlopD DUT(
        .clk        (clk),
        .reset      (reset),
        .inputData  (inputData),
        .outputData (outputData)
    );
    
    initial begin
        for (integer i = 0; i < 10; i = i + 1) begin
            #PERIOD
            reset = 0;
            inputData = {$urandom} % 2;
        end
        for (integer i = 0; i < 10; i = i + 1) begin
            #PERIOD
            reset = 1;
            inputData = {$urandom} % 2;
        end
        #PERIOD
        $finish;
    end

endmodule
