vlib work
vdel -all
vlib work

vlog half_sub.v +acc
vlog full_sub.v +acc
vlog sub7.v +acc
vlog comparator.v +acc
vlog mux.v +acc
vlog mux7.v +acc
vlog mod99_down_structural.v +acc
vlog tb_mod99_down_structural.v +acc

vsim work.tb;
add wave -r *
run -all