transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/tb.v}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/regfile.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/zero_concatenator.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/cpu_alu.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/cpu_decoder.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/instruction_memory.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/data_memory.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/flags.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/top.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/cpu_shifter.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/mux_2X1.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/controller.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/incrementor.sv}
vlog -sv -work work +incdir+C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor {C:/Users/ninom/OneDrive/Desktop/CE475/microprocessor/mux_3x1.sv}

