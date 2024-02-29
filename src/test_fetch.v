`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 15:43:42
// Design Name: 
// Module Name: test_fetch
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

module test_fetch(
    input clk,
    input StallF,
    input StallD,
    input PCSrcD,
    input [31:0] PCBranchD,
    output  [31:0] InstrD,
    output  [31:0] PCPD
);
    // Instantiate Fetch module
    Fetch FE(
        .clk(clk),
        .PCSrcD(PCSrcD),
        .StallF(StallF),
        .StallD(StallD),
        .PCBranchD(PCBranchD),
        .InstrD(InstrD),
        .PCPD(PCPD)
    );

endmodule