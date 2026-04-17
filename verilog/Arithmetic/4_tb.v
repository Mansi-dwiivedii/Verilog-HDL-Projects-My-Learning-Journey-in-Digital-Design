`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 12:41:15
// Design Name: 
// Module Name: tesbenchh
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


module tesbenchh( );

reg a,b,carry_in;
wire sum,carry_out;

full_adder_structural testbenchh(.a(a),.b(b),.carry_in(carry_in),
            .sum(sum),.carry_out(carry_out));



initial begin
 $monitor("monitor a, a = %0d,b = %0d,carry_in = %0d,sum = %0d,carry_out = %0d",a,b,carry_in,sum,carry_out);
end


initial begin
 a = 0; b = 0 ; carry_in = 0;#10;
 a = 0; b = 0 ; carry_in = 1;#10;
 a = 0; b = 1 ; carry_in = 0;#10;
 a = 0; b = 1 ; carry_in = 1;#10;
 a = 1; b = 0 ; carry_in = 0;#10;
 a = 1; b = 0 ; carry_in = 1;#10;
 a = 1; b = 1 ; carry_in = 0;#10;
 a = 1; b = 1 ; carry_in = 1;#10;
 
end

endmodule
