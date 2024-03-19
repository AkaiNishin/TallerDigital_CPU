`timescale 1ns / 1ps
`include "Parametros.v"
//////////////////////////////////////////////////////////////////////////////////


module Risc16_tb;
// Inputs
reg clk; 
// Creación de una instancia de la unidad bajo prueba (UUT)
Risc_16_bit uut ( 
 .clk(clk)); 
 
initial begin
 clk <=0; 
 #10; 
 $finish; 
 end
 
always 
 begin
 #5 clk = ~clk; 
 end
endmodule

