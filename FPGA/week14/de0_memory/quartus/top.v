`define FPGA
module top(
    input clk,
    input n_rst,
    input uart_rxd,
    input push_read,
    output [6:0] fnd_30_out,
    output [6:0] fnd_74_out
);

// 포트 연결을 위한 변수 선언
wire [7:0] fnd_data;
wire wen;
wire [2:0] waddr;
wire [7:0] wdata;
wire [2:0] raddr;
wire [7:0] rdata;

wire [7:0] rx_data;
wire rx_done;
wire baudrate = 1'b0;

wire w_start;
reg d_start;
reg d2_start;

always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    d_start <= 1'b0;
    d2_start <= 1'b0;
end
else begin
    d_start <= ~push_read;
    d2_start <= d_start;
end

assign w_start = ((d_start == 1'b1) && (d2_start == 1'b0)) ? 1'b1 : 1'b0;


uart_rx u_uart_rx(
    .clk(clk),
    .n_rst(n_rst),
    .baudrate(baudrate),
    .uart_rxd(uart_rxd),
    .rx_data(rx_data),
    .rx_done(rx_done)
);

// 입출력에 맞는 포트를 연결해줌, 
// waddr, wen, ren, wdata, raddr, rdata와 ram을 연결하여 값을 주고 받는다.
// rdata는 ram에서 controller로 이동하며 이외의 변수들은 controller에서 ram으로 전달된다.
Mem_Controller u_Mem_Controller(
    .clk(clk),
    .n_rst(n_rst),
    .rx_done(rx_done),
    .rx_data(rx_data),
    .push_sw(w_start),
    .waddr(waddr),
    .wen(wen),
    .wdata(wdata),
    .raddr(raddr),
    .rdata(rdata),
    .fnd_data(fnd_data)
);

//// waddr, wen, ren, wdata, raddr, rdata와 controller를 연결하여 값을 주고 받는다.
`ifdef FPGA
ram_dual_16x8 u_ram_dual_16x8(
    .clock(clk),
    .data(wdata),
    .wraddress(waddr),
    .rdaddress(raddr),
	 .wren(wen),
	 .q(rdata)
);
`else
ram_dual_16x8 #(.D_WIDTH(8), .A_WIDTH(3)) 
u_ram_dual_16x8(
		.clk(clk),
		.waddr(waddr),
		.wen(wen),
		.wdata(wdata),
		.raddr(raddr),
		.rdata(rdata)
);
`endif


// controller에서 받아온 값을 이용해서 fnd 모듈에 각각 연결해준다. 
fnd_enc u_fnd_1(
    .din(fnd_data[3:0]),
    .dout(fnd_30_out)
);
// controller에서 받아온 값을 이용해서 fnd 모듈에 각각 연결해준다. 
fnd_enc u_fnd_2(
    .din(fnd_data[7:4]),
    .dout(fnd_74_out)
);

endmodule