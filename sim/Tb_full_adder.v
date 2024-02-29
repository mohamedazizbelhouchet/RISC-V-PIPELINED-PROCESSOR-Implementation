`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 16:34:07
// Design Name: 
// Module Name: Tb_full_adder
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


module Tb_full_adder();
reg a,b,cin;
wire sum,cout;
Full_adder FA (.a(a), .b(b) , .cin(cin),.sum(sum) ,.cout(cout) ) ;
initial begin
  //  $monitor($time,"time= );
   {a,b,cin}=3'b001;
      #1 ; {a,b,cin}=3'd010;

   #1 ; {a,b,cin}=3'b011;
   #1 ; {a,b,cin}=3'b100;

   #1 ; {a,b,cin}=3'b101;

   #1 ; {a,b,cin}=3'b110;

   #1 ; {a,b,cin}=3'b111;

    #10; $stop;
end
endmodule
