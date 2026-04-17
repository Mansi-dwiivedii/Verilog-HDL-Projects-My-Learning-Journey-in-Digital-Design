`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 15:19:25
// Design Name: 
// Module Name: Testbench_rippleadder
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


module Testbench_rippleadder( );
reg [3:0] a, b;
reg  carry_in;
wire [3:0] sum;
wire carry_out;

Ripple_carry_adder_str UUT(.a(a),.b(b),.carry_in(carry_in),.sum(sum),.carry_out(carry_out));

initial begin 
$monitor("MON: a=%b,b=%b , carry_in=%b,sum=%b,carry_out=%b",a,b,carry_in,sum,carry_out);

end

initial begin
#1 a = 4'b0000; b=4'b0000;carry_in=0;
#1 a = 4'b0000; b=4'b0000;carry_in=1;
#1 a = 4'b0000; b=4'b0001;carry_in=0;
#1 a = 4'b0100; b=4'b1111;carry_in=0;
 
end




endmodule
