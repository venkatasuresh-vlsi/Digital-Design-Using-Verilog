vlib work
vdel -all
vlib work

vlog 111_101_OL.v -sv 
vlog 111_101_OL_tb.v

vsim work.tb 
add wave -r *
run -all