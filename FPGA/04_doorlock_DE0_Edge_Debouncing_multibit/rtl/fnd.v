module fnd (
	din,
	dout
);

parameter OFF = 1'b1;
parameter ON = 1'b0;
input  [3:0] din;
output [6:0] dout;

wire a, b, c, d, e, f, g, h;

// off condition
assign a = ((din==4'h1)||(din==4'h4)||(din==4'hB)||(din==4'hD))? OFF : ON;
assign b = ((din==4'h5)||(din==4'h6)||(din==4'hB)||(din==4'hD)||(din==4'he))? OFF : ON;
assign c = ((din==4'h2)||(din==4'hC)||(din==4'hE)||(din==4'hF))? OFF : ON;
assign d = ((din==4'h1)||(din==4'h4)||(din==4'h7)||(din==4'hA)||(din==4'hF))? OFF : ON;
assign e = ((din==4'h1)||(din==4'h3)||(din==4'h4)||(din==4'h5)||(din==4'h7)||(din==4'h9))? OFF : ON;
assign f = ((din==4'h1)||(din==4'h2)||(din==4'h3)||(din==4'hD))? OFF : ON;
assign g = ((din==4'h0)||(din==4'h1)||(din==4'h7)||(din==4'hC))? OFF : ON;
assign h = 1'b1;

//assign dout = {h,g,f,e,d,c,b,a};
assign dout = {g,f,e,d,c,b,a};

endmodule
