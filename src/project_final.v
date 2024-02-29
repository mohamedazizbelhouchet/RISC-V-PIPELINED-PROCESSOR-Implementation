`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2024 16:19:31
// Design Name: 
// Module Name: project_final
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

`include "instruction_memory" 
module project_final( clk );
input clk ;
    wire StallF ;
     wire [31:0] PC;
     reg[31:0]PCF ;
     wire [31:0] PcpF ;
     always @( posedge clk) begin
     if( ~StallF ) begin
      PCF1<=PC ; 
      end end
  
     wire [31:0] RD ; 
instruction_memory mm (  clk,PCF, RD );
Counter( PCF,PcpF );


reg[31:0] instrD;
reg[31:0] PcpD ;

always @(posedge clk) begin
    instrD <= RD ;
    PcpD<= PcpF ;
    end

    

endmodule
