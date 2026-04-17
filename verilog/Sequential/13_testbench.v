`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 18:23:42
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench#(parameter N=4,W=10 );
  reg reset_n,clk,enable;
 wire [N-1:0] counter_out;
 
 counter_modulo DUT(.reset_n(reset_n),.clk(clk),.enable(enable),.counter_out(counter_out));
 
 always begin
 clk=0;
 forever begin
 #5; clk=~clk;
 end
 end
 
 initial begin 
 $monitor("reset_n=%b,clk=%b,enable=%b,counter_out=%b",reset_n,clk,enable,counter_out);
 
 #5; reset_n=0; enable=1;
  #5; reset_n=1; enable=1;
   #5; reset_n=1; enable=1;
    #5; reset_n=1; enable=1;
     #5; reset_n=1; enable=1;
      #5; reset_n=1; enable=1;
       #5; reset_n=1; enable=1;
        #5; reset_n=1; enable=1;
         #5; reset_n=1; enable=1;
 
#100;$stop;
 end
 
endmodule
