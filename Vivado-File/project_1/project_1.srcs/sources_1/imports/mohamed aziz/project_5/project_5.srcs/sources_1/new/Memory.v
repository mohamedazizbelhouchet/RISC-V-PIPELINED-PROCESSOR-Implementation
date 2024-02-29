

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2024 15:52:13
// Design Name: 
// Module Name: Memory
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


module Memory(clk,RegWriteM,MemtoRegM,MemWriteM ,WriteDataM,ALUOutM ,WriteRegM,RegWriteW,MemtoRegW,ReadDataW,ALUOutW,WriteRegW);
input  clk,RegWriteM,MemtoRegM,MemWriteM;
input [31:0]WriteDataM,ALUOutM;
input [4:0] WriteRegM ;
output RegWriteW,MemtoRegW;
output [31:0] ReadDataW,ALUOutW;
output [4:0] WriteRegW ;
wire [31:0] RD;
//Data_Memory DM12(clk,WriteDataM,ALUOutM,MEMWriteM,RD);
Data_Memory DM12(.clk(clk),.WD(WriteDataM),.A(ALUOutM),.WE(MemWriteM),.RD(RD));

reg RegWriteWg,MemtoRegg;
reg [4:0] WriteRegWg ;
reg [31:0] ReadDataWg,ALUOutWg;

always @(*) begin
    RegWriteWg = RegWriteM;
    MemtoRegg = MemtoRegM;
    WriteRegWg = WriteRegM;
    ReadDataWg = RD;
    ALUOutWg = ALUOutM;
end

assign RegWriteW = RegWriteWg;
assign MemtoRegW = MemtoRegg;
assign WriteRegW = WriteRegWg;
assign ReadDataW = ReadDataWg;
assign ALUOutW = ALUOutWg;

endmodule
