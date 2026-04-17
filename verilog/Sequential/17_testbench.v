`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2025 12:32:30
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


module testbench( );
reg clk = 0;
reg  [7:0] data_in;
reg [3:0] address;
reg write_en;
wire [7:0] data_out;
integer test_count=0,success_count=0,error_count=0;

ram_sp_async_read DUT(.clk(clk),.data_in(data_in)
,.address(address),.write_en(write_en),.data_out(data_out));

task write_data(input [3:0] address_in,input [7:0] d_in);
 begin
    @(posedge clk);
    write_en= 1;
    data_in = d_in;
    address = address_in;
 end 
endtask

task read_data(input [3:0] address_in);
 begin
    @(posedge clk);
    write_en= 0;
    address = address_in;
 end 
endtask

task compare_data(input [3:0]address,input [7:0] expected_data,input [7:0] observed_data);
  begin
     if(expected_data === observed_data)begin
        $display("address=%d,expected_data=%d,observed_data=%d",address,expected_data,observed_data);
        success_count = success_count + 1;
     end else begin
        $display("address=%d,expected_data=%d,observed_data=%d",address,expected_data,observed_data);   
     
       error_count=error_count+1;
    end  
    test_count = test_count+1;
  end
endtask

always begin #0.5 clk=~clk; end

initial begin
#1;
clk=0;write_en=0;data_in=0;address=0;
success_count=0;error_count=0;test_count=0;
 #0.3; write_data(4'b0001,8'b0); read_data(4'b0001); compare_data(4'b0001,8'b0,data_out);
 #0.3; write_data(4'b0011,8'b1); read_data(4'b0011); compare_data(4'b0011,8'b1,data_out);
 #0.3; write_data(4'b0110,8'b00001111); read_data(4'b0110); compare_data(4'b0110,8'b00001111,data_out);
 #0.3; write_data(4'b0101,8'b11100011); read_data(4'b0101); compare_data(4'b0101,8'b11100011,data_out);

 $display("TEST success_count=%d,error_count=%d,test_count=%d",success_count,error_count,test_count);
 #40; $stop;

end


endmodule
