module fnd(
    din,
    dout
);

input [3:0] din;
output reg [6:0] dout;

always @(din)
    case(din)
        4'b0000: dout = 7'b100_0000;
        4'b0001: dout = 7'b111_1001;
        4'b0010: dout = 7'b010_0100;
        4'b0011: dout = 7'b011_0000;
        4'b0100: dout = 7'b001_1001;

        4'b0101: dout = 7'b001_0010;
        4'b0110: dout = 7'b000_0010;
        4'b0111: dout = 7'b101_1000;
        4'b1000: dout = 7'b000_0000;
        4'b1001: dout = 7'b001_0000;
    
        4'b1010: dout = 7'b000_1000;
        4'b1011: dout = 7'b000_0011;
        4'b1100: dout = 7'b100_0110;
        4'b1101: dout = 7'b010_0001;
        4'b1110: dout = 7'b000_0100;
        4'b1111: dout = 7'b000_1110;
        default: dout = 7'b000_0000; // default case added
    endcase

endmodule