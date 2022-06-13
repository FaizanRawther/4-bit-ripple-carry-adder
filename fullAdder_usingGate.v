`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2022 13:02:19
// Design Name: 
// Module Name: fullAdder_usingGate
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


module fullAdder_usingGate(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
    wire s1,s2,s3;
    xor x1(s1,a,b);
    and a1(s2,a,b);
    xor x2(sum,s1,c);
    and a2(s3,s1,c);
    or o1(carry,s3,s2);
endmodule
