`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 18:05:12
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


module Testbench( );
reg clk,reset,sdi;
wire [3:0]q;

SIPO UUT(.reset(reset),.clk(clk),.sdi(sdi),.q(q));


initial begin
clk=0;
forever begin
#5; clk = ~clk;
end
end

initial begin
$monitor("clk=%b,sdi=%b,q=%b,reset=%b",clk,sdi,q,reset);
#5; sdi=1; reset = 1;
#5; sdi=0; reset = 1;
#5; sdi=1; reset = 1;
#5; sdi=0; reset = 0;
#5; sdi=0; reset = 1;
#5; sdi=1; reset = 1;

#35;$stop;
end



endmodule
