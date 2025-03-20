`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2025 01:39:14 AM
// Design Name: 
// Module Name: EdgeDetector
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


module EdgeDetector(
input in,clk,
output ans

    );
    wire intermed,intermed1;
    //ONLY DETECT THE EDGE
    //have one flip flip contain the value and then have the other flip flop contain the value afterwards. If flipflop 1 = 0 and flipflop 2 = 1 then ans = 1
    //esentailly assign ang = intermed&~intermed1 bc we only want 0 -> 1 and intermed finds out btnU before intermed1 does
    //clk is only for dflipflop
    //we are checking pos edge of buttons
FDRE #(.INIT(1'b0) ) ff_instance_1 (
.C(clk),
.R(0),
.CE(1),
.D(in),
.Q(intermed));


FDRE #(.INIT(1'b0) ) ff_instance_2 (
.C(clk),
.R(0),
.CE(1),
.D(intermed),
.Q(intermed1));


assign ans = intermed&~intermed1;


    
    
endmodule
