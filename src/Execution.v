

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2024 17:14:51
// Design Name: 
// Module Name: Execution
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


module Execution(clk ,RegWriteE,MemtoRegE,ALUOutMg,MemWriteE,ALUSrcE,RegDstE,ALUControlE,RtE,RdE,ForwardAE, ForwardBE,M1,M2,ResultW,SignImmE,WriteRegM,WriteRegE,WriteDataM,ALUOutM,RegWriteM,MemtoRegM,MemWriteM);

input  clk ,RegWriteE,MemtoRegE,MemWriteE,ALUSrcE,RegDstE;
input [2:0] ALUControlE;
input [4:0] RtE,RdE;
input [1:0] ForwardAE, ForwardBE ;
input [31:0]M1,M2, ALUOutMg,ResultW,SignImmE;
output [4:0]WriteRegM,WriteRegE;
output RegWriteM,MemtoRegM,MemWriteM;
output[31:0]WriteDataM,ALUOutM;

assign WriteRegE=(RegDstE)?(RdE):RtE;
reg[31:0]SrcAE,SrcBE,WriteDataE;

always@(*) begin
SrcAE=(ForwardAE==2'b00)?M1: (ForwardAE==2'b01)? ResultW: ALUOutMg ;
WriteDataE=(ForwardBE==2'b00)?M2: (ForwardBE==2'b01)? ResultW: ALUOutMg;
SrcBE=(ALUSrcE)? SignImmE : WriteDataE ;
end
wire [31:0]Result; 

//ALU AL15 (SrcAE,SrcBE,ALUControlE,Result,OverFlow,Carry,Zero,Negative);
ALU  AL15(.A(SrcAE),.B(SrcBE),.ALUControl(ALUControlE),.Result(Result));

 reg RegWriteMg,MemtoRegMg,MemWriteMg ;
 reg [31:0]WriteDataMg,ALUOutMg1 ;
 reg[4:0] WriteRegEg ;
 reg [4:0] WriteRegEg1;
 always@(*) begin
  WriteRegEg1= WriteRegE;
  end 
  reg[31:0] result1;
  always @(*) begin
   result1= Result;
   end
always @(posedge clk) begin
    RegWriteMg <= RegWriteE;
    MemtoRegMg <= MemtoRegE;
    MemWriteMg <= MemWriteE;
    WriteDataMg <= WriteDataE;
    ALUOutMg1 <= result1;
    WriteRegEg <= WriteRegEg1;
end


assign RegWriteM = RegWriteMg;
assign MemtoRegM = MemtoRegMg;
assign MemWriteM = MemWriteMg;
assign WriteDataM = WriteDataMg;
assign ALUOutM = ALUOutMg1;
assign WriteRegM = WriteRegEg;



endmodule
