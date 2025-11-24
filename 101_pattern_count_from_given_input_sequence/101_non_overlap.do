vlib work
vdel -all
vlib work

vlog 101_non_overlap.v 
vlog tb_101_non_overlap.v 

vsim work.tb -l tb_101_non_overlap.log
run -all