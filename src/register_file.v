`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2024 20:17:35
// Design Name: 
// Module Name: register_file
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


module register_file(clk/*,rst*/,WE3,WD3,A1,A2,A3,RD1,RD2);
input clk /*, rst*/ ;
input [4:0]A1,A2,A3;
input [31:0]WD3;
input WE3;
output [31:0]RD1,RD2;
 reg [31:0] regi [31:0] ;


always @ (negedge clk)
    begin
    if(WE3 ) begin
        regi[A3]<=WD3;
        end
        end
        
    assign RD1=/*(rst)?32'd0 :*/ regi[A1];
    assign  RD2=/*(rst)?32'd0 :*/ regi[A2] ;
    
    /*always @(posedge rst)*/
    initial
    begin
       
         regi[0] = 32'h0;
         regi[1] = 32'h1;
         regi[2] = 32'h2;
         regi[3] = 32'h3;
         regi[4] = 32'h4;
         regi[5] = 32'h5;
         regi[6] = 32'h6;
         regi[7] = 32'h7;
         regi[8] = 32'h8;
         regi[9] = 32'h9;
         regi[10] = 32'h10;
         regi[11] = 32'h11;
         regi[12] = 32'h12;
         regi[13] = 32'h13;
         regi[14] = 32'h14;
         regi[15] = 32'h15;
         regi[16] = 32'h16;
         regi[17] = 32'h17;
         regi[18] = 32'h18;
         regi[19] = 32'h19;
         regi[20] = 32'h20;
         regi[21] = 32'h21;
         regi[22] = 32'h22;
         regi[23] = 32'h23;
         regi[24] = 32'h24;
         regi[25] = 32'h25;
		 regi[26] = 32'h26;
         regi[27] = 32'h27;
         regi[28] = 32'h28;
         regi[29] = 32'h29;
         regi[30] = 32'h30;
         regi[31] = 32'h31;

    end
      
    
endmodule
