`timescale 1ns / 1ps

                  //Jeison Rivera Solís 2019243181//

module Mux4_1( input [3:0] datos_in, input [1:0] sel, output reg out);
always @(*)
 begin
    case(sel)
        2'b00: out = datos_in[0];
        2'b01: out = datos_in[1];
        2'b10: out = datos_in[2];
        2'b11: out = datos_in[3];
        default: out = 1'b0; // Manejar cualquier otro caso
    endcase end

endmodule
