`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module SumadorNibble_tb;
  parameter PERIOD = 5;

  reg          clk = 0;
  reg  [3 : 0] operandX;
  reg  [3 : 0] operandY;
  reg          carry0;
  wire [3 : 0] sum;
  wire         carry4;
    
  SumadorNibble DUT (
    .operandX   (operandX),
    .operandY   (operandY),
    .carry0     (carry0),
    .sum        (sum),
    .carry4     (carry4) 
  );
    
  initial begin
    forever #PERIOD clk = ~clk;
  end
    
  initial begin 
    operandX = 4'b0000;
    operandY = 4'b0001;
    carry0   = 1'b0;
    
    for (integer i = 0; i < 10; i = i + 1) begin
      operandX = $random;
      operandY = $random;
      carry0 = {$random} % 2;
    end
    #PERIOD
    $finish;
  end

endmodule
