module spi_master_adc(
    input clk,
    input n_rst,
    input n_start,
    input sdata,
    output reg sclk,
    output reg cs_n,
    output [7:0] led
);
reg [7:0] data_buffer;
reg sclk_rise;
reg [4:0] cnt;
reg [4:0] cnt_sclk;
reg n_start_0d1;
reg n_start_0d2;
reg w_n_start;

wire done;

// 아래 두 플립플롭은 start 신호에 대한 edge detection을 수행하는 코드이다.
// 신호를 지연시켜주어 두 신호의 값이 (n_start_0d1 == 1'b0) && (n_start_0d2 == 1'b1) 에 해당하면 w_n_start를 0으로 두어 
// cs_n을 작동할 signal을 만들어준다.

always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        n_start_0d1 <= 1'b1;
        n_start_0d2 <= 1'b1;
    end
    else begin
        n_start_0d1 <= n_start;
        n_start_0d2 <= n_start_0d1;
    end

always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        w_n_start <= 1'b1;
    end
    else begin
        w_n_start <= ((n_start_0d1 == 1'b0) && (n_start_0d2 == 1'b1)) ? 1'b0 : 1'b1;
    end
	 
// cs_n 신호는 start 신호가 들어올 때 나타나도록 설정한다. 이때 들어오는 start 신호는 edge detection이 된 신호여야 한다.
// start 신호가 들어오면 cs_n 신호를 0으로 둔다 만일 cnt_sclk의 값이 16이라면 data 전달을 마친 상태이기 때문에 다시 cs_n을 1로 설정해준다.
always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    cs_n <= 1'b1;
end
else begin
    cs_n <= (w_n_start == 1'b0) ? 1'b0 : (cnt_sclk == 5'h10) ? 1'b1 : cs_n;
end

// cnt 만들기
// cs_n이 low인 상황에서 작동하도록 설계했다.
// 25보다 작으면 카운트를 계속 해주고 26이 되는 순간 cnt를 0으로 만들어준다. 이외의 상황은 cnt 값을 유지해준다
always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    cnt <= 5'h0;
end
else begin
    cnt <= (cs_n == 1'b1) ? 5'h00 : (cnt <= 5'h19) ? cnt + 5'h01 : (cnt == 5'h1a) ? 5'h00 : cnt;  
end

// sclk의 high low 만들기
// 앞서 만든 cnt를 이용하여 sclk를 만들어준다. 0부터 12까지는 1을 유지해주고, 13부터 25까지는 0을 유지해준다.
always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    sclk <= 1'b1;
end
else begin
        if(cnt >= 5'h00 && cnt <= 5'h0b) begin
            sclk <= 1'b1;
        end
        else if(cnt >= 5'h0c && cnt <= 5'h19) begin
            sclk <= 1'b0;
        end
        else 
            sclk <= sclk;
end

// sclk_rise 만들기
// cnt가 25인 지점에서 sclk가 posedge임을 나타내 주기 위한 신호를 만들었다.
// 25이면 1의 값을 갖고 1이 아닌 상황에서는 0을 주었다.
always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    sclk_rise <= 1'b0;
end
else begin
    if(cnt == 5'h19) begin
        sclk_rise <= 1'b1;
    end
    else
        sclk_rise <= 1'b0;
end


// cnt_sclk counter
// sclk_rise가 1인 순간에만 15까지(0 3개 + data 8개 + 0 4개) 값을 1 증가시키도록 한다.
// 만일 값이 16이 되면 cnt_sclk 값을 0으로 둔다.
always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    cnt_sclk <= 5'h00;
end
else begin
    if(sclk_rise == 1'b1 && cnt_sclk <= 5'hf) begin
        cnt_sclk <= cnt_sclk + 5'h01;
    end
    else if(cnt_sclk == 5'h10) begin
        cnt_sclk <= 5'h00;
    end
    else
        cnt_sclk <= cnt_sclk;
end

// data_buffer에 값 넣기
// sclk가 posedge에서 동작하는 것처럼 설계하기 위해서 sclk_rise 신호를 이용했다.
// cnt_sclk는 data의 전송 상태를 정해주기 위해 만든 카운터 이므로 해당 값을 이용하여 0부터 10 사이에서는 값을 시프트 해주면서 넣어주고 그 이후의 값이 오면 값을 유지해준다.  
always @(posedge clk or negedge n_rst)
if(!n_rst)begin
    data_buffer <= 8'h00;
end
else begin
    data_buffer <= (sclk_rise == 1'b1) ? (cnt_sclk >= 5'h03 && cnt_sclk <= 5'h0a) ? {data_buffer[6:0], sdata} : data_buffer : data_buffer; 
end

// data_buffer에 led 값을 넣어준다.
assign led = data_buffer;
assign done = (cnt_sclk == 5'h10) ? 1'b1 : 1'b0;
endmodule