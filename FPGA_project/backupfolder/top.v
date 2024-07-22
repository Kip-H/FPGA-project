module top(
    input clk,
    input n_rst,
    input bt_start,
    input push_spi_start,
    input bt_setting,

    output sclk, 
    output cs_n,
    input sdata,
    input inv_rxd,
    output heat_signal,
    output [7:0] led_out,
    output motor_signal,
    output txd,
    output [6:0] fnd1,
    output [6:0] fnd2,
    output [6:0] fnd3
);


`ifdef SIM
parameter ONE_SECOND = 10;
parameter T_DIV_BIT    = 4;   //  2-bit
parameter T_DIV_0      = 4'd15; // 0-15 : 16 // 50 MHz clock -> 9,600 rate
parameter T_DIV_HALF_0 = 4'd7;  // 0- 7 : 8
parameter T_DIV_1      = 4'd7;  // 0- 7 : 8  // 50 MHz clock -> 9,600 rate
parameter T_DIV_HALF_1 = 4'd3;  // 0- 3 : 4
`else
// 50 MHz clock -> (1/(d5208)) -> 9,600 rate
parameter ONE_SECOND = 50_000_000;
parameter T_DIV_BIT    = 13;   // 5207 : 13-bit
parameter T_DIV_0      = 13'd5207; // 0-5207 : 5208  // 50 MHz clock ->  9,600 rate
parameter T_DIV_HALF_0 = 13'd2603; // 5208/2 = 2604  // 50 MHz clock ->  9,600 rate
parameter T_DIV_1      = 13'd5207; // 0-2603 : 2604  // 50 MHz clock -> 19,200 rate
parameter T_DIV_HALF_1 = 13'd1301; // 2604/2 = 1302  // 50 MHz clock -> 19,200 rate
`endif

// 믪눘 쎌쥚봔怨뚭퍙곻폒疫


wire done;
wire tx_done;
wire [7:0] tx_data;
wire inv_txd;
wire baudrate;
assign baudrate = 1'b0;

// FND쒓쑵釉signal
wire morning_signal;
wire after_signal;
wire Day_done;
// b2a moduledone揶쏅uart_txstart 醫륁깈揶쎛 롫뮉揶쏅肉edge detetor쒓쑵釉癰궰

wire [7:0] led;

// start 甕곌쑵됀edge detector
wire w_start;
reg d_start;
reg d2_start;

always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    d_start <= 1'b0;
    d2_start <= 1'b0;
end
else begin
    d_start <= ~bt_start;
    d2_start <= d_start;
end

assign w_start = ((d_start == 1'b1) && (d2_start == 1'b0)) ? 1'b1 : 1'b0;

// setting 甕곌쑵됀edge detection
wire w_bt_setting;
reg d_setting;
reg d2_setting;

always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    d_setting <= 1'b0;
    d2_setting <= 1'b0;
end
else begin
    d_setting <= ~bt_setting;
    d2_setting <= d_setting;
end

assign w_bt_setting = ((d_setting == 1'b1) && (d2_setting == 1'b0)) ? 1'b1 : 1'b0;

Controller u_Controller(
    .clk(clk),
    .n_rst(n_rst),
    .bt_start(w_start),
    .bt_setting(w_bt_setting),
    .led_data(led),
    .spi_done(done),
    .led_out(led_out),
    .heat_signal(heat_signal),
    .motor_signal(motor_signal),
    .morning_signal(morning_signal),
    .after_signal(after_signal),
    .Day_done(Day_done)
);

// n_start癒뼄 w_push쒙퐢
spi_master_adc u_spi_master_adc(
    .clk(clk),
    .n_rst(n_rst),
    .n_start(push_spi_start),
    .sdata(sdata),
    .sclk(sclk),
    .cs_n(cs_n),
    .done(done),
    .led(led)
);
// spi_master module癒퐣 륁궔 醫륁깈done쮔ed쒌끉筌뤴뫀諭줮yte2ascill 筌뤴뫀諭쑬뽰뮆
// tx_done 醫륁깈uart_txdone 醫륁깈쒓퀗猿먮똻竊쐕art_tx揶쎛 揶쏅癰귣沅→ⓦ끉揶쏅袁⑤뼎곸Ø 덈즲嚥〓뜄
// byte2ascii 筌뤴뫀諭Ŋ苑done 揶쏅 b2a_start嚥↔퀗猿먮똻竊쐕art_txstart 醫륁깈揶쎛 덈즲嚥〓뜃 data_out tx_data嚥죆in곗쨮 節뚮선餓Β

wire b2a_start;

byte2ascill u_byte2ascill(
    .clk(clk),
    .n_rst(n_rst),
    .day_done(Day_done),
    .tx_done(tx_done),
    .done(b2a_start),
    .data_out(tx_data)
);

wire rxd;
// 醫륁깈쒑쳸륁읈뽱룖節뚮선餓
assign txd = ~inv_txd;
assign rxd = ~inv_rxd;

// byte2ascii 筌뤴뫀諭Ŋ苑륁궔 醫륁깈쒓퀗猿먮똻竊쒖뮇媛먭낯앮에덉삂덈즲嚥〓뜄
// b2a_start 醫륁깈揶쎛 1곕르 uart_tx癒퐣start 醫륁깈嚥≪늿됱꼶흭 揶쏅癰귣沅쫉one揶쏅uart_txd 揶쏅output곗쨮 ル챶 
// 釉done揶쏅 byte2ascii 筌뤴뫀諭€④퀗猿먯뮆
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

Total_FND u_Total_FND(
    .morning_signal(morning_signal),
    .after_signal(after_signal),
    .fnd1(fnd1),
    .fnd2(fnd2),
    .fnd3(fnd3)
);



endmodule