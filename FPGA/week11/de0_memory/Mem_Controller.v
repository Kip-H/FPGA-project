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
     ren,
     rdata,
     fnd_data
);


parameter D_WIDTH = 8;
parameter A_WIDTH = 3;

input clk;
input n_rst;
input rx_done;
input [7:0] rx_data;
input push_sw;
output [A_WIDTH-1:0] waddr;
output ren;
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
// 
always @(posedge clk or negedge n_rst)
if(!n_rst)
    waddr <= {(A_WIDTH){1'b0}}; 
else    
    waddr <= (clear == 1'b1) ? {(A_WIDTH){1'b0}} : (rx_done == 1'b1) ? ((waddr == 3'h4) ? waddr : waddr + {{(A_WIDTH-1){1'b0}}, 1'b1}) : waddr;

// read address
always @(posedge clk or negedge n_rst)
if(!n_rst)
    raddr <= {(A_WIDTH){1'b0}};
else begin
    if(raddr < 3'h3) begin
        raddr <= (ren == 1'b1) ? raddr + {{(A_WIDTH){1'b0}},1'b1} : raddr;
    end
    else
        raddr <= (ren == 1'b1) ? {(A_WIDTH){1'b0}} : raddr;
end
// clear signal
always @(posedge clk or negedge n_rst)
if(!n_rst)
    clear <= 1'b0;
else begin
    clear <= (push_sw == 1'b1 && raddr == 3'h3) ? 1'b1 : 1'b0;
end

// wen signal
always @(posedge clk or negedge n_rst)
if(!n_rst)
    wen <= 1'b0;
else
    wen <= rx_done;

// ren signal
always @(posedge clk or negedge n_rst)
if(!n_rst)
    ren <= 1'b0;
else
    ren <= push_sw;

// wdata
always @(posedge clk or negedge n_rst)
if(!n_rst)
    wdata <= {(D_WIDTH){1'b0}};
else
    wdata <= rx_data;

// fnd_data
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