`timescale 1ns / 1ps
//Justin Corea M - 2020045294

module Data_Memory(
    input               clk,
    input   [15 : 0]    mem_access_addr,
    input   [15 : 0]    mem_write_data,
    input               mem_write_en,
    input               mem_read,
    output  [15 : 0]    mem_read_data
);
    parameter SIMULATION_TIME = 160;
    parameter filename = "50001111_50001212.o";

    reg [15 : 0] Memory [7 : 0];
    wire [2 : 0] RAM_Address = mem_access_addr[2 : 0];

    integer f;
    initial begin
        //puede ser que pida una direccion mas especifica para test.data
        $readmemb("test.data", Memory);
        f = $fopen(filename);
        $fmonitor(f, "time = %d", $time,
        "tmemory[0] = %b\n", Memory[0],
        "tmemory[1] = %b\n", Memory[1],
        "tmemory[2] = %b\n", Memory[2],
        "tmemory[3] = %b\n", Memory[3],
        "tmemory[4] = %b\n", Memory[4],
        "tmemory[5] = %b\n", Memory[5],
        "tmemory[6] = %b\n", Memory[6],
        "tmemory[7] = %b\n", Memory[7],
        );

        #SIMULATION_TIME;
        $fclose(f);
    end

    always @(posedge clk) begin
        if (mem_write_en) begin
            Memory[RAM_Address] <= mem_write_data;
        end
    end

    assign mem_read_data = (mem_read == 1'b1) ? Memory[RAM_Address] : 16'd0;
endmodule
