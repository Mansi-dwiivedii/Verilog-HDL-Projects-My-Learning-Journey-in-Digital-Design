`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 18:11:34
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
    input [3:0] d,
    output  reg  [2:0] q,
    output reg v
    );
    
    always @(*)begin
    
    case(1)
     d[3]: begin q = 2'd3;v=1;    end
     d[2]: begin q = 2'd2;v=1;    end
     d[1]: begin q = 2'd1;v=1;    end
     d[0]: begin q = 2'd0;v=1;    end 
    default:begin q = 2'd00;v=0;end
    endcase
    
    end
endmodule
