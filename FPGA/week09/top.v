module top(
    input clk,
    input n_rst,
    input push_start,
    output sclk,
    output cs_n,
    input sdata,
    input baudrate,
    output [7:0] led,
    output txd);

// 인스턴스에 값을 전달해주기 위한 변수를 선언했다.
wire done;
wire tx_done;
wire b2a_start;
wire [7:0] tx_data;
wire inv_txd;
// 처음 시작버튼에 대한 edge detector 변수
wire w_push;
reg d_push;
reg d2_push;
reg rx_data
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

// byte2ascii 모듈에서 나온 신호를 연결해주어 순차적으로 동작할 수 있도록 했다.
// b2a_start 신호가 1일때 uart_tx에서는 start 신호로 동작하며 값을 보낸뒤 done값과 uart_txd 값을 output으로 내보낸다. 
// 이때 done값은 byte2ascii 모듈과 연결된다.
uart_tx u_uart_tx(
    .clk(clk),
    .n_rst(n_rst),
    .baudrate(baudrate),
    .start(b2a_start),
    .din(tx_data),
    .done(tx_done),
    .uart_txd(inv_txd)
);

endmodule