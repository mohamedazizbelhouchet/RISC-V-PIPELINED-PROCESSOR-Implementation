

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2024 14:13:46
// Design Name: 
// Module Name: Decoder
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

module Decoder(clk,InstrD,PCPD,ForwardAD,ForwardBD,RegWriteW,ResultW,ALUOutM,RsD,RtD,M1,M2,SignImmE,WriteRegW,FlushE,PCBD,RsE,RtE,RdE,RegWriteE,MemtoRegE,MemWriteE,ALUSrcE,RegDstE,ALUControlE,PCSrcD,BranchD );
input clk,RegWriteW,FlushE ;
input [1:0] ForwardAD,ForwardBD;            
input [31:0] ResultW,InstrD,PCPD ,ALUOutM ;
input [4:0] WriteRegW;
output [4:0] RsE,RtE,RdE ,RsD,RtD;
output [31:0] PCBD, M1,M2,SignImmE;
output RegWriteE,MemtoRegE,MemWriteE,ALUSrcE,RegDstE,PCSrcD,BranchD ;
output [2:0] ALUControlE;


wire BranchD1 ;
wire RegWriteD,MemtoRegD,MemWriteD,ALUSrcD,RegDstD;
wire [2:0] ALUControlD;
wire [1:0] ALUOp;
//decoder_controle DC12(InstrD[31:26],RegWriteD,ALUSrcD,MemWriteD,MemtoRegD,BranchD,RegDstD,ALUOp);
decoder_controle DC12(.Op(InstrD[31:26]),.RegWrite(RegWriteD),.ALUSrc(ALUSrcD),.MemWrite(MemWriteD),.MemtoReg(MemtoRegD),.Branch(BranchD1),.RegDst(RegDstD),.ALUOp(ALUOp));
reg [1:0] ALUOp1;
assign BranchD =BranchD1;
always @* begin 
    ALUOp1 = ALUOp ;
    end
     

//ALU_ctr AC12(ALUOp1,InstrD[5:0] ,ALUControlD );
ALU_ctr AC12(.ALUOp(ALUOp1),.funct(InstrD[5:0]),.ALUControl(ALUControlD ));

wire [31:0] RD1,RD2;
 //register_file rf12(clk/*,rst*/,RegWriteW,ResultW,InstrD[25:21],InstrD[20:16],WriteRegW,RD1,RD2);
 register_file rf12(.clk(clk)/*,rst*/,.WE3(RegWriteW),.WD3(ResultW),.A1(InstrD[25:21]),.A2(InstrD[20:16]),.A3(WriteRegW),.RD1(RD1),.RD2(RD2));
 
wire [31:0] SignImmD;
//extend SE(InstrD[15:0]  , SignImmD );
extend SE(.In(InstrD[15:0])  , .ext_out(SignImmD) );

reg [31:0] PCBg;
always @(*) begin
    PCBg= {SignImmD[29:0] , 2'b00} + PCPD ;    
end
assign PCBD=PCBg;
reg [31:0] M11;
reg [31:0]  M22;
always @(*) begin
     M11= (ForwardAD) ? ALUOutM : RD1;
     M22= (ForwardBD) ? ALUOutM : RD2;
end
wire EqualD=(M1==M2);
assign PCSrcD= BranchD & EqualD;

reg [4:0] RsDg,RtDg,RdD;
reg RegWriteEg,MemtoRegEg,MemWriteEg,ALUSrcEg,RegDstEg;
reg [2:0] ALUControlEg;
reg[31:0] SignImmEg;
reg [31:0] M1g;
reg [31:0] M2g;
   
always @( posedge clk) begin
  if(FlushE)begin
    MemtoRegEg<=0;
    RegWriteEg<=0;
    MemWriteEg<=0;
    ALUSrcEg<=0;
    RegDstEg<=0;
   
    ALUControlEg<=3'b0;
    RsDg<=5'b0;
    RtDg<=5'b0; 
    RdD<=5'b0;
    M1g<=M11;
    M2g<=M22;
    SignImmEg<=SignImmD;
   end
     else begin
      {RegWriteEg,MemtoRegEg,MemWriteEg,ALUSrcEg,RegDstEg,ALUControlEg,RsDg,RtDg,RdD}<={RegWriteD,MemtoRegD,MemWriteD,ALUSrcD,RegDstD,ALUControlD,InstrD[25:21],InstrD[20:16],InstrD[15:11]}; 
       end 
       end 
 assign{RegWriteE,MemtoRegE,MemWriteE,ALUSrcE,RegDstE,ALUControlE,RsE,RtE,RdE}={RegWriteEg,MemtoRegEg,MemWriteEg,ALUSrcEg,RegDstEg,ALUControlEg,RsDg,RtDg,RdD};
 assign {M1,M2}={M1g,M2g};  
 assign SignImmE=SignImmEg;   
 assign {RsD,RtD}=InstrD[25:16];       
 
endmodule
