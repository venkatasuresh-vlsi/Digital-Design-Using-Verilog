vlib work
vdel -all
vlib work

vlog mod99_minus2_minus1.v +acc
vlog tb_mod99_minus2_minus1.v +acc

vsim work.tb 
add wave -r * 
run -all