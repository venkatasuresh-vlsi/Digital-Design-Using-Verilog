vlib work
vdel -all
vlib work

vlog mod99_down_cnt.v +acc
vlog tb_mod99_down_cnt.v +acc

vsim work.tb 
add wave -r *
run -all