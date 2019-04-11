`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2019 15:57:33
// Design Name: 
// Module Name: FourBitAdder
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


module FourBitAdder(input [3:0] a, input [3:0] b, output [4:0] s);
    wire co1, co2, co3;

    FullAdder fa_1 (.x(a[0]), .y(b[0]), .cin(0), .s(s[0]), .cout(co1));
    FullAdder fa_2 (.x(a[1]), .y(b[1]), .cin(co1), .s(s[1]), .cout(co2));
    FullAdder fa_3 (.x(a[2]), .y(b[2]), .cin(co2), .s(s[2]), .cout(co3));
    FullAdder fa_4 (.x(a[3]), .y(b[3]), .cin(co3), .s(s[3]), .cout(s[4]));
    
endmodule

