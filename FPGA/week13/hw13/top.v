`define FPGA
module top(
    input clk,
    input n_rst,
    input rxd,
    input push_read,
    output [6:0] fnd_30_out,
    output [6:0] fnd_74_out
);

// 포트 연결을 위한 변수 선언
wire [7:0] fnd_data;
wire wen;
wire ren;
wire [2:0] waddr;
wire [7:0] wdata;
wire [2:0] raddr;
wire [7:0] rdata;

// 입출력에 맞는 포트를 연결해줌, 
// waddr, wen, ren, wdata, raddr, rdata와 ram을 연결하여 값을 주고 받는다.
// rdata는 ram에서 controller로 이동하며 이외의 변수들은 controller에서 ram으로 전달된다.
Mem_Controller u_Mem_Controller(
    .clk(clk),
    .n_rst(n_rst),
    .rx_done(rx_done),
    .rx_data(rx_data),
    .push_sw(push_read),
    .waddr(waddr),
    .wen(wen),
    .ren(ren),
    .wdata(wdata),
    .raddr(raddr),
    .rdata(rdata),
    .fnd_data(fnd_data)
);

`ifdef FPGA
//// waddr, wen, ren, wdata, raddr, rdata와 controller를 연결하여 값을 주고 받는다.
ram_16x8 u_ram_16x8(
    .clk(clk),
    .waddr(waddr),
    .wen(wen),
    .wdata(wdata),
    .raddr(raddr),
    .rdata(rdata),
    .ren(ren)
);
`else

`endif
// controller에서 받아온 값을 이용해서 fnd 모듈에 각각 연결해준다. 
fnd u_fnd_1(
    .din(fnd_data[3:0]),
    .dout(fnd_30_out)
);
// controller에서 받아온 값을 이용해서 fnd 모듈에 각각 연결해준다. 
fnd u_fnd_2(
    .din(fnd_data[7:4]),
    .dout(fnd_74_out)
);

endmodule