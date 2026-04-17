`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 17:42:26
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


module testbench #(parameter N=4);
reg clk,reset_n,load_en,up_down;
reg [N-1:0] counter_in;
wire [N-1:0] counter_out;

counter_up_down_load_nbit UUT(.clk(clk),.reset_n(reset_n),.load_en(load_en),.up_down(up_down),.counter_in(counter_in),.counter_out(counter_out));

initial begin 
clk=0;
forever begin
#5; clk=~clk;
end
end

always @(posedge clk)begin
$display("clk=%b,reset_n=%b,load_en=%b,up_down=%b,counter_in=%b,counter_out=%b",clk,reset_n,load_en,up_down,counter_in,counter_out);
end

initial begin
#10; reset_n=0; load_en = 0 ; up_down=1;
#10; reset_n=1; load_en = 0 ; up_down=1;
#10; reset_n=1; load_en = 0 ; up_down=1;
#10; reset_n=1; load_en = 0 ; up_down=1;
#10; reset_n=1; load_en = 0 ; up_down=1;

#10; reset_n=1; load_en = 1 ; up_down=1; counter_in=4'b1010;


#70; $stop;





end










endmodule
