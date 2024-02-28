`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2024 13:49:54
// Design Name: 
// Module Name: FlipFlopD_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FlipFlopD_tb;
    reg clk = 0, reset, D;
    wire Q;
    
    FlipFlopD DUT(
    .clk        (clk),
    .reset      (reset),
    .D          (D),
    .Q          (Q)
    );
    
    always begin
        #5 clk = ~clk;
    end
    
    initial begin
        for (integer i = 0; i < 10; i = i + 1) begin
            #5
            reset = 0;
            D = $urandom % 2;
        end
        for (integer i = 0; i < 10; i = i + 1) begin
            #5
            reset = 1;
            D = $urandom % 2;
        end
        $finish;
    end
endmodule
