module debounc_2(
    clk,
    n_rst,
    din,
    dout
);

parameter T_20MS = 20'h0_1000;

input clk;
input n_rst;
input din;
output dout;
reg [19:0] cnt;
wire cnt_restart;
reg dout_rdy;
reg din_d1;


always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        din_d1 <= 1'b0;
    end
    else begin 
        din_d1 <= din;
    end
assign cnt_restart = (din != din_d1) ? 1'b1 : 1'b0;
// 신호가 바운싱되고 있는지 확인하기 위한 방식은 debounc 1과 동일하다. 

always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    cnt <= 20'h0_0000;
end
else begin
    cnt <= (cnt_restart == 1'b1 && cnt == 20'h0_0000) ? T_20MS : (cnt > 20'h0_0000) ? cnt - 20'h0_0001 : cnt;
end
// restart 신호와 cnt 신호를 이용해서 디바운스 방법을 설정했다.
// restart 신호가 1이고 cnt가 0이라면 카운트를 시작하고(1씩 빼주면서) 그 시간동안 입력을 유지시켜준다. 

always @(posedge clk or negedge n_rst)
if(!n_rst) begin 
    dout_rdy <= 1'b0;
end
else begin
    dout_rdy <= (cnt_restart == 1'b1 && cnt == 20'h0_0000) ? din : dout_rdy;
end
// 버튼을 손에서 떼는 상황에서 restart signal이 다시 확인되면 그 시점의 카운트를 시작하여 din값을 유지시켜준다.
// 버튼을 누른 뒤 일정시간 값을 유지시켜주고 버튼을 뗄 때도 신호가 바운싱 되는 동안 dout을 일정시간만큼 유지시켜준다.
assign dout = dout_rdy;
endmodule