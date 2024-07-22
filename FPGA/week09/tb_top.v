`timescale 1ns/100ps
`define T_CLK 10
`define SIM
module tb_top();

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
parameter T_DIV_1      = 13'd2603; // 0-2603 : 2604  // 50 MHz clock -> 19,200 rate
parameter T_DIV_HALF_1 = 13'd1301; // 2604/2 = 1302  // 50 MHz clock -> 19,200 rate
`endif
parameter SCLK_HALF = 4'hC;

reg clk, n_rst;

initial begin
    clk = 1'b1;
    n_rst = 1'b0;
    #(`T_CLK*2.2) n_rst = 1'b1;
end

always #(`T_CLK/2) clk = ~clk;

reg n_rst_slave;
reg start;
reg [7:0] data;
wire [7:0] led;
wire sclk;
wire cs_n;
wire sdata;
wire check_txd;

integer i;
reg baudrate;

initial begin
    n_rst_slave = 1'b0;
    start = 1'b0;
    data = 8'h00;
    baudrate = 1'b0;

    wait(n_rst == 1'b1);
    n_rst_slave = 1'b1;
    
    for(i=8'hC5; i<8'hC9; i=i+1) begin
        #(`T_CLK*SCLK_HALF*9) data = i;
        #(`T_CLK*1) n_rst_slave = 1'b0;
        #(`T_CLK*1) n_rst_slave = 1'b1;

        #(`T_CLK*1) start = 1'b1;
        #(`T_CLK*1) start = 1'b0;

        wait(cs_n == 1'b0);
        $display("spi start");

        wait(u_top.u_uart_tx.start == 1'b1);
        $display("uart txd start");

        wait (u_top.u_uart_tx.cnt_bit == 4'hc);
        $display("uart txd end");

        $display("%h",u_top.u_byte2ascill.data_out);
    end
end

top u_top (
	.clk(clk),
	.n_rst(n_rst),
	.push_start(start),
    .sdata(sdata),
    .sclk(sclk),
    .cs_n(cs_n),
    .led(led),
    .txd(check_txd)
);

spi_slave u_spi_slave_adc(
   .n_rst(n_rst_slave),
   .data(data), 
   .sclk(sclk),
   .cs_n(cs_n),
   .sdata(sdata)  // output
);


endmodule

