`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2024 20:41:50
// Design Name: 
// Module Name: register_file_tb
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


module register_file_tb();
reg clk /*, rst*/ ;
reg [4:0]A1,A2,A3;
reg [31:0]WD3;
reg WE3;
wire [31:0]RD1,RD2;
 register_file f1(clk/*,rst*/,WE3,WD3,A1,A2,A3,RD1,RD2);
  
 /*initial begin
       rst = 1;
        #10 rst = 0; 
    end*/
 
 initial begin
    
    #1; A1=5'd0 ; A2=5'd1; 
    #1; A1=5'd2 ; A2=5'd2; 
    #1; A1=5'd3 ; A2=5'd31; 
    #1; A3=5'd0 ; WD3=32'd40; WE3=1;
    #1; A1=5'd0 ; A2=5'd1; 
    #10; $stop;
    
end

 
initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
/*initial begin
        #200 $finish;
    end*/
endmodule
