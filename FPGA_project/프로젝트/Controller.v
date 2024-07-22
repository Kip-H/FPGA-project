module Controller(
    input clk,
    input n_rst,
    // 戮곗굚 뺢퀗   
	input bt_start,
    input bt_setting,
   
    input [7:0] led_data,
    //섋땻㏃뿉꾩룇猷뉔뇡낅걞  
    input spi_done,
    // 嶺뚮ㅄ維귟땻    
    output reg motor_signal,

    // 섋땻    
	output reg heat_signal,
    output reg [7:0] led_out,
    // fnd뺣쾹럩롳쭗깆쓧筌   
	output reg morning_signal,
    output reg after_signal,
    // state띠럾 硫명뀬삯썒닁   
	output reg Day_done);

`ifdef SIM
parameter ONE_SECOND = 10;
`else
// 50 MHz clock -> (1/(d5208)) -> 9,600 rate
parameter ONE_SECOND = 50_000_000;
`endif


parameter IDLE = 4'h0;
parameter LIGHT_READ = 4'h1;
parameter FND1 = 4'h2;
parameter SETTING = 4'h3;
parameter RUNNING = 4'h4;

parameter LIGHT_READ_2 = 4'h5;
parameter FND2 = 4'h6;
parameter SETTING_2 = 4'h7;
parameter RUNNING_2 = 4'h8;
parameter DONE = 4'h9;


reg [3:0] c_state, n_state;

// RUNNING ⑤객臾띄솒됱굚蹂뜟
reg [25:0] sec_counter;
reg [3:0] runnig_time;

// 1Day
// RUNNING TIME 5貫꾡빳嶺뚯솘筌먐삳쭥
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
            end
        end else begin
            sec_counter <= 26'h0000; // Reset sec_counter when not in RUNNING state
            runnig_time <= 3'h0;
        end
    end
end

always @(posedge clk or negedge n_rst)
if(!n_rst) begin
    c_state <= IDLE;
end else begin
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
            n_state = SETTING;
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
            n_state = SETTING_2;
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
// 濡ル츎 얜쟫ed 띠룂쥈됯틡怨댄맋 影さ嶺뚮‘伊볢린
always @(posedge clk or negedge n_rst)
if(!n_rst)
    led_out <= 8'h00;
else begin
    if(c_state == LIGHT_READ || c_state == LIGHT_READ_2) begin
        if(spi_done == 1'b1) begin
            led_out <= ~led_data;
        end
    end
end

// ****************************************************************************************************************
// (SETTING & MOTOR) ㏉깴 筌뤾쑴諭썹춯뼿嶺뚮ㅄ維藥
always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        motor_signal <= 1'b0;
        heat_signal <= 1'b0;
    end else begin
        if (c_state == SETTING || c_state == SETTING_2) begin
            if (bt_setting == 1'b1) begin
                motor_signal <= (runnig_time < 3'h5) ? 1'b1 : 1'b0;
                heat_signal <= (runnig_time < 3'h5) ? 1'b1 : 1'b0;
            end else begin
                motor_signal <= 1'b0;
                heat_signal <= 1'b0;
            end
        end else if (runnig_time == 3'h5) begin
            motor_signal <= 1'b0;
            heat_signal <= 1'b0;
        end else begin
            motor_signal <= motor_signal;
            heat_signal <= heat_signal;
        end
    end
end

// ****************************************************************************************************************

//*******************************************************************************************************************

// FND 怨쀫츊怨쀪섧/ signal 꾩룇猷뉔뇡촲rning筌뢠fter筌뤿땶뀀뗪낫띠룄댁눧졻뫂嶺뚯솘⑸뻣
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
    else if(runnig_time == 3'h5) begin
        after_signal <= 1'b0;
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