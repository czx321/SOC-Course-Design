transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/Mars/Course\ Design/Current\ Project/y_enhance_quartus {F:/Mars/Course Design/Current Project/y_enhance_quartus/y_enhance_top.v}
vlog -vlog01compat -work work +incdir+F:/Mars/Course\ Design/Current\ Project/y_enhance_quartus {F:/Mars/Course Design/Current Project/y_enhance_quartus/Matrix_Generate_3X3_8Bit.v}
vlog -vlog01compat -work work +incdir+F:/Mars/Course\ Design/Current\ Project/y_enhance_quartus {F:/Mars/Course Design/Current Project/y_enhance_quartus/y_enhance.v}
vlog -vlog01compat -work work +incdir+F:/Mars/Course\ Design/Current\ Project/y_enhance_quartus {F:/Mars/Course Design/Current Project/y_enhance_quartus/SQRT.v}
vlog -vlog01compat -work work +incdir+F:/Mars/Course\ Design/Current\ Project/y_enhance_quartus {F:/Mars/Course Design/Current Project/y_enhance_quartus/Line_Shift_RAM_8Bit.v}

vlog -vlog01compat -work work +incdir+F:/Mars/Course\ Design/Current\ Project/y_enhance_quartus {F:/Mars/Course Design/Current Project/y_enhance_quartus/y_enhance_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  y_enhance_top

add wave *
view structure
view signals
run -all
