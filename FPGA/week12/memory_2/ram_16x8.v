module ram_16x8(
clk,
waddr,
wen,
wdata,
raddr,
rdata,
ren
);

// 입출력 선언 및 parameter 선언
parameter D_WIDTH = 8;
parameter A_WIDTH = 3;
input clk;
input [A_WIDTH-1:0] waddr;
input wen;
input ren;
input [D_WIDTH-1:0] wdata;
input [A_WIDTH-1:0] raddr;
output [D_WIDTH-1:0] rdata;
reg [D_WIDTH-1:0] rdata;
reg [D_WIDTH-1:0] ram[2**A_WIDTH-1:0];

always @ (posedge clk)begin
    // wen 신호가 1일때 wdata 값을 저장한다.
    if (wen == 1'b1) begin
        ram[waddr] <= wdata;
    end
    // 메모리에서 raddr일때 값을 rdata로 내보낸다.
    rdata <= ram[raddr];
    end
endmodule