vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_1

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_1 questa_lib/msim/blk_mem_gen_v8_4_1

vlog -work xil_defaultlib -64 -sv \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 \
"../../../../QLink.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/sim/design_1.vhd" \


vlog -work xil_defaultlib \
"glbl.v"

