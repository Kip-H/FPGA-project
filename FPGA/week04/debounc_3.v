module debounc_3(
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
reg[19:0] cnt;
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
    // restart signal이 한번만 떠도 cnt가 바뀌게 되서 카운트를 시작하게 된다. 
    // 이 시점부터 카운트를 시작하여 cnt가 0이 될때 din값을 dout으로 보내준다. 
   cnt <= (cnt_restart == 1'b1 && cnt == 20'h0_0000) ? T_20MS : (cnt > 20'h0_0000) ? cnt - 20'h0_0001 : cnt; 
end

always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    dout_rdy <= 1'b0;
end
else begin
    // 버튼을 손에서 뗄 때 restart signal이 확인되면 다시 카운트를 시작하며
    // cnt가 0이 될때까지 값을 유지시켜주고 cnt가 0이 될 때 din값을 dout에 넣어준다.
    dout_rdy <= (cnt == 20'h0_0000) ? din : dout_rdy; 
end

assign dout = dout_rdy;
endmodule
