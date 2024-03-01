`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module MemoriaDeInstrucciones (
    input  [15 : 0] ProgramCounter,
    output [15 : 0] instructionOut
);
    //reg de 16 bits en cada celda, y de 15 filas
    reg [15 : 0] memory [14 : 0];    
    wire [3 : 0] ROM_Address = ProgramCounter[4 : 1];

    initial begin
        //Es posible que pida una ruta mas especifica al archivo test.prog
        //readmemb crea un arreglo memory leyendo el archivo test.prog de la linea 0 a la 14 (15 lineas)
        $readmemb("test.prog", memory, 0, 14);
    end

    assign instructionOut = memory[ROM_Address];
    
endmodule
