

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2024 23:02:51
// Design Name: 
// Module Name: ALU
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


module ALU (A,B,ALUControl,Result);
input [31:0]A,B;
    input [2:0]ALUControl;
  
    output [31:0]Result;
  wire [31:0]sum;

assign sum= (ALUControl[0]==1'b0) ? A+B:A+(~B)+1;
assign Result= (ALUControl[2:1]==2'b00) ? sum :
                (ALUControl[2:1]==2'b01) ?  sum :
                (ALUControl[2:1]==2'b10) ?  A&B :
                (ALUControl[2:1]==2'b11) ?  A|B :
                {33{1'b0}};
 
     
endmodule
