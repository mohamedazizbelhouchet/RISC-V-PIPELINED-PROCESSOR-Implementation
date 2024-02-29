`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2024 20:41:59
// Design Name: 
// Module Name: ALU_ctr_tb
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


module ALU_ctr_tb();
    reg [1:0]ALUOp;
    reg [2:0]funct3;
    reg [6:0]funct7,op;
    wire [2:0]ALUControl;
    ALU_ctr utr(ALUOp,funct3,funct7,op,ALUControl );
  initial begin 
   //$monitor($time,"i_switch = %b,o_LED = %b" , i_switch, o_LED);
    ALUOp=2'd0; #1;
    ALUOp=2'd1; #1;
    ALUOp=2'd2; funct3=3'd0;op=6'd0;funct7=6'd0; #1;
    op=6'd0;funct7=6'd0;#1;
    op=6'd1;funct7=6'b0;#1;
    op=6'd1;funct7=6'd1;#1;
     funct3=3'd2;#1;
     funct3=3'b110;#1;
     funct3=3'b111;#1;
     $stop;
    end
    
    
    

endmodule
