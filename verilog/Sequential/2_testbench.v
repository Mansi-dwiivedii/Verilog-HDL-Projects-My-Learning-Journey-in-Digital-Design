`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 15:19:14
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


module testbench(

    );
    
reg en,d,reset_n; 
wire q,q_not;

d_latch_reset UUT(.d(d),.en(en),.q(q),.q_not(q_not),.reset_n(reset_n));

initial begin
$monitor("d=%b,en=%b,reset_n=%b,q=%b,q_not=%b",d,en,reset_n,q,q_not);

#10;
en = 0; d = 0; reset_n = 0;#10; 
en = 1; d = 0;   reset_n = 0;#10;
en = 0; d = 1;   reset_n = 0; #10;
en = 0; d = 1; reset_n = 0;  #10;
en = 1; d = 1;  reset_n = 0;  #10;

en = 0; d = 0; reset_n = 1;#10; 
en = 1; d = 0;   reset_n = 1;#10;
en = 0; d = 1;   reset_n = 1; #10;
en = 0; d = 1; reset_n = 1;  #10;
en = 1; d = 1;  reset_n = 1;  #10;




end


endmodule
