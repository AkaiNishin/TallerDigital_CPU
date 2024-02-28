`timescale 1ns / 1ps

module Mux4_1_tb;

    // Par�metros
    parameter PERIOD = 20; // Periodo de reloj
    parameter SIM_TIME = 400; // Tiempo de simulaci�n

    // Definici�n de se�ales
    reg [3:0] datos_in;
    reg [1:0] sel;
    wire out;
    reg clk;

    // Instancia del multiplexor 4 a 1
    Mux4_1 uut (
        .datos_in(datos_in),
        .sel(sel),
        .out(out)
    );

    // Generaci�n del reloj
    initial begin
        clk = 0;
        forever #(PERIOD / 2) clk = ~clk;
    end

    // Est�mulo
    initial begin
        // Inicializaci�n de valores de entrada
        datos_in = 4'b0000;
        sel = 2'b00;

        // Ciclo de simulaci�n
        repeat (SIM_TIME) begin
            # (PERIOD / 4) datos_in = datos_in + 1; // Incrementa datos_in cada cuarto de per�odo de reloj
            # (PERIOD / 4) sel = sel + 1; // Incrementa sel cada cuarto de per�odo de reloj despu�s de datos_in
        end

        // Finalizaci�n de la simulaci�n
        #20 $finish;
    end

    // Mostrar resultados
    always @(posedge clk) begin
        $display("Time = %t, datos_in = %b, sel = %d, out = %b", $time, datos_in, sel, out);
    end

endmodule



