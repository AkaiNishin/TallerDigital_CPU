`timescale 1ns / 1ps

module ALUtb();
    reg [15:0] a;//src1
    reg [15:0] b; //src2
    reg [2:0] alu_control; //function sel
    wire [15:0] result; //result
    wire zero;
    
    ALU a1(a, b, alu_control, result, zero);
    
    initial
    begin
        alu_control = 3'b000; b = 16'd2; a = 16'd4;
        #10 ;
        alu_control = 3'b001; b = 16'd2; a = 16'd4;
        #10 ;
        alu_control = 3'b010; a = 16'hff0f;
        #10 ;
        alu_control = 3'b011; b = 16'd2; a = 16'd4;
        #10 ;
        alu_control = 3'b100; b = 16'd2; a = 16'd4;
        #10 ;
        alu_control = 3'b101; b = 16'd2; a = 16'd4;
        #10 ;
        alu_control = 3'b110; b = 16'd2; a = 16'd4;
        #10 ;
        alu_control = 3'b111; b = 16'd2; a = 16'd4;
        #10 ;
    
    end
    
endmodule

