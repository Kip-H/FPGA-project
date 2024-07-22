module Controller_tb;

reg clk;
reg n_rst;
reg bt_start;
reg bt_setting;
reg [7:0] rx_data;
reg rx_done;
reg [7:0] led_data;
reg spi_done;

wire motor_signal;
wire heat_signal;
wire [7:0] led_out;
wire morning_signal;
wire after_signal;
wire Day_done;

// Instantiate the Controller module
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

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10 time units period clock
end

// Simulation sequence
initial begin
    // Initial reset
    n_rst = 0;
    bt_start = 0;
    bt_setting = 0;
    rx_data = 8'h00;
    rx_done = 0;
    led_data = 8'h00;
    spi_done = 0;
    #20;
    
    n_rst = 1;
    #20;
    
    // Test rx_data receiving '1' which is 8'h31
    bt_start = 1;
    #10;
    bt_start = 0;
    
    // Simulate SPI done
    spi_done = 1;
    #10;
    spi_done = 0;
    
    // Simulate rx_done with '1'
    rx_data = 8'h31;
    rx_done = 1;
    #10;
    rx_done = 0;
    wait(rx_done==1'b1);
    // Simulate bt_setting
    bt_setting = 1;
    #10;
    bt_setting = 0;
    
    // Observe the outputs
    #100;
    
    $stop;
end
endmodule
