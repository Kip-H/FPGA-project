module motor_controller(
    input wire clk,
    input wire n_rst,
    input wire motor_signal, // Motor control signal
    output reg [7:4] portb  // PB7 to PB4 for motor control   // PA3 to PA0 for LEDs
);
    // Define motor control states
    parameter MOTOR_CW    = 4'b1011; // Forward: AIN1=1, AIN2=0, PWMA=1, STBY=1
    parameter MOTOR_STOP  = 4'b0011; // Stop: AIN1=0, AIN2=0, PWMA=1, STBY=1

    // Output logic for mEDs
    always @(*) begin
            if (motor_signal == 1'b1) begin
                portb <= MOTOR_CW;
            end else begin
                portb <= MOTOR_STOP;
            end
        end
endmodule
