module top(
    input clk,
    input n_rst,
    input bt_start,
    input push_spi_start,
    input bt_setting,
    output sclk, 
    output cs_n,
    input sdata,

    output [7:0] led_out,
    output heat_signal,
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
// 誘る닔 뚯쪡遊붋⑤슡숆내믥뼨


wire done;
wire tx_done;
wire [7:0] tx_data;
wire inv_txd;
wire [7:0] rx_data;
wire rx_done;
wire baudrate;
assign baudrate = 1'b0;

// FND볦뫓뎤ignal
wire morning_signal;
wire after_signal;
wire Day_done;
// b2a moduledone띠룆uart_txstart ル쪇源덃뤆쎛 濡ル츎띠룆뎓dge detetor볦뫓됬솻沅걔

wire [7:0] led;

// start 뺢퀗듬edge detector
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

// setting 뺢퀗듬edge detection
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
    .rx_data(rx_data),
    .rx_done(rx_done),
    .led_data(led),
    .spi_done(done),
    .led_out(led_out),
    .heat_signal(heat_signal),
    .motor_signal(motor_signal),
    .morning_signal(morning_signal),
    .after_signal(after_signal),
    .Day_done(Day_done)
);

// n_start믩펲 w_push숉맊
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
// spi_master module믫맋 瑜곴텛 ル쪇源늕one怡봢d뚮걠嶺뚮ㅄ維獄ㄾyte2ascill 嶺뚮ㅄ維獄뫊戮곕츊
// tx_done ル쪇源늱art_txdone ル쪇源덉뮄쀧뙼癒샍塋딆릷art_tx띠럾 띠룆곌랜亦끸넂걠띠룆熬곣뫀堉롪낯횠 덉┣γ볥쐞
// byte2ascii 嶺뚮ㅄ維獄딂땻done 띠룆 b2a_startβ넄쀧뙼癒샍塋딆릷art_txstart ル쪇源덃뤆쎛 덉┣γ볥쐝 data_out tx_dataμ즴in怨쀬Ŧ 影꽑繞벿뮻

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
// ル쪇源덉뮂爾몃쪇덈쉽猷뽫꽑繞
assign txd = ~inv_txd;

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

Total_FND u_Total_FND(
    .morning_signal(morning_signal),
    .after_signal(after_signal),
    .fnd1(fnd1),
    .fnd2(fnd2),
    .fnd3(fnd3)
);



endmodule