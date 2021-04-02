`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2021 01:42:20 PM
// Design Name: 
// Module Name: blinky
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


module blinky(
    input CLK100MHZ,
    output led0_b,
    output led0_g,
    output led0_r
    );
    
reg [24:0] count = 0;
assign led0_b = count[24];
assign led0_g = count[16];
assign led0_r = count[8];
always @ (posedge(CLK100MHZ)) count <= count + 1;

endmodule
