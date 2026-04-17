`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2025 15:39:25
// Design Name: 
// Module Name: seq_detetctor_non_overlap
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


module seq_detetctor_non_overlap(
    input clk,
    input rst_n,
    input seq_in,
    output reg detected,
    output [1:0]state_out);
    
    parameter [1:0] S1 = 2'd0,
                    S2 = 2'd1,
                    S3 = 2'd2;
                    
                    reg[1:0]state;
                    reg[1:0] next_state;
                    
    always @(*)begin
     detected=0;
      case(state)
      S1: if(seq_in)
            next_state = S2;
          else
            next_state = S1;
      S2: if(!seq_in)
            next_state = S3;
            else
            next_state = S2;
      S3: if(seq_in)begin
            detected = 1'b1;
          end
          else
           next_state = S1;
      
         
          default:next_state = S1;
    endcase
    end
    
    always@(posedge clk or negedge rst_n)begin
       if(!rst_n)
           state <=S1;
       else
       state <= next_state;
    end
    
    assign state_out = state;
endmodule
