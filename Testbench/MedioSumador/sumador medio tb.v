`timescale 1ns / 1ps
 
//////////////////////////////////////////////////////////////////////////////////


module sum_medio_tb;
 // Par�metros
    parameter PERIOD = 50; // Periodo de reloj
    parameter SIM_TIME = 400; // Tiempo de simulaci�n

    // Definici�n de se�ales
    reg x, y, clk;
    wire s, c;

    // Instancia del sumador de un bit
    medio_sum uut (
        .x(x),
        .y(y),
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
        
        // Ciclo de simulaci�n
        repeat(SIM_TIME) begin
            # (PERIOD / 3) x = ~x; // Invierte x cada tercio de per�odo de reloj
            # (PERIOD /2 ) y = ~y; // Invierte y cada medio de per�odo de reloj
        end

        // Finalizaci�n de la simulaci�n
        $finish;
    end

    // Mostrar resultados
    always @(posedge clk) begin
        $display("x = %b, y = %b, s = %b, c = %b", x, y, s, c);
    end

endmodule
