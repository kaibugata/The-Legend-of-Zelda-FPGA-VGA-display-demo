`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2025 03:02:46 PM
// Design Name: 
// Module Name: GreenBorderFN
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


module GreenBorderFN(
input [15:0] V,H,
input clk,
output border

    );
    wire top,bot,right,left,borderPatrol;
    
    assign top = (V >= 16'd0 & V < 16'd8); 
    assign bot = (V >= 16'd472 & V < 16'd480); 
    assign right = (H >= 16'd632 & H < 16'd640); 
    assign left = (H >= 16'd0 & H < 16'd8); 
    
    assign borderPatrol = top|bot|right|left;
    
    
    FDRE #(.INIT(1'b0) ) ff_instance_R2L (.C(clk),.R(1'b0),.CE(1'b1),.D(borderPatrol),.Q(border));
    
    
endmodule
