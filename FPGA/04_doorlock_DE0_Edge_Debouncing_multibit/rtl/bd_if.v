module bd_if(
	clk,
	n_rst,

	bt_i,
	btstar_i,
	led_i,
	//fnd_i,

	bt_o,
	btstar_o,
	led_o,
	fnd_o
);

//`ifdef SIM
//parameter T_1S = 26'h000_0008; // d50_000_000;
//parameter T_20MS = 20'h000_0008; // d50_000_000;
//`else
parameter T_1S = 26'h2FA_F080; // d50_000_000;
parameter T_20MS = 20'hF_4240; // d1_000_000;
//`endif

input clk;
input n_rst;

input [9:0] bt_i;
input		btstar_i;
input		led_i;
//input [3:0] fnd_i;
output [9:0] bt_o;
output		btstar_o;
output		led_o;
output [6:0] fnd_o;

wire [9:0] bt_debnc;
//wire debnc_btstar;

debounc_multi_1 #(
	.T_20MS(T_20MS),
	.D_W(2) 
)
	u_bt0_debounc(
	.clk(clk),
	.n_rst(n_rst),
	.din(bt_i[1:0]),
	.dout(bt_debnc[1:0])
);

debounc_multi_2 #(
	.T_20MS(T_20MS),
	.D_W(4)
) u_bt1_debounc(
	.clk(clk),
	.n_rst(n_rst),
	.din(bt_i[5:2]),
	.dout(bt_debnc[5:2])
);

debounc_multi_3 #(
	.T_20MS(T_20MS),
	.D_W(4)
) u_bt2_debounc(
	.clk(clk),
	.n_rst(n_rst),
	.din(bt_i[9:6]),
	.dout(bt_debnc[9:6])
);

edge_det_p #(.D_W(10)) u_edge_det_p_bt(
	.clk(clk),
	.n_rst(n_rst),
	.din(bt_debnc),
	.dout(bt_o)
);


edge_det_p #(.D_W(1)) u_edge_det_p_star(
	.clk(clk),
	.n_rst(n_rst),
	.din(~btstar_i),
	.dout(btstar_o)
);

reg [3:0] bt_dec;
always @(bt_o)
    case(bt_o)
        10'b00_0000_0001 : bt_dec = 4'h0;
        10'b00_0000_0010 : bt_dec = 4'h1;
        10'b00_0000_0100 : bt_dec = 4'h2;
        10'b00_0000_1000 : bt_dec = 4'h3;
        10'b00_0001_0000 : bt_dec = 4'h4;
        10'b00_0010_0000 : bt_dec = 4'h5;
        10'b00_0100_0000 : bt_dec = 4'h6;
        10'b00_1000_0000 : bt_dec = 4'h7;
        10'b01_0000_0000 : bt_dec = 4'h8;
        10'b10_0000_0000 : bt_dec = 4'h9;
        default : bt_dec = 4'hf;
    endcase

fnd u_fnd(
    .din(bt_dec),
    .dout(fnd_o)
);

reg [25:0] cnt_ext;
always @(posedge clk or negedge n_rst)
	if(!n_rst) begin
		cnt_ext <= 26'h000_0000;
	end
	else begin
		cnt_ext <= (led_i == 1'b1)? T_1S :
				   (cnt_ext > 26'h000_0000)? cnt_ext - 26'h000_0001 : cnt_ext;
	end
	
assign led_o = (cnt_ext != 26'h000_0000)? 1'b1 : 1'b0;
endmodule
