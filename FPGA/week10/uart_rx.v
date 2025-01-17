module uart_rx(
    input clk,
    input n_rst,
    input baudrate,
    input uart_rxd,
    output reg[7:0] rx_data,
    output rx_done);

// 시뮬레이션과 실제 에서 전송속도에 대한 분할값
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

reg rx_en;
reg [T_DIV_BIT-1:0] cnt_rx_div;
wire [T_DIV_BIT-1:0] r_div;
wire clk_rx_en;

// 전송속도를 맞춰주기 위한 과정
assign r_div = (baudrate == 1'b1) ? T_DIV_1 : T_DIV_0;

// 값을 읽을 타이밍일때 1로 두기.
// r_div의 중간 지점에서 값을 읽는다.
assign clk_rx_en = (cnt_rx_div == T_DIV_HALF_0) ? 1'b1 : 1'b0;

reg [3:0] cnt_bit;
reg uart_rxd_d1;
reg uart_rxd_d2;
reg uart_rxd_d3;
reg start_en;


// 신호 2번 미루기 
// 시작할 위치를 특정하기 위해 신호를 지연시켰다. 
always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    uart_rxd_d1 <= 1'b1;
    uart_rxd_d2 <= 1'b1;
    uart_rxd_d3 <= 1'b1;
end
else begin
    uart_rxd_d1 <= ~uart_rxd;
    uart_rxd_d2 <= uart_rxd_d1;
    uart_rxd_d3 <= uart_rxd_d2;
end

// edge detection
// (uart_rxd_d2 == 1'b0 && uart_rxd_d3 == 1'b1)인 상황에서 rx_en인 상태에서만 1이 될 수 있게 했다.
always @(posedge clk or negedge n_rst)
if(!n_rst)
    start_en <= 1'b0;
else
    start_en <= ((uart_rxd_d2 == 1'b0 && uart_rxd_d3 == 1'b1) && rx_en == 1'b0) ? 1'b1 : 1'b0;

// start 신호가 뜨면 enable 신호를 준다. 
// start_en 신호가 들어오면 1을 유지하다가 cnt_bit가 4'hb 값을 가질 때 0으로 초기화한다.
always @(posedge clk or negedge n_rst)
if(!n_rst) 
    rx_en <= 1'b0;
else
    rx_en <= (start_en == 1'b1) ? 1'b1 : (clk_rx_en == 1'b1 && cnt_bit == 4'hb) ? 1'b0 : rx_en;

// 전송속도 카운터
// rx_en이 1인 상황에서 카운터가 시작되며 (cnt_rx_div == r_div)일때 카운터를 초기화한다.
always @(posedge clk or negedge n_rst)
if(!n_rst)
    cnt_rx_div <= {(T_DIV_BIT){1'b0}};
else begin
    if(rx_en == 1'b1) begin
        cnt_rx_div <= (cnt_rx_div == r_div) ? {(T_DIV_BIT){1'b0}} : cnt_rx_div + {{(T_DIV_BIT-1){1'b0}}, 1'b1};
    end
    else
        cnt_rx_div <= {(T_DIV_BIT){1'b0}};
end

// state machine을 위한 카운터
// rx_en 신호가 1일때 시작되며 clk_rx_en이 1인 순간에 값을 1 씩 증가시킨다. 
always @(posedge clk or negedge n_rst)
if(!n_rst)
    cnt_bit <= 4'd0;
else begin
    if(rx_en == 1'b1) begin
        if(clk_rx_en == 1'b1)
            cnt_bit <= cnt_bit + 4'd1;
    end
    else
        cnt_bit <= 4'd0;
end

// rxd를 받아서 버퍼에 저장한다. 
// rx_en 신호가 1일때 시작되며 clk_rx_en이 1인 순간에만 동작한다. cnt_bit == 4'h0일때는 시작비트를 주기 위해 0을 주고 오른쪽으로 시프트를 했고 이외의 경우에는 지연된 신호를 받아서 시프트 시켰다.
always @(posedge clk or negedge n_rst)
if(!n_rst)
    rx_data <= 8'h00;
else begin
    if(rx_en == 1'b1) begin
        if(clk_rx_en == 1'b1) begin
            rx_data <= {uart_rxd_d3, rx_data[7:1]};
        end
        else
            rx_data <= rx_data;
        end
    else
        rx_data <= 8'h00;
    end

// data_buffer의 전송하고자 하는 데이터는 [8:1]이기 때문에 이 값만 전달해주었다.
// data_buffer의 [8:1]이 의미있는 경우는 cnt_bit가 4'ha인 경우이기 때문에 이 경우에 done 신호가 뜰 수 있도록 설정했다. 
assign rx_done = (cnt_bit == 4'ha) ? 1'b1 : 1'b0;

endmodule