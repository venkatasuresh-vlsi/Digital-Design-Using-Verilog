vlib work
vdel -all
vlib work

vlog half_adder.v 
vlog full_adder.v 
vlog addN.v 
vlog tb_addN.v 

vsim work.tb -l add1.log
add wave -r *
run -all