module Total_FND (
    input wire morning_signal,
    input wire after_signal,
    output reg [6:0] fnd1,  
    output reg [6:0] fnd2,  
    output reg [6:0] fnd3   
);

    parameter [6:0] CHAR_A = 7'b000_1000;
    parameter [6:0] CHAR_P = 7'b000_1100;
    parameter [6:0] CHAR_MINUS = 7'b011_1111;

    always @(*) begin
        if (morning_signal) begin
            fnd1 <= CHAR_A;      // 'A
            fnd2 <= CHAR_MINUS;  // '-'
            fnd3 <= CHAR_P;      // 'P'
        end else if (after_signal) begin
            fnd1 <= CHAR_P;      // 'P'
            fnd2 <= CHAR_MINUS;  // '-'
            fnd3 <= CHAR_A;      // 'A'
        end else begin
            fnd1 <= 7'h7f;
            fnd2 <= 7'h7f;
            fnd3 <= 7'h7f;
        end
    end
endmodule