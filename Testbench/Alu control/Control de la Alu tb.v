`timescale 1ns / 1ps

module alu_cntrl_tb;

   // Parámetros
   parameter WAIT_TIME = 10;

   // Definición de los puertos
   wire [2:0] ALU_Cnt;
   reg [1:0] ALUOp;
   reg [3:0] Opcode;
   
   // Instancia del módulo bajo test
   alu_cntrl uut(
      .ALU_Cnt(ALU_Cnt),
      .ALUOp(ALUOp),
      .Opcode(Opcode)
   );

   // Estímulo
   initial begin
      // Bucle for para cubrir todas las combinaciones posibles de ALUOp y Opcode
      for (ALUOp = 0; ALUOp <= 2; ALUOp = ALUOp + 1) begin
         for (Opcode = 0; Opcode <= 9; Opcode = Opcode + 1) begin
            #WAIT_TIME;
         end
      end
      // Finalizar la simulación
      $finish;
   end

   // Monitoreo
   always @(ALU_Cnt) begin
      $display("ALU_Cnt: %b", ALU_Cnt);
   end

endmodule
