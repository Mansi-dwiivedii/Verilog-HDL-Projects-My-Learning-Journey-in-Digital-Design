`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 12:30:24
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


module testbench( );
    
    reg load_enable,right_left_shift;
    reg clock,reset_n;
    reg [7:0]I;
    wire [7:0]Q;
    
    shift_left_right_reg UUT(.load_enable(load_enable),.right_left_shift(right_left_shift),.clock(clock),.reset_n(reset_n),.I(I),.Q(Q));
 
 initial begin
 clock = 0;
  forever begin
  #2;clock=~clock;
  end 
 end
  
  always@(posedge clock)begin
  $display("load_enable=%b,right_left_shift=%b,clock=%b,reset_n=%b,I=%b,Q=%b",load_enable,right_left_shift,clock,reset_n,I,Q);
  end
  
  initial begin
  
   load_enable = 0;
    right_left_shift = 0;
    reset_n = 0;
    I = 8'b00000000;
  
  
    #5;load_enable=1; right_left_shift=0;reset_n=0; I=8'b10101010;
  #5; load_enable=1; right_left_shift=0;reset_n=0; I=8'b10101010;
   #5; load_enable=1; right_left_shift=0;reset_n=1; I=8'b10101010;
   #5;load_enable=0; right_left_shift=0;reset_n=1; I=8'b10101010;
  #5; load_enable=1; right_left_shift=0;reset_n=1; I=8'b10101010;
   #5; load_enable=1; right_left_shift=1;reset_n=1; I=8'b10101010;
   #5; load_enable=0; right_left_shift=1;reset_n=1; I=8'b11111010;

  
  
  
  
  
  
  #40;$finish;
  end
  
    
    
endmodule
