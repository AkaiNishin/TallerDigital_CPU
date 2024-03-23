
`ifndef PARAMETER_H_
`define PARAMETER_H_
// Código Verilog para el procesador RISC
// Archivo de parámetros
`define col 16 // Memoria de instrucciones de 16 bits, memoria 
//de datos
`define row_i 15 
////memoria de instrucciones, número de 
//instrucciones, este número se puede cambiar. Agregar más 
////instrucciones para verificar su diseño es una buena idea.
`define row_d 8 // El número de datos en la memoria de datos. 
//Solo utilizamos 8 datos. No cambie este número. Puede cambiar 
//el valor de cada dato dentro del archivo test.data. El número 
//total se fija en 8. 
`define filename "50001111_50001212.o"
`define simulation_time #160
`endif