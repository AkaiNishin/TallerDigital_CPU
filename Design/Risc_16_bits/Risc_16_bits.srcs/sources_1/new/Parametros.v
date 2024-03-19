
`ifndef PARAMETER_H_
`define PARAMETER_H_
// C�digo Verilog para el procesador RISC
// Archivo de par�metros
`define col 16 // Memoria de instrucciones de 16 bits, memoria 
//de datos
`define row_i 15 
////memoria de instrucciones, n�mero de 
//instrucciones, este n�mero se puede cambiar. Agregar m�s 
////instrucciones para verificar su dise�o es una buena idea.
`define row_d 8 // El n�mero de datos en la memoria de datos. 
//Solo utilizamos 8 datos. No cambie este n�mero. Puede cambiar 
//el valor de cada dato dentro del archivo test.data. El n�mero 
//total se fija en 8. 
`define filename "50001111_50001212.o"
`define simulation_time #160
`endif