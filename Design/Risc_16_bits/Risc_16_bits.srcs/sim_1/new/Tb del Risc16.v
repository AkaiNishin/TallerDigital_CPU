`timescale 1ns / 1ps 
//`include "Parameter.v"
// C�digo Verilog para el procesador RISC 
// C�digo del banco de pruebas de Verilog para probar el procesador

module Risc16_tb; 
// Inputs
reg clk; 
reg opcode;
// Creaci�n de una instancia de la unidad bajo prueba (UUT)
Risc_16_bit uut ( 
 .clk(clk));
  
 
initial 
 begin
 clk <=0; 
 #100; 
 $finish; 
 end
always 
 begin
 #5 clk = ~clk; 
 end
endmodule
