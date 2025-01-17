module byte2ascill(
    input clk,
    input n_rst,
    input day_done, 
    input tx_done, 
    output done,
    output reg[7:0] data_out
);

parameter IDLE = 4'h0;
parameter S1 = 4'h1;
parameter W1 = 4'h2;
parameter S2 = 4'h3;
parameter W2 = 4'h4;
parameter S3 = 4'h5;
parameter W3 = 4'h6;
parameter S4 = 4'h7;
parameter W4 = 4'h8;

reg [3:0] c_state, n_state;
reg uart_start;

always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    c_state <= IDLE;
end
else begin
    c_state <= n_state;
end


always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    data_out <= 8'h00;
end
else begin
    if(c_state == S1)
        data_out <= 8'h44;
    else if(c_state == S2)
        data_out <= 8'h6F; 
    else if(c_state == S3)
        data_out <= 8'h6E;
    else if(c_state == S4)
        data_out <= 8'h65; 
    else
        data_out <= data_out;  
end

always @(*)
    case(c_state)
        IDLE : begin
          n_state = (day_done == 1'b1) ? S1 : c_state;
        end
        // 상위 4bit
        S1 : begin
          n_state = (uart_start == 1'b1) ? W1 : c_state;
        end
        
        W1 : begin
          n_state = (tx_done == 1'b1) ? S2 : c_state;
        end

        S2 : begin
          n_state = (uart_start == 1'b1) ? W2 : c_state;
        end
        
        W2 : begin
          n_state = (tx_done == 1'b1) ? S3 : c_state;
        end

        // n값
        S3 : begin
          n_state = (uart_start == 1'b1) ? W3 : c_state;
        end

        W3 : begin
          n_state = (tx_done == 1'b1) ? S4 : c_state;
        end

        S4 : begin
          n_state = (uart_start == 1'b1) ? W4 : c_state;
        end
      
        W4: begin
          n_state = (tx_done == 1'b1) ? IDLE : c_state;
        end

        default : begin
          n_state = IDLE;
        end
    endcase

always @(*) begin
    if(c_state == S1 || c_state == S2 || c_state == S3 || c_state == S4)
        uart_start = 1'b1;
    else
        uart_start = 1'b0;
end

assign done = uart_start;

endmodule