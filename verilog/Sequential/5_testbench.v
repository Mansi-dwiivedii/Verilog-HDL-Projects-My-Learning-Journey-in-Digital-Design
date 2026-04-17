`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 17:15:09
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


module testbench();
reg reset_n;
reg [3:0]d;
wire [3:0]q;
integer i;
reg clk;

PIPO UUT(.reset_n(reset_n),.d(d),.q(q),.clk(clk));
 initial clk = 0;
  always #5 clk = ~clk;



initial begin
$monitor("d=%b,reset_n=%b,clk=%b,q=%b",d,reset_n,clk,q);
#10; d=0; reset_n = 0;
#10; reset_n = 1;

 #5;d = 4'b0000; reset_n = 1;
 #5;d = 4'b0001; reset_n = 1;
 #5;d = 4'b0010; reset_n = 0;
 #5;d = 4'b0011; reset_n = 0;
 #5;d = 4'b0100; reset_n = 1;
 #5;d = 4'b0101; reset_n = 1;
 #5;d = 4'b0110; reset_n = 1;
 #5;d = 4'b0111; reset_n = 0;
 #5;d = 4'b1000; reset_n = 0;
end

initial begin
  #100 $finish;
end



endmodule
