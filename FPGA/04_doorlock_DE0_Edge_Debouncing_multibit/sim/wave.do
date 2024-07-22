onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_doorlock/clk
add wave -noupdate /tb_doorlock/n_rst
add wave -noupdate /tb_doorlock/bt
add wave -noupdate /tb_doorlock/btstar
add wave -noupdate /tb_doorlock/fnd
add wave -noupdate /tb_doorlock/led
add wave -noupdate -radix unsigned /tb_doorlock/cnt_led
add wave -noupdate /tb_doorlock/cnt_open
add wave -noupdate /tb_doorlock/u_top/u_bd_if/clk
add wave -noupdate /tb_doorlock/u_top/u_bd_if/n_rst
add wave -noupdate -expand /tb_doorlock/u_top/u_bd_if/bt_i
add wave -noupdate /tb_doorlock/u_top/u_bd_if/btstar_i
add wave -noupdate /tb_doorlock/u_top/u_bd_if/led_i
add wave -noupdate -radix unsigned /tb_doorlock/u_top/u_bd_if/T_1S
add wave -noupdate -expand /tb_doorlock/u_top/u_bd_if/bt_o
add wave -noupdate /tb_doorlock/u_top/u_bd_if/debnc_btstar
add wave -noupdate /tb_doorlock/u_top/u_bd_if/btstar_o
add wave -noupdate /tb_doorlock/u_top/u_bd_if/led_o
add wave -noupdate /tb_doorlock/u_top/u_bd_if/fnd_o
add wave -noupdate /tb_doorlock/u_top/u_bd_if/bt_dec
add wave -noupdate -radix unsigned /tb_doorlock/u_top/u_bd_if/cnt_ext
add wave -noupdate /tb_doorlock/u_top/u_doorlock/clk
add wave -noupdate /tb_doorlock/u_top/u_doorlock/n_rst
add wave -noupdate /tb_doorlock/u_top/u_doorlock/bt
add wave -noupdate /tb_doorlock/u_top/u_doorlock/btstar
add wave -noupdate /tb_doorlock/u_top/u_doorlock/led
add wave -noupdate /tb_doorlock/u_top/u_doorlock/bt_any
add wave -noupdate /tb_doorlock/u_top/u_doorlock/bt_n7
add wave -noupdate /tb_doorlock/u_top/u_doorlock/bt_n2
add wave -noupdate /tb_doorlock/u_top/u_doorlock/c_state
add wave -noupdate /tb_doorlock/u_top/u_doorlock/n_state
add wave -noupdate /tb_doorlock/u_top/u_bd_if/btstar_i
add wave -noupdate /tb_doorlock/u_top/u_bd_if/u_debounc/n_rst
add wave -noupdate -radix unsigned /tb_doorlock/u_top/u_bd_if/u_debounc/T_20MS
add wave -noupdate /tb_doorlock/u_top/u_bd_if/u_debounc/clk
add wave -noupdate /tb_doorlock/u_top/u_bd_if/btstar_i
add wave -noupdate /tb_doorlock/u_top/u_bd_if/u_debounc/din
add wave -noupdate /tb_doorlock/u_top/u_bd_if/u_debounc/din_d1
add wave -noupdate /tb_doorlock/u_top/u_bd_if/u_debounc/cnt_restart
add wave -noupdate -radix unsigned /tb_doorlock/u_top/u_bd_if/u_debounc/cnt
add wave -noupdate /tb_doorlock/u_top/u_bd_if/u_debounc/dout
add wave -noupdate /tb_doorlock/u_top/u_bd_if/u_debounc/dout_rdy
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {815210 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 442
configure wave -valuecolwidth 54
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {272610 ps} {834120 ps}
