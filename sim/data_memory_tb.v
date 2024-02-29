`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2024 16:00:03
// Design Name: 
// Module Name: data_memory_tb
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


module data_memory_tb( );
reg clk ,WE ;
reg [31:0]A,WD;
wire [31:0] RD ;
Data_Memory df(clk,WD,A,WE,RD);

initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
initial 
    begin
    #1; A=5'd6 ; WD=5'd8; WE=1; 
    #1; A=5'd12 ; WD=5'd20;WE=1; 
    #4; A=5'd3 ;  WE=0; 
    #1; A=5'd0 ; WD=32'd40; WE=1;
   
    #1; A=5'd0 ; WD=5'd1 ;WE=1; 
    #2; $stop;    
end 

endmodule
