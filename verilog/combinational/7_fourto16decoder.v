`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 12:45:09
// Design Name: 
// Module Name: fourto16decoder
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


module fourto16decoder(
    input [3:0] a,
    output [15:0] d
    );
   
  threeto8decoder ADDER1(.a(a[2:0]),.en(~a[3]),.d(d[7:0]));
  
  threeto8decoder ADDER2(.a(a[2:0]),.en(a[3]),.d(d[15:8]));    
    
    
endmodule
