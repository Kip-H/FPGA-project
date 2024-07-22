module byte2ascill(
    input clk,
    input n_rst,
    input [7:0] data,
    input start,
    input rx_done,
    output done,
    output reg[7:0] data_out
);

parameter IDLE = 3'h0;
parameter S1 = 3'h1;
parameter W1 = 3'h2;
parameter S2 = 3'h3;
parameter W2 = 3'h4;
parameter S3 = 3'h5;
parameter W3 = 3'h6;

reg [2:0] c_state, n_state;
reg uart_start;
reg [3:0] top_4bit;
reg [3:0] lower_4bit;

// n_state를 c_state로 바꿔주기fc
// 플립플롭으로 만들었다.
always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    c_state <= IDLE;
end
else begin
    c_state <= n_state;
end

// data_out은 바로 바뀌는 값이어야 하기 때문에 논블록킹을 사용해주었다.
// 상위 4비트와 하위 4bit를 나눠서 먼저 S1일때는 상위 4bit를 검사해서 9보다 큰지 작은지를 기준으로 구간을 나눴다.
// 9보다 작거나 같은 경우는 앞에 4bit는 0011로 고정을 시켜놓고 뒤에 상위 4bit를 붙였다. 9보다 큰 수라면 9를 빼주어 원하는 영문자가 나올 수 있도록 했다.
// A의 경우에는 0x41이라는 값을 갖고 있기 때문에 앞에 0100을 붙이고, 상위4비트에서 9를 뺀 값을 갖도록 했다. 

always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    data_out <= 8'h00;
end
else begin
    if(c_state == S1)
        data_out <= (top_4bit <= 4'h9) ? {4'b0011,top_4bit} : {4'b0100, top_4bit - 4'b1001};
    else if(c_state == S2)
        data_out <= (lower_4bit <= 4'h9) ? {4'b0011,lower_4bit} : {4'b0100, lower_4bit - 4'b1001};
    else if(c_state == S3)
        data_out <= 8'h20;
    else
        data_out <= data_out; 
end

// state에 따라 여러 신호들이 동시에 변하며, 비교도 같이 진행되기 때문에 하위 4bit와 상위 4bit를 논블록킹으로 대입해주었다.
// 상위 4bit는 data[7:4]로 넣어주고 하위 4bit는 data[3:0]으로 넣어주었다.
always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    top_4bit <= 4'b0000;
    lower_4bit <= 4'b0000;
end
else begin
    top_4bit <= data[7:4];
    lower_4bit <= data[3:0];
end

// state machine
// IDLE 상태에서는 byte2ascii에 start 신호가 들어오면 S1으로 상태를 바꾼다. S1에서는 uart_start 신호가 1이면 W1으로 바뀌고, uart_tx에서 done 신호를 받으면 다시 S2로 넘어간다.
// S2에서는 또 uart_start 신호를 1로 두고 이 신호가 1일때 W2 상태로 바뀐다. W2에서는 또 uart_tx에서 보낸 done 값을 기다리다 값이 1일때 S3로 값을 바꾼다.
// S3에서 uart_start신호가 1이면 W3로 바꾸고 또 uart_tx의 done 값을 기다린다. done값이 1일 때 IDLE 값으로 바꾼다.
// dafault로는 IDLE 상태로 두었다.
always @(*)
    case(c_state)
        IDLE : begin
        n_state = (start == 1'b1) ? S1 : c_state;
        end
        // 상위 4bit
        S1 : begin
        n_state = (uart_start == 1'b1) ? W1 : c_state;
        end
        
        W1 : begin
        n_state = (rx_done == 1'b1) ? S2 : c_state;
        end
        // 하위 4bit
        S2 : begin
        n_state = (uart_start == 1'b1) ? W2 : c_state;
        end
        
        W2 : begin
        n_state = (rx_done == 1'b1) ? S3 : c_state;
        end

        // space 값 넣기
        S3 : begin
        n_state = (uart_start == 1'b1) ? W3 : c_state;
        end

        W3 : begin
        n_state = (rx_done == 1'b1) ? IDLE : c_state;
        end

        default : begin
        n_state = IDLE;
        end
    endcase

// c_state가 S1, S2, S3일때만 uart_start가 1이길 원했기 때문에 값을 따로 넣어주었다.
// 해당 신호들은 OR로 두었다.
always @(*) begin
    if(c_state == S1 || c_state == S2 || c_state == S3)
        uart_start = 1'b1;
    else
        uart_start = 1'b0;
end

// uart_start를 통해 done값을 지정해주었다. done값이 1일때 uart_tx의 start 신호로 사용할 수 있도록 했다.
assign done = uart_start;

endmodule
