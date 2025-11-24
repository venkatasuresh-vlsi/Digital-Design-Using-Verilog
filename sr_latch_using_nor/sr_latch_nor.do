vlib work
vdel -all
vlib work

vlog sr_latch_nor.v 
vlog tb_sr_latch_nor.v

vsim work.tb 
add wave -r *
run -all