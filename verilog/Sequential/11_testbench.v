`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 17:05:52
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


module testbench #(parameter N=3);
reg clk,reset;
wire [N-1:0]counter;

n_bit_synchronous_counter UUT(.clk
(clk),.reset(reset),.counter(counter));

initial begin
clk=0;
forever begin
#5; clk=~clk;
end
end


always @(posedge clk)begin
$display("clk=%b,reset=%b,counter=%b",clk,reset,counter);
end

initial begin 
 #5; reset = 0;
#5; reset = 0;
#5; reset=1;
#5;reset=1;
#5;reset=1;
#5;reset=1;

#70; $stop;
end

endmodule
