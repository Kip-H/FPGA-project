`timescale 1ns/10ps
`define T_CLK 10

module tb_doorlock_fake;
reg clk;
reg n_rst;

initial begin
    clk = 1'b1;
    n_rst = 1'b0;
    // clock의 상승 edge에서는 값을 집어넣으면 안되기 떄문에 리셋의 값을 임의로 차이를 두어 낸다.
    #(`T_CLK*2.2) n_rst = 1'b1;
end
always #(`T_CLK/2) clk = ~clk;

reg [9:0] bt;
reg btstar;
wire led;
integer i;
integer cnt_led;
integer cnt_open;

initial cnt_led = 0;

always @(negedge clk)
    if(led == 1'b1)
        cnt_led = cnt_led + 1;

initial begin
    bt = 10'h000;
    btstar = 1'b0;
    cnt_open = 0;
    i = 1;
    wait(n_rst == 1'b1);

    #(`T_CLK*1) bt[1] = 1'b1;
    #(`T_CLK*1) bt[1] = 1'b0;
    #(`T_CLK*1) bt[2] = 1'b1;
    #(`T_CLK*1) bt[2] = 1'b0;
    #(`T_CLK*1) bt[7] = 1'b1;
    #(`T_CLK*1) bt[7] = 1'b0;
    #(`T_CLK*1) btstar = 1'b1;
    #(`T_CLK*1) btstar = 1'b0;
    i = 1;
    while(i>0) begin
        if (led == 1'b1) i = 0;
        else i = i + 1;
        #(`T_CLK)
        if(i == 5) $display("$t: error", $time);
    end
    cnt_open = cnt_open + 1;

    #(`T_CLK*5) bt[1] = 1'b1;
    #(`T_CLK*1) bt[1] = 1'b0;
    #(`T_CLK*1) btstar = 1'b1;
    #(`T_CLK*1) btstar = 1'b0; // not open, 1 * 인 경우


    #(`T_CLK*5) bt[1] = 1'b1;
    #(`T_CLK*1) bt[1] = 1'b0;
    #(`T_CLK*1) bt[2] = 1'b1;
    #(`T_CLK*1) bt[2] = 1'b0;
    #(`T_CLK*1) btstar = 1'b1;
    #(`T_CLK*1) btstar = 1'b0; // not open, 1 2 * 인 경우
    
    #(`T_CLK*5) bt[1] = 1'b1;
    #(`T_CLK*1) bt[1] = 1'b0;
    #(`T_CLK*1) bt[7] = 1'b1;
    #(`T_CLK*1) bt[7] = 1'b0;
    #(`T_CLK*1) btstar = 1'b1;
    #(`T_CLK*1) btstar = 1'b0; // not open, 1 7 * 인 경우

    #(`T_CLK*5) bt[1] = 1'b1;
    #(`T_CLK*1) bt[1] = 1'b0;
    #(`T_CLK*1) bt[2] = 1'b1;
    #(`T_CLK*1) bt[2] = 1'b0;
    #(`T_CLK*1) bt[7] = 1'b1;
    #(`T_CLK*1) bt[7] = 1'b0;
    #(`T_CLK*1) bt[4] = 1'b1;
    #(`T_CLK*1) bt[4] = 1'b0;
    #(`T_CLK*1) btstar = 1'b1;
    #(`T_CLK*1) btstar = 1'b0; // not open, 1 2 7 4 * 인 경우

    #(`T_CLK*5) bt[1] = 1'b1;
    #(`T_CLK*1) bt[1] = 1'b0;
    #(`T_CLK*1) bt[2] = 1'b1;
    #(`T_CLK*1) bt[2] = 1'b0;
    #(`T_CLK*1) bt[7] = 1'b1;
    #(`T_CLK*1) bt[7] = 1'b0;
    #(`T_CLK*1) bt[5] = 1'b1;
    #(`T_CLK*1) bt[5] = 1'b0;
    #(`T_CLK*1) bt[7] = 1'b1;
    #(`T_CLK*1) bt[7] = 1'b0;
    #(`T_CLK*1) btstar = 1'b1;
    #(`T_CLK*1) btstar = 1'b0; // open case
    i = 1;
    while(i>0) begin
        if (led == 1'b1) i = 0;
        else i = i + 1;
        #(`T_CLK)
        if(i == 5) $display("$t: error", $time);
    end
    cnt_open = cnt_open + 1;

    #(`T_CLK*5) bt[1] = 1'b1;
    #(`T_CLK*1) bt[1] = 1'b0;
    #(`T_CLK*1) bt[2] = 1'b1;
    #(`T_CLK*1) bt[2] = 1'b0;
    #(`T_CLK*1) bt[9] = 1'b1;
    #(`T_CLK*1) bt[9] = 1'b0;
    #(`T_CLK*1) bt[7] = 1'b1;
    #(`T_CLK*1) bt[7] = 1'b0;
    #(`T_CLK*1) bt[7] = 1'b1;
    #(`T_CLK*1) bt[7] = 1'b0;
    #(`T_CLK*1) btstar = 1'b1;
    #(`T_CLK*1) btstar = 1'b0; // open case
    i = 1;
    while(i>0) begin
        if (led == 1'b1) i = 0;
        else i = i + 1;
        #(`T_CLK)
        if(i == 5) $display("$t: error", $time);
    end
    cnt_open = cnt_open + 1;    
    
    $display("Open : %d", cnt_open);
    if(cnt_led > cnt_open) begin
        $display("$t : error",$time);
        $display("LED : %d", cnt_led);
    end

    $stop;
end

doorlock_fake u_doorlock_fake(
    .clk(clk),
    .n_rst(n_rst),
    .bt(bt),
    .btstar(btstar),
    .led(led)
);
endmodule
