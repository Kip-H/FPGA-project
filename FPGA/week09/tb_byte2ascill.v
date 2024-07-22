`timescale 1ns/1ps
`define T_CLK 20

module tb_byte2ascii;

reg clk, n_rst;

initial begin
    n_rst = 1'b0;
    clk = 1'b1;
    #(`T_CLK * 2.2) n_rst = 1'b1;
end

always #(`T_CLK/2) clk = ~clk;

reg [7:0] data;
wire [7:0] data_out;
wire done;
reg start;
reg rx_done;

initial begin
    rx_done = 1'b0;
    data = 8'h2F;
    start = 1'b0;
    wait(n_rst == 1'b1)
    #(`T_CLK * 5) start = 1'b1;
    #(`T_CLK * 1) start = 1'b0;

    #(`T_CLK * 5) rx_done = 1'b1;
    #(`T_CLK * 1) rx_done = 1'b0;

    #(`T_CLK * 5) rx_done = 1'b1;
    #(`T_CLK * 1) rx_done = 1'b0;

    #(`T_CLK * 5) rx_done = 1'b1;
    #(`T_CLK * 1) rx_done = 1'b0;


    data = 8'h3B;
    start = 1'b0;
    wait(n_rst == 1'b1)
    #(`T_CLK * 5) start = 1'b1;
    #(`T_CLK * 1) start = 1'b0;

    #(`T_CLK * 5) rx_done = 1'b1;
    #(`T_CLK * 1) rx_done = 1'b0;

    #(`T_CLK * 5) rx_done = 1'b1;
    #(`T_CLK * 1) rx_done = 1'b0;

    #(`T_CLK * 5) rx_done = 1'b1;
    #(`T_CLK * 1) rx_done = 1'b0;
     $stop;
end


byte2ascill u_byte2ascill(
    .clk(clk),
    .n_rst(n_rst),
    .data(data),
    .start(start),
    .rx_done(rx_done),
    .done(done),
    .data_out(data_out)
);

endmodule