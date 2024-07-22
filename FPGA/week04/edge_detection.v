module edge_detection(
    input clk,
    input n_rst,
    input [9:0] bt,
    input btstar,
    output reg [9:0] bt_w,
    output reg btstar_w
);

reg bt_0d1;
reg bt_0d2;

reg bt_1d1;
reg bt_1d2;

reg bt_2d1;
reg bt_2d2;

reg bt_3d1;
reg bt_3d2;

reg bt_4d1;
reg bt_4d2;

reg bt_5d1;
reg bt_5d2;

reg bt_6d1;
reg bt_6d2;

reg bt_7d1;
reg bt_7d2;

reg bt_8d1;
reg bt_8d2;

reg bt_9d1;
reg bt_9d2;

reg btstar_d1;
reg btstar_d2;

always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        bt_0d1 <= 1'b0;
        bt_0d2 <= 1'b0;

        bt_1d1 <= 1'b0;
        bt_1d2 <= 1'b0;
        
        bt_2d1 <= 1'b0;
        bt_2d2 <= 1'b0;

        bt_3d1 <= 1'b0;
        bt_3d2 <= 1'b0;

        bt_4d1 <= 1'b0;
        bt_4d2 <= 1'b0;

        bt_5d1 <= 1'b0;
        bt_5d2 <= 1'b0;
        
        bt_6d1 <= 1'b0;
        bt_6d2 <= 1'b0;

        bt_7d1 <= 1'b0;
        bt_7d2 <= 1'b0;

        bt_8d1 <= 1'b0;
        bt_8d2 <= 1'b0;
        
        bt_9d1 <= 1'b0;
        bt_9d2 <= 1'b0;

        btstar_d1 <= 1'b0;
        btstar_d2 <= 1'b0;
    end
    else begin
            bt_0d1 <= bt[0];
            bt_0d2 <= bt_0d1;

            bt_1d1 <= bt[1];
            bt_1d2 <= bt_1d1;
    
            bt_2d1 <= bt[2];
            bt_2d2 <= bt_2d1;

            bt_3d1 <= bt[3];
            bt_3d2 <= bt_3d1;
            
            bt_4d1 <= bt[4];
            bt_4d2 <= bt_4d1;

            bt_5d1 <= bt[5];
            bt_5d2 <= bt_5d1;
    
            bt_6d1 <= bt[6];
            bt_6d2 <= bt_6d1;

            bt_7d1 <= bt[7];
            bt_7d2 <= bt_7d1;

            bt_8d1 <= bt[8];
            bt_8d2 <= bt_8d1;
            
            bt_9d1 <= bt[9];
            bt_9d2 <= bt_9d1;

            btstar_d1 <= ~btstar;
            btstar_d2 <= btstar_d1;
    end
end

always @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        bt_w <= 10'b0000_0000_00;
        btstar_w <= 1'b0;
    end
    else begin
    bt_w[0] <= ((bt_0d1 == 1'b1) && (bt_0d2 == 1'b0)) ? 1'b1 : 1'b0;
    bt_w[1] <= ((bt_1d1 == 1'b1) && (bt_1d2 == 1'b0)) ? 1'b1 : 1'b0;
    bt_w[2] <= ((bt_2d1 == 1'b1) && (bt_2d2 == 1'b0)) ? 1'b1 : 1'b0;
    bt_w[3] <= ((bt_3d1 == 1'b1) && (bt_3d2 == 1'b0)) ? 1'b1 : 1'b0;
    bt_w[4] <= ((bt_4d1 == 1'b1) && (bt_4d2 == 1'b0)) ? 1'b1 : 1'b0;
    bt_w[5] <= ((bt_5d1 == 1'b1) && (bt_5d2 == 1'b0)) ? 1'b1 : 1'b0;
    bt_w[6] <= ((bt_6d1 == 1'b1) && (bt_6d2 == 1'b0)) ? 1'b1 : 1'b0;
    bt_w[7] <= ((bt_7d1 == 1'b1) && (bt_7d2 == 1'b0)) ? 1'b1 : 1'b0;
    bt_w[8] <= ((bt_8d1 == 1'b1) && (bt_8d2 == 1'b0)) ? 1'b1 : 1'b0;
    bt_w[9] <= ((bt_9d1 == 1'b1) && (bt_9d2 == 1'b0)) ? 1'b1 : 1'b0;
    btstar_w <= ((btstar_d1 == 1'b1) && (btstar_d2 == 1'b0)) ? 1'b1 : 1'b0;
end
end

endmodule