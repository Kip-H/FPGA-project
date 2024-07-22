module top(
    input clk,
    input n_rst,
    input push_start,
    output sclk,
    output cs_n,
    input sdata,
    input baudrate,
    input inv_rxd,
    output [7:0] led,
    output txd);


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


// 인스턴스에 값을 전달해주기 위한 변수를 선언했다.
wire done;
wire tx_done;
wire b2a_start;
wire [7:0] tx_data;
wire inv_txd;
wire [7:0] rx_data;
wire rx_done;
// 처음 시작버튼에 대한 edge detector 변수
wire w_push;
reg d_push;
reg d2_push;
// b2a module의 done값이 uart_tx의 start 신호가 되는데 이 값에 대한 edge detetor를 위한 변수

// push 버튼에 대한 edge detector 
// 지연 시킨 신호 2개를 비교하여 w_push 신호를 만들어낸다.
always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        d_push <= 1'b0;
        d2_push <= 1'b0;
    end
    else begin
        d_push <= push_start;
        d2_push <= d_push;
    end

assign w_push = ((d_push == 1'b1) && (d2_push == 1'b0)) ? 1'b1 : 1'b0;

// n_start에다 w_push를 넣는다.
spi_master_adc u_spi_master_adc(
    .clk(clk),
    .n_rst(n_rst),
    .n_start(w_push),
    .sdata(sdata),
    .sclk(sclk),
    .cs_n(cs_n),
    .done(done),
    .led(led)
);

// spi_master module에서 나온 신호인 done과 led를 다음 모듈인 byte2ascill 모듈에 전달한다.
// tx_done 신호는 uart_tx의 done 신호를 연결해주어 uart_tx가 값을 보내고 난 뒤 다음 값을 전달해줄 수 있도록 했다.
// byte2ascii 모듈에서 done 값은 b2a_start로 연결해주어 uart_tx의 start 신호가 될 수 있도록 했고, data_out은 tx_data로 din으로 넣어준다.

byte2ascill u_byte2ascill(
    .clk(clk),
    .n_rst(n_rst),
    .data(led),
    .start(done),
    .rx_done(tx_done),
    .done(b2a_start),
    .data_out(tx_data)
);

// 신호를 반전시켜서 넣어줌
assign txd = ~inv_txd;
assign rxd = ~inv_rxd;

// byte2ascii 모듈에서 나온 신호를 연결해주어 순차적으로 동작할 수 있도록 했다.
// b2a_start 신호가 1일때 uart_tx에서는 start 신호로 동작하며 값을 보낸뒤 done값과 uart_txd 값을 output으로 내보낸다. 
// 이때 done값은 byte2ascii 모듈과 연결된다.
uart_tx #(
	.T_DIV_BIT(T_DIV_BIT),
	.T_DIV_0(T_DIV_0), 
	.T_DIV_HALF_0(T_DIV_HALF_0), 
	.T_DIV_1(T_DIV_1),
	.T_DIV_HALF_1(T_DIV_HALF_1) 
) u_uart_tx(
    .clk(clk),
    .n_rst(n_rst),
    .baudrate(baudrate),
    .start(b2a_start),
    .din(tx_data),
    .done(tx_done),
    .uart_txd(inv_txd)
);

uart_rx #(
	.T_DIV_BIT(T_DIV_BIT),
	.T_DIV_0(T_DIV_0), 
	.T_DIV_HALF_0(T_DIV_HALF_0), 
	.T_DIV_1(T_DIV_1),
	.T_DIV_HALF_1(T_DIV_HALF_1) 
) u_uart_rx(
    .clk(clk),
    .n_rst(n_rst),
    .baudrate(baudrate),
    .uart_rxd(rxd),
    .rx_data(rx_data),
    .rx_done(rx_done)
);

always @(posedge clk or negedge n_rst)
if(!n_rst)
    fnd_data <= 8'h00;
else
    fnd_data <= ()

fnd u_fnd_1(
    .din(fnd_data[3:0]),
    .dout(fnd_30_out)
);

fnd u_fnd_2(
    .din(fnd_data[7:4]),
    .dout(fnd_74_out)
);

endmodule