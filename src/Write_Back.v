
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 15:21:17
// Design Name: 
// Module Name: Write_Back
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

module Write_Back(RegWriteW1,MemtoRegW,ReadDataW,ALUOutW, WriteRegW,ResultW,RegWriteW ,WriteRegW1);
input RegWriteW1,MemtoRegW;
input [31:0] ReadDataW,ALUOutW;
input [4:0] WriteRegW ;
output [31:0] ResultW;
output RegWriteW;
output[4:0] WriteRegW1 ;

assign ResultW=(MemtoRegW) ? ReadDataW : ALUOutW;
assign RegWriteW=RegWriteW1;
assign WriteRegW1=WriteRegW;

endmodule
