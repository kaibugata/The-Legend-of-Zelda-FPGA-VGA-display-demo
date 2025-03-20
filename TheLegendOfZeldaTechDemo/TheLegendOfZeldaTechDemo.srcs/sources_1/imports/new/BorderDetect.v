`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 02:55:02 PM
// Design Name: 
// Module Name: BorderDetect
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


module BorderDetect(
input [15:0] Xpos, Ypos, 
input clk,
output [3:0] borderTouched//Top bottm left right

    );
    wire [3:0] bord;
    
    assign bord[0] = (Ypos <= 16'd8 & Ypos > 16'b0);
    assign bord[1] = (Ypos >= 16'd472 & Ypos < 16'd480);
    assign bord[2] = (Xpos <= 16'd8 & Xpos > 16'b0);
    assign bord[3] = (Xpos >= 16'd632 & Xpos < 16'd640);
    
    
    
    FDRE #(.INIT(1'b0) ) ff_instance_1[3:0] (.C({4{clk}}),.R(4'b0),.CE({4{1'b1}}),.D(bord),.Q(borderTouched));
endmodule
