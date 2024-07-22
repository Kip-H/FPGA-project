`timescale 1ns/100ps
`define T_CLK 10

module tb_top_memory;

parameter D_WIDTH = 8;
parameter A_WIDTH = 4;

parameter T_DIV_BIT    = 4;  
parameter T_DIV_0      = 4'd7; 
parameter T_DIV_HALF_0 = 4'd7;  
parameter T_DIV_1      = 4'd7;  
parameter T_DIV_HALF_1 = 4'd3;  
parameter SCLK_HALF = 4'hC;

reg clk;
reg n_rst;
reg rx_done;
reg [7:0] rx_data;
reg push_sw;

// fnd로 띄워주기 위한 변수
wire [6:0] fnd_30_out;
wire [6:0] fnd_74_out;

// top 모듈에서 입출력 포트를 연결해주었다.
top u_top(
	.clk(clk),
	.n_rst(n_rst),
	.rx_data(rx_data),
	.rx_done(rx_done),
	.push_read(push_sw),
	.fnd_30_out(fnd_30_out),
	.fnd_74_out(fnd_74_out)
);

// clock과 n_rst 설정 및 초기 parameter 설정
initial begin
    clk = 1'b1;
    n_rst = 1'b0;
    rx_done = 1'b0;
    rx_data = 8'h0;  
    push_sw = 1'b0;
    #(`T_CLK*2.2)n_rst = 1'b1;
end

always #(`T_CLK/2) clk = ~clk;

integer i;
initial begin
  wait(n_rst == 1'b1);

  // hex 63일때 case
  #(`T_CLK*SCLK_HALF*4) rx_data = 8'h63; 
  #(`T_CLK*SCLK_HALF*1) rx_done = 1'b1; 
  #(`T_CLK*1) rx_done = 1'b0; 
  #(`T_CLK*SCLK_HALF*1) push_sw = 1'b1;
  #(`T_CLK*1) push_sw = 1'b0;
  // hex 35일때 case
  #(`T_CLK*SCLK_HALF*4) rx_data = 8'h35; 
  #(`T_CLK*SCLK_HALF*1) rx_done = 1'b1;
  #(`T_CLK*1) rx_done = 1'b0;
  #(`T_CLK*SCLK_HALF*1) push_sw = 1'b1;
  #(`T_CLK*1) push_sw = 1'b0;
  // hex 20일때 case
  #(`T_CLK*SCLK_HALF*4) rx_data = 8'h20; 
  #(`T_CLK*SCLK_HALF*1) rx_done = 1'b1;
  #(`T_CLK*1) rx_done = 1'b0;
  // hex 63일때 case
  #(`T_CLK*SCLK_HALF*4) rx_data = 8'h63; 
  #(`T_CLK*SCLK_HALF*1) rx_done = 1'b1;
  #(`T_CLK*1) rx_done = 1'b0;
  #(`T_CLK*SCLK_HALF*1) push_sw = 1'b1;
  #(`T_CLK*1) push_sw = 1'b0;
  // hex 36일때 case
  #(`T_CLK*SCLK_HALF*4) rx_data = 8'h36; 
  #(`T_CLK*SCLK_HALF*1) rx_done = 1'b1;
  #(`T_CLK*1) rx_done = 1'b0;
  #(`T_CLK*SCLK_HALF*1) push_sw = 1'b1;
  #(`T_CLK*1) push_sw = 1'b0;
  // hex 20일때 case
  #(`T_CLK*SCLK_HALF*4) rx_data = 8'h20;
  #(`T_CLK*SCLK_HALF*1) rx_done = 1'b1;
  #(`T_CLK*1) rx_done = 1'b0;
  #(`T_CLK*SCLK_HALF*1) push_sw = 1'b1;
  #(`T_CLK*1) push_sw = 1'b0;
  
  #(`T_CLK*SCLK_HALF*4) $stop;
end

endmodule
