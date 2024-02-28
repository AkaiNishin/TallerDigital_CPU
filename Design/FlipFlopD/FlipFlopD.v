`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2024 13:46:33
// Design Name: 
// Module Name: FlipFlopD
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


module FlipFlopD(
    input       clk,
    input       reset,
    input       D,
    output reg  Q
    );
    
    always@(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 0;
        end else begin 
            Q <= D;
        end        
    end
endmodule
