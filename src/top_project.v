

///////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 15:28:03
// Design Name: 
// Module Name: top_project
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
///////////////////////////////////////////////////////////////////////////////////
module top_project(clk);
input clk;
// FETCH
wire StallF , StallD ,  PCSrcD,BranchD;
wire[31:0] PCBranchD ;
wire [31:0]InstrD, PCPD;

//Fetch FE(clk, PCSrcD, StallF , StallD ,PCBranchD,InstrD ,PCPD  );
    Fetch FE25(
        .clk(clk),
        .PCSrcD(PCSrcD),
        .StallF(StallF),
        .StallD(StallD),
        .PCBranchD(PCBranchD),
        .InstrD(InstrD), // Corrected
        .PCPD(PCPD)
    );


//Decoder
wire  [1:0]ForwardAD,ForwardBD ;
wire RegWriteW,FlushE ;            
wire [31:0] ResultW ,ALUOutM;
wire [4:0] WriteRegW;
wire [4:0] RsE,RtE,RdE ,RsD,RtD;
wire [31:0]  M1,M2,SignImmE;
wire RegWriteE,MemtoRegE,MemWriteE,ALUSrcE,RegDstE;
wire [2:0] ALUControlE;

//Decoder DC(clk,InstrD,PCPD,ForwardAD,ForwardBD,RegWriteW,ResultW,ALUOutM,RsD,RtD,M1,M2,SignImmE,WriteRegW,FlushE,PCBranchD,RsE,RtE,RdE,RegWriteE,MemtoRegE,MemWriteE,ALUSrcE,RegDstE,ALUControlE,PCSrcD);
reg [31:0]ALUOutM1;
reg [1:0] ForwardAD1,ForwardBD1;
always@(*)begin
ALUOutM1=ALUOutM;
ForwardAD1=ForwardAD;
ForwardBD1=ForwardBD;
end
wire[4:0]WriteRegW1;
Decoder de (
    .clk(clk),
    .InstrD(InstrD),
    .PCPD(PCPD),
    .ForwardAD(ForwardAD1),
    .ForwardBD(ForwardBD1),
    .RegWriteW(RegWriteW1),
    .ResultW(ResultW),
    .ALUOutM(ALUOutM1),
    .RsD(RsD),
    .RtD(RtD),
    .M1(M1),
    .M2(M2),
    .SignImmE(SignImmE),
    .WriteRegW(WriteRegW1),
    .FlushE(FlushE),
    .PCBD(PCBranchD),
    .RsE(RsE),
    .RtE(RtE),
    .RdE(RdE),
    .RegWriteE(RegWriteE),
    .MemtoRegE(MemtoRegE),
    .MemWriteE(MemWriteE),
    .ALUSrcE(ALUSrcE),
    .RegDstE(RegDstE),
    .ALUControlE(ALUControlE),
    .PCSrcD(PCSrcD),
    .BranchD(BranchD)
    );
//Execution
wire [1:0] ForwardAE, ForwardBE ;
//wire [31:0] ALUOutMg;
wire [4:0]WriteRegM,WriteRegE;
wire RegWriteM,MemtoRegM,MemWriteM;
wire[31:0]WriteDataM;

//Execution EX(clk ,RegWriteE,MemtoRegE,ALUOutMg,MemWriteE,ALUSrcE,RegDstE,ALUControlE,RsE,RtE,RdE,ForwardAE, ForwardBE,M1,M2,ResultW,SignImmE,WriteRegM,WriteRegE,WriteDataM,ALUOutM,RegWriteM,MemtoRegM,MemWriteM);
reg [31:0]ALUOutMg1;
 always@(*) begin
 ALUOutMg1=ALUOutM;
 end
 
 
Execution EX (
    .clk(clk),
    .RegWriteE(RegWriteE),
    .MemtoRegE(MemtoRegE),
    .ALUOutMg(ALUOutMg1),
    .MemWriteE(MemWriteE),
    .ALUSrcE(ALUSrcE),
    .RegDstE(RegDstE),
    .ALUControlE(ALUControlE),
    
    .RtE(RtE),
    .RdE(RdE),
    .ForwardAE(ForwardAE),
    .ForwardBE(ForwardBE),
    .M1(M1),
    .M2(M2),
    .ResultW(ResultW),
    .SignImmE(SignImmE),
    .WriteRegM(WriteRegM),
    .WriteRegE(WriteRegE),
    .WriteDataM(WriteDataM),
    .ALUOutM(ALUOutM),
    .RegWriteM(RegWriteM),
    .MemtoRegM(MemtoRegM),
    .MemWriteM(MemWriteM)
);
//Memory
wire MemtoRegW;
wire [31:0] ReadDataW,ALUOutW;
//Memory Mm(clk,RegWriteM,MemtoRegM,MemWriteM ,WriteDataM,ALUOutM ,WriteRegM,RegWriteW,MemtoRegW,ReadDataW,ALUOutW,WriteRegW);

Memory Mm (
    .clk(clk),
    .RegWriteM(RegWriteM),
    .MemtoRegM(MemtoRegM),
    .MemWriteM(MemWriteM),
    .WriteDataM(WriteDataM),
    .ALUOutM(ALUOutM1),
    .WriteRegM(WriteRegM),
    .RegWriteW(RegWriteW),
    .MemtoRegW(MemtoRegW),
    .ReadDataW(ReadDataW),
    .ALUOutW(ALUOutW),
    .WriteRegW(WriteRegW)
);
//Write_back
// Write_Back WB(RegWriteW,MemtoRegW,ReadDataW,ALUOutW, WriteRegW,ResultW );

Write_Back WB (
    .RegWriteW1(RegWriteW),
    .MemtoRegW(MemtoRegW),
    .ReadDataW(ReadDataW),
    .ALUOutW(ALUOutW),
    .WriteRegW(WriteRegW),
    .ResultW(ResultW),
    .RegWriteW(RegWriteW1),  
    .WriteRegW1(WriteRegW1)  
);
reg[4:0]WriteRegE1;
always@(*) begin
WriteRegE1=WriteRegE;
end

reg BranchD1;
always @(*) begin
BranchD1=BranchD;
end
//hazard_unit
//Hazard_unit Hz(RegWriteW,RegWriteM,MemtoRegE,MemtoRegM,WriteRegE,RegWriteE,WriteRegM,WriteRegW,BranchD,RsD,RtD,RsE,RtE,ForwardAE,ForwardBE,ForwardAD,ForwardBD,FlushE,StallD,StallF);
Hazard_unit Hz (
    .RegWriteW(RegWriteW),
    .RegWriteM(RegWriteM),
    .MemtoRegE(MemtoRegE),
    .MemtoRegM(MemtoRegM),
    .WriteRegE(WriteRegE1),
    .RegWriteE(RegWriteE),
    .WriteRegM(WriteRegM),
    .WriteRegW(WriteRegW),
    .BranchD(BranchD1),
    .RsD(RsD),
    .RtD(RtD),
    .RsE(RsE),
    .RtE(RtE),
    .ForwardAE(ForwardAE),
    .ForwardBE(ForwardBE),
    .ForwardAD(ForwardAD),
    .ForwardBD(ForwardBD),
    .FlushE(FlushE),
    .StallD(StallD),
     .StallF(StallF)
);

endmodule
