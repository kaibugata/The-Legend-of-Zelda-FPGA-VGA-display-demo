`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2025 12:37:39 AM
// Design Name: 
// Module Name: countUD5L
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


module countUD5L(
input clk, Up,Dw,LD,
input [4:0] Din,
input R,
output [4:0] Q,
output UTC,DTC
    );
    wire [4:0] Qindep;
  
    
    
    wire D0add;
    wire D1add;
    wire D2add;
    wire D3add;
    wire D4add;
    
    wire D0sub;
    wire D1sub;
    wire D2sub;
    wire D3sub;
    wire D4sub;
    
    assign D0add = Qindep[0]^Up;
    assign D1add = Qindep[1]^(Up&Qindep[0]);
    assign D2add = Qindep[2]^(Up&Qindep[1]&Qindep[0]);
    assign D3add = Qindep[3]^(Up&Qindep[1]&Qindep[2]&Qindep[0]);
    assign D4add = Qindep[4]^(Up&Qindep[1]&Qindep[2]&Qindep[0]&Qindep[3]);
    
    assign D0sub = (~Qindep[0]&Dw)|(Qindep[0]&~Dw);
    assign D1sub = (~Qindep[1]&~Qindep[0]&Dw)|(Qindep[1]&~Dw)|(Qindep[1]&Qindep[0]);
    assign D2sub = (Qindep[2]&Qindep[1])|(Qindep[2]&~Dw)|(Qindep[2]&Qindep[0])|(~Qindep[2]&~Qindep[1]&~Qindep[0]&Dw);
    assign D3sub = (Dw&~Qindep[3]&~Qindep[2]&~Qindep[1]&~Qindep[0])|(~Dw&Qindep[3])|(Dw&Qindep[3]&(Qindep[2]|Qindep[1]|Qindep[0]));
    assign D4sub = (Dw&~Qindep[4]&~Qindep[3]&~Qindep[2]&~Qindep[1]&~Qindep[0])|(~Dw&Qindep[4])|(Dw&Qindep[4]&(Qindep[3]|Qindep[2]|Qindep[1]|Qindep[0]));
    
    FDRE #(.INIT(1'b0) ) ff_instance_0 (
.C(clk),
.R(R),
.CE(Up|Dw|LD),
.D((Din[0]&LD)^(D0add&Up)^(D0sub&Dw)), //|(D0add&Up)|(D0sub&Dw)
.Q(Qindep[0]));
    
       FDRE #(.INIT(1'b0) ) ff_instance_1 (
.C(clk),
.R(R),
.CE(Up|Dw|LD),
.D((Din[1]&LD)^(D1add&Up)^(D1sub&Dw)), //|(D1add&Up)|(D1sub&Dw)
.Q(Qindep[1]));
    
        FDRE #(.INIT(1'b0) ) ff_instance_2 (
.C(clk),
.R(R),
.CE(Up|Dw|LD),
.D((Din[2]&LD)^(D2add&Up)^(D2sub&Dw)), //|(D2add&Up)|(D2sub&Dw)
.Q(Qindep[2]));
    
        FDRE #(.INIT(1'b0) ) ff_instance_3 (
.C(clk),
.R(R),
.CE(Up|Dw|LD),
.D((Din[3]&LD)^(D3add&Up)^(D3sub&Dw)),//|(D3add&Up)|(D3sub&Dw)
.Q(Qindep[3]));
    
    FDRE #(.INIT(1'b0) ) ff_instance_4 (
.C(clk),
.R(R),
.CE(Up|Dw|LD),
.D((Din[4]&LD)^(D4add&Up)^(D4sub&Dw)), //(D4add&Up)|(D4sub&Dw)
.Q(Qindep[4]));


assign Q = Qindep;
    
    assign UTC = Q[0]&Q[1]&Q[2]&Q[3]&Q[4];
    assign DTC = ~Q[0]&~Q[1]&~Q[2]&~Q[3]&~Q[4];
    
endmodule


module countUD15LTRUE(
input clk, Up,Dw,LD,R,
input [15:0] Din,
output [15:0] Q,
output UTC,DTC

);

wire UTC0,DTC0,UTC1,DTC1,UTC2,DTC2,UCT3,DTC3;

countUD5L count0 (.clk(clk),.LD(LD),.Up(Up),.Dw(Dw),.Din(Din[4:0]),.Q(Q[4:0]),.UTC(UTC0),.DTC(DTC0),.R(R));
countUD5L count1 (.clk(clk),.LD(LD),.Up(Up&UTC0),.Dw(Dw&DTC0),.Din(Din[9:5]),.Q(Q[9:5]),.UTC(UTC1),.DTC(DTC1),.R(R));
countUD5L count2 (.clk(clk),.LD(LD),.Up(Up&UTC0&UTC1),.Dw(Dw&DTC0&DTC1),.Din(Din[14:10]),.Q(Q[14:10]),.UTC(UTC2),.DTC(DTC2),.R(R));
countUD5L count3 (.clk(clk),.LD(LD),.Up(Up&UTC0&UTC1&UTC2),.Dw(Dw&DTC0&DTC1&DTC2),.Din(1'b0),.Q(Q[15]),.UTC(UTC3),.DTC(DTC3),.R(R));

assign UTC = UTC0&UTC1&UTC2;
assign DTC = DTC0&DTC1&DTC2;
endmodule
