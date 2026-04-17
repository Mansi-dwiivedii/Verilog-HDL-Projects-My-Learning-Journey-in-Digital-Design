`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 16:26:20
// Design Name: 
// Module Name: tbt
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


module tbt(  );
 reg a,b,c_in;
 wire sum,c_out;
 
  full_adder_behavioural Full_add(
  .a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out)
  );
  
 
 initial begin
  
  $monitor("monitor a,b,c_in: a=%0d,b=%0d,c_in=%0d,sum=%0d,c_out=%0d",a,b,c_in,sum,c_out);
 
 end
 
 initial begin
     #1; a=0; b=0; c_in=0;
     #1; a=0; b=0; c_in=1;
     #1; a=0; b=1; c_in=0;
     #1; a=0; b=1; c_in=1;
     #1; a=1; b=0; c_in=0;
     #1; a=1; b=0; c_in=1;
     #1; a=1; b=1; c_in=0;
     #1; a=1; b=1; c_in=1;
     
 
 end



endmodule
