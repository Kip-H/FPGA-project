module doorlock(
    clk,
    n_rst,
 
    bt,
    btstar,

    //fnd_en,
    led
);

input clk;
input n_rst;

input[9:0]  bt;
input       btstar;

//output [6:0]    fnd_en;
output          led;

parameter S_IDLE  = 3'h0;
parameter S_FIRST = 3'h1;
parameter S_RAND  = 3'h2;
parameter S_LAST  = 3'h3;
parameter S_OPEN  = 3'h4;

wire bt_any;
wire bt_n7, bt_n2;
reg [2:0] c_state, n_state;

assign bt_any = (bt == 10'h000)? 1'b0 : 1'b1;
assign bt_n7 = ((bt_any == 1'b1) && (bt[7] == 1'b0))? 1'b1 : 1'b0;
assign bt_n2 = ((bt_any == 1'b1) && (bt[2] == 1'b0))? 1'b1 : 1'b0;

always @(c_state or bt or btstar or bt_n7 or bt_n2)
    case (c_state)
        S_IDLE  : begin
            n_state = (bt[1] == 1'b1)? S_FIRST : c_state;
        end
        S_FIRST : begin 
            n_state = (bt[2] == 1'b1)? S_RAND :
                      ((btstar == 1'b1) || (bt_n2 == 1'b1))? S_IDLE : c_state;
        end
        S_RAND  : begin 
            n_state = (bt[7] == 1'b1)? S_LAST :
                      (btstar == 1'b1)? S_IDLE : c_state;
        end
        S_LAST  : begin 
            n_state = (btstar == 1'b1)? S_OPEN :
                      (bt_n7 == 1'b1)? S_RAND : c_state;
        end
        S_OPEN  : begin 
            n_state = S_IDLE;
        end
        default : begin 
            n_state = S_IDLE;
        end
    endcase

always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        c_state <= S_IDLE;
    end
    else begin
        c_state <= n_state;
    end

assign led = (c_state == S_OPEN)? 1'b1 : 1'b0;

/*
reg [3:0] bt_dec;
always @(bt)
    case(bt)
        10'b00_0000_0001 : bt_dec = 4'h0;
        10'b00_0000_0010 : bt_dec = 4'h1;
        10'b00_0000_0100 : bt_dec = 4'h2;
        10'b00_0000_1000 : bt_dec = 4'h3;
        10'b00_0001_0000 : bt_dec = 4'h4;
        10'b00_0010_0000 : bt_dec = 4'h5;
        10'b00_0100_0000 : bt_dec = 4'h6;
        10'b00_1000_0000 : bt_dec = 4'h7;
        10'b01_0000_0000 : bt_dec = 4'h8;
        10'b10_0000_0000 : bt_dec = 4'h9;
        default : bt_dec = 4'hf;
    endcase

fnd u_fnd(
    .din(bt_dec),
    .dout(fnd_en)
);
*/
endmodule
