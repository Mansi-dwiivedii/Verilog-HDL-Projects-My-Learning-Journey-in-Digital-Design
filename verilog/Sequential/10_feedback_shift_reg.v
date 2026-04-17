`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 10:21:48
// Design Name: 
// Module Name: feedback_shift_reg
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


module feedback_shift_reg(
    input reset,clk,enable,
    output reg  [15:0] fsr
    );
    
    localparam seed = 16'b100110101110;
    
    always@(posedge clk or negedge reset)begin
     if(reset)
        fsr = seed;
     else if(enable)
       fsr={fsr[14:0],(fsr[15]^fsr[13]^fsr[12]^fsr[10])};
    end
    
    
endmodule
