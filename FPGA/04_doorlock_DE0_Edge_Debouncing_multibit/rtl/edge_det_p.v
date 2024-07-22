module edge_det_p (
	clk,
	n_rst,
	din,
	dout
);
parameter D_W = 1;

input clk;
input n_rst;
input [D_W - 1 : 0] din;
output [D_W - 1 : 0] dout;

reg [D_W-1:0] din_d1, din_d2;

always @(posedge clk or negedge n_rst)
	if(!n_rst) begin
		din_d1 <= {(D_W){1'b0}};
		din_d2 <= {(D_W){1'b0}};
	end
	else begin
		din_d1 <= din;
		din_d2 <= din_d1;
	end

assign dout = (din_d1 & ~din_d2);

endmodule
