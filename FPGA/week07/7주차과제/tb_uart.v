`timescale 1ns/1ps
`define T_CLK 20

module tb_uart_tx;

`ifdef SIM
parameter T_DIV = 13'd7;
parameter T_DIV_HALF = 13'd3;
`else
// 50MHz clock
parameter T_DIV = 13'd7;
parameter T_DIV_HALF = 13'd3;
`endif

reg clk, n_rst;

initial begin
    n_rst = 1'b0;
    clk = 1'b1;
    #(`T_CLK*2.2) n_rst = 1'b1;
    end

always #(`T_CLK/2)clk = ~clk;

reg start;
reg [7:0] din;
wire uart_txd;
wire tx_done;

initial begin
    start = 1'b0;
    din = 8'h00;
    wait(n_rst == 1'b1);
    #(`T_CLK*30) din = 8'h37;
    #(`T_CLK*1) start = 1'b1;
    #(`T_CLK*1) start = 1'b0;
    #(`T_CLK*5)
    #(`T_CLK * T_DIV_HALF * 40);
    #(`T_CLK * 30) din = 8'h20;
    #(`T_CLK*1) start = 1'b1;
    #(`T_CLK*1) start = 1'b0;
    #(`T_CLK*5)
    #(`T_CLK * T_DIV_HALF * 40) $stop;
end

uart_tx u_uart_tx(
    .clk(clk),
    .n_rst(n_rst),
    .start(start),
    .tx_data(din),
    .tx_done(tx_done),
    .txd(uart_txd)
);


endmodule