module Mem_Controller(
     clk,
     n_rst,
     rx_done,
     rx_data,
     push_sw,
     waddr,
     wen,
     wdata,
     raddr,
     rdata,
     fnd_data
);


parameter D_WIDTH = 8;
parameter A_WIDTH = 3;

// 컨트롤러에 필요한 입출력 변수를 선언함.
input clk;
input n_rst;
input rx_done;
input [7:0] rx_data;
input push_sw;
output [A_WIDTH-1:0] waddr;
output wen;
output [D_WIDTH-1:0] wdata;
output [A_WIDTH-1:0] raddr;
input  [D_WIDTH-1:0] rdata;
output [D_WIDTH-1:0] fnd_data;

reg clear;
reg [D_WIDTH-1:0] wdata;
reg [A_WIDTH-1:0] raddr;
reg [A_WIDTH-1:0] waddr;
reg [D_WIDTH-1:0] fnd_data;
reg wen;
reg ren;

// write address
// clear 신호가 1일때 초기화하고 wen이 1이면 값을 증가시키는데 4보다 작을때는 값을 1 증가시키고, 4이상이라면 값을 유지하고 기다린다.

always @(posedge clk or negedge n_rst)
if(!n_rst)
    waddr <= {(A_WIDTH){1'b0}}; 
else begin
    if(clear == 1'b1)
        waddr <= {(A_WIDTH){1'b0}};
    else if(wen == 1'b1)
        waddr <= (waddr < 3'h4) ? waddr + {{(A_WIDTH-1){1'b0}}, 1'b1} : waddr;
end

// read address
// ren 신호가 1이면 raddr을 1 증가시킨다. ren이 1일때 raddr이 3이라면 값을 초기화시키고, 3보다 작으면 값을 1 증가시킨다. ren이 0일때는 값을 유지한다.

always @(posedge clk or negedge n_rst)
if(!n_rst)
    raddr <= {(A_WIDTH){1'b0}};
else begin
    if(raddr < 3'h3) begin
        raddr <= (ren == 1'b1) ? raddr + {{(A_WIDTH-1){1'b0}},1'b1} : raddr;
    end
    else
        raddr <= (ren == 1'b1) ? {(A_WIDTH){1'b0}} : raddr;
end

// clear signal
// raddr이 3인 상태에서 스위치가 눌리면 clear 신호를 1로 둔다. 3에서 0으로 갈 때 clear
always @(posedge clk or negedge n_rst)
if(!n_rst)
    clear <= 1'b0;
else begin
    clear <= (push_sw == 1'b1 && raddr == 3'h3) ? 1'b1 : 1'b0;
end

// wen signal
// waddr이 4라면 write를 하지 않기 떄문에 값을 0으로 두고 이외의 상황에서는 rx_done 값을 갖도록 했다.
// rx_done이 1이면 wen이 1, 0이면 0
always @(posedge clk or negedge n_rst)
if(!n_rst)
    wen <= 1'b0;
else
    wen <= (waddr == 3'h4) ? 1'b0 : rx_done;

// ren signal
// ren이 push_sw이 눌리면 값을 1로 둔다. 
always @(posedge clk or negedge n_rst)
if(!n_rst)
    ren <= 1'b0;
else
    ren <= push_sw;

// wdata
// 읽을 값을 의미하므로 rx_data 값을 갖도록 한다.
always @(posedge clk or negedge n_rst)
if(!n_rst)
    wdata <= {(D_WIDTH){1'b0}};
else
    wdata <= rx_data;

// fnd_data
// fnd에 데이터를 띄우기 위한 변수
// 읽은 데이터를 띄워야하기 때문에 ren 신호가 1일때 rdata를 받아온다.
always @(posedge clk or negedge n_rst)
if(!n_rst)
    fnd_data <=  {(D_WIDTH){1'b0}};
else begin
    if(ren == 1'b1)
        fnd_data <= rdata;
    else
        fnd_data <= fnd_data;
end

endmodule