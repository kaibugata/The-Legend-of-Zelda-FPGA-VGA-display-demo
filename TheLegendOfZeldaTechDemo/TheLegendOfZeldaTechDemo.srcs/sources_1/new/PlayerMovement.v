`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2025 03:55:17 PM
// Design Name: 
// Module Name: PlayerMovement
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


module PlayerMovement(

input [15:0] V,H,
input Vsync,Hsync,
input clk,
input U,D,L,R,
output ball,
output [15:0] xcord,
output [15:0] ycord,
output [3:0] bord

    );
    
    wire leftWallCol;
    wire rightWallCol;
    wire southWallCol;
    wire northWallCol;
    
    
    
    
    
    
    
    //    wire [3:0] Direction;
    wire x,y,balls;
    //wire [15:0] XOut,YOut;
    wire VEdge,HEdge;
//    wire posx, negx, posy,negy;
    wire [15:0] NewX, NewY;
    
//    wire Up, Down, Left, Right;
    wire currentXpos, currentYpos;
    wire left,right,down,up;
    assign left = L & ~leftWallCol;
    assign right = R & ~rightWallCol;
    assign down = D & ~southWallCol;
    assign up = U & ~northWallCol;

    
    //Linear Direction Only 1 at a time. No diagonals
    countUD15LTRUE Xcounter (.clk(clk),.Up(right & ~left & ~down & ~up & VEdge),.Dw(~right & left & ~down & ~up & VEdge),.R(1'b0),.LD(1'b0),.Din(1'b0),.Q(NewX),.DTC(),.UTC());
    countUD15LTRUE Ycounter (.clk(clk),.Up(~right & ~left & down & ~up & VEdge),.Dw(~right & ~left & ~down & up & VEdge),.R(1'b0),.LD(1'b0),.Din(1'b0),.Q(NewY),.DTC(),.UTC());
    
    assign x = (H >= (16'd250 + NewX) & H < (16'd266 + NewX));
    assign y = (V >= (16'd69 + NewY) & V < (16'd85 + NewY));
  
    
    assign balls = x & y;
    FDRE #(.INIT(1'b0) ) ff_ball (.C(clk),.R(1'b0),.CE(1'b1),.D(balls),.Q(ball));
    
    EdgeDetector VE (.in(Vsync),.clk(clk),.ans(VEdge));
    EdgeDetector HE (.in(Hsync),.clk(clk),.ans(HEdge));
    
    
//    wire [3:0] currState;//D
//    wire [3:0] S;//Q
    //0001 = top 0
    //0010 = bottom 1
    //0100 = left 2
    //1000 = right 3

    
    
    //assign leftWallCol = (H <= 16'd8)&balls;
    //assign rightWallCol = (H >= 16'd632)&balls;
    //assign northWallCol = (V <= 16'd8)&balls;
    //assign southWallCol = (V >= 16'd472)&balls;
    
    assign bord = {leftWallCol,rightWallCol,northWallCol,southWallCol};
    
    
    wire leftWall;
    FDRE #(.INIT(1'b0) ) LWALL (.C(clk),.R((H >= 16'd25)&balls),.CE(leftWall),.D(1'b1),.Q(leftWallCol));//25 is satisfactory
    EdgeDetector LWALLE (.in((H == 16'd8)&balls),.clk(clk),.ans(leftWall));
    
    
    wire rightWall;
    FDRE #(.INIT(1'b0) ) RWALL (.C(clk),.R((H <= 16'd615)&balls),.CE(rightWall),.D(1'b1),.Q(rightWallCol));
    EdgeDetector RWALLE (.in((H == 16'd631)&balls),.clk(clk),.ans(rightWall));
    
    
    wire southWall;
    FDRE #(.INIT(1'b0) ) SWALL (.C(clk),.R((V <= 16'd455)&balls),.CE(southWall),.D(1'b1),.Q(southWallCol));
    EdgeDetector SWALLE (.in((V == 16'd472)&balls),.clk(clk),.ans(southWall));
    
    
    wire northWall;
    FDRE #(.INIT(1'b0) ) NWALL (.C(clk),.R((V >= 16'd25)&balls),.CE(northWall),.D(1'b1),.Q(northWallCol));
    EdgeDetector NWALLE (.in((V == 16'd8)&balls),.clk(clk),.ans(northWall));
    
    
    
//    assign currState[0] = S[0]&~(leftWallCol|northWallCol)|S[1]&rightWallCol|S[2]&southWallCol; //(-,-)
//    assign currState[1] = S[1]&~(rightWallCol|northWallCol)|S[0]&leftWallCol|S[3]&southWallCol; //(+,-)
//    assign currState[2] = S[2]&~(leftWallCol|southWallCol)|S[0]&northWallCol|S[3]&rightWallCol; //(-,+)
//    assign currState[3] = S[3]&~(rightWallCol|southWallCol)|S[1]&northWallCol|S[2]&leftWallCol; //(+,+)
    
//     FDRE #(.INIT(1'b0) ) ff_instance_1 (.C(clk),.R(0),.CE(1'b1),.D(currState[0]),.Q(S[0]));//0001 NW  (-x,-y) 0
//     FDRE #(.INIT(1'b0) ) ff_instance_2 (.C(clk),.R(0),.CE(1'b1),.D(currState[1]),.Q(S[1]));//0010 NE  (+x,-y) 1
//     FDRE #(.INIT(1'b0) ) ff_instance_3 (.C(clk),.R(0),.CE(1'b1),.D(currState[2]),.Q(S[2]));//0100 SW  (-x,+y) 2
//     FDRE #(.INIT(1'b1) ) ff_instance_4 (.C(clk),.R(0),.CE(1'b1),.D(currState[3]),.Q(S[3]));//1000 SE  (+x,+y) 3
  
     
    //leftWallCol|rightWallCol|northWallCol|southWallCol
    
    assign xcord = NewX + 16'd250;
    assign ycord = NewY + 16'd69;
    
endmodule
