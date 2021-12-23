onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /master/clk
add wave -noupdate -radix unsigned /master/valid
add wave -noupdate -radix unsigned /master/ready
add wave -noupdate -radix unsigned /master/WAddr
add wave -noupdate -radix unsigned /master/WData
add wave -noupdate {/master/s/REG[0][0]}
add wave -noupdate -radix unsigned -childformat {{{/master/s/REG[1][31]} -radix unsigned} {{/master/s/REG[1][30]} -radix unsigned} {{/master/s/REG[1][29]} -radix unsigned} {{/master/s/REG[1][28]} -radix unsigned} {{/master/s/REG[1][27]} -radix unsigned} {{/master/s/REG[1][26]} -radix unsigned} {{/master/s/REG[1][25]} -radix unsigned} {{/master/s/REG[1][24]} -radix unsigned} {{/master/s/REG[1][23]} -radix unsigned} {{/master/s/REG[1][22]} -radix unsigned} {{/master/s/REG[1][21]} -radix unsigned} {{/master/s/REG[1][20]} -radix unsigned} {{/master/s/REG[1][19]} -radix unsigned} {{/master/s/REG[1][18]} -radix unsigned} {{/master/s/REG[1][17]} -radix unsigned} {{/master/s/REG[1][16]} -radix unsigned} {{/master/s/REG[1][15]} -radix unsigned} {{/master/s/REG[1][14]} -radix unsigned} {{/master/s/REG[1][13]} -radix unsigned} {{/master/s/REG[1][12]} -radix unsigned} {{/master/s/REG[1][11]} -radix unsigned} {{/master/s/REG[1][10]} -radix unsigned} {{/master/s/REG[1][9]} -radix unsigned} {{/master/s/REG[1][8]} -radix unsigned} {{/master/s/REG[1][7]} -radix unsigned} {{/master/s/REG[1][6]} -radix unsigned} {{/master/s/REG[1][5]} -radix unsigned} {{/master/s/REG[1][4]} -radix unsigned} {{/master/s/REG[1][3]} -radix unsigned} {{/master/s/REG[1][2]} -radix unsigned} {{/master/s/REG[1][1]} -radix unsigned} {{/master/s/REG[1][0]} -radix unsigned}} -subitemconfig {{/master/s/REG[1][31]} {-height 15 -radix unsigned} {/master/s/REG[1][30]} {-height 15 -radix unsigned} {/master/s/REG[1][29]} {-height 15 -radix unsigned} {/master/s/REG[1][28]} {-height 15 -radix unsigned} {/master/s/REG[1][27]} {-height 15 -radix unsigned} {/master/s/REG[1][26]} {-height 15 -radix unsigned} {/master/s/REG[1][25]} {-height 15 -radix unsigned} {/master/s/REG[1][24]} {-height 15 -radix unsigned} {/master/s/REG[1][23]} {-height 15 -radix unsigned} {/master/s/REG[1][22]} {-height 15 -radix unsigned} {/master/s/REG[1][21]} {-height 15 -radix unsigned} {/master/s/REG[1][20]} {-height 15 -radix unsigned} {/master/s/REG[1][19]} {-height 15 -radix unsigned} {/master/s/REG[1][18]} {-height 15 -radix unsigned} {/master/s/REG[1][17]} {-height 15 -radix unsigned} {/master/s/REG[1][16]} {-height 15 -radix unsigned} {/master/s/REG[1][15]} {-height 15 -radix unsigned} {/master/s/REG[1][14]} {-height 15 -radix unsigned} {/master/s/REG[1][13]} {-height 15 -radix unsigned} {/master/s/REG[1][12]} {-height 15 -radix unsigned} {/master/s/REG[1][11]} {-height 15 -radix unsigned} {/master/s/REG[1][10]} {-height 15 -radix unsigned} {/master/s/REG[1][9]} {-height 15 -radix unsigned} {/master/s/REG[1][8]} {-height 15 -radix unsigned} {/master/s/REG[1][7]} {-height 15 -radix unsigned} {/master/s/REG[1][6]} {-height 15 -radix unsigned} {/master/s/REG[1][5]} {-height 15 -radix unsigned} {/master/s/REG[1][4]} {-height 15 -radix unsigned} {/master/s/REG[1][3]} {-height 15 -radix unsigned} {/master/s/REG[1][2]} {-height 15 -radix unsigned} {/master/s/REG[1][1]} {-height 15 -radix unsigned} {/master/s/REG[1][0]} {-height 15 -radix unsigned}} {/master/s/REG[1]}
add wave -noupdate -radix unsigned {/master/s/REG[2]}
add wave -noupdate /master/s/calculate
add wave -noupdate -radix unsigned /master/s/AB/reset
add wave -noupdate -radix unsigned /master/s/AB/A
add wave -noupdate -radix unsigned /master/s/AB/B
add wave -noupdate -radix unsigned /master/s/AB/a
add wave -noupdate -radix unsigned /master/s/AB/b
add wave -noupdate -radix unsigned /master/s/AB/sum
add wave -noupdate -radix unsigned /master/s/AB/result
add wave -noupdate -radix unsigned /master/s/AB/ready
add wave -noupdate -radix unsigned {/master/s/REG[16]}
add wave -noupdate -radix unsigned /master/RData
add wave -noupdate -radix unsigned /master/s/AB/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 195
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {59 ps}
