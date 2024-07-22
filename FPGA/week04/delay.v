module delay(
    input clk,
    input n_rst,
    input led_i,
    output led_o);

reg [25:0] cnt;
parameter T_1S = 26'h2FA_F080;

always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 26'h000_0000;
    end
    else begin
        cnt <= (led_i == 1'b1) ? T_1S :
                (cnt != 26'h000_0000) ? cnt - 26'h000_0001 :
                (cnt == 26'h000_0000) ? 26'h0 : cnt;
        end
    end

assign led_o = (cnt != 26'h0_0000) ? 1'b1 : 1'b0;
endmodule
