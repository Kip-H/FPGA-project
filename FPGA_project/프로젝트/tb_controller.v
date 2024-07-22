`timescale 1ns/1ps

module Controller_tb;

// Inputs
reg clk;
reg n_rst;
reg bt_start;
reg bt_setting;
reg [7:0] rx_data;
reg rx_done;
reg [7:0] led_data;
reg spi_done;

// Outputs
wire motor_signal;
wire heat_signal;
wire [7:0] led_out;
wire morning_signal;
wire after_signal;
wire Day_done;

// Instantiate the Unit Under Test (UUT)
Controller uut (
    .clk(clk), 
    .n_rst(n_rst), 
    .bt_start(bt_start), 
    .bt_setting(bt_setting), 
    .rx_data(rx_data), 
    .rx_done(rx_done), 
    .led_data(led_data), 
    .spi_done(spi_done), 
    .motor_signal(motor_signal), 
    .heat_signal(heat_signal), 
    .led_out(led_out), 
    .morning_signal(morning_signal), 
    .after_signal(after_signal), 
    .Day_done(Day_done)
);

`ifdef SIM
parameter ONE_SECOND = 10;
`else
parameter ONE_SECOND = 50_000_000;
`endif

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk; // 100 MHz clock
end

// Stimulus process
initial begin
    // Initialize Inputs
    n_rst = 0;
    bt_start = 0;
    bt_setting = 0;
    rx_data = 0;
    rx_done = 0;
    led_data = 8'hFF;
    spi_done = 0;

    // Reset the system
    #10;
    n_rst = 1;

    // Start the process
    #10;
    bt_start = 1;
    #10;
    bt_start = 0;

    // Simulate LIGHT_READ state (spi_done to 1)
    #20;
    spi_done = 1;
    #10;
    spi_done = 0;

    // Simulate FND1 state
    #20;

    // Simulate SETTING state
    #20;
    bt_setting = 1;
    #10;
    bt_setting = 0;

    // Simulate RUNNING state
    #((ONE_SECOND * 10) - 20); // Simulate running for ONE_SECOND

    // Simulate LIGHT_READ_2 state (spi_done to 1)
    #20;
    spi_done = 1;
    #10;
    spi_done = 0;

    // Simulate FND2 state
    #20;

    // Simulate SETTING_2 state
    #20;
    bt_setting = 1;
    #10;
    bt_setting = 0;

    // Simulate RUNNING_2 state
    #((ONE_SECOND * 10) - 20); // Simulate running for ONE_SECOND

    // Simulate DONE state
    #20;

    // Check final state
    #10;
    $stop;
end

endmodule
