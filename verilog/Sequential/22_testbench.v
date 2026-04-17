`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2025 14:14:11
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
   reg clk=0,rst_n,en;
   wire [3:0] state_out;
    Traffic_light uut(.clk(clk),.rst_n(rst_n),.en(en),.state_out(state_out));
    always begin #5 clk=~clk; end
    initial begin
    $monitor($time,"clk=%b,rst_n=%b,en=%b,state_out=%b",clk,rst_n,en, state_out);
   $monitor($time, " clk=%b rst_n=%b en=%b state_out=%b",
                 clk, rst_n, en, state_out);

        // Test sequence
        rst_n = 0; en = 0;
        #12 rst_n = 1; en = 1;

        // keep enabled for long enough to see transitions
        #5000;
 $stop;      
    end
endmodule
