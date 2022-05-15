`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2022 12:42:26 PM
// Design Name: 
// Module Name: top
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


module top(
    input [3:0] A,
    input [3:0] B,
    //output O_flow,
    output [4:0] o_led
    

    );
    
    wire [3:0] Sum;
    wire over_flow;
    
    Serial_Adder U4(A,B,Sum,over_flow);
    assign o_led[0]=Sum[0];
    assign o_led[1]=Sum[1];
    assign o_led[2]=Sum[2];
    assign o_led[3]=Sum[3];
    assign o_led[4]=over_flow;
endmodule
