`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module MemoriaDeInstrucciones_tb;
    parameter PERIOD = 10;

    reg [15 : 0] Address;
    wire [15 : 0] Instruction;


    MemoriaDeInstrucciones DUT(
        .ProgramCounter     (Address),
        .instructionOut     (Instruction)
    );

    initial begin
        Address = 0;
        for (integer i = 0; i < 30; i = i + 1) begin
            #PERIOD
            Address = Address + 1;
        end 
        $finish;
    end
endmodule

