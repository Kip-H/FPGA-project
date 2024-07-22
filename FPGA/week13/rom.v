module rom(
clk,
addr,
data
);
parameter D_WIDTH = 8;
parameter A_WIDTH = 3;
input clk;
input [A_WIDTH-1:0] addr;
output [D_WIDTH-1:0] data;
reg [D_WIDTH-1:0] data;
reg [D_WIDTH-1:0] rom[2**A_WIDTH-1:0];

// Read the memory contents
initial begin
    $readmemh("../rtl/mem_ip/rom_32x8.txt", rom);
end

always @ (posedge clk)
begin
    data <= rom[addr];
end

endmodule