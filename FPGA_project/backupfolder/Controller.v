module Controller(
    input clk,
    input n_rst,
    // 뽰삂 甕곌쑵    
	 input bt_start,
    input bt_setting,
    
    // input [1:0] motor_switch,
    //teraterm곗쨮 獄쏆룇釉섅끇怨쀬뵠怨뚯빽
    input [7:0] rx_data,
    input rx_done,
    input [7:0] led_data,
    //눘苑뚧에獄쏆룇釉섅끇揶   
    input spi_done,
    // 筌뤴뫂苑    
	//  output reg[1:0] motor_data,
    // output reg motor_signal,

    // 눘苑    
	output reg heat_signal,
    output reg [7:0] led_out,
    // fnd쒕벏鍮쎌뜎紐쇱읈紐    
	 output reg morning_signal,
    output reg after_signal,
    // state揶쎛 멸텢젻雅뚯눊由    
	 output reg Day_done);

`ifdef SIM
parameter ONE_SECOND = 10;
parameter TWO_SECOND = 20;
`else
// 50 MHz clock -> (1/(d5208)) -> 9,600 rate
parameter ONE_SECOND = 50_000_000;
parameter TWO_SECOND = 100_000_000;
`endif


parameter IDLE = 4'h0;
parameter LIGHT_READ = 4'h1;
parameter FND1 = 4'h2;
parameter HEAT_SETTING = 4'h3;
parameter SETTING = 4'h4;
parameter RUNNING = 4'h5;

parameter LIGHT_READ_2 = 4'h6;
parameter FND2 = 4'h7;
parameter HEAT_SETTING2 = 4'h8;
parameter SETTING_2 = 4'h9;
parameter RUNNING_2 = 4'ha;
parameter DONE = 4'hb;


reg [3:0] c_state, n_state;

// RUNNING 怨밴묶癒퐣 덉삂볦퍢
reg [25:0] sec_counter;
reg [3:0] runnig_time;

// λ였疫뀀쵎猷

// 1Day
// RUNNING TIME 5λ뜄以筌왖類λ맙
always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        sec_counter <= 26'h0000;
        runnig_time <= 3'h0;
    end else begin
        if (c_state == RUNNING || c_state == RUNNING_2) begin
            if (sec_counter < ONE_SECOND - 1) begin
                sec_counter <= sec_counter + 26'h0001;
            end else begin
                sec_counter <= 26'h0000;
                if (runnig_time < 3'h5)
                    runnig_time <= runnig_time + 3'h1;
                else
                    runnig_time <= 0;
            end
        end else begin
            sec_counter <= 26'h0000; // Reset sec_counter when not in HEAT_SETTING state
        end
    end
end

// 덉삂볦퍢 筌β돦숈꼵由
// state 낅쑓꾨뱜쒓쑵釉뵲댘   
always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    c_state <= IDLE;
end
else begin
    c_state <= n_state;
end

always @(*)
    case(c_state)
        IDLE : begin
            n_state = (bt_start == 1'b1) ? LIGHT_READ : c_state;
        end

        LIGHT_READ : begin
            n_state = (spi_done == 1'b1) ? FND1 : c_state;
        end

        FND1 : begin
            n_state = HEAT_SETTING;
        end

        HEAT_SETTING : begin
            n_state = (rx_done == 1'b1) ? SETTING : c_state;
        end

        SETTING : begin
            n_state = (bt_setting == 1'b1) ? RUNNING : c_state; 
        end

        RUNNING : begin
            n_state = (runnig_time == 3'h5) ? LIGHT_READ_2 : c_state;
        end

        LIGHT_READ_2 : begin
            n_state = (spi_done == 1'b1) ? FND2 : c_state;
        end

        FND2 : begin
            n_state = HEAT_SETTING2;
        end

        HEAT_SETTING2 : begin
            n_state = (rx_done == 1'b1) ? SETTING_2 : c_state;
        end

        SETTING_2 : begin
            n_state = (bt_setting == 1'b1) ? RUNNING_2 : c_state;
        end

        RUNNING_2 : begin
            n_state = (runnig_time == 3'h5) ? DONE : c_state;
        end

        DONE : begin
            n_state = IDLE;
        end

        default : begin
            n_state = IDLE;    
        end
    endcase
//*******************************************************************************************************************
//(Light read)
// 롫뮉 臾믩퓠led 揶쏃뜮袁㏉꺍곴퐣 節뚯몵筌롮쥓踰
always @(posedge clk or negedge n_rst)
if(!n_rst)
    led_out <= 8'h00;
else begin
    if(c_state == LIGHT_READ || c_state == LIGHT_READ_2) begin
        if(spi_done == 1'b1) begin
            led_out <= led_data;
        end
    end
end

// ****************************************************************************************************************
// (SETTING & MOTOR) 욧탢 紐꾩뱽筌왖筌뤴뫀已
// always @(posedge clk or negedge n_rst)
// if(!n_rst)
//     motor_data <= 2'h0;
// else begin
//     if(c_state == SETTING || c_state == SETTING_2) begin
//         if(bt_setting == 1'b1) begin
//             case(motor_switch)
//                 2'b00 : begin
//                     motor_data <= 2'b00;
//                 end
//                 2'b01 : begin
//                     motor_data <= 2'b01;
//                 end
//                 2'b10 : begin
//                     motor_data <= 2'b10;
//                 end
//                 2'b11 : begin
//                     motor_data <= 2'b11;
//                 end
//             endcase
//         end
//         else
//             motor_data <= motor_data;
//     end
// end

// always @(posedge clk or negedge n_rst)
// if(!n_rst)
//     motor_signal <= 1'b0;
// else begin
//     if(c_state == RUNNING) begin
//         if(runnig_time < 3'h5)
//             motor_signal <= 1'b1;
//         else begin
//             motor_signal <= 1'b0;
//             motor_data <= 2'h0;
//         end
//     end    
// end

// ****************************************************************************************************************


// ****************************************************************************************************************

// UART RX
 


always @(posedge clk or negedge n_rst)
if(!n_rst)
    heat_signal <= 1'b0;
else begin
    if(c_state == HEAT_SETTING || c_state == HEAT_SETTING2)
        if(rx_done == 1'b1) begin
            if(rx_data == 8'h30)
                heat_signal <= 1'b0;
            else if(rx_data == 8'h31)
                heat_signal <= 1'b1;
            else
                heat_signal <= 1'b0;
        end
end

//*******************************************************************************************************************

// FND 곗뮆곗꼵由// signal 獄쏆룇釉쁬orning紐after紐닌됲뀋곴퐣 揶쏄쑴쇾틠⑦筌왖용뻻援
always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    morning_signal <= 1'b0;
    after_signal <= 1'b0;
end
else begin
    if(c_state == FND1) begin
        morning_signal <= 1'b1;
        after_signal <= 1'b0;
    end
    else if(c_state == FND2) begin
        after_signal <= 1'b1;
        morning_signal <= 1'b0;
    end
    else begin
        after_signal <= after_signal;
        morning_signal <= morning_signal;
    end
end

//*******************************************************************************************************************

// Day_done
always @(posedge clk or negedge n_rst)
if(!n_rst)
 Day_done <= 1'b0;
else begin
    if(c_state == DONE) begin
     Day_done <= 1'b1;
    end
    else
     Day_done <= 1'b0;
end

endmodule