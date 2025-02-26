`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Design Name: Ali Ahsan Project 4
// Module Name: exp_dsd_004
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


module exp_dsd_004(
    input logic [1:0] a,  
    input logic [1:0] b,    
    output logic red,     
    output logic green,   
    output logic blue     
);
    logic a1, a0, b1, b0;
    assign a1 = a[1];
    assign a0 = a[0];
    assign b1 = b[1];
    assign b0 = b[0];
    assign red = (a1 & ~b1)|(~b1 & ~b0)|(a1 & ~b0)|(a1 & a0)|(a0 & ~b1);
    assign green = (~a1 & ~a0)|(~a1 & b1)|(~a1 & b0)|(~a0 & b1)|(b1 & b0);
    assign blue = (~a1 & b1)|(a1 & ~b1)|(a0 & ~b0)|(~a0 & b0);

endmodule