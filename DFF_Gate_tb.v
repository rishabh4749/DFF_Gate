`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 19:33:15
// Design Name: 
// Module Name: DFF_Gate_tb
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


module DFF_Gate_tb(

    );
    reg clk;
    reg in;
    wire out;
    always #5 clk=~clk;
    DFF_Gate dut(.clk(clk),.in(in),.out(out));
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t in=%0b out=%0b",clk,in,out);
    #20 $finish;
    end
    initial
    begin
    clk<=0;
    #4;
    in<=1;
    #9;
    in<=0;
    end
endmodule
