vlib work
vdel -all
vlib work

vlog dhms.v +acc
vlog tb_dhms.v +acc

vsim work.tb 
add wave -r *
run -all