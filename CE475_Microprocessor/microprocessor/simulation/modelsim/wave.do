onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/cpu_top/clk
add wave -noupdate -group TOP /tb/cpu_top/clk
add wave -noupdate -group TOP /tb/cpu_top/_RDr15
add wave -noupdate -group TOP /tb/cpu_top/_RD1
add wave -noupdate -group TOP /tb/cpu_top/_RD2
add wave -noupdate -group TOP /tb/cpu_top/_RD3
add wave -noupdate -group TOP /tb/cpu_top/_alu_result
add wave -noupdate -group TOP /tb/cpu_top/_alu_NZCV
add wave -noupdate -group TOP /tb/cpu_top/_immediate_out
add wave -noupdate -group TOP /tb/cpu_top/_instruction
add wave -noupdate -group TOP /tb/cpu_top/_dmRData
add wave -noupdate -group TOP /tb/cpu_top/_cond
add wave -noupdate -group TOP /tb/cpu_top/_op
add wave -noupdate -group TOP /tb/cpu_top/_nIPUBWL
add wave -noupdate -group TOP /tb/cpu_top/_imm
add wave -noupdate -group TOP /tb/cpu_top/_bimm
add wave -noupdate -group TOP /tb/cpu_top/_cmd
add wave -noupdate -group TOP /tb/cpu_top/_s
add wave -noupdate -group TOP /tb/cpu_top/_Rn
add wave -noupdate -group TOP /tb/cpu_top/_Rd
add wave -noupdate -group TOP /tb/cpu_top/_Rs
add wave -noupdate -group TOP /tb/cpu_top/_Rm
add wave -noupdate -group TOP /tb/cpu_top/_imm24
add wave -noupdate -group TOP /tb/cpu_top/_imm12
add wave -noupdate -group TOP /tb/cpu_top/_imm8
add wave -noupdate -group TOP /tb/cpu_top/_sh
add wave -noupdate -group TOP /tb/cpu_top/_shamt5
add wave -noupdate -group TOP /tb/cpu_top/_rot
add wave -noupdate -group TOP /tb/cpu_top/_bit4
add wave -noupdate -group TOP /tb/cpu_top/_bit7
add wave -noupdate -group TOP /tb/cpu_top/_alu_cmd
add wave -noupdate -group TOP /tb/cpu_top/_alu_src_select
add wave -noupdate -group TOP /tb/cpu_top/_datamem_addr_select
add wave -noupdate -group TOP /tb/cpu_top/_datamem_WE
add wave -noupdate -group TOP /tb/cpu_top/_regfile_WE
add wave -noupdate -group TOP /tb/cpu_top/_regfile_WD_select
add wave -noupdate -group TOP /tb/cpu_top/_regfile_WDr15_select
add wave -noupdate -group TOP /tb/cpu_top/_s_generate_flags
add wave -noupdate -group TOP /tb/cpu_top/_flags
add wave -noupdate -group TOP /tb/cpu_top/_src2_shifted
add wave -noupdate -group TOP /tb/cpu_top/_incremented_pc
add wave -noupdate -group TOP /tb/cpu_top/_mux_out_alu_src2
add wave -noupdate -group TOP /tb/cpu_top/_mux_out_regfile_WD
add wave -noupdate -group TOP /tb/cpu_top/_mux_out_datamem_WAddr
add wave -noupdate -group INSTMEM -radix unsigned /tb/cpu_top/instmem_inst/instr_addr
add wave -noupdate -group INSTMEM /tb/cpu_top/instmem_inst/instruction
add wave -noupdate -group INSTMEM /tb/cpu_top/instmem_inst/MEMORY
add wave -noupdate -group DATAMEM /tb/cpu_top/datamem_inst/clk
add wave -noupdate -group DATAMEM /tb/cpu_top/datamem_inst/dmWEn
add wave -noupdate -group DATAMEM -radix unsigned /tb/cpu_top/datamem_inst/dmRWAddr
add wave -noupdate -group DATAMEM /tb/cpu_top/datamem_inst/dmWData
add wave -noupdate -group DATAMEM /tb/cpu_top/datamem_inst/dmRData
add wave -noupdate -group DATAMEM -expand /tb/cpu_top/datamem_inst/MEMORY
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/instr_in
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/cond
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/op
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/nIPUBWL
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/imm
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/bimm
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/cmd
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/s
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/Rn
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/Rd
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/Rs
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/Rm
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/imm12
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/imm8
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/imm24
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/sh
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/shamt5
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/rot
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/bit4
add wave -noupdate -group DECODER /tb/cpu_top/decoder_inst/bit7
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/cmd_in
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/bimm_in
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/cond_in
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/op_in
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/nIPUBWL_in
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/NZCV_in
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/s_generate_flags_in
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/alu_cmd
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/alu_src_select
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/datamem_addr_select
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/datamem_WE
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/regfile_WE
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/regfile_WD_select
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/regfile_WDr15_select
add wave -noupdate -group CONTROLLER /tb/cpu_top/controller_inst/s_generate_flags
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/clk
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/WE
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/WA
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/WD
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/WDr15
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/RA1
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/RA2
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/RA3
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/RDr15
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/RD1
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/RD2
add wave -noupdate -group REGFILE /tb/cpu_top/regfile_inst/RD3
add wave -noupdate -group REGFILE -radix unsigned -childformat {{{/tb/cpu_top/regfile_inst/regfile[15]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[14]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[13]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[12]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[11]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[10]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[9]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[8]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[7]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[6]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[5]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[4]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[3]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[2]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[1]} -radix unsigned} {{/tb/cpu_top/regfile_inst/regfile[0]} -radix unsigned}} -expand -subitemconfig {{/tb/cpu_top/regfile_inst/regfile[15]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[14]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[13]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[12]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[11]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[10]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[9]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[8]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[7]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[6]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[5]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[4]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[3]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[2]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[1]} {-height 15 -radix unsigned} {/tb/cpu_top/regfile_inst/regfile[0]} {-height 15 -radix unsigned}} /tb/cpu_top/regfile_inst/regfile
add wave -noupdate -group ALU /tb/cpu_top/alu_inst/cmd_in
add wave -noupdate -group ALU /tb/cpu_top/alu_inst/A_in
add wave -noupdate -group ALU /tb/cpu_top/alu_inst/B_in
add wave -noupdate -group ALU /tb/cpu_top/alu_inst/alu_result
add wave -noupdate -group ALU /tb/cpu_top/alu_inst/alu_NZCV
add wave -noupdate -group ALU /tb/cpu_top/alu_inst/result
add wave -noupdate -group ALU /tb/cpu_top/alu_inst/NZCV
add wave -noupdate -group ALU /tb/cpu_top/alu_inst/rot
add wave -noupdate -group SHIFTER /tb/cpu_top/shifter_inst/shifter_shamt5_in
add wave -noupdate -group SHIFTER /tb/cpu_top/shifter_inst/shifter_sh_in
add wave -noupdate -group SHIFTER /tb/cpu_top/shifter_inst/imm8extended
add wave -noupdate -group SHIFTER /tb/cpu_top/shifter_inst/Rm_in
add wave -noupdate -group SHIFTER /tb/cpu_top/shifter_inst/Rs_in
add wave -noupdate -group SHIFTER /tb/cpu_top/shifter_inst/shifter_rot_in
add wave -noupdate -group SHIFTER /tb/cpu_top/shifter_inst/instrbit4
add wave -noupdate -group SHIFTER /tb/cpu_top/shifter_inst/instrbit25
add wave -noupdate -group SHIFTER /tb/cpu_top/shifter_inst/src2_shifted
add wave -noupdate -group FLAGS /tb/cpu_top/flags_inst/clk
add wave -noupdate -group FLAGS /tb/cpu_top/flags_inst/s
add wave -noupdate -group FLAGS /tb/cpu_top/flags_inst/flagsFromALU
add wave -noupdate -group FLAGS /tb/cpu_top/flags_inst/flags
add wave -noupdate -group INCREMENTOR /tb/cpu_top/incrementor_inst/in
add wave -noupdate -group INCREMENTOR /tb/cpu_top/incrementor_inst/incremented
add wave -noupdate -group MUX_alu_src2 /tb/cpu_top/mux_2x1_alu_src2/in1
add wave -noupdate -group MUX_alu_src2 /tb/cpu_top/mux_2x1_alu_src2/in2
add wave -noupdate -group MUX_alu_src2 /tb/cpu_top/mux_2x1_alu_src2/s
add wave -noupdate -group MUX_alu_src2 /tb/cpu_top/mux_2x1_alu_src2/mux_out
add wave -noupdate -group MUX_datamem_waddr /tb/cpu_top/mux_2x1_datamem_WAddr/in1
add wave -noupdate -group MUX_datamem_waddr /tb/cpu_top/mux_2x1_datamem_WAddr/in2
add wave -noupdate -group MUX_datamem_waddr /tb/cpu_top/mux_2x1_datamem_WAddr/s
add wave -noupdate -group MUX_datamem_waddr /tb/cpu_top/mux_2x1_datamem_WAddr/mux_out
add wave -noupdate -group MUX_regfile_wd /tb/cpu_top/mux_3x1_regfile_WD/in1
add wave -noupdate -group MUX_regfile_wd /tb/cpu_top/mux_3x1_regfile_WD/in2
add wave -noupdate -group MUX_regfile_wd /tb/cpu_top/mux_3x1_regfile_WD/in3
add wave -noupdate -group MUX_regfile_wd /tb/cpu_top/mux_3x1_regfile_WD/s
add wave -noupdate -group MUX_regfile_wd /tb/cpu_top/mux_3x1_regfile_WD/mux_out
add wave -noupdate -group ZERO_CONCAT /tb/cpu_top/zero_concat_inst/imm24_in
add wave -noupdate -group ZERO_CONCAT /tb/cpu_top/zero_concat_inst/op_in
add wave -noupdate -group ZERO_CONCAT /tb/cpu_top/zero_concat_inst/immediate_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {119 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 247
configure wave -valuecolwidth 79
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
WaveRestoreZoom {482 ps} {607 ps}
