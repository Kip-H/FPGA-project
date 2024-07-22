`timescale 1ns / 1ps
`define T_CLK 10
`define SIM

module uart_rx_tb;
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

reg clk, n_rst;

initial begin
    n_rst = 1'b0;
    clk = 1'b1;
    #(`T_CLK*2.2) n_rst = 1'b1;
    end

always #(`T_CLK/2)clk = ~clk;

reg baudrate;
wire [7:0] rx_data;
reg uart_rxd;
wire rx_done;

    // Instantiate the uart_rx module
    uart_rx #(
	.T_DIV_BIT(T_DIV_BIT),
	.T_DIV_0(T_DIV_0), 
	.T_DIV_HALF_0(T_DIV_HALF_0), 
	.T_DIV_1(T_DIV_1),
	.T_DIV_HALF_1(T_DIV_HALF_1) 
) uut (
        .clk(clk),
        .n_rst(n_rst),
        .baudrate(baudrate),
        .uart_rxd(uart_rxd),
        .rx_data(rx_data),
        .rx_done(rx_done)
    );


    // Stimulus
    initial begin
        // Reset
        n_rst = 0;
        baudrate = 1'b0;
        uart_rxd = 1'b1;

        wait(n_rst == 1'b1);
        #(`T_CLK * T_DIV_HALF_1) uart_rxd = 1'b1;
        #(`T_CLK * T_DIV_HALF_1) uart_rxd = 1'b0;
        #(`T_CLK * T_DIV_HALF_1) uart_rxd = 1'b1;
        #(`T_CLK * T_DIV_HALF_1) uart_rxd = 1'b0;
        #(`T_CLK * T_DIV_HALF_1) uart_rxd = 1'b1;
        #(`T_CLK * T_DIV_HALF_1 * 30)
        $display("cnt_bit: %d", uut.cnt_bit);
        // Wait for rx_done signal to be asserted
        repeat (100) begin
            #10;
            if (rx_done) begin
                $display("Received Data: %h", rx_data);
                // Additional checks or assertions can be added here
                // If expected data is known, it can be compared with rx_data
                // For simplicity, we are just displaying the received data here
                $stop;
            end
        end

        $display("Testbench completed.");
        $stop;
    end

endmodule
