
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 20:18:27
// Design Name: 
// Module Name: ALU_ctr
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


module ALU_ctr(ALUOp,funct,ALUControl );
    input [1:0]ALUOp;
    input [5:0]funct;
    output [2:0]ALUControl;
    
      assign ALUControl = (ALUOp == 2'b00) ? 3'b010 :
                        ( (ALUOp == 2'bx1))  ? 3'b110 :
                        ( (ALUOp == 2'b1x)& (funct == 6'h20) )  ? 3'b010 :
                        ( (ALUOp == 2'b1x)& (funct == 6'h22) )  ? 3'b110 :
                        ( (ALUOp == 2'b1x)& (funct == 6'h24) )  ? 3'b000 :
                        ( (ALUOp == 2'b1x)& (funct == 6'h25) )  ? 3'b001 :
                        ( (ALUOp == 2'b1x)& (funct == 6'b101010) )  ? 3'b111  : 3'd0;
                     
endmodule
