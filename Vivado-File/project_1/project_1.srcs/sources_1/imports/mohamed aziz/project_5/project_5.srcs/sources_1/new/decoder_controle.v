
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 22:50:57
// Design Name: 
// Module Name: decoder_controle
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


module decoder_controle(Op,RegWrite,ALUSrc,MemWrite,MemtoReg,Branch,RegDst,ALUOp);
    input [5:0]Op;
    output RegWrite,ALUSrc,MemWrite,MemtoReg,Branch,RegDst;
    output [1:0]ALUOp;

    assign RegWrite = (Op == 6'd0 | Op == 6'h23 | Op == 6'h8 ) ? 1'b1 :
                                                              1'b0 ;
    
    assign ALUSrc = (Op == 6'h23 | Op == 6'h2B | Op == 6'h08) ? 1'b1 :
                                                            1'b0 ;
    assign MemWrite = (Op == 6'h2B) ? 1'b1 :
                                           1'b0 ;
    assign MemtoReg = (Op == 6'h23 ) ? 1'b1 :
                                            1'b0 ;
    assign Branch = (Op == 6'h04 ) ? 1'b1 :
                                         1'b0 ;
    assign ALUOp[1]=(Op==6'd0);
    assign ALUOp[0]=(Op==6'd4);
    
   
    assign RegDst=(Op==6'd0);
endmodule
