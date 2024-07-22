`define SIM

module uart_rx(
   input rxd,
   input clk,
   input n_rst,
   input baudrate,
   output [6:0]fnd_1,
   output [6:0]fnd_2,
   output rx_done
);

`ifdef SIM
parameter T_DIV_BIT    = 4;   //  2-bit
parameter T_DIV_0      = 4'd15; // 0-15 : 16 // 50 MHz clock -> 9,600 rate
parameter T_DIV_HALF_0 = 4'd7;  // 0- 7 : 8
parameter T_DIV_1      = 4'd7;  // 0- 7 : 8  // 50 MHz clock -> 9,600 rate
parameter T_DIV_HALF_1 = 4'd3;  // 0- 3 : 4
`else
// 50 MHz clock -> (1/(d5208)) -> 9,600 rate
parameter T_DIV_BIT    = 13;   // 5207 : 13-bit
parameter T_DIV_0      = 13'd5207; // 0-5207 : 5208  // 50 MHz clock ->  9,600 rate
parameter T_DIV_HALF_0 = 13'd2603; // 5208/2 = 2604  // 50 MHz clock ->  9,600 rate
parameter T_DIV_1      = 13'd5207; // 0-2603 : 2604  // 50 MHz clock -> 19,200 rate
parameter T_DIV_HALF_1 = 13'd1301; // 2604/2 = 1302  // 50 MHz clock -> 19,200 rate
`endif


wire [10:0]shift_rxd;
reg [7:0]out_data;

reg         rx_en;
reg [9:0]   rx_data;

reg [T_DIV_BIT-1:0] cnt_rx_div; //RX신호의 카운터 크기를 baudrate에 맞춰 설정한다.
wire [T_DIV_BIT-1:0] t_div; // (50M/9.6k)
wire [T_DIV_BIT-1:0] t_div_half; // (50M/9.6k)
wire clk_rx_en;

assign t_div = (baudrate == 1'b1)? T_DIV_1 : T_DIV_0;
assign t_div_half = (baudrate == 1'b1)? T_DIV_HALF_1 : T_DIV_HALF_0;
assign clk_rx_en = (cnt_rx_div == t_div_half)? 1'b1 : 1'b0; //카운터의 반주기로 clk_rx_en 신호를 띄운다.

reg [3:0] cnt_rx_bit;
reg rxin_d1;
reg rxin_d2;
reg rxin_d3;

assign shift_rxd = {rxin_d3,rx_data};
assign start = (rxin_d3 == 1'b0 && cnt_rx_bit == 0)? 1'b1:1'b0;

always@(posedge clk or negedge n_rst)
begin
   if(!n_rst)
   begin
      rxin_d1 <= 1'b1;
      rxin_d2 <= 1'b1;
      rxin_d3 <= 1'b1;
   end
   else
   begin
      rxin_d1 <= rxd;
      rxin_d2 <= rxin_d1;
      rxin_d3 <= rxin_d2;
   end 
end 

always @(posedge clk or negedge n_rst) //UART RX동작을 시작한다는 신호
   if(!n_rst) begin
      rx_en <= 1'b0;
   end
   else begin
      rx_en <= (start == 1'b1)? 1'b1 :
             (clk_rx_en == 1'b1 && cnt_rx_bit == 4'hb)? 1'b0 : rx_en;
   end

always @(posedge clk or negedge n_rst) //baudrate에 맞춰 rx_en이 뜨면 카운터를 세주는 코드
   if(!n_rst) begin
      cnt_rx_div <= {(T_DIV_BIT){1'b0}};
   end
   else begin
      if (rx_en == 1'b1) begin
         cnt_rx_div <= (cnt_rx_div == t_div)? {(T_DIV_BIT){1'b0}} : 
                  cnt_rx_div + {{(T_DIV_BIT-1){1'b0}},1'b1};
      end
      else begin
         cnt_rx_div <= {(T_DIV_BIT){1'b0}};
      end
   end

always @(posedge clk or negedge n_rst) // clk_rx_en가 1이 될때 마다 카운터를 세준다.
   if(!n_rst) begin
      cnt_rx_bit <= 4'd0;
   end
   else begin
      if (start == 1'b1) 
         cnt_rx_bit <= 4'h1;
      else if (clk_rx_en == 1'b1) 
            cnt_rx_bit <= cnt_rx_bit + 4'd1;
      else if (cnt_rx_bit >= 4'hc)begin
         cnt_rx_bit <= 4'd0;
      end

   end

always @(posedge clk or negedge n_rst) //TX에서 보내준 데이터를 shift하여 data값을 저장한다.
   if(!n_rst) begin
      rx_data <= 10'h000;
   end
   else begin
      if (rx_en == 1'b1) begin
         if (clk_rx_en == 1'b1) begin 
            if (cnt_rx_bit == 4'h0)
               rx_data <= {rxin_d3,9'b0}; 
            else
               rx_data <= shift_rxd[10:1];
         end
      end
      else begin
         rx_data <= 10'h3FF;
      end
   end

always@(posedge clk or negedge n_rst) //데이터가 다 받아지면 out_data값을 플립플랍을 이용하여 저장한다.
begin
   if(!n_rst)begin
      out_data <= 8'h0;
   end
   else
   begin
      if(cnt_rx_bit == 4'hc)
      begin
         out_data <= rx_data[7:0];
      end
      else
         out_data <= out_data;
   end
end
assign rx_done = (cnt_rx_bit == 4'hc)? 1'b1 : 1'b0; //데이터 값이 다 받아지면 카운터에 맞게 rx_done 신호를 띄운다.

fnd u_fnd1(                  //보드에 나타내기 위해 최종 결과를 fnd로 저장
   .din(out_data[3:0]),
   .dout(fnd_1)
);
fnd u_fnd2(
   .din(out_data[7:4]),
   .dout(fnd_2)
);



endmodule