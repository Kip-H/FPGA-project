module uart_tx(
    input clk,
    input n_rst,
    input start,
    input [7:0] tx_data,
    input tx_done,
    output txd);


// 원하는 입출력을 얻기 위한 카운터 2개, data의 임시 저장을 위한 buffer를 reg로 선언했다.
// clk_tx_en신호, tx_en, txd를 위한 uart_txd, tx_done을 위한 done 신호를 선언했다.
reg [12:0] cnt;
reg [3:0] cnt_bit;
reg [7:0] data_buffer;
reg clk_tx_en;
reg tx_en;
reg uart_txd;
reg done;


// 데이터 전송 속도를 대신할 임시 parameter를 선언했다.

parameter T_DIV = 13'd7;
parameter T_DIV_HALF = 13'd3;

//start에 따른 tx_en
// enable 신호는 start 신호가 1이고 con_bit가 0인 시점에서만 값을 1로 바꾸도록 했다.
// enable 신호는 데이터가 전송될 때만 활성화시키면 되기 떄문에 con_bit가 12일 때 0으로 바꾸도록 했다. 데이터가 전송되는 동안에는 값을 유지할 수 있도록 한다.
always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        tx_en <= 1'd0;
    end
    else begin
        tx_en <= (start == 1'b1 && cnt_bit == 4'h0) ? 1'b1 : (cnt_bit == 4'd12) ? 1'b0 : tx_en;
    end
end

//tx_data를 받아오기 위한 변수 clk enble signal 있을 때만 바뀌기 고치기
// enable 신호가 있을 때 값을 받아왔고, clk_tx_en 신호가 1일때만 shift 시키도록 했다.
// enable 신호가 없을 때는 buffer에 값을 지웠다.
always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        data_buffer <= 8'd0;
    end
    else begin
        data_buffer <= (tx_en == 1'b1 && cnt_bit == 4'd0) ? tx_data : (clk_tx_en == 1'b1 && (cnt_bit >= 4'd1 && cnt_bit <= 4'd11)) ? {1'b0, data_buffer[7:1]} : (tx_en == 1'b0) ? 8'd0 : data_buffer;
    end
end

// 전송속도를 맞춰주기 위한 cnt
// cnt는 enable 신호가 1일때 작동하도록 했다.
// enable 신호가 있다면 cnt가 T_DIV 값을 갖기 전까지는 1씩 증가시키고 T_DIV가 되면 0으로 갖게 했다. 또한 enable 신호가 0이라면 cnt가 0이 되도록 했다.
always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 13'd0;
    end
    else begin
        cnt <= (tx_en == 1'b1) ? (cnt == T_DIV) ? 13'd0 : cnt + 13'd1 : 13'd0;
    end
end

// clk_tx_en
//clk_tx_en 신호는 cnt == T_DIV일때 값을 1로 띄우고 아닐때는 0의 값을 갖도록 했다.
always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        clk_tx_en <= 1'b0;
    end
    else begin
        clk_tx_en <= (cnt == T_DIV) ? 1'b1 : 1'b0;       
    end
end

//cnt_bit
// state machine처럼 사용하기 위한 카운터다.
// clk_tx_en신호가 1일때 cnt_bit를 1씩 증가시키고 12가 되었을 때 0으로 바꾼다. clk_tx_en이 0일 때는 값을 유지한다.
always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt_bit <= 4'b0;
    end
    else begin
        cnt_bit <= (clk_tx_en == 1'b1) ? cnt_bit + 4'b1 : (cnt_bit == 4'd12) ? 4'd0 : cnt_bit;      
    end
end

// cnt_bit에 따른 uart_txd
// cnt_bit가 0일때 시작비트, cnt_bit가 1부터 8까지는 data를 나타내며 LSB부터 받아올 수 있게 했다, 9에서는 패리티 비트인데 사용하지 않으므로 0으로 뒀다.
// 10일 때는 종료 비트를 의미하는 1을 갖게 하고, 이 경우에 포함하지 않는 경우에는 1의 값으로 초기화했다.
// 시작비트는 0으로 고정되어있고, data는 buffer의 LSB부터 값을 받아올 수 있게 했다. 패리티비트는 0이고, 종료비트는 1로 두었다.
always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        uart_txd <= 1'b1;
    end
    else begin
        if(clk_tx_en == 1'b1) begin
            if(cnt_bit == 4'd0)
                uart_txd <= 1'b0;
            else if(cnt_bit >= 4'd1 && cnt_bit <= 4'd8)
                uart_txd <= data_buffer[0];
            else if(cnt_bit == 4'd9)
                uart_txd <= 1'b0;
            // 종료 비트
            else if(cnt_bit == 4'd10)
                uart_txd <= 1'b1;
            else
                uart_txd <= 1'b1;
        end
        else
            uart_txd <= uart_txd;
    end
end

// txd에 uart_txd의 값을 할당한다.
assign txd = uart_txd;

//done
//cnt_bit가 11인 경우에는 전송이 끝난 시점이기 때문에 done 신호를 1로 바꿔주었다. 여기서 cnt_bit가 11일때로만 두면 done 신호를 제대로 줄 수 없기 때문에
// clk_tx_en 신호가 1일때 done 신호를 1로 줄 수 있게 만들었다.
always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        done <= 1'b0;
    end
    else begin
        done <= (clk_tx_en == 1'b1 && cnt_bit == 4'd11) ? 1'b1 : 1'b0;
    end
end

//tx_done에 done 값을 할당한다.
assign tx_done = done;


endmodule