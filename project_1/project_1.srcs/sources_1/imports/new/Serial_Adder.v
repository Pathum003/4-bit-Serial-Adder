`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2022 02:37:47 PM
// Design Name: 
// Module Name: Serial_Adder
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


module Serial_Adder(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Sum,
    output over_flow
    );
    
    wire [3:0] C_out;
    
    Full_Adder U0(A[0], B[0], 0, Sum[0], C_out[0]);
    Full_Adder U1(A[1], B[1], C_out[0], Sum[1], C_out[1]);
    Full_Adder U2(A[2], B[2], C_out[1], Sum[2], C_out[2]);
    Full_Adder U3(A[3], B[3], C_out[2], Sum[3], C_out[3]);
    
    assign over_flow = C_out[2]^C_out[3];
   
endmodule
