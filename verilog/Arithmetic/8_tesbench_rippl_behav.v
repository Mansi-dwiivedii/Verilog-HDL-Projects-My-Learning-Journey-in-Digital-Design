`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 16:52:05
// Design Name: 
// Module Name: tesbench_rippl_behav
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


module tesbench_rippl_behav(

    );
    
     reg [3:0] a, b;
reg  carry_in;
wire [3:0] sum;
wire carry_out;

Ripple_behav UUT(.a(a),.b(b),.carry_in(carry_in),.sum(sum),.carry_out(carry_out));

initial begin 
$monitor("MON: a=%b,b=%b , carry_in=%b,sum=%b,carry_out=%b",a,b,carry_in,sum,carry_out);

end

initial begin
#1 a = 4'b0000; b=4'b0000;carry_in=0;
#1 a = 4'b0011; b=4'b0000;carry_in=1;
#1 a = 4'b0010; b=4'b0001;carry_in=0;
#1 a = 4'b0100; b=4'b1111;carry_in=0;
 
end


    
    
endmodule
