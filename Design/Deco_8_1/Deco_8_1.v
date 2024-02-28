`timescale 1ns / 1ps
 
                   // Jeison Rivera Solís   2019243181
                   
module Deco_8_1 (input [7:0] datos_in, input [2:0] sel, output reg out);

always @(*)
begin
    case(datos_in)
        8'b00000001: out = sel == 3'b000;
        8'b00000010: out = sel == 3'b001;
        8'b00000100: out = sel == 3'b010;
        8'b00001000: out = sel == 3'b011;
        8'b00010000: out = sel == 3'b100;
        8'b00100000: out = sel == 3'b101;
        8'b01000000: out = sel == 3'b110;
        8'b10000000: out = sel == 3'b111;
        default: out = 1'b0; // Manejar cualquier otro caso
    endcase
end

endmodule
