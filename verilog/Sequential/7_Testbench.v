`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 18:43:40
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
reg clk,reset_n,sdi;
wire sdo;

SISO UUT(.clk(clk),.reset_n(reset_n),.sdi(sdi),.sdo(sdo));

initial begin
clk = 0;
forever begin
#2.5; clk = ~clk;
end

end

initial begin
$monitor("clk=%b,reset_n=%b,sdi=%b,sdo=%b",clk,reset_n,sdi,sdo);

#5; sdi=0; reset_n = 1;
#5; sdi=1; reset_n = 1;
#5; sdi=1; reset_n = 1;
#5; sdi=0; reset_n = 1;
#5; sdi=0; reset_n = 0;
#5; sdi=1; reset_n = 0;
#5; sdi=1; reset_n = 1;
#5; sdi=0; reset_n = 1;
#5; sdi=1; reset_n = 1;
#5; sdi=1; reset_n = 1;
#5; sdi=0; reset_n = 1;
#5; sdi=0; reset_n = 0;
#5; sdi=1; reset_n = 0;
#5; sdi=1; reset_n = 1;

#170;$stop;

end




endmodule
