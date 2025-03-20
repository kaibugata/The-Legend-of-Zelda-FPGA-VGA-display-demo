`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2025 03:48:03 PM
// Design Name: 
// Module Name: BlueBallPositionV2
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


module BlueBallPositionV2(
input [15:0] V,H,
input Vsync,Hsync,
input clk,
input L,R, moveBalls,
input gameOver,
input gameStart,
input attribute,
input pregamestart,
output ball,
output [15:0] xcord
//input attribute(color)
//output [15:0] XOut, YOut


    );
    
//    wire [3:0] Direction;
    wire x,y,balls;
    //wire [15:0] XOut,YOut;
    wire VEdge,HEdge;
//    wire posx, negx, posy,negy;
    wire [15:0] NewX, NewY;
    
//    wire Up, Down, Left, Right;
    wire currentXpos, currentYpos;

    
    
    countUD15LTRUE Xcounter (.clk(clk),.Up(((S[1]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[2])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewX),.DTC(),.UTC());
    countUD15LTRUE Ycounter (.clk(clk),.Up(((S[2]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[1])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewY),.DTC(),.UTC());
    
    assign x = (H >= (16'd320 + NewX) & H < (16'd336 + NewX));
    assign y = (V >= (16'd240 + NewY) & V < (16'd256 + NewY));
  
    
    assign balls = x & y;
    FDRE #(.INIT(1'b0) ) ff_ball (.C(clk),.R(1'b0),.CE(1'b1),.D(balls),.Q(ball));
    
    EdgeDetector VE (.in(Vsync),.clk(clk),.ans(VEdge));
    EdgeDetector HE (.in(Hsync),.clk(clk),.ans(HEdge));
    
    
    wire [3:0] currState;//D
    wire [3:0] S;//Q
    //0001 = top 0
    //0010 = bottom 1
    //0100 = left 2
    //1000 = right 3
    wire leftWallCol;
    wire rightWallCol;
    wire southWallCol;
    wire northWallCol;
    
    
    assign leftWallCol = (H == 16'd8 | (gameStart&(H == 16'd323)&(((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver)|gameOver)))&balls;
    assign rightWallCol = (H == 16'd632 | (gameStart&(H == 16'd316)&(((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver)|gameOver)))&balls;
    assign northWallCol = (V == 16'd8)&balls;
    assign southWallCol = (V == 16'd472)&balls;
    
    
    
    assign currState[0] = S[0]&~(leftWallCol|northWallCol)|S[1]&rightWallCol|S[2]&southWallCol; //(-,-)
    assign currState[1] = S[1]&~(rightWallCol|northWallCol)|S[0]&leftWallCol|S[3]&southWallCol; //(+,-)
    assign currState[2] = S[2]&~(leftWallCol|southWallCol)|S[0]&northWallCol|S[3]&rightWallCol; //(-,+)
    assign currState[3] = S[3]&~(rightWallCol|southWallCol)|S[1]&northWallCol|S[2]&leftWallCol; //(+,+)
    
     FDRE #(.INIT(1'b0) ) ff_instance_1 (.C(clk),.R(0),.CE(1'b1),.D(currState[0]),.Q(S[0]));//0001 NW  (-x,-y) 0
     FDRE #(.INIT(1'b1) ) ff_instance_2 (.C(clk),.R(0),.CE(1'b1),.D(currState[1]),.Q(S[1]));//0010 NE  (+x,-y) 1
     FDRE #(.INIT(1'b0) ) ff_instance_3 (.C(clk),.R(0),.CE(1'b1),.D(currState[2]),.Q(S[2]));//0100 SW  (-x,+y) 2
     FDRE #(.INIT(1'b0) ) ff_instance_4 (.C(clk),.R(0),.CE(1'b1),.D(currState[3]),.Q(S[3]));//1000 SE  (+x,+y) 3
  
          
    assign xcord = NewX + 16'd320;
    //leftWallCol|rightWallCol|northWallCol|southWallCol
    
    
    
endmodule




module BlueBallPositionV2A(
input [15:0] V,H,
input Vsync,Hsync,
input clk,
input L,R,moveBalls,
input gameOver,
input gameStart,
input attribute,
input pregamestart,
//input [3:0] Direction,
output ball,
output [15:0] xcord
//output [15:0] XOut, YOut


    );
    
//    wire [3:0] Direction;
    wire x,y,balls;
    //wire [15:0] XOut,YOut;
    wire VEdge,HEdge;
//    wire posx, negx, posy,negy;
    wire [15:0] NewX, NewY;
    
//    wire Up, Down, Left, Right;
    wire currentXpos, currentYpos;

    
    
    countUD15LTRUE Xcounter (.clk(clk),.Up(((S[1]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[2])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewX),.DTC(),.UTC());
    countUD15LTRUE Ycounter (.clk(clk),.Up(((S[2]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[1])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewY),.DTC(),.UTC());
    
    assign x = (H >= (16'd152 + NewX) & H < (16'd168 + NewX));
    assign y = (V >= (16'd16 + NewY) & V < (16'd32 + NewY));
  
    
    assign balls = x & y;
    FDRE #(.INIT(1'b0) ) ff_ball (.C(clk),.R(1'b0),.CE(1'b1),.D(balls),.Q(ball));
    
    EdgeDetector VE (.in(Vsync),.clk(clk),.ans(VEdge));
    EdgeDetector HE (.in(Hsync),.clk(clk),.ans(HEdge));
    
    
    wire [3:0] currState;//D
    wire [3:0] S;//Q
    //0001 = top 0
    //0010 = bottom 1
    //0100 = left 2
    //1000 = right 3
    wire leftWallCol;
    wire rightWallCol;
    wire southWallCol;
    wire northWallCol;
    
    
    assign leftWallCol = (H == 16'd8 | (gameStart&(H == 16'd323)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign rightWallCol = (H == 16'd632 | (gameStart&(H == 16'd316)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign northWallCol = (V == 16'd8)&balls;
    assign southWallCol = (V == 16'd472)&balls;
    
    
    
    assign currState[0] = S[0]&~(leftWallCol|northWallCol)|S[1]&rightWallCol|S[2]&southWallCol; //(-,-)
    assign currState[1] = S[1]&~(rightWallCol|northWallCol)|S[0]&leftWallCol|S[3]&southWallCol; //(+,-)
    assign currState[2] = S[2]&~(leftWallCol|southWallCol)|S[0]&northWallCol|S[3]&rightWallCol; //(-,+)
    assign currState[3] = S[3]&~(rightWallCol|southWallCol)|S[1]&northWallCol|S[2]&leftWallCol; //(+,+)
    
     FDRE #(.INIT(1'b1) ) ff_instance_1 (.C(clk),.R(0),.CE(1'b1),.D(currState[0]),.Q(S[0]));//0001 NW  (-x,-y) 0
     FDRE #(.INIT(1'b0) ) ff_instance_2 (.C(clk),.R(0),.CE(1'b1),.D(currState[1]),.Q(S[1]));//0010 NE  (+x,-y) 1
     FDRE #(.INIT(1'b0) ) ff_instance_3 (.C(clk),.R(0),.CE(1'b1),.D(currState[2]),.Q(S[2]));//0100 SW  (-x,+y) 2
     FDRE #(.INIT(1'b0) ) ff_instance_4 (.C(clk),.R(0),.CE(1'b1),.D(currState[3]),.Q(S[3]));//1000 SE  (+x,+y) 3
  
     assign xcord = NewX + 16'd152;
    //leftWallCol|rightWallCol|northWallCol|southWallCol
    
    
    
endmodule

module BlueBallPositionV2B(
input [15:0] V,H,
input Vsync,Hsync,moveBalls,
input gameOver,
input clk,
input L,R,
input gameStart,
input attribute,
input pregamestart,
//input [3:0] Direction,
output ball,
output [15:0] xcord
//output [15:0] XOut, YOut


    );
    
//    wire [3:0] Direction;
    wire x,y,balls;
    //wire [15:0] XOut,YOut;
    wire VEdge,HEdge;
//    wire posx, negx, posy,negy;
    wire [15:0] NewX, NewY;
    
//    wire Up, Down, Left, Right;
    wire currentXpos, currentYpos;

    
    
    countUD15LTRUE Xcounter (.clk(clk),.Up(((S[1]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[2])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewX),.DTC(),.UTC());
    countUD15LTRUE Ycounter (.clk(clk),.Up(((S[2]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[1])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewY),.DTC(),.UTC());
    
    assign x = (H >= (16'd440 + NewX) & H < (16'd456 + NewX));
    assign y = (V >= (16'd440 + NewY) & V < (16'd456 + NewY));
  
    
    assign balls = x & y;
    FDRE #(.INIT(1'b0) ) ff_ball (.C(clk),.R(1'b0),.CE(1'b1),.D(balls),.Q(ball));
    
    EdgeDetector VE (.in(Vsync),.clk(clk),.ans(VEdge));
    EdgeDetector HE (.in(Hsync),.clk(clk),.ans(HEdge));
    
    
    wire [3:0] currState;//D
    wire [3:0] S;//Q
    //0001 = top 0
    //0010 = bottom 1
    //0100 = left 2
    //1000 = right 3
    wire leftWallCol;
    wire rightWallCol;
    wire southWallCol;
    wire northWallCol;
    
    
    assign leftWallCol = (H == 16'd8 | (gameStart&(H == 16'd323)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign rightWallCol = (H == 16'd632 | (gameStart&(H == 16'd316)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign northWallCol = (V == 16'd8)&balls;
    assign southWallCol = (V == 16'd472)&balls;
    
    
    
    assign currState[0] = S[0]&~(leftWallCol|northWallCol)|S[1]&rightWallCol|S[2]&southWallCol; //(-,-)
    assign currState[1] = S[1]&~(rightWallCol|northWallCol)|S[0]&leftWallCol|S[3]&southWallCol; //(+,-)
    assign currState[2] = S[2]&~(leftWallCol|southWallCol)|S[0]&northWallCol|S[3]&rightWallCol; //(-,+)
    assign currState[3] = S[3]&~(rightWallCol|southWallCol)|S[1]&northWallCol|S[2]&leftWallCol; //(+,+)
    
     FDRE #(.INIT(1'b0) ) ff_instance_1 (.C(clk),.R(0),.CE(1'b1),.D(currState[0]),.Q(S[0]));//0001 NW  (-x,-y) 0
     FDRE #(.INIT(1'b0) ) ff_instance_2 (.C(clk),.R(0),.CE(1'b1),.D(currState[1]),.Q(S[1]));//0010 NE  (+x,-y) 1
     FDRE #(.INIT(1'b1) ) ff_instance_3 (.C(clk),.R(0),.CE(1'b1),.D(currState[2]),.Q(S[2]));//0100 SW  (-x,+y) 2
     FDRE #(.INIT(1'b0) ) ff_instance_4 (.C(clk),.R(0),.CE(1'b1),.D(currState[3]),.Q(S[3]));//1000 SE  (+x,+y) 3
  
     assign xcord = NewX + 16'd440;
    //leftWallCol|rightWallCol|northWallCol|southWallCol
    
    
    
endmodule


module BlueBallPositionV2C(
input [15:0] V,H,
input Vsync,Hsync,moveBalls,
input gameOver,
input clk,
input L,R,
input gameStart,
input attribute,
input pregamestart,
//input [3:0] Direction,
output ball,
output [15:0] xcord
//output [15:0] XOut, YOut


    );
    
//    wire [3:0] Direction;
    wire x,y,balls;
    //wire [15:0] XOut,YOut;
    wire VEdge,HEdge;
//    wire posx, negx, posy,negy;
    wire [15:0] NewX, NewY;
    
//    wire Up, Down, Left, Right;
    wire currentXpos, currentYpos;

    
    
    countUD15LTRUE Xcounter (.clk(clk),.Up(((S[1]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[2])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewX),.DTC(),.UTC());
    countUD15LTRUE Ycounter (.clk(clk),.Up(((S[2]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[1])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewY),.DTC(),.UTC());
    
    assign x = (H >= (16'd10 + NewX) & H < (16'd26 + NewX));
    assign y = (V >= (16'd450 + NewY) & V < (16'd466 + NewY));
  
    
    assign balls = x & y;
    FDRE #(.INIT(1'b0) ) ff_ball (.C(clk),.R(1'b0),.CE(1'b1),.D(balls),.Q(ball));
    
    EdgeDetector VE (.in(Vsync),.clk(clk),.ans(VEdge));
    EdgeDetector HE (.in(Hsync),.clk(clk),.ans(HEdge));
    
    
    wire [3:0] currState;//D
    wire [3:0] S;//Q
    //0001 = top 0
    //0010 = bottom 1
    //0100 = left 2
    //1000 = right 3
    wire leftWallCol;
    wire rightWallCol;
    wire southWallCol;
    wire northWallCol;
    
    
    assign leftWallCol = (H == 16'd8 | (gameStart&(H == 16'd323)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign rightWallCol = (H == 16'd632 | (gameStart&(H == 16'd316)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign northWallCol = (V == 16'd8)&balls;
    assign southWallCol = (V == 16'd472)&balls;
    
    
    
    assign currState[0] = S[0]&~(leftWallCol|northWallCol)|S[1]&rightWallCol|S[2]&southWallCol; //(-,-)
    assign currState[1] = S[1]&~(rightWallCol|northWallCol)|S[0]&leftWallCol|S[3]&southWallCol; //(+,-)
    assign currState[2] = S[2]&~(leftWallCol|southWallCol)|S[0]&northWallCol|S[3]&rightWallCol; //(-,+)
    assign currState[3] = S[3]&~(rightWallCol|southWallCol)|S[1]&northWallCol|S[2]&leftWallCol; //(+,+)
    
     FDRE #(.INIT(1'b0) ) ff_instance_1 (.C(clk),.R(0),.CE(1'b1),.D(currState[0]),.Q(S[0]));//0001 NW  (-x,-y) 0
     FDRE #(.INIT(1'b0) ) ff_instance_2 (.C(clk),.R(0),.CE(1'b1),.D(currState[1]),.Q(S[1]));//0010 NE  (+x,-y) 1
     FDRE #(.INIT(1'b0) ) ff_instance_3 (.C(clk),.R(0),.CE(1'b1),.D(currState[2]),.Q(S[2]));//0100 SW  (-x,+y) 2
     FDRE #(.INIT(1'b1) ) ff_instance_4 (.C(clk),.R(0),.CE(1'b1),.D(currState[3]),.Q(S[3]));//1000 SE  (+x,+y) 3
  
     assign xcord = NewX + 16'd10;
    //leftWallCol|rightWallCol|northWallCol|southWallCol
    
    
    
endmodule


module BlueBallPositionV2D(
input [15:0] V,H,
input Vsync,Hsync,moveBalls,
input gameOver,
input clk,
input L,R,
input gameStart,
input attribute,
input pregamestart,
//input [3:0] Direction,
output ball,
output [15:0] xcord
//output [15:0] XOut, YOut


    );
    
//    wire [3:0] Direction;
    wire x,y,balls;
    //wire [15:0] XOut,YOut;
    wire VEdge,HEdge;
//    wire posx, negx, posy,negy;
    wire [15:0] NewX, NewY;
    
//    wire Up, Down, Left, Right;
    wire currentXpos, currentYpos;

    
    
    countUD15LTRUE Xcounter (.clk(clk),.Up(((S[1]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[2])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewX),.DTC(),.UTC());
    countUD15LTRUE Ycounter (.clk(clk),.Up(((S[2]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[1])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewY),.DTC(),.UTC());
    
    assign x = (H >= (16'd320 + NewX) & H < (16'd336 + NewX));
    assign y = (V >= (16'd356 + NewY) & V < (16'd372 + NewY));
  
    
    assign balls = x & y;
    FDRE #(.INIT(1'b0) ) ff_ball (.C(clk),.R(1'b0),.CE(1'b1),.D(balls),.Q(ball));
    
    EdgeDetector VE (.in(Vsync),.clk(clk),.ans(VEdge));
    EdgeDetector HE (.in(Hsync),.clk(clk),.ans(HEdge));
    
    
    wire [3:0] currState;//D
    wire [3:0] S;//Q
    //0001 = top 0
    //0010 = bottom 1
    //0100 = left 2
    //1000 = right 3
    wire leftWallCol;
    wire rightWallCol;
    wire southWallCol;
    wire northWallCol;
    
    
    assign leftWallCol = (H == 16'd8 | (gameStart&(H == 16'd323)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign rightWallCol = (H == 16'd632 | (gameStart&(H == 16'd316)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign northWallCol = (V == 16'd8)&balls;
    assign southWallCol = (V == 16'd472)&balls;
    
    
    
    assign currState[0] = S[0]&~(leftWallCol|northWallCol)|S[1]&rightWallCol|S[2]&southWallCol; //(-,-)
    assign currState[1] = S[1]&~(rightWallCol|northWallCol)|S[0]&leftWallCol|S[3]&southWallCol; //(+,-)
    assign currState[2] = S[2]&~(leftWallCol|southWallCol)|S[0]&northWallCol|S[3]&rightWallCol; //(-,+)
    assign currState[3] = S[3]&~(rightWallCol|southWallCol)|S[1]&northWallCol|S[2]&leftWallCol; //(+,+)
    
     FDRE #(.INIT(1'b0) ) ff_instance_1 (.C(clk),.R(0),.CE(1'b1),.D(currState[0]),.Q(S[0]));//0001 NW  (-x,-y) 0
     FDRE #(.INIT(1'b1) ) ff_instance_2 (.C(clk),.R(0),.CE(1'b1),.D(currState[1]),.Q(S[1]));//0010 NE  (+x,-y) 1
     FDRE #(.INIT(1'b0) ) ff_instance_3 (.C(clk),.R(0),.CE(1'b1),.D(currState[2]),.Q(S[2]));//0100 SW  (-x,+y) 2
     FDRE #(.INIT(1'b0) ) ff_instance_4 (.C(clk),.R(0),.CE(1'b1),.D(currState[3]),.Q(S[3]));//1000 SE  (+x,+y) 3
  
     assign xcord = NewX + 16'd320;
    //leftWallCol|rightWallCol|northWallCol|southWallCol
    
    
    
endmodule


module BlueBallPositionV2E(
input [15:0] V,H,
input Vsync,Hsync,moveBalls,
input gameOver,
input clk,
input L,R,
input gameStart,
input attribute,
input pregamestart,
//input [3:0] Direction,
output ball,
output [15:0] xcord
//output [15:0] XOut, YOut


    );
    
//    wire [3:0] Direction;
    wire x,y,balls;
    //wire [15:0] XOut,YOut;
    wire VEdge,HEdge;
//    wire posx, negx, posy,negy;
    wire [15:0] NewX, NewY;
    
//    wire Up, Down, Left, Right;
    wire currentXpos, currentYpos;

    
    
    countUD15LTRUE Xcounter (.clk(clk),.Up(((S[1]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[2])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewX),.DTC(),.UTC());
    countUD15LTRUE Ycounter (.clk(clk),.Up(((S[2]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[1])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewY),.DTC(),.UTC());
    
    assign x = (H >= (16'd257 + NewX) & H < (16'd273 + NewX));
    assign y = (V >= (16'd444 + NewY) & V < (16'd460 + NewY));
  
    
    assign balls = x & y;
    FDRE #(.INIT(1'b0) ) ff_ball (.C(clk),.R(1'b0),.CE(1'b1),.D(balls),.Q(ball));
    
    EdgeDetector VE (.in(Vsync),.clk(clk),.ans(VEdge));
    EdgeDetector HE (.in(Hsync),.clk(clk),.ans(HEdge));
    
    
    wire [3:0] currState;//D
    wire [3:0] S;//Q
    //0001 = top 0
    //0010 = bottom 1
    //0100 = left 2
    //1000 = right 3
    wire leftWallCol;
    wire rightWallCol;
    wire southWallCol;
    wire northWallCol;
    
    
    assign leftWallCol = (H == 16'd8 | (gameStart&(H == 16'd323)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign rightWallCol = (H == 16'd632 | (gameStart&(H == 16'd316)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign northWallCol = (V == 16'd8)&balls;
    assign southWallCol = (V == 16'd472)&balls;
    
    
    
    assign currState[0] = S[0]&~(leftWallCol|northWallCol)|S[1]&rightWallCol|S[2]&southWallCol; //(-,-)
    assign currState[1] = S[1]&~(rightWallCol|northWallCol)|S[0]&leftWallCol|S[3]&southWallCol; //(+,-)
    assign currState[2] = S[2]&~(leftWallCol|southWallCol)|S[0]&northWallCol|S[3]&rightWallCol; //(-,+)
    assign currState[3] = S[3]&~(rightWallCol|southWallCol)|S[1]&northWallCol|S[2]&leftWallCol; //(+,+)
    
     FDRE #(.INIT(1'b1) ) ff_instance_1 (.C(clk),.R(0),.CE(1'b1),.D(currState[0]),.Q(S[0]));//0001 NW  (-x,-y) 0
     FDRE #(.INIT(1'b0) ) ff_instance_2 (.C(clk),.R(0),.CE(1'b1),.D(currState[1]),.Q(S[1]));//0010 NE  (+x,-y) 1
     FDRE #(.INIT(1'b0) ) ff_instance_3 (.C(clk),.R(0),.CE(1'b1),.D(currState[2]),.Q(S[2]));//0100 SW  (-x,+y) 2
     FDRE #(.INIT(1'b0) ) ff_instance_4 (.C(clk),.R(0),.CE(1'b1),.D(currState[3]),.Q(S[3]));//1000 SE  (+x,+y) 3
  
     assign xcord = NewX + 16'd257;
    //leftWallCol|rightWallCol|northWallCol|southWallCol
    
    
    
endmodule

module BlueBallPositionV2F(
input [15:0] V,H,
input Vsync,Hsync,moveBalls,
input gameOver,
input clk,
input L,R,
input gameStart,
input attribute,
input pregamestart,
//input [3:0] Direction,
output ball,
output [15:0] xcord
//output [15:0] XOut, YOut


    );
    
//    wire [3:0] Direction;
    wire x,y,balls;
    //wire [15:0] XOut,YOut;
    wire VEdge,HEdge;
//    wire posx, negx, posy,negy;
    wire [15:0] NewX, NewY;
    
//    wire Up, Down, Left, Right;
    wire currentXpos, currentYpos;

    
    
    countUD15LTRUE Xcounter (.clk(clk),.Up(((S[1]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[2])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewX),.DTC(),.UTC());
    countUD15LTRUE Ycounter (.clk(clk),.Up(((S[2]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[1])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewY),.DTC(),.UTC());
    
    assign x = (H >= (16'd82 + NewX) & H < (16'd98 + NewX));
    assign y = (V >= (16'd250 + NewY) & V < (16'd266 + NewY));
  
    
    assign balls = x & y;
    FDRE #(.INIT(1'b0) ) ff_ball (.C(clk),.R(1'b0),.CE(1'b1),.D(balls),.Q(ball));
    
    EdgeDetector VE (.in(Vsync),.clk(clk),.ans(VEdge));
    EdgeDetector HE (.in(Hsync),.clk(clk),.ans(HEdge));
    
    
    wire [3:0] currState;//D
    wire [3:0] S;//Q
    //0001 = top 0
    //0010 = bottom 1
    //0100 = left 2
    //1000 = right 3
    wire leftWallCol;
    wire rightWallCol;
    wire southWallCol;
    wire northWallCol;
    
    
    assign leftWallCol = (H == 16'd8 | (gameStart&(H == 16'd323)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign rightWallCol = (H == 16'd632 | (gameStart&(H == 16'd316)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign northWallCol = (V == 16'd8)&balls;
    assign southWallCol = (V == 16'd472)&balls;
    
    
    
    assign currState[0] = S[0]&~(leftWallCol|northWallCol)|S[1]&rightWallCol|S[2]&southWallCol; //(-,-)
    assign currState[1] = S[1]&~(rightWallCol|northWallCol)|S[0]&leftWallCol|S[3]&southWallCol; //(+,-)
    assign currState[2] = S[2]&~(leftWallCol|southWallCol)|S[0]&northWallCol|S[3]&rightWallCol; //(-,+)
    assign currState[3] = S[3]&~(rightWallCol|southWallCol)|S[1]&northWallCol|S[2]&leftWallCol; //(+,+)
    
     FDRE #(.INIT(1'b0) ) ff_instance_1 (.C(clk),.R(0),.CE(1'b1),.D(currState[0]),.Q(S[0]));//0001 NW  (-x,-y) 0
     FDRE #(.INIT(1'b0) ) ff_instance_2 (.C(clk),.R(0),.CE(1'b1),.D(currState[1]),.Q(S[1]));//0010 NE  (+x,-y) 1
     FDRE #(.INIT(1'b1) ) ff_instance_3 (.C(clk),.R(0),.CE(1'b1),.D(currState[2]),.Q(S[2]));//0100 SW  (-x,+y) 2
     FDRE #(.INIT(1'b0) ) ff_instance_4 (.C(clk),.R(0),.CE(1'b1),.D(currState[3]),.Q(S[3]));//1000 SE  (+x,+y) 3
  
     assign xcord = NewX + 16'd82;
    //leftWallCol|rightWallCol|northWallCol|southWallCol
    
    
    
endmodule

module BlueBallPositionV2G(
input [15:0] V,H,
input Vsync,Hsync,moveBalls,
input gameOver,
input clk,
input L,R,
input gameStart,
input attribute,
input pregamestart,
//input [3:0] Direction,
output ball,
output [15:0] xcord
//output [15:0] XOut, YOut


    );
    
//    wire [3:0] Direction;
    wire x,y,balls;
    //wire [15:0] XOut,YOut;
    wire VEdge,HEdge;
//    wire posx, negx, posy,negy;
    wire [15:0] NewX, NewY;
    
//    wire Up, Down, Left, Right;
    wire currentXpos, currentYpos;

    
    
    countUD15LTRUE Xcounter (.clk(clk),.Up(((S[1]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[2])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewX),.DTC(),.UTC());
    countUD15LTRUE Ycounter (.clk(clk),.Up(((S[2]|S[3])&VEdge)&moveBalls),.Dw(((S[0]|S[1])&VEdge)&moveBalls),.R(pregamestart),.LD(1'b0),.Din(1'b0),.Q(NewY),.DTC(),.UTC());
    
    assign x = (H >= (16'd250 + NewX) & H < (16'd266 + NewX));
    assign y = (V >= (16'd69 + NewY) & V < (16'd85 + NewY));
  
    
    assign balls = x & y;
    FDRE #(.INIT(1'b0) ) ff_ball (.C(clk),.R(1'b0),.CE(1'b1),.D(balls),.Q(ball));
    
    EdgeDetector VE (.in(Vsync),.clk(clk),.ans(VEdge));
    EdgeDetector HE (.in(Hsync),.clk(clk),.ans(HEdge));
    
    
    wire [3:0] currState;//D
    wire [3:0] S;//Q
    //0001 = top 0
    //0010 = bottom 1
    //0100 = left 2
    //1000 = right 3
    wire leftWallCol;
    wire rightWallCol;
    wire southWallCol;
    wire northWallCol;
    
    
    assign leftWallCol = (H == 16'd8 | (gameStart&(H == 16'd323)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign rightWallCol = (H == 16'd632 | (gameStart&(H == 16'd316)&((~attribute&(R&~L|~R&~L)|attribute&(L&~R|~L&~R))&~gameOver|gameOver)))&balls;
    assign northWallCol = (V == 16'd8)&balls;
    assign southWallCol = (V == 16'd472)&balls;
    
    
    
    assign currState[0] = S[0]&~(leftWallCol|northWallCol)|S[1]&rightWallCol|S[2]&southWallCol; //(-,-)
    assign currState[1] = S[1]&~(rightWallCol|northWallCol)|S[0]&leftWallCol|S[3]&southWallCol; //(+,-)
    assign currState[2] = S[2]&~(leftWallCol|southWallCol)|S[0]&northWallCol|S[3]&rightWallCol; //(-,+)
    assign currState[3] = S[3]&~(rightWallCol|southWallCol)|S[1]&northWallCol|S[2]&leftWallCol; //(+,+)
    
     FDRE #(.INIT(1'b0) ) ff_instance_1 (.C(clk),.R(0),.CE(1'b1),.D(currState[0]),.Q(S[0]));//0001 NW  (-x,-y) 0
     FDRE #(.INIT(1'b0) ) ff_instance_2 (.C(clk),.R(0),.CE(1'b1),.D(currState[1]),.Q(S[1]));//0010 NE  (+x,-y) 1
     FDRE #(.INIT(1'b0) ) ff_instance_3 (.C(clk),.R(0),.CE(1'b1),.D(currState[2]),.Q(S[2]));//0100 SW  (-x,+y) 2
     FDRE #(.INIT(1'b1) ) ff_instance_4 (.C(clk),.R(0),.CE(1'b1),.D(currState[3]),.Q(S[3]));//1000 SE  (+x,+y) 3
  
     
    //leftWallCol|rightWallCol|northWallCol|southWallCol
    
    assign xcord = NewX + 16'd250;
    
endmodule

