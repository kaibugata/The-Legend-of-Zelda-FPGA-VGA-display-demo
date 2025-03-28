`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2025 02:37:38 PM
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
input btnU,btnL,btnD,btnR,btnC,input[15:0] sw, output dp, 
input clkin,
output [3:0] an, output [6:0] seg, 
output Hsync, Vsync,
output [3:0] vgaGreen, vgaBlue, vgaRed,
output [15:0] led

    );
    
wire clk,digsel,border,ball;
wire [15:0] xcord,ycord;
wire [15:0] V,H;
wire [3:0]bord;
wire [3:0]red,blue,green;
wire vedge;



EdgeDetector VE (.in(Vsync),.clk(clk),.ans(vedge));
labVGA_clks not_so_slow (.clkin(clkin),.greset(sw[15]),.clk(clk),.digsel(digsel));
Pixel_Address wessamqdig (.clk(clk),.V(V),.H(H));                         
Sync let_that_sink_in (.V(V),.H(H),.clk(clk),.Vsync(Vsync),.Hsync(Hsync));
GreenBorderFN fortnite (.V(V),.H(H),.border(border),.clk(clk));
PlayerMovement link (.V(V),.H(H),.Vsync(Vsync),.Hsync(Hsync),.clk(clk),.U(btnU),.L(btnL),.R(btnR),.D(btnD),.ball(ball),.xcord(xcord),.ycord(ycord),.bord(bord));
Animation_Color col (.V(V),.H(H),.moving(btnU|btnL|btnD|btnR),.Vsync(vedge),.clk(clk),.Xpos(xcord),.Ypos(ycord),.Red(red),.Blue(blue),.Green(green));

assign led[3:0] = bord[3:0];

// Link's Skin / Outer Shield and Cross
//assign vgaRed   = 4'b1111;  // 252 -> 15
//assign vgaGreen = 4'b1001;  // 152 -> 9
//assign vgaBlue  = 4'b0011;  // 56 -> 3

// Link's Tunic / Eyelids
// assign vgaRed   = 4'b1000;  // 128 -> 8
// assign vgaGreen = 4'b1101;  // 208 -> 13
// assign vgaBlue  = 4'b0001;  // 16 -> 1

// Link's Sleeves / Hair / Shoes / Eyes / Mouth
// assign vgaRed   = 4'b1100;  // 200 -> 12
// assign vgaGreen = 4'b0100;  // 76 -> 4
// assign vgaBlue  = 4'b0000;  // 12 -> 0



assign vgaRed = {4{border}} | red;


assign vgaGreen = green;

assign vgaBlue = blue;

endmodule
