`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2025 17:11:26
// Design Name: 
// Module Name: ttestbbench
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


module ttestbbench(

    );
    
reg clk=0,rst_n, seq_in;
wire detected;
wire [1:0]state_out;
reg [14:0] test_vect;  
integer i;
initial test_vect = 15'b110101100111010;  // example sequence

seq_detector_overlapp uut(.clk(clk),.rst_n(rst_n),.seq_in(seq_in),.detected(detected),.state_out(state_out));
   
    always begin #5 clk=~clk; end
    
    
  initial begin
   
   $monitor($time, " clk=%b rst_n=%b seq_in=%b state_out=%b,detected=%b",
                 clk, rst_n, seq_in, state_out,detected);
   rst_n=0;#2.5;rst_n=1;
   repeat(2) @(posedge clk);
   
   for(i=0;i<15;i=i+1)begin
     seq_in = test_vect[i];
     @(posedge clk);
   end
   
   repeat(10) @(posedge clk);
   @(posedge clk);
        
        
        #50;
 $stop;      
    end

endmodule
