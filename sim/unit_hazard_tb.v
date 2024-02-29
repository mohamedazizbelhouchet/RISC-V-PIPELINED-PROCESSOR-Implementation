`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2024 12:28:27
// Design Name: 
// Module Name: unit_hazard_tb
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


module unit_hazard_tb( );
    reg RegWriteW;
    reg RegWriteM;
    reg MemtoRegE;
    reg [4:0] WriteRegM;
    reg [4:0] WriteRegW;
    reg [4:0] RsD;
    reg [4:0] RtD;
    reg [4:0] RsE;
    reg [4:0] RtE;
    wire [1:0] ForwardAE;
    wire [1:0] ForwardBE;
    wire FlushE;
    wire StallD;
    wire StallF;
    
     Hazard_unit az(RegWriteW,RegWriteM,MemtoRegE,WriteRegM,WriteRegW,RsD,RtD,RsE,RtE,ForwardAE,ForwardBE,FlushE,StallD,StallF);
   initial begin 
    RsE=2 ; WriteRegM=2; RegWriteM=1;
    #1; RsE=3; WriteRegW=3; RegWriteW=1;
    #1;RsE=4;
    #1; RsD=5; RtE=5; MemtoRegE=1;
    #1;RtE=2 ; WriteRegM=2; RegWriteM=1;
    #1; RtE=3; WriteRegW=3; RegWriteW=1;
    #1; MemtoRegE=0;
    #10; $stop;    
   end
    
endmodule
    
        









