`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 18:23:01
// Design Name: 
// Module Name: Multiplexer_testbench
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


module Multiplexer_testbench();
reg A,B,X; 
wire Y;

Multiplexer UUT(.A(A),.B(B),.X(X),.Y(Y));

initial begin
$monitor("MON:A=%b,B=%b,X=%b,Y=%b",A,B,X,Y);
end

initial begin
A=0;B=1;X=0;#2;
A=0;B=1;X=1;#2;
A=1;B=1;X=0;#2;



end


endmodule
