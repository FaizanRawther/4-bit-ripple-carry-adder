`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2022 23:10:44
// Design Name: 
// Module Name: Ripple_carry_adder
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


module Ripple_carry_adder(
input [3:0] a,
input [3:0] b,
input c,
output [3:0] sum,
output carry);
wire c1,c2,c3;
fullAdder_usingGate d0(a[0],b[0],c,sum[0],c1);
fullAdder_usingGate d1(a[1],b[1],c1,sum[0],c2);
fullAdder_usingGate d2(a[2],b[2],c2,sum[2],c3);
fullAdder_usingGate d3(a[3],b[3],c3,sum[3],carry);

endmodule
