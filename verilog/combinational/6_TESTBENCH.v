`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 09:30:21
// Design Name: 
// Module Name: TESTBENCH
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


module TESTBENCH(

    );
    parameter  N =10;
    reg [N-1:0]  a;
    reg [N-1:0]  b;
    wire [N:0]  sum;
    
    N_bit_adder #(.N(N)) UUT(.a(a),.b(b),.sum(sum));
    
    initial begin 
    $monitor("MON:a=%b,b=%b,sum=%b",a,b,sum);
    #1; a=0; b=0;
     #1; a=1; b=99;
     #1; a=33; b=66;
     #1; a=100; b=47;
     #1; $stop;
    
    end
    
endmodule
