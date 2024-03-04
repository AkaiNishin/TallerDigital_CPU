`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module Control_Unit(
    input       [3 : 0] opcode,
    output reg  [1 : 0] alu_op,
    output reg          jump,
    output reg          beq,
    output reg          bne,
    output reg          mem_read,
    output reg          mem_write,
    output reg          alu_src,
    output reg          reg_dst,
    output reg          mem_to_reg,
    output reg          reg_write
);
    always @(*) begin
        case (opcode)
            //LW
            4'b0000: begin
                reg_dst = 1'b0;
                alu_src = 1'b1;
                mem_to_reg = 1'b1;
                reg_write = 1'b1;
                mem_read = 1'b1;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b10;
                jump = 1'b0;   
            end

            //SW
            4'b0001: begin
                reg_dst = 1'b0;
                alu_src = 1'b1;
                mem_to_reg = 1'b0;
                reg_write = 1'b0;
                mem_read = 1'b0;
                mem_write = 1'b1;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b10;
                jump = 1'b0;   
            end

            //Data processing
            4'b0010: begin
                reg_dst = 1'b1;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b1;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b00;
                jump = 1'b0;   
            end

            //Data processing
            4'b0011: begin
                reg_dst = 1'b1;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b1;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b00;
                jump = 1'b0;   
            end

            //Data processing
            4'b0100: begin
                reg_dst = 1'b1;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b1;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b00;
                jump = 1'b0;   
            end

            //Data processing
            4'b0101: begin
                reg_dst = 1'b1;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b1;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b00;
                jump = 1'b0;   
            end

            //Data processing
            4'b0110: begin
                reg_dst = 1'b1;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b1;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b00;
                jump = 1'b0;   
            end

            //Data processing
            4'b0111: begin
                reg_dst = 1'b1;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b1;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b00;
                jump = 1'b0;   
            end

            //Data processing
            4'b1000: begin
                reg_dst = 1'b1;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b1;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b00;
                jump = 1'b0;   
            end

            //Data processing
            4'b1001: begin
                reg_dst = 1'b1;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b1;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b00;
                jump = 1'b0;   
            end

            //BEQ
            4'b1011: begin
                reg_dst = 1'b0;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b0;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b1;
                bne = 1'b0;
                alu_op = 2'b01;
                jump = 1'b0;   
            end

            //BEN
            4'b1100: begin
                reg_dst = 1'b0;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b0;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b1;
                alu_op = 2'b01;
                jump = 1'b0;   
            end

            //J
            4'b1101: begin
                reg_dst = 1'b0;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b0;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b00;
                jump = 1'b1;   
            end   

            default: begin
                reg_dst = 1'b1;
                alu_src = 1'b0;
                mem_to_reg = 1'b0;
                reg_write = 1'b1;
                mem_read = 1'b0;
                mem_write = 1'b0;
                beq = 1'b0;
                bne = 1'b0;
                alu_op = 2'b00;
                jump = 1'b0; 
            end 
        endcase
    end

endmodule
