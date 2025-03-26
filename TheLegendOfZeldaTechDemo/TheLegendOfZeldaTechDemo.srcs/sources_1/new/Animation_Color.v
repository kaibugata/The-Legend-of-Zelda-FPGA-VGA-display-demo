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
    input Vsync,
    input moving,
    output [3:0] Red, Blue, Green

    );
    wire [15:0] xcenter,ycenter;
    assign xcenter = Xpos + 16'd8;
    assign ycenter = Ypos + 16'd8;
    
    wire [1:0]currState;
    wire [1:0] S;
    
    wire downanim1SKIN;
    wire downanim1MISC;
    wire downanim1TUNIC;
    
    
    wire downanim2SKIN;
    wire downanim2MISC;
    wire downanim2TUNIC;
    //skin first
    
    assign Blue[3] = 0;
    assign Blue[2] = 0;
    assign Blue[1] = S[0]&downanim1SKIN|S[1]&downanim2SKIN;
    assign Blue[0] = S[0]&(downanim1SKIN|downanim1TUNIC)|S[1] & (downanim2SKIN|downanim2TUNIC);
    
    assign Red[3] = S[0]&(downanim1SKIN|downanim1MISC|downanim1TUNIC)| S[1]&(downanim2SKIN|downanim2MISC|downanim2TUNIC);
    assign Red[2] = S[0] & (downanim1SKIN|downanim1MISC) | S[1] & (downanim2SKIN|downanim2MISC);
    assign Red[1] = S[0] & downanim1SKIN | S[1] & downanim2SKIN;
    assign Red[0] = S[0] & downanim1SKIN | S[1] & downanim2SKIN;
    
    assign Green[3] = S[0] & (downanim1SKIN|downanim1TUNIC) | S[1] & (downanim2SKIN|downanim2TUNIC);
    assign Green[2] = S[0] & (downanim1MISC|downanim1TUNIC) | S[1] & (downanim2MISC|downanim2TUNIC);
    assign Green[1] = 0;
    assign Green[0] = S[0] & (downanim1SKIN|downanim1TUNIC) | S[1] & (downanim2SKIN|downanim2TUNIC);
    
    
    wire [15:0] vsynccount;
    wire trigger;
    
    assign currState[0] = trigger & S[1] | ~trigger & S[0];
    assign currState[1] = trigger & S[0] | ~trigger & S[1];
    
    FDRE #(.INIT(1'b1) ) fs (.C(clk),.R(0),.CE(1'b1),.D(currState[0]),.Q(S[0]));
    FDRE #(.INIT(1'b0) ) fd (.C(clk),.R(0),.CE(1'b1),.D(currState[1]),.Q(S[1]));
    
    countUD15LTRUE Vsynccc (.clk(clk),.Up(Vsync & moving),.Dw(1'b0),.R(trigger),.LD(1'b0),.Din(1'b0),.Q(vsynccount),.DTC(),.UTC());
    assign trigger = vsynccount == 16'd10;
    
    
    
    assign downanim1SKIN = 
    ((H >= xcenter - 16'd1 & H <= xcenter + 16'd2)&(V == ycenter))|
    ((H == xcenter - 16'd1)&(V >= ycenter + 16'd2 & V <= ycenter + 16'd5))|
    ((H >= xcenter - 16'd6 & H <= xcenter - 16'd2)&(V == ycenter + 16'd6))|//H >= xcenter - 16'd5
    ((H == xcenter - 16'd5)&(V >= ycenter + 16'd1 & V <= ycenter + 16'd4))|//H >= xcenter - 16'd4
    ((H >= xcenter - 16'd6 & H <= xcenter - 16'd4)&(V == ycenter + 16'd2))|//((H >= xcenter - 16'd5 & H <= xcenter - 16'd3)
    (((H >= xcenter - 16'd2 & H <= xcenter - 16'd1)|(H >= xcenter + 16'd2 & H <= xcenter + 16'd3))&(V == ycenter - 16'd1))|
    ((H >= xcenter - 16'd4 & H <= xcenter + 16'd5)&(V == ycenter - 16'd2))|
    (((H >= xcenter - 16'd5 & H <= xcenter - 16'd4)|(H == xcenter - 16'd2)|
    (H >= xcenter & H <= xcenter + 16'd1)|(H >= xcenter + 16'd5 & H <= xcenter + 16'd6)|
    (H == xcenter + 16'd3))&(V == ycenter - 16'd3))|
    (((H >= xcenter - 16'd5 & H <= xcenter - 16'd4)|(H == xcenter - 16'd2)|(H >= xcenter & H <= xcenter + 16'd1)
    |(H >= xcenter + 16'd5 & H <= xcenter + 16'd6)|(H == xcenter + 16'd3))&(V == ycenter - 16'd4))|
    ((H == xcenter - 16'd5 | H == xcenter + 16'd6)&(V <= ycenter - 16'd5 & V >= ycenter - 16'd6))|
    (((H >= xcenter + 16'd4 & H <= xcenter + 16'd6)&(V == ycenter + 16'd2))|
    ((H == xcenter + 16'd5)&(V >= ycenter + 16'd1 & V <= ycenter + 16'd3)))|
    (((H == xcenter + 16'd6)&(V >= ycenter + 16'd3 & V <= ycenter + 16'd4))|
    ((H == xcenter + 16'd7) & (V == ycenter + 16'd3)));
    //bottom mouth, right side of shield, bottom side of shield, cross |, cross -, side of mouth, above mouth, lower eye, higher eye, ears, fist upper plus, fist lower triangle
    
    
    
    assign downanim1MISC = 
    (V == ycenter - 16'd1 & H >= xcenter & H <= xcenter + 16'd1) | //mouth
    (V == ycenter - 16'd3 & (H == xcenter - 16'd1 | H == xcenter + 16'd2)) | //eyes
    (V >= ycenter - 16'd5 & V <= ycenter - 16'd3 & (H == xcenter - 16'd3 | H == xcenter + 16'd4)) | //helm sides
    (V <= ycenter - 16'd5 & V >= ycenter - 16'd6 & H <= xcenter + 16'd3 & H >= xcenter - 16'd2) |  //hair
    ((V >= ycenter - 16'd2 & V <= ycenter + 16'd1 & H == xcenter + 16'd6) | //long line sleeve
    (V == ycenter & (H == xcenter + 16'd5 | H == xcenter + 16'd7)) | //ends of sleeve
    (V >= ycenter + 16'd1 & V <= ycenter + 16'd2 & H == xcenter + 16'd7)) | //2 triangle
    ((V == ycenter + 16'd1 & H == xcenter - 16'd1) | //extra shield dot
    (V >= ycenter & V <= ycenter + 16'd5 & H >= xcenter - 16'd3 & H <= xcenter - 16'd2) | //long lines right of shield
    ((H == xcenter - 16'd4 | H == xcenter - 16'd6) & ((V >= ycenter & V <= ycenter + 16'd1) | (V >= ycenter + 16'd3 & V <= ycenter + 16'd5))) |
    (H == xcenter - 16'd5 & (V == ycenter | V == ycenter + 16'd5)) |
    (H == xcenter - 16'd7 & (V >= ycenter + 16'd1 & V <= ycenter + 16'd5)) | //end of shield
    ((H == xcenter | H == xcenter + 16'd1) & (V == ycenter + 16'd2 | V == ycenter + 16'd4)) | 
    (V == ycenter + 16'd3 & H >= xcenter + 16'd1 & H <= xcenter + 16'd4)) |
    (V == ycenter + 16'd7 & H >= xcenter - 16'd3 & H <= xcenter - 16'd1) |
    (V == ycenter + 16'd6 & H == xcenter - 16'd1)|
    (V == ycenter + 16'd6 & H >= xcenter + 16'd2 & H <= xcenter + 16'd4);
   
    //mouth, eyes, side of hair, hair, sleeve, shield, belt, left shoe, right shoe
    
    
    assign downanim1TUNIC =
    (V == ycenter + 16'd1 & H >= xcenter & H <= xcenter + 16'd4) |
    (V == ycenter + 16'd3 & H == xcenter) |
    (V == ycenter + 16'd5 & H >= xcenter & H <= xcenter + 16'd4) |
    (V == ycenter + 16'd4 & H >= xcenter + 16'd2 & H <= xcenter + 16'd5) |
    (V == ycenter + 16'd2 & H >= xcenter + 16'd2 & H <= xcenter + 16'd3) |
    (V == ycenter & H >= xcenter + 16'd3 & H <= xcenter + 16'd4)|
    (V == ycenter - 16'd1 & ((H >= xcenter + 16'd4 & H <= xcenter + 16'd5)|(H >= xcenter - 16'd4 & H <= xcenter - 16'd3)))|
    (V == ycenter - 16'd4 & (H == xcenter - 16'd1 | H == xcenter + 16'd2)) |
    (V >= ycenter - 16'd7 & V <= ycenter - 16'd6 & (H == xcenter - 16'd3 | H == xcenter + 16'd4)) |
    (V >= ycenter - 16'd8 & V <= ycenter - 16'd7 & H >= xcenter - 16'd2 & H <= xcenter + 16'd3);
    
    
    assign downanim2SKIN =
    ((H >= xcenter & H <= xcenter + 16'd2)&(V == ycenter))|
    ((H == xcenter)&(V >= ycenter + 16'd2 & V <= ycenter + 16'd5))|
    ((H >= xcenter - 16'd5 & H <= xcenter - 16'd1)&(V == ycenter + 16'd6))|//H >= xcenter - 16'd5
    ((H == xcenter - 16'd4)&(V >= ycenter + 16'd1 & V <= ycenter + 16'd4))|//H >= xcenter - 16'd4
    ((H >= xcenter - 16'd5 & H <= xcenter - 16'd3)&(V == ycenter + 16'd2))|//((H >= xcenter - 16'd5 & H <= xcenter - 16'd3)
    (((H >= xcenter - 16'd2 & H <= xcenter - 16'd1)|(H >= xcenter + 16'd2 & H <= xcenter + 16'd3))&(V == ycenter - 16'd1))|
    ((H >= xcenter - 16'd4 & H <= xcenter + 16'd5)&(V == ycenter - 16'd2))|
    (((H >= xcenter - 16'd5 & H <= xcenter - 16'd4)|(H == xcenter - 16'd2)|
    (H >= xcenter & H <= xcenter + 16'd1)|(H >= xcenter + 16'd5 & H <= xcenter + 16'd6)|
    (H == xcenter + 16'd3))&(V == ycenter - 16'd3))|
    (((H >= xcenter - 16'd5 & H <= xcenter - 16'd4)|(H == xcenter - 16'd2)|(H >= xcenter & H <= xcenter + 16'd1)
    |(H >= xcenter + 16'd5 & H <= xcenter + 16'd6)|(H == xcenter + 16'd3))&(V == ycenter - 16'd4))|
    ((H == xcenter - 16'd5 | H == xcenter + 16'd6)&(V <= ycenter - 16'd5 & V >= ycenter - 16'd6))|
    (H == xcenter + 16'd6 & V >= ycenter & V <= ycenter + 16'd1);
    //bottom mouth, right side of shield, bottom side of shield, cross |, cross -, side of mouth, above mouth, lower eye, higher eye, ears, fist upper plus, fist lower triangle
    
    
    assign downanim2MISC = 
    (V == ycenter - 16'd1 & H >= xcenter & H <= xcenter + 16'd1) | // mouth
    (V == ycenter - 16'd3 & (H == xcenter - 16'd1 | H == xcenter + 16'd2)) | // eyes
    (V >= ycenter - 16'd5 & V <= ycenter - 16'd3 & (H == xcenter - 16'd3 | H == xcenter + 16'd4)) | // helm sides
    (V <= ycenter - 16'd5 & V >= ycenter - 16'd6 & H <= xcenter + 16'd3 & H >= xcenter - 16'd2) |  // hair
    (V == ycenter - 16'd2 & H == xcenter + 16'd6) | // dot sleeve
    (V == ycenter - 16'd1 & (H == xcenter + 16'd5 | H == xcenter + 16'd6)) | // ends of sleeve
    (V == ycenter + 16'd1 & H == xcenter) | // extra shield dot
    (V >= ycenter & V <= ycenter + 16'd5 & H >= xcenter - 16'd2 & H <= xcenter - 16'd1) | // long lines right of shield
    ((H == xcenter - 16'd3 | H == xcenter - 16'd5) & ((V >= ycenter & V <= ycenter + 16'd1) | (V >= ycenter + 16'd3 & V <= ycenter + 16'd5))) |
    (H == xcenter - 16'd4 & (V == ycenter | V == ycenter + 16'd5)) |
    (H == xcenter - 16'd6 & (V >= ycenter + 16'd1 & V <= ycenter + 16'd5)) | // end of shield
    ((H == xcenter + 16'd2 | H == xcenter + 16'd1) & (V == ycenter + 16'd2 | V == ycenter + 16'd4)) | 
    (V == ycenter + 16'd3 & H >= xcenter + 16'd2 & H <= xcenter + 16'd4) |
    (V == ycenter + 16'd2 & H == xcenter + 16'd5) |
    (V == ycenter + 16'd5 & H == xcenter + 16'd4) |
    (V >= ycenter + 16'd6 & V <= ycenter + 16'd7 & H >= xcenter + 16'd2 & H <= xcenter + 16'd4);

    //mouth, eyes, side of hair, hair, sleeve, shield, belt, right shoe
    
    assign downanim2TUNIC =
    (V == ycenter + 16'd3 & H == xcenter + 16'd1) |
    (V == ycenter & H >= xcenter + 16'd3 & H <= xcenter + 16'd5)|
    (V == ycenter + 16'd1 & H >= xcenter + 16'd1 & H <= xcenter + 16'd5)|
    (V == ycenter + 16'd5 & H >= xcenter + 16'd1 & H <= xcenter + 16'd3)|   
    (V == ycenter + 16'd4 & H >= xcenter + 16'd3 & H <= xcenter + 16'd5)| 
    (V == ycenter + 16'd2 & H >= xcenter + 16'd3 & H <= xcenter + 16'd4)|  
    (V == ycenter + 16'd3 & H == xcenter + 16'd5) |
    (V == ycenter - 16'd1 & (H == xcenter - 16'd3 | H == xcenter + 16'd4))|
    (V == ycenter - 16'd4 & (H == xcenter - 16'd1 | H == xcenter + 16'd2)) |
    (V >= ycenter - 16'd7 & V <= ycenter - 16'd6 & (H == xcenter - 16'd3 | H == xcenter + 16'd4)) |
    (V >= ycenter - 16'd8 & V <= ycenter - 16'd7 & H >= xcenter - 16'd2 & H <= xcenter + 16'd3);
    
    
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
