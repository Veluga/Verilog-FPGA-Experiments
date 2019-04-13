`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2019 17:09:07
// Design Name: 
// Module Name: FA_SS_Output
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


module FA_SS_Output
(
    input [3:0] a, b,
    output s,
    output [3:0] AN,
    output [6:0] d
);

    wire [4:0] n1;

    FourBitAdder fba(.a(a), .b(b), .s(n1));
    Decoder dec(.s(n1[3:0]), .d(d));
    
    assign s = n1[4];
    assign AN = 4'b1110;
        
endmodule
