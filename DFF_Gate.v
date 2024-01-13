`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 19:32:40
// Design Name: 
// Module Name: DFF_Gate
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


module DFF_Gate(
    input clk,
    input in,
    output reg out
    );
    wire mid;
    assign mid=in^out;
    initial begin
    out=0;
    end
    always @ (posedge clk) begin
    out<=mid;
    end
endmodule
