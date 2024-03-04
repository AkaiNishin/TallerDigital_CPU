`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module Data_Memory_tb;
    reg             clk;
    reg  [15 : 0]   mem_access_addr;
    reg  [15 : 0]   mem_write_data;
    reg             mem_write_en;
    reg             mem_read;
    wire [15 : 0]   mem_read_data;

    parameter PERIOD = 20;

    initial begin
        clk = 0;
        forever #PERIOD clk = ~clk;
    end

    Data_Memory DUT(
    .clk                (clk),
    .mem_access_addr    (mem_access_addr),
    .mem_write_data     (mem_write_data),
    .mem_write_en       (mem_write_en),
    .mem_read           (mem_read),
    .mem_read_data      (mem_read_data)
    );

    initial begin
        mem_write_en = 1;
        mem_write_data = 0;
        mem_read = 0;
        mem_access_addr = 0;
        for (integer i = 0; i < 9; i = i + 1) begin
            #PERIOD
            mem_access_addr = mem_access_addr + 1;
            mem_write_data = $random;
        end
        
        mem_write_data = 0;
        mem_write_en = 0;
        mem_access_addr = 0;
        mem_read = 1;
        for (integer i = 0; i < 9; i = i + 1) begin
            #PERIOD
            mem_access_addr = mem_access_addr + 1;
        end
        $finish;
    end

endmodule