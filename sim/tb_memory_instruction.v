module tb_instruction_memory();

reg clk;
reg [31:0] PCF;
reg write_enable;
reg [31:0] data_in;
wire [31:0] RD;

instruction_memory mem_inst ( 
	 clk,
    PCF,
	 write_enable,
	  data_in,
     RD );
	  
//clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
	 

	 initial begin 
	 PCF=0;
	 #1 ; PCF=4;
	 #1 ; PCF=8;
	 #1 ; PCF=12;
	 #1 ; PCF=16;
	 #1 ; PCF=20;
	 #10; 
	 $stop; 
	 end
	 
endmodule
	 
	 
	 