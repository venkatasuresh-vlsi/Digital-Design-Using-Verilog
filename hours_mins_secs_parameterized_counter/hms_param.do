vlib work
vdel -all
vlib work

vlog hms_param.v +acc
vlog tb_hms_param.v +acc

vsim work.tb 
add wave -r *
run -all