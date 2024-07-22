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

// 而⑦듃濡ㅻ윭꾩슂낆텧蹂섎 좎뼵
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
// clear 좏샇媛 1쇰븣 珥덇린뷀븯怨wen1대㈃ 媛믪쓣 利앷쒗궎붾뜲 4蹂대떎 묒쓣뚮뒗 媛믪쓣 1 利앷쒗궎怨 4댁긽대씪硫媛믪쓣 좎섍퀬 湲곕떎由곕떎.
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
// ren 좏샇媛 1대㈃ raddr1 利앷쒗궓 ren1쇰븣 raddr3대씪硫媛믪쓣 珥덇린붿떆ㅺ퀬, 3蹂대떎 묒쑝硫媛믪쓣 1 利앷쒗궓 ren0쇰븣媛믪쓣 좎쒕떎.
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
// raddr3곹깭먯꽌 ㅼ쐞移섍 뚮━硫clear 좏샇瑜1濡붾떎. 3먯꽌 0쇰줈 媛clear
always @(posedge clk or negedge n_rst)
if(!n_rst)
    clear <= 1'b0;
else begin
    clear <= (push_sw == 1'b1 && raddr == 3'h3) ? 1'b1 : 1'b0;
end

// wen signal
// waddr4쇰㈃ write瑜섏 딄린 꾨Ц媛믪쓣 0쇰줈 먭퀬 댁쇅곹솴먯꽌rx_done 媛믪쓣 媛뽯룄濡덈떎.
// rx_done1대㈃ wen1, 0대㈃ 0
always @(posedge clk or negedge n_rst)
if(!n_rst)
    wen <= 1'b0;
else
    wen <= (waddr == 3'h4) ? 1'b0 : rx_done;

// ren signal
// renpush_sw뚮━硫媛믪쓣 1濡붾떎. 
always @(posedge clk or negedge n_rst)
if(!n_rst)
    ren <= 1'b0;
else
    ren <= push_sw;

// wdata
// 쎌쓣 媛믪쓣 섎섎濡rx_data 媛믪쓣 媛뽯룄濡쒕떎.
always @(posedge clk or negedge n_rst)
if(!n_rst)
    wdata <= {(D_WIDTH){1'b0}};
else
    wdata <= rx_data;

// fnd_data
// fnd곗씠곕 꾩슦湲꾪븳 蹂
// 쎌 곗씠곕 꾩썙쇳븯湲뚮Цren 좏샇媛 1쇰븣 rdata瑜諛쏆븘⑤떎.
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