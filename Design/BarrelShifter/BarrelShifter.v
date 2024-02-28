`timescale 1ns / 1ps

                            // Jeison Rivera Solís   2019243181//

module BarrelShifter(
    input [3:0] input_data,  // Datos de entrada
    input [1:0] s, // seleccion
    output [3:0]output_data // Datos de salida
);
// Implementación del barrel shifter
Mux4_1 mux3 (
    .datos_in({input_data[3],input_data[2],input_data[1],input_data[0]}),  // Conectar las entradas de datos del Mux4_1 a las entradas de datos en el orden necesario
    .sel(s),          // Conectar los selectores del Mux4_1 a los selectores del BarrelShifter
    .out({output_data[3]})           // Conectar la salida del Mux4_1 a la salida del BarrelShifter e el bit indicado
);
Mux4_1 mux2 (
    .datos_in({input_data[2],input_data[1],input_data[0],input_data[3]}),
    .sel(s),
    .out({output_data[2]})
);
Mux4_1 mux1 (
    .datos_in({input_data[1],input_data[0],input_data[3],input_data[2]}),
    .sel(s),
    .out({output_data[1]})
);
Mux4_1 mux0 (
    .datos_in({input_data[0],input_data[3],input_data[2],input_data[1]}),
    .sel(s),
    .out({output_data[0]})
); 
endmodule