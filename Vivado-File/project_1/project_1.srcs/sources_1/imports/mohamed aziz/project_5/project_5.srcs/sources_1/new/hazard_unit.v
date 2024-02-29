//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2024 22:46:31
// Design Name: 
// Module Name: hazard_unit
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

module Hazard_unit(RegWriteW,RegWriteM,MemtoRegE,MemtoRegM,WriteRegE,RegWriteE,WriteRegM,WriteRegW,BranchD,RsD,RtD,RsE,RtE,ForwardAE,ForwardBE,ForwardAD,ForwardBD,FlushE,StallD,StallF);
     input BranchD;
    input MemtoRegM;
    input [4:0] WriteRegE;
    input RegWriteE;
    input RegWriteW;
    input RegWriteM;
    input MemtoRegE;
    input [4:0] WriteRegM;
    input [4:0] WriteRegW;
    input [4:0] RsD;
    input [4:0] RtD;
    input [4:0] RsE;
    input [4:0] RtE;
    output [1:0] ForwardAE;
    output [1:0] ForwardBE;
    output [1:0] ForwardAD;
    output [1:0] ForwardBD;
    output FlushE;
    output StallD;
    output StallF;
   

  assign ForwardAE = ( (RsE != 0) & (RsE == WriteRegM) & (RegWriteM) ) ? 2'b10 :
                ( (RsE != 0) & (RsE == WriteRegW) & (RegWriteW) ) ? 2'b01 : 2'b00;

assign ForwardBE = ( (RtE != 0) & (RtE == WriteRegM) & (RegWriteM) ) ? 2'b10 :
                   ( (RtE != 0) & (RtE == WriteRegW) & (RegWriteW) ) ? 2'b01 : 2'b00;

  assign ForwardAD = ( (RsD != 0) & (RsD == WriteRegM) & (RegWriteM) ) ? 1 :0 ;
  assign ForwardBD = ( (RtD != 0) & (RtD == WriteRegM) & (RegWriteM) ) ? 1 :0 ;


wire lwstall =( (RsD == RtE) | (RtD == RtE) ) & MemtoRegE ;
wire branchstall= (BranchD & RegWriteE & ( WriteRegE==RsD | WriteRegE==RtD) )   | 
                  (BranchD & MemtoRegM & (WriteRegM==RsD | WriteRegM==RtD)) ;
assign StallF = lwstall | branchstall ;
assign StallD = StallF;
assign FlushE = StallF;
    
    
    
endmodule

