`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 21:49:58
// Design Name: 
// Module Name: Counter
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


module Counter( clk,reset,pcp );

input clk ;
input reset;
output wire   pcp;

reg [31:0]PCF ;

always@(posedge clk) begin
if (reset==1)
    PCF <= 0;
 else begin
 PCF<= PCF +4;
 end 
 end
 assign pcp = PCF ; 


endmodule
