`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2019 10:33:30
// Design Name: 
// Module Name: TrafficLight
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


module TrafficLight
(
    input ta, tb, clk, reset,
    output [1:0] l1, l2   
);
    
    reg [1:0] state, nextstate;
    
    always @ (clk)
        begin
            if(reset) state <= 2'b00;
            else state <= nextstate;
        end
    
    //Combinational (next state) logic
    always @ (*)
        begin
            case({state, ta, tb})
                2'b000x: nextstate = 2'b01;
                2'b001x: nextstate = 2'b00;
                2'b01xx: nextstate = 2'b10;
                2'b10x0: nextstate = 2'b11;
                2'b10x1: nextstate = 2'b10;
                2'b11xx: nextstate = 2'b00;
            endcase
        end
    
    //Output logic
    assign l1 = {state == 2'b1x, state == 2'b01};
    assign l2 = {state == 2'b0x, state == 2'b11};
endmodule
