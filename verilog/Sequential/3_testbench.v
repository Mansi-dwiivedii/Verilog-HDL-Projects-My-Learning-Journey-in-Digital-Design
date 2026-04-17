`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 15:53:42
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


module testbench();
reg reset_n,d; 
wire q,q_not;
reg clock = 0;

D_flipflop_sync UUT(.d(d),.reset_n(reset_n),.q(q),.q_not(q_not),.clock(clock));

always begin 
#10; clock = ~clock;
end

initial begin
d=0;
reset_n=0;
$monitor("d=%b,reset_n=%b,q=%b,q_not=%b",d,reset_n,q,q_not);

#10;
reset_n = 0; d = 0; #10;
reset_n = 1; d = 0;#10;
reset_n = 0; d = 1;#10;
reset_n = 0; d = 1;#10;
reset_n = 1; d = 1;#10;$finish;
end
endmodule
