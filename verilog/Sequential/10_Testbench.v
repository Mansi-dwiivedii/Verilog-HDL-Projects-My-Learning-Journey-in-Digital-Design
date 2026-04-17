`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 10:29:21
// Design Name: 
// Module Name: Testbench
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


module Testbench(

  );
  
 reg reset,clk,enable;
 wire [15:0]fsr;
 
 feedback_shift_reg DUT(.reset(reset),.clk(clk),.enable(enable),.fsr(fsr));
 
 always begin
 clk=0;
 forever begin
 #5; clk=~clk;
 end
 end
 
 initial begin 
 $monitor("reset=%b,clk=%b,enable=%b,fsr=%b",reset,clk,enable,fsr);
 
 #5; reset=1; enable=1;
 
 #5; reset=0; enable=1;
 #5; reset=0; enable=1;
 #5; reset=0; enable=1;
 #5; reset=1; enable=1;
 $stop;
 end
 
 
 
endmodule
