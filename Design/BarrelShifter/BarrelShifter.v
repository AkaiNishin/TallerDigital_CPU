`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module BarrelShifter(
    input   [3:0]   inputData,  // Datos de entrada
    input   [1:0]   selection, // seleccion
    output  [3:0]   outputData // Datos de salida
);
    // Implementacion del barrel shifter
    Mux_4_1 mux3 (
        .datos_in   ({inputData[3], inputData[2], inputData[1], inputData[0]}),
        .sel        (selection),
        .out        ({outputData[3]})           
    );

    Mux_4_1 mux2 (
        .datos_in   ({inputData[2], inputData[1], inputData[0], inputData[3]}),
        .sel        (selection),
        .out        ({outputData[2]})
    );

    Mux_4_1 mux1 (
        .datos_in   ({inputData[1], inputData[0], inputData[3], inputData[2]}),
        .sel        (selection),
        .out        ({outputData[1]})
    );

    Mux_4_1 mux0 (
        .datos_in   ({inputData[0], inputData[3], inputData[2], inputData[1]}),
        .sel        (selection),
        .out        ({outputData[0]})
    ); 

endmodule
