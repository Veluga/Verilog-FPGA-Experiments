`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2019 09:52:43
// Design Name: 
// Module Name: EightOneMUX
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


module EightOneMUX
(
    input d0, d1, d2, d3, d4, d5, d6, d7, [1:0] s,
    output reg y
);
    always @ (*)
        case(s)
            0: y = d0;
            1: y = d1;
            2: y = d2;
            3: y = d3;
            4: y = d4;
            5: y = d5;
            6: y = d6;
            7: y = d7;
            default: y = d0;
        endcase
endmodule