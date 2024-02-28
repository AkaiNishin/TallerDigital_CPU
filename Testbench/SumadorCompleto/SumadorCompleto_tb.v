`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2024 13:16:13
// Design Name: 
// Module Name: sum_comp_tb
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


module sum_comp_tb;

    // Par�metros
    parameter PERIOD = 50; // Periodo de reloj
    parameter SIM_TIME = 400; // Tiempo de simulaci�n

    // Definici�n de se�ales
    reg x, y, z, clk;
    wire s, c;

    // Instancia del sumador de un bit
    sum_comp uut (
        .x(x),
        .y(y),
        .z(z),
        .s(s),
        .c(c)
    );

    // Generador de reloj
    always #(PERIOD / 2) clk = ~clk;

    // Est�mulo
    initial begin
        // Inicializaci�n de valores de entrada
        x = 1;
        y = 1;
        z = 0;

        // Ciclo de simulaci�n
        repeat(SIM_TIME) begin
            # (PERIOD / 3) x = ~x; // Invierte x cada tercio de per�odo de reloj
            # (PERIOD /2 ) y = ~y; // Invierte y cada medio de per�odo de reloj
            # (PERIOD * 2 ) z = ~z; // Invierte z cada 2 de per�odos de reloj
        end

        // Finalizaci�n de la simulaci�n
        $finish;
    end

    // Mostrar resultados
    always @(posedge clk) begin
        $display("x = %b, y = %b, z=%b s = %b, c = %b", x, y, z, s, c);
    end

endmodule
