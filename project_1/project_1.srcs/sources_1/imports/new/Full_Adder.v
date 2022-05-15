`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2022 02:37:23 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input A,
    input B,
    input C_in,
    output Sum,
    output C_out
    );
    
    //assign Sum = ~A & ~B & C_in | A & ~B & ~C_in | A & B & C_in;
    assign Sum = (A ^ B) ^ C_in;
    assign C_out = B & C_in | A & C_in | A & B;

endmodule
