`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module sum_nibble_tb;
// parametros
parameter periodo = 50;
parameter sim_time = 1000;

//Variables
 reg [3:0] a,b;
 reg c0, clk;
 wire [3:0] s;
 wire c4;
 
 //Instancia
 sum_nibble SUM4B (
 a,
 b,
 c0,
 s,
 c4 
 );
 
 //clk
 initial begin
 clk = 0;
 forever #(periodo/2) clk = ~clk;
 end
 
 //Pruebas
 initial begin 
  a = 4'b0000;
  b = 4'b0001;
  c0 = 1'b0;
 
 repeat (sim_time) begin
  #(periodo/3) a = a + 1'b1;
  #(periodo/4) b = b + 1'b1;
  #(periodo/2) c0 = ~c0;
  end
  
 #10 $finish;
  end
  
 //Resultados
 
 always @(posedge clk) begin 
 $display("Time = %t, a = %b, b = %b, c4 = %b", $time, a, b, c4); 
  end
  
 


endmodule
