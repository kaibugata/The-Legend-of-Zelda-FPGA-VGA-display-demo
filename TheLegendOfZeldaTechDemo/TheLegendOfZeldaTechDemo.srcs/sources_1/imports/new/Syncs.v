module Sync(
input [15:0] V,H,
input clk,
output Vsync,Hsync
);

wire v,h;

assign v = ~(V == 16'd489 | V == 16'd490);
assign h = ~(H >= 16'd655 & H <= 16'd750); //(H >= 16'd655 & H <= 16'd750);


FDRE #(.INIT(1'b1) ) ff_instance_v (.C(clk),.R(1'b0),.CE(1'b1),.D(v),.Q(Vsync));
FDRE #(.INIT(1'b1) ) ff_instance_h (.C(clk),.R(1'b0),.CE(1'b1),.D(h),.Q(Hsync));

endmodule