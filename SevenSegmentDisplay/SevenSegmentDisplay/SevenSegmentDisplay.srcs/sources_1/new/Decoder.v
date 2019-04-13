`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2019 17:01:55
// Design Name: 
// Module Name: Decoder
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


module Decoder
(
    input [3:0] s,
    output reg [6:0] d
);
    
    always @ (*)
        case(s)
            //0
            4'b0000: d = 7'b0000001;
            //1
            4'b0001: d = 7'b1001111;
            //2
            4'b0010: d = 7'b0010010;
            //3
            4'b0011: d = 7'b0000110;
            //4
            4'b0100: d = 7'b1001100;
            //5
            4'b0101: d = 7'b0100100;
            //6
            4'b0110: d = 7'b0100000;
            //7
            4'b0111: d = 7'b0001111;
            //8
            4'b1000: d = 7'b0000000;
            //9
            4'b1001: d = 7'b0000100;
            //A
            4'b1010: d = 7'b0001000;
            //B
            4'b1011: d = 7'b1100000;
            //C
            4'b1100: d = 7'b0110001;
            //D
            4'b1101: d = 7'b1000010;
            //E
            4'b1110: d = 7'b0110000;
            //F
            4'b1111: d = 7'b0111000;
        endcase
endmodule
