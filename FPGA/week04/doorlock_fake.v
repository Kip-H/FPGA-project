module doorlock(
clk,
n_rst,
bt,
btstar,
led
);
input clk;
input n_rst;
input [9:0] bt;
input btstar;
output led;

parameter S_IDLE = 3'h0;
parameter S_FIRST = 3'h1;
parameter S_SEC = 3'h2;
parameter S_THIRD = 3'h3;
parameter S_LAST = 3'h4;
wire bt_any;
//wire bt_n7, bt_n2;
reg [2:0] c_state, n_state;

always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    c_state <= S_IDLE;
end
else begin
    c_state <= n_state;
end

assign bt_any = (bt == 10'h000) ? 1'b0 : 1'b1;

always @(c_state or bt or btstar or bt_any)
    case (c_state)
        S_IDLE : begin
        n_state = (bt[1] == 1'b1) ? S_FIRST : c_state;
    end
        S_FIRST : begin 
        n_state = (bt[2] == 1'b1) ? S_SEC :
        ((btstar == 1'b1) || (bt_any == 1'b1)) ? S_IDLE : c_state;
    end
        S_SEC : begin
        n_state = (bt[7] == 1'b1) ? S_THIRD :
        ((btstar == 1'b1)) ? S_IDLE : (bt_any == 1'b1) ? c_state : c_state;
        end
        
        S_THIRD : begin
        n_state = (btstar == 1'b1) ? S_LAST : (bt[7] == 1'b1) ? c_state : (bt_any == 1'b1) ? S_SEC : c_state;
        end
        
        S_LAST : begin 
        n_state = S_IDLE;
        end

        default : begin 
        n_state = S_IDLE;
        end

    endcase

assign led = (c_state == S_LAST)? 1'b1 : 1'b0;

endmodule