module top(
    input clk,
    input n_rst,
    input push_start,
    input [7:0] bt,
    input sel,
    input sdata,
    output sclk,
    output cs_n,
    output [7:0] led,
    output txd);

// 인스턴스에 값을 전달해주기 위한 변수를 선언했다.
wire [7:0] sel_data;
wire done;
wire tx_done;
wire b2a_start;
wire [7:0] tx_data;
wire inv_txd;
wire baudrate;
wire rx_done;

// 처음 시작버튼에 대한 edge detector 변수
wire w_push;
reg d_push;
reg d2_push;

// b2a module의 done값이 uart_tx의 start 신호가 되는데 이 값에 대한 edge detetor를 위한 변수
reg d_b2a_start;
reg d2_b2a_start;
wire w_b2a_start;

// push 버튼에 대한 edge detector 
// 지연 시킨 신호 2개를 비교하여 w_push 신호를 만들어낸다.
always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        d_push <= 1'b0;
        d2_push <= 1'b0;
    end
    else begin
        d_push <= ~push_start;
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
byte2ascill u_byte2ascill(
    .clk(clk),
    .n_rst(n_rst),
    .data(led),
    .start(done),
    .rx_done(tx_done),
    .done(b2a_start),
    .data_out(tx_data)
);
// byte2ascill module에서 나온 값인 b2a_start와 tx_data를 uart_tx에 보내야 한다.
// b2a_start의 경우 active 상태가 유지됐기 때문에 edge detector를 사용해야 했다.
// 또한 uart_tx로 전달할 값이 master에서 받아온 값인지 slide switch(bt)인지 구분을 해주어야 한다.

// 먼저 전달할 값을 sel이라는 신호를 기준으로 나눴다. sel이 1이라면 slide switch에서 받은 값을 전달하고, 0이라면 빛 센서를 통해 나온 값을 전달한다.
assign sel_data = (sel == 1'b1) ? bt : tx_data;

// 보드에 있는 RS232 칩은 신호 흐름이 반대이기 때문에 값을 반전시켜서 전달해줬다.
assign txd = ~inv_txd;

// 전송속도가 9600임을 알려주기 위한 변수
assign baudrate = 1'b0;


// b2a_start에서 나온 신호가 active 상태를 유지하는 것을 방지하기 위해 edge detector를 만들었다.
// 지연된 신호 2개를 만들었다. done 값은 1로 시작하며 0으로 내려오기 때문에 한번 지연한 신호는 0이고, 두번 지연된 신호가 1일때 1의 값을 갖도록 설계했다.


// 받아온 값을 uart_tx로 전달했다. 위에서 정리한 baudrate는 0으로 넣었으며 sel_data를 din으로 집어넣고, w_b2a_start를 start 신호로 전달했다.
uart_tx u_uart_tx(
    .clk(clk),
    .n_rst(n_rst),
    .baudrate(baudrate),
    .start(b2a_start),
    .din(sel_data),
    .done(tx_done),
    .uart_txd(inv_txd)
);

endmodule