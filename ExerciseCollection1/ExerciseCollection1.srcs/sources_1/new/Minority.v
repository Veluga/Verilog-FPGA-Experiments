`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2019 09:41:37
// Design Name: 
// Module Name: Minority
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


module Minority
(
    input a, b, c,
    output y
);
    
    assign y = ~a & ~b | ~b & ~c | ~b & ~c;

endmodule
