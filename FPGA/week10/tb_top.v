`timescale 1ns/100ps
`define T_CLK 10
`define SIM
module tb_top ();

`ifdef SIM
parameter T_DIV_BIT    = 4;   //  2-bit
parameter T_DIV_0      = 4'd15; // 0-15 : 16 // 50 MHz clock -> 9,600 rate
parameter T_DIV_HALF_0 = 4'd7;  // 0- 7 : 8
parameter T_DIV_1      = 4'd7;  // 0- 7 : 8  // 50 MHz clock -> 9,600 rate
parameter T_DIV_HALF_1 = 4'd3;  // 0- 3 : 4
`else
// 50 MHz clock -> (1/(d5208)) -> 9,600 rate
parameter T_DIV_BIT    = 13;   // 5207 : 13-bit
parameter T_DIV_0      = 13'd5207; // 0-5207 : 5208  // 50 MHz clock ->  9,600 rate
parameter T_DIV_HALF_0 = 13'd2603; // 5208/2 = 2604  // 50 MHz clock ->  9,600 rate
parameter T_DIV_1      = 13'd5207; // 0-2603 : 2604  // 50 MHz clock -> 19,200 rate
parameter T_DIV_HALF_1 = 13'd1301; // 2604/2 = 1302  // 50 MHz clock -> 19,200 rate
`endif
parameter SCLK_HALF = 4'hC;

reg clk, n_rst;
wire [7:0] led_tx, led_rx;
initial begin
    clk = 1'b1;
    n_rst = 1'b0;
    #(`T_CLK*2.2) n_rst = 1'b1;
end

always #(`T_CLK/2) clk = ~clk;


reg n_rst_slave;
reg start;
reg [7:0] data;

wire sclk;
wire cs_n;
wire sdata;

wire uart_txd_n;
wire uart_rxd_n;

integer i;
reg baudrate;

initial begin
	n_rst_slave = 1'b0;
	start = 1'b0;
	data = 8'h00;

	baudrate = 1'b0;

	wait(n_rst == 1'b1);
	n_rst_slave = 1'b1;
   

	 for (i=8'hC5; i<8'hC9;i=i+1) begin
	#(`T_CLK*SCLK_HALF*9) data = i;

	#(`T_CLK*1) n_rst_slave = 1'b0;
	#(`T_CLK*1) n_rst_slave = 1'b1;

	#(`T_CLK*1) start = 1'b1;
	#(`T_CLK*1) start = 1'b0;

	wait (cs_n == 1'b0);
	$display("spi start");

	wait (u_top_tx.u_uart_tx.start == 1'b1);
	$display("uart txd start");

    wait (u_top_tx.u_uart_tx.cnt_bit == 4'hb);
	$display("uart txd end");

	wait (u_top_rx.rx_done == 1'b1); // new_data
	$display("uart rxd data: %h", u_top_rx.rx_data);
	$display("uart rxd end");
	#(`T_CLK*1) push_sw = 1'b1;

	wait (u_top_rx.rx_done == 1'b1); // new_data
	$display("uart rxd data: %h", u_top_rx.rx_data);
	$display("uart rxd end");
	#(`T_CLK*1) push_sw = 1'b1;

	wait (u_top_rx.rx_done == 1'b1); // new_data
	$display("uart rxd data: %h", u_top_rx.rx_data);
	$display("uart rxd end");
	#(`T_CLK*1) push_sw = 1'b1;
	end
	#(`T_CLK * SCLK_HALF*4) $stop;
end


top #(
	.T_DIV_BIT(T_DIV_BIT),
	.T_DIV_0(T_DIV_0), 
	.T_DIV_HALF_0(T_DIV_HALF_0), 
	.T_DIV_1(T_DIV_1),
	.T_DIV_HALF_1(T_DIV_HALF_1) 
) u_top_tx (
	.clk(clk),
	.n_rst(n_rst),
	.push_start(start),
	.push_read(push_sw),
	.sclk(sclk),
	.cs_n(cs_n),
	.sdata(sdata),

	.baudrate(baudrate),
	.inv_rxd(uart_rxd_n),
	.led(led_tx),
	.txd(uart_txd_n),
	.fnd_30_out(tx_fnd_30_out),
	.fnd_74_out(tx_fnd_74_out)
);


spi_slave u_spi_slave(
   .n_rst(n_rst_slave),
   .data(data), 
   .sclk(sclk),
   .cs_n(cs_n),
   .sdata(sdata)  // output
);

top #(
	.T_DIV_BIT(T_DIV_BIT),
	.T_DIV_0(T_DIV_0), 
	.T_DIV_HALF_0(T_DIV_HALF_0), 
	.T_DIV_1(T_DIV_1),
	.T_DIV_HALF_1(T_DIV_HALF_1) 
) u_top_rx (
	.clk(clk),
	.n_rst(n_rst),
	.push_start(1'b1),
	.sclk(),
	.cs_n(),
	.sdata(1'b0),

	.baudrate(baudrate),
	.inv_rxd(uart_txd_n),
	.led(led_rx)
	.txd(uart_rxd_n),
	.fnd_30_out(rx_fnd_30_out),
	.fnd_74_out(rx_fnd_74_out)
);
endmodule