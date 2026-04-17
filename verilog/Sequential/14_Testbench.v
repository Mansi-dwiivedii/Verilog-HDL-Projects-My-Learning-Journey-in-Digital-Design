`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 19:12:09
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


module Testbench #(parameter N=3);
reg clk,reset_n;
wire [N-1:0]counter;

CLock_divider UUT(.clk
(clk),.reset_n(reset_n),.counter(counter),.clock_divd(clock_divd));

initial begin
clk=0;
forever begin
#5; clk=~clk;
end
end


always @(posedge clk)begin
$display("clk=%b,reset_n=%b,counter=%b",clk,reset_n,counter);
end

initial begin 
  reset_n = 0; // Apply reset (active low)
    #10 reset_n = 1; // Release reset
    #50;            // Let counter run
    reset_n = 0;    // Apply reset again
    #10 reset_n = 1;
    #50;
    $stop;
end

endmodule
