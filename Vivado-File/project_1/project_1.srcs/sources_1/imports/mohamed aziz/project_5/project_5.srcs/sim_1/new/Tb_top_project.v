`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 15:47:39
// Design Name: 
// Module Name: Tb_top_project
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


module Tb_top_project();
reg clk;
 top_project tp(clk);

initial begin
    clk=0 ;
    forever #1 clk=~clk;
    end

endmodule
