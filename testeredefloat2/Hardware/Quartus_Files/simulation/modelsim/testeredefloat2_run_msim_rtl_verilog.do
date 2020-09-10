transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/testeredefloat2_H {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/testeredefloat2_H/testeredefloat2.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/ula_fl.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/stack_pointer.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/reg_file.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/proc_fl.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/prefetch.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/pc.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/mem_instr.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/mem_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/int2float.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/instr_dec_fl.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/float2int.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/float2index.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/core_fl.v}
vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Proc_IP/addr_dec.v}

vlog -vlog01compat -work work +incdir+C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Quartus_Files {C:/Users/LuccaViccini/Desktop/UFJF/IC/IC_Luciano/Rede_Neural/testeredefloat2/Hardware/Quartus_Files/testeredefloat2_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testeredefloat2_tb

add wave *
view structure
view signals
run 100 ns
