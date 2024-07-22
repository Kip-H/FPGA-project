module mem_ctrl(
  clk,
  n_rst,
  mem_start,
  rx_data,
  r_en,
  mc_write_addr,
  mc_write_data,
  mc_wen,
  mc_read_addr,
  mc_read_data,
  fnd_out
  );

// memory parameter.
parameter D_WIDTH = 8;
parameter A_WIDTH = 4;

// state_machine parameter
parameter S_0 = 2'h0;
parameter S_1 = 2'h1;
parameter S_2 = 2'h2;
parameter S_3 = 2'h3;

// var announcemnet
// mem _start siganl is connected with uart_rx_done
input clk;
input n_rst;
input mem_start;
input [D_WIDTH-1:0] rx_data;

// r_en is push_sw
input r_en;

output reg [7:0] fnd_out;

// ram write control var announcemnet
output reg [A_WIDTH-1:0] mc_write_addr;
output wire [D_WIDTH-1:0] mc_write_data;
output reg mc_wen;

// ram read control var announcemnet
output reg [A_WIDTH-1:0] mc_read_addr;
input [D_WIDTH-1:0] mc_read_data;

// operation when the read address value changes form 3 to 0
reg clear;

// ram_write part
// wdata about memory ctrl
assign mc_write_data = rx_data;

// waddr about memory ctrl
always @(posedge clk or negedge n_rst) begin
    if (!n_rst)
        mc_write_addr <= {(A_WIDTH){1'b0}};
    else begin
        if (clear == 1'b1)
            mc_write_addr <= {(A_WIDTH){1'b0}};
        else if (mc_wen == 1'b1)
            mc_write_addr <= (mc_write_addr < {{(A_WIDTH-1){1'b0}},3'b100}) ? mc_write_addr + 1'b1 : mc_write_addr;
    end
end


// working when signal rx_done is 1
always @(posedge clk or negedge n_rst) begin
  if (!n_rst) begin
    mc_wen <= 1'h0;
  end else begin
    mc_wen <= (mem_start == 1'h1) ? 1'h1 : 1'h0;
  end
end

// ram_read part
// mc_read_addr part
always @(posedge clk or negedge n_rst) begin
  if (!n_rst) begin
    mc_read_addr <= 4'h0;
    clear <= 1'h0;
  end else if (mc_read_addr < 4'h4) begin
    mc_read_addr <= (r_en == 1'h1) ? mc_read_addr + 4'h1 : mc_read_addr;
    clear <= 1'h0;
  end else begin
    mc_read_addr <= 4'h0;
    clear <= 1'h1;
  end
end

// fnd output part
// fnd output means readdata
always @(posedge clk or negedge n_rst) begin
  if (!n_rst) begin
    fnd_out <= 8'h0000_0000;
  end else begin
    if (r_en == 1'h1) begin
      fnd_out <= mc_read_data;
    end else begin
      fnd_out <= fnd_out;
    end
  end
end

endmodule