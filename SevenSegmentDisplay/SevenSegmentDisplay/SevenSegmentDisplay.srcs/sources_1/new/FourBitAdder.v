`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2019 12:12:03
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
       
       FullAdder f_adder_1( .a(a[0]), .b(b[0]), .cin(0), .s(s[0]), .cout(co1));
       FullAdder f_adder_2( .a(a[1]), .b(b[1]), .cin(co1), .s(s[1]), .cout(co2));
       FullAdder f_adder_3( .a(a[2]), .b(b[2]), .cin(co2), .s(s[2]), .cout(co3));
       FullAdder f_adder_4( .a(a[3]), .b(b[3]), .cin(co3), .s(s[3]), .cout(s[4]));       
       
       
endmodule
