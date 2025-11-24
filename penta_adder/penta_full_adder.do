vlib work
vdel -all
vlib work

vlog penta.v 
vlog penta_full_adder.v 
vlog tb_penta_full_adder.v

vsim work.tb
run -all