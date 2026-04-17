`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2025 13:21:00
// Design Name: 
// Module Name: Traffic_light
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


module Traffic_light(
input clk,rst_n,
input en,
output [3:0]state_out
  );
 reg [5:0] timer;
 reg [3:0]next_state;
 reg [3:0] state;


    parameter[3:0] OFF = 4'b0000,
              RED = 4'b0001,
              YELLOW = 4'b0010,
              GREEN = 4'b0011;
              
              
    always @(*)begin
     next_state = 0;
     
     case (state)
      OFF : begin if(en)
             next_state = RED;
           end
      RED : begin
              if(en)
                if (timer == 6'd50) begin
                  next_state = YELLOW;
                  timer=6'b0;end
                else 
                 next_state = RED;
              else
               next_state = OFF;
            end
      YELLOW :begin if (en)begin
                         if(timer==6'd10)begin
                              next_state=GREEN;
                              timer=6'b0;
                         end else begin
                             next_state = YELLOW;
                             end
                       end  else begin
                next_state=OFF; 
                end
               end
      GREEN : begin if (en) begin
                    if(timer==6'd30) begin
                         next_state=RED;
                         timer=6'b0; 
               end else begin
                    next_state = GREEN;
                 end
              end else begin
                next_state =OFF;
              end
              end
          default: next_state = 4'b0000;
      endcase

    
     end
     
     
     always @(posedge clk or negedge rst_n)begin
       if(!rst_n)
        state<=OFF;
        else
        state<=next_state;
     end
     assign state_out = state;
     
     always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
          timer<=6'b0;
        else
        timer=timer+1'b1;
     
     
     end
              
    
    
    
endmodule
