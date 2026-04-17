`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 14:54:40
// Design Name: 
// Module Name: 
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
reg en,d; 
wire q,q_not;

d_latch UUT(.d(d),.en(en),.q(q),.q_not(q_not));

initial begin
$monitor("d=%b,en=%b,q=%b,q_not=%b",d,en,q,q_not);

#10;
en = 0; d = 0; #10;
en = 1; d = 0;#10;
en = 0; d = 1;#10;
en = 0; d = 1;#10;
en = 1; d = 1;#10;


end



endmodule
