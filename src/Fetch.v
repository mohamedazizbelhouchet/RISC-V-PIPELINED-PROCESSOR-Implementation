

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2024 16:58:26
// Design Name: 
// Module Name: Fetch
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


module Fetch(clk, PCSrcD, StallF , StallD ,PCBranchD,InstrD ,PCPD  );
input clk , StallF , StallD ,  PCSrcD;
input [31:0] PCBranchD ;
output wire [31:0]InstrD;
output wire [31:0] PCPD;
wire [31:0] PCPF;
wire [31:0] PC=(PCSrcD) ? PCBranchD: PCPF;
reg  [31:0] PCF;
reg [31:0] InstrF,PCPF1;

always@(posedge clk) begin
    if  (~StallF) 
        PCF<=PC;
end


wire [31:0] RD ; 
instruction_memory az( 
	   
       .PCF(PCF),
	    .RD(RD) );
// instruction_memory az (  clk,PCF, RD );
Counter ctr( .PCF(PCF),.pcp(PCPF) );


always@(posedge clk) begin
    if (~StallD) begin
    if (~PCSrcD) begin
    InstrF<=RD;
    PCPF1<=PCPF;
    end
    end
    else begin
    InstrF<=32'd0;
    PCPF1<=32'd0;
    end
end
assign  InstrD=InstrF;
assign  PCPD=PCPF1;
endmodule
