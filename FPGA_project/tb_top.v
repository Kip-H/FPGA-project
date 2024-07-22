module tb_top;
    // Declare inputs as regs and outputs as wires
    reg clk;
    reg n_rst;
    reg bt_start;
    reg push_spi_start;
    reg bt_setting;
    reg sdata;
    wire sclk; 
    wire cs_n;
    wire [7:0] led_out;
    wire heat_signal;
    wire motor_signal;
    wire txd;
    wire [6:0] fnd1;
    wire [6:0] fnd2;
    wire [6:0] fnd3;

    spi_slave_adc u_spi_slave_adc(
   .n_rst(n_rst_slave),
   .data(data), 
   .sclk(sclk),
   .cs_n(cs_n),
   .sdata(sdata)  // output
    );

    // Instantiate the top module
    top uut (
        .clk(clk),
        .n_rst(n_rst),
        .bt_start(bt_start),
        .push_spi_start(push_spi_start),
        .bt_setting(bt_setting),
        .sclk(sclk),
        .cs_n(cs_n),
        .sdata(sdata),
        .led_out(led_out),
        .heat_signal(heat_signal),
        .motor_signal(motor_signal),
        .txd(txd),
        .fnd1(fnd1),
        .fnd2(fnd2),
        .fnd3(fnd3)
    );

    // Generate clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end

    // Initialize all inputs and drive signals
    initial begin
        // Initialize Inputs
        
        n_rst = 0;
        bt_start = 0;
        push_spi_start = 0;
        bt_setting = 0;
        sdata = 0;
        
        // Wait for global reset to finish
        #20 n_rst = 1;
        
        // Apply test vectors
        #10 bt_start = 1; // Simulate button start press
        #10 bt_start = 0; // Simulate button start release
        
        #10 push_spi_start = 1; // Simulate SPI start press
        #10 push_spi_start = 0; // Simulate SPI start release
        
        #10 bt_setting = 1; // Simulate button setting press
        #10 bt_setting = 0; // Simulate button setting release
        
        // Simulate SPI data
        #50 sdata = 1; 
        #50 sdata = 0;
        
        // Simulate some UART activity (just for illustration)
        // Assume some asynchronous behavior here
        
        // Complete the test
        #200 $stop;
    end

    // Monitor outputs
    initial begin
        $monitor("Time = %0t, n_rst = %b, bt_start = %b, push_spi_start = %b, bt_setting = %b, sclk = %b, cs_n = %b, sdata = %b, led_out = %h, heat_signal = %b, motor_signal = %b, txd = %b, fnd1 = %h, fnd2 = %h, fnd3 = %h", 
                $time, n_rst, bt_start, push_spi_start, bt_setting, sclk, cs_n, sdata, led_out, heat_signal, motor_signal, txd, fnd1, fnd2, fnd3);
    end
endmodule
