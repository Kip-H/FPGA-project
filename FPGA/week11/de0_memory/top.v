module top(
    input clk,
    input n_rst,
    input [7:0] rx_data,
    input rx_done,
    input push_read,
    output [6:0] fnd_30_out,
    output [6:0] fnd_74_out
);

wire [7:0] fnd_data;
wire wen;
wire ren;

wire [2:0] waddr;
wire [7:0] wdata;
wire [2:0] raddr;
wire [7:0] rdata;


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

ram_16x8 u_ram_16x8(
    .clk(clk),
    .waddr(waddr),
    .wen(wen),
    .wdata(wdata),
    .raddr(raddr),
    .rdata(rdata),
    .ren(ren)
);

fnd u_fnd_1(
    .din(fnd_data[3:0]),
    .dout(fnd_30_out)
);

fnd u_fnd_2(
    .din(fnd_data[7:4]),
    .dout(fnd_74_out)
);

endmodule