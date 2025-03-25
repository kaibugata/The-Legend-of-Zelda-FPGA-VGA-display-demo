`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 12:52:09 PM
// Design Name: 
// Module Name: Animation_Color
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


module Animation_Color(
    input clk,
    input [15:0] Xpos, Ypos, V,H, 
    input ball, //top left of the Ball
    output [3:0] Red, Blue, Green

    );
    wire [15:0] xcenter,ycenter;
    assign xcenter = Xpos + 16'd8;
    assign ycenter = Ypos + 16'd8;
    
    
    
    wire downanim1SKIN;
    wire downanim1MISC;
    wire downanim1TUNIC;
    //skin first
    
    assign Blue[3] = 0;
    assign Blue[2] = 0;
    assign Blue[1] = downanim1SKIN;
    assign Blue[0] = downanim1SKIN;
    
    assign Red[3] = downanim1SKIN|downanim1MISC;
    assign Red[2] = downanim1SKIN|downanim1MISC;
    assign Red[1] = downanim1SKIN;
    assign Red[0] = downanim1SKIN;
    
    assign Green[3] = downanim1SKIN;
    assign Green[2] = downanim1MISC;
    assign Green[1] = 0;
    assign Green[0] = downanim1SKIN;
    
    
    
    
    
    assign downanim1SKIN = ((H >= xcenter - 16'd1 & H <= xcenter + 16'd2)&(V == ycenter))|((H == xcenter - 16'd1)&(V >= ycenter + 16'd2 & V <= ycenter + 16'd5))|((H >= xcenter - 16'd5 & H <= xcenter - 16'd2)&(V == ycenter + 16'd6))|((H == xcenter - 16'd4)&(V >= ycenter + 16'd1 & V <= ycenter + 16'd4))|((H >= xcenter - 16'd5 & H <= xcenter - 16'd3)&(V == ycenter + 16'd2))|(((H >= xcenter - 16'd2 & H <= xcenter - 16'd1)|(H >= xcenter + 16'd2 & H <= xcenter + 16'd3))&(V == ycenter - 16'd1))|((H >= xcenter - 16'd4 & H <= xcenter + 16'd5)&(V == ycenter - 16'd2))|(((H >= xcenter - 16'd5 & H <= xcenter - 16'd4)|(H == xcenter - 16'd2)|(H >= xcenter & H <= xcenter + 16'd1)|(H >= xcenter + 16'd5 & H <= xcenter + 16'd6)|(H == xcenter + 16'd3))&(V == ycenter - 16'd3))|(((H >= xcenter - 16'd5 & H <= xcenter - 16'd4)|(H == xcenter - 16'd2)|(H >= xcenter & H <= xcenter + 16'd1)|(H >= xcenter + 16'd5 & H <= xcenter + 16'd6)|(H == xcenter + 16'd3))&(V == ycenter - 16'd4))|((H == xcenter - 16'd5 | H == xcenter + 16'd6)&(V <= ycenter - 16'd5 & V >= ycenter - 16'd6))|(((H >= xcenter + 16'd4 & H <= xcenter + 16'd6)&(V == ycenter + 16'd2))|((H == xcenter + 16'd5)&(V >= ycenter + 16'd1 & V <= ycenter + 16'd3)))|(((H == xcenter + 16'd6)&(V >= ycenter + 16'd3 & V <= ycenter + 16'd4))|((H == xcenter + 16'd7) & (V == ycenter + 16'd3)));
    //bottom mouth, right side of shield, bottom side of shield, cross |, cross -, side of mouth, above mouth, lower eye, higher eye, ears, fist upper plus, fist lower triangle
    
    
    
    assign downanim1MISC = 
    (V == ycenter - 16'd1 & H >= xcenter & H <= xcenter + 16'd1) |
    (V == ycenter - 16'd3 & (H == xcenter - 16'd1 | H == xcenter + 16'd2)) |
    (V >= ycenter - 16'd5 & V <= ycenter - 16'd3 & (H == xcenter - 16'd3 | H == xcenter + 16'd4)) |
    (V <= ycenter - 16'd5 & V >= ycenter - 16'd6 & H <= xcenter + 16'd3 & H >= xcenter - 16'd2) |
    ((V >= ycenter - 16'd2 & V <= ycenter + 16'd1 & H == xcenter + 16'd6) | 
    (V == ycenter & (H == xcenter + 16'd5 | H == xcenter + 16'd7)) |
    (V >= ycenter + 16'd1 & V <= ycenter + 16'd2 & H == xcenter + 16'd7)) |
    ((V == ycenter + 16'd1 & H == xcenter - 16'd1) |
    (V >= ycenter & V <= ycenter + 16'd5 & H >= xcenter - 16'd3 & H <= xcenter - 16'd2) |
    ((H == xcenter - 16'd4 | H == xcenter - 16'd5) & ((V >= ycenter & V <= ycenter + 16'd1) | (V >= ycenter + 16'd3 & V <= ycenter + 16'd5))) |
    //(H == xcenter - 16'd5 & (V == ycenter | V == ycenter + 16'd5))
    (H == xcenter - 16'd6 & (V >= ycenter + 16'd2 & V <= ycenter + 16'd5)) |
    ((H == xcenter | H == xcenter + 16'd1) & (V == ycenter + 16'd2 | V == ycenter + 16'd4)) | 
    (V == ycenter + 16'd3 & H >= xcenter + 16'd1 & H <= xcenter + 16'd4)) |
    (V == ycenter + 16'd7 & H >= xcenter - 16'd3 & H <= xcenter - 16'd1) |
    (V == ycenter + 16'd6 & H == xcenter - 16'd1)|
    (V == ycenter + 16'd6 & H >= xcenter + 16'd2 & H <= xcenter + 16'd4);


    
    //mouth, eyes, side of hair, hair, sleeve, shield, belt, left shoe, right shoe
    
    
    
    
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
    
    
    
    
endmodule
