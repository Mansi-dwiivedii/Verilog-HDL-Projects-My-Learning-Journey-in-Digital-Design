`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 17:45:47
// Design Name: 
// Module Name: Testbench_buffer
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


module Testbench_buffer( );
reg X,SEL;
wire Y;

Tri_state_buffer UUT(.X(X),.Y(Y),.SEL(SEL));

initial begin
$monitor("MON:X=%b,Y=%b,SEL=%b",X,Y,SEL);
end

initial begin
#10; X = 0; SEL = 0;
#10; X = 1; SEL = 0;
#10; X = 0; SEL = 1;
#10; X = 1; SEL = 1;

end


endmodule
