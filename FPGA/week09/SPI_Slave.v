module spi_slave(
    input sclk,
    input [7:0] data,
    input n_rst,
    input cs_n,
    output sdata);

reg [7:0] buffer;
reg [4:0] cnt; 
reg data_reg;

// counter 설정
// chip select signal이 0이 되면 카운터가 작동하도록 했다. 만일 cnt가 16에 해당하는 값을 갖게 되면 cnt를 0으로 설정하고, 그게 아니라면 계속 값을 유지한다.
always @(negedge sclk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 5'h00;
    end
    else
        cnt <= (cs_n == 1'b0) ? cnt + 5'h01 : (cnt == 5'h10) ? 5'h00 : cnt;
end

// 언제 데이터를 넣어줄 것인가
// 데이터는 chip select signal이 0이 되면 값을 넣어주었다. 이때 cnt가 0일때도 조건을 준 이유는 cnt가 작동하는 와중에도 chip select signal은 계속 0을 유지하고 있기 때문에 data 값을 shift하여 저장하고 싶음에도 계속 초기 data로 갱신되는 문제가 있었기 때문에 조건을 주었다.
// 만일 cnt가 3보다 작다면 buffer의 값을 유지했다. 먼저 0이 3개 오는 단계, data가 8bit 오는 단계, 0이 4개 오는 단계로 나눠지는데 초기에는 buffer를 shift 해줄 이유가 없기 때문에 그대로 값을 유지했다. 
always @(negedge sclk or negedge n_rst) begin
    if(!n_rst) begin
        buffer <= 8'h00;
    end
    else begin
        buffer <= (cs_n == 1'b0 && cnt == 5'h00) ? data : (cnt <= 5'h03) ? buffer : {buffer[6:0], 1'b0};  
    end
end

// data_reg
// chip select signal이 감지되면 바로 값이 변하도록 설계하고 싶었기 때문에 플립플롭을 사용하지 않았다. 먼저 chip select signal에 따라 상태를 나눴다.
// chip select signal가 0이 되자마자 data_reg는 0을 갖고 있어야 하므로 cnt가 0부터 3까지 data_reg가 0을 유지할 수 있도록 했다.

// 이후에 데이터 8bit가 들어와야 하는 상황에서는 MSB에 해당하는 buffer[7]를 넣어준다. 이 buffer는 카운터 상태에 따라 shift가 되므로 1bit씩 값을 전달받을 수 있게 된다.

// 데이터를 다 전달하고 나면 다시 0을 4개 보내주도록 설정하기 위해 cnt의 범위를 cnt >= 5'h0c && cnt <= 5'h0f 로 설정해주었다.

// 이외의 구간에는 임피던스 상태를 주면 되기 때문에 1'bz로 설정해주었다.

always @(*) begin
    if(cs_n == 1'b0) begin
            if(cnt >= 5'h00 && cnt <= 5'h03) begin
                data_reg = 1'b0;
            end
            else if(cnt > 5'h03 && cnt < 5'h0c) begin
                data_reg = buffer[7];
            end 
            else if(cnt >= 5'h0c && cnt <= 5'h0f) begin
                data_reg = 1'b0;
            end
            else if(cnt > 5'h0f) begin
                data_reg = 1'bz;
            end
    end
    else
        data_reg = 1'bz;
    end

// data_reg의 값을 sdata에 넣어주었다.

assign sdata = data_reg;
endmodule