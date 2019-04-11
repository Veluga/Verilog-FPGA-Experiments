`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2019 15:52:15
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


module FullAdder(input x, input y, input cin, output s, output cout);
    wire n1, n2, n3;
    
    HalfAdder first_ha(.a(x), .b(y), .s(n1), .c(n2));
    HalfAdder second_ha(.a(n1), .b(cin), .s(s), .c(n3));
    
    assign cout = n2 | n3;
endmodule
