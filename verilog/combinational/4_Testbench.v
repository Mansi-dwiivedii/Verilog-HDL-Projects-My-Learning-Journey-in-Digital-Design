`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 18:39:10
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


module Testbench(  );

reg A,B;
wire S,E,G;

bit_comparator UUT(.A(A),.B(B),.S(S),.G(G),.E(E));

initial begin
$monitor("MON:A=%b,B=%b,S=%b,E=%b,G=%b",A,B,S,E,G);
end

initial begin
#10; A=0; B=0;
#10; A=0; B=1;
#10; A=1; B=0;
#10; A=1; B=1;

end

endmodule
