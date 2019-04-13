`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2019 10:14:01
// Design Name: 
// Module Name: SRLatch
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


module SRLatch
(
    input s, r,
    output reg q, qbar
);
    
    always @ (*)
        case({s, r})
            2'b01: {q, qbar} = 2'b01;
            2'b10: {q, qbar} = 2'b10;
            2'b11: {q, qbar} = 2'b00;
            default: {q, qbar} = 2'bxx;
        endcase
endmodule
