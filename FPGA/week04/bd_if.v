module bd_if(
    clk,
    n_rst,
    bt_i,
    btstar_i,
    led_i,
    bt_o,
    btstar_o,
    led_o,
);

parameter  T_1S = 26'h2FA_F080;
parameter T_20MS = 20'hF_4240;

input clk;
input n_rst;
input [9:0] bt_i;
input btstar_i;
input led_i;
output [9:0] bt_o;
output btstar_o;
output led_o;

// debounc의 출력을 edgedetection과 연결하기 위해 wire로 변수 선언
wire [9:0] bt_w;

//debounc 1 case로 0번과 1번을 연결시킴, din으로 bt[1]을 넣어주고 선언했던 bt_w으로 내보냄
debounc_1 #(.T_20MS(T_20MS)) u_debounc1(
    .clk(clk),
    .n_rst(n_rst),
    .din(bt_i[0]),
    .dout(bt_w[0])
);

debounc_1 #(.T_20MS(T_20MS)) u_debounc2(
    .clk(clk),
    .n_rst(n_rst),
    .din(bt_i[1]),
    .dout(bt_w[1])
);

//debounc 2 case로 2번 스위치부터 5번 스위치까지 적용시킴
// 동일하게 입력과 출력을 연결시켜줌

debounc_2 #(.T_20MS(T_20MS)) u_debounc3(
    .clk(clk),
    .n_rst(n_rst),
    .din(bt_i[2]),
    .dout(bt_w[2])
);

debounc_2 #(.T_20MS(T_20MS)) u_debounc4(
    .clk(clk),
    .n_rst(n_rst),
    .din(bt_i[3]),
    .dout(bt_w[3])
);

debounc_2 #(.T_20MS(T_20MS)) u_debounc5(
    .clk(clk),
    .n_rst(n_rst),
    .din(bt_i[4]),
    .dout(bt_w[4])
);

debounc_2 #(.T_20MS(T_20MS)) u_debounc6(
    .clk(clk),
    .n_rst(n_rst),
    .din(bt_i[5]),
    .dout(bt_w[5])
);

// 6번부터 9번까지 스위치를 연결시킴 연결 방법은 다른 방법들과 동일하게 했음
debounc_3 #(.T_20MS(T_20MS)) u_debounc7(
    .clk(clk),
    .n_rst(n_rst),
    .din(bt_i[6]),
    .dout(bt_w[6])
);

debounc_3 #(.T_20MS(T_20MS)) u_debounc8(
    .clk(clk),
    .n_rst(n_rst),
    .din(bt_i[7]),
    .dout(bt_w[7])
);

debounc_3 #(.T_20MS(T_20MS)) u_debounc9(
    .clk(clk),
    .n_rst(n_rst),
    .din(bt_i[8]),
    .dout(bt_w[8])
);

debounc_3 #(.T_20MS(T_20MS)) u_debounc10(
    .clk(clk),
    .n_rst(n_rst),
    .din(bt_i[9]),
    .dout(bt_w[9])
);

// edge detection은 bt_w와 btstar_i를 입력으로 주고 출력 부분은 bt_o과 btstar_o으로 두었다.
edge_detection u_edge_detection(
    .clk(clk),
    .n_rst(n_rst),
    .bt(bt_w),
    .btstar(btstar_i),
    .bt_w(bt_o),
    .btstar_w(btstar_o)
);
// delay는 led_i의 입력을 받아서 led_o 출력을 받도록 연결을 시켜주었다.
delay #(.T_1S(T_1S)) u_delay(
    .clk(clk),
    .n_rst(n_rst),
    .led_i(led_i),
    .led_o(led_o)
);


endmodule
