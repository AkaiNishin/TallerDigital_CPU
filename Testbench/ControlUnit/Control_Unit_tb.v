`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module Control_Unit_tb;
    reg  [3 : 0] opcode;
    wire [1 : 0] alu_op;
    wire         jump;
    wire         beq;
    wire         bne;
    wire         mem_read;
    wire         mem_write;
    wire         alu_src;
    wire         reg_dst;
    wire         mem_to_reg;
    wire         reg_write;

    parameter PERIOD = 20;

    Control_Unit DUT(
        .opcode         (opcode),
        .alu_op         (alu_op),
        .jump           (jump),
        .beq            (beq),
        .bne            (bne),
        .mem_read       (mem_read),
        .mem_write      (mem_write),
        .alu_src        (alu_src),
        .reg_dst        (reg_dst),
        .mem_to_reg     (mem_to_reg),
        .reg_write      (reg_write)
    );

    initial begin
        opcode = 0;
        for (integer i = 0; i < 17; i = i + 1) begin
            #PERIOD
            opcode = i;
        end
        $finish;
    end

endmodule
