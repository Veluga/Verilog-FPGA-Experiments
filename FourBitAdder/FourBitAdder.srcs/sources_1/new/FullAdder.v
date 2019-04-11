`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2019 12:08:51
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(input a, input b, input cin, output s, output cout);
    
    assign s = ~a & ~b & cin |
               ~a & b & ~cin |
               a & b & cin |
               a & ~b & ~cin;
               
    assign cout = a & b |
                  cin & b |
                  cin & a; 

endmodule
