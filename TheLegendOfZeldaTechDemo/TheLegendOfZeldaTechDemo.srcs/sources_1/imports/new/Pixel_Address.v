`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2025 02:30:30 PM
// Design Name: 
// Module Name: Pixel_Address
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


module Pixel_Address(
input clk,
output [15:0] V, H
);

wire Hreset, Vreset;
wire [15:0] HcounterOut, VcounterOut;
wire UTC1,DTC1,UTC2,DTC2;
wire [15:0] Ho,Vo;

assign Hreset = HcounterOut == 16'd799;
assign Vreset = VcounterOut == 16'd524;


countUD15LTRUE Hcounter (.clk(clk),.Up(1'b1),.Dw(1'b0),.R(Hreset),.LD(1'b0),.Din(1'b0),.Q(HcounterOut),.DTC(),.UTC());
countUD15LTRUE Vcounter (.clk(clk),.Up(Hreset),.Dw(1'b0),.R(Hreset & Vreset),.LD(1'b0),.Din(1'b0),.Q(VcounterOut),.DTC(),.UTC());

//FDRE #(.INIT(1'b0) ) ff_instance_HC[15:0] (.C({16{clk}}),.R(16'b0),.CE({16{1'b1}}),.D(HcounterOut[15:0]),.Q(Ho));
//FDRE #(.INIT(1'b0) ) ff_instance_VC[15:0] (.C({16{clk}}),.R(16'b0),.CE({16{1'b1}}),.D(VcounterOut[15:0]),.Q(Vo));

    
assign V = VcounterOut;
assign H = HcounterOut;
    
endmodule
