`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module Datapath_Unit_tb;
    reg          clk;
    reg          jump;
    reg          beq;
    reg          mem_read;
    reg          mem_write;
    reg          alu_src;
    reg          reg_dst;
    reg          mem_to_reg;
    reg          reg_write;
    reg          bne;
    reg  [1 : 0] alu_op;
    wire [3 : 0] opcode;

    parameter PERIOD = 20;

    initial begin
        clk = 0;
        forever begin
            #PERIOD clk = ~clk;
        end
    end

    Datapath_Unit DUT(
        .clk            (clk),
        .jump           (jump),
        .beq            (beq),
        .mem_read       (mem_read),
        .mem_write      (mem_write),
        .alu_src        (alu_src),
        .reg_dst        (reg_dst),
        .mem_to_reg     (mem_to_reg),
        .reg_write      (reg_write),
        .bne            (bne),
        .alu_op         (alu_op),
        .opcode         (opcode)        
    );
    
    initial begin
        jump = 0;
        beq = 0;
        mem_read = 0;
        mem_write = 0;
        alu_src = 0;
        reg_dst = 0;
        mem_to_reg = 0;
        reg_write = 0;
        bne = 0;
        alu_op = 0;

        for (integer i = 0; i < 30; i = i + 1) begin
            #PERIOD;
            jump = $random;
            beq = $random;
            mem_read = $random;
            mem_write = $random;
            alu_src = $random;
            reg_dst = $random;
            mem_to_reg = $random;
            reg_write = $random;
            bne = $random;
            alu_op = $random;
        end
        $finish;
    end
endmodule
