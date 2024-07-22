`timescale 1ns / 1ns

module top_tb;

  // Parameters
  parameter CLK_PERIOD = 10; // Clock period in ns

  // Signals
  reg clk;
  reg n_rst;
  reg push_start;
  reg [7:0] bt;
  reg sel;
  reg sel2;
  reg sdata;
  wire [7:0] led;
  wire sclk;
  wire cs_n;
  wire txd;

  // Instantiate the unit under test (UUT)
  top uut (
    .clk(clk),
    .n_rst(n_rst),
    .push_start(push_start),
    .bt(bt),
    .sel(sel),
    .sel2(sel2),
    .sdata(sdata),
    .sclk(sclk),
    .cs_n(cs_n),
    .led(led),
    .txd(txd)
  );

  // Clock generation
  always #((CLK_PERIOD / 2)) clk = ~clk;

  // Reset generation
  initial begin
    n_rst = 1'b0;
    push_start = 1'b0;
    clk = 1'b0;
    #10;
    n_rst = 1'b1;
    push_start = 1'b1;
    #100;
    // Add more stimulus here as needed
    $finish;
  end

  // Stimulus generation
  initial begin
    // Add stimulus here to control inputs like bt, sel, sel2, sdata, push_start, etc.
    // Example:
    #20 bt = 8'hFF; // Example input value for bt
    #30 sel = 1'b1; // Example value for sel
    // Add more stimulus here as needed
  end

  // Add dumping to observe signals
  initial begin
    $dumpfile("top_tb.vcd");
    $dumpvars(0, top_tb);
    #1000; // Simulation time
    $stop;
  end

endmodule
