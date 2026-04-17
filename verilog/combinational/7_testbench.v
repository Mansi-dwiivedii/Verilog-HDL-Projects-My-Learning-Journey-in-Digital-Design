`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 12:54:58
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

reg [3:0]a;
wire [15:0]d;

fourto16decoder DUT(.a(a),.d(d));

initial begin
$monitor("MON:a=%b,d=%b",a,d);

#10; a = 4'b0000; 
#10; a = 4'b0001; 
#10; a = 4'b0010; 
#10; a = 4'b0011; 
#10; a = 4'b0100;
#10; a = 4'b0101; 
#10; a = 4'b0110; 
#10; a = 4'b0111; 

#10; a = 4'b1000;
#10; a = 4'b1001; 
#10; a = 4'b1010; 
#10; a = 4'b1011; 
#10; a = 4'b1100;
#10; a = 4'b1101; 
#10; a = 4'b1110; 
#10; a = 4'b1111; 





end


endmodule
