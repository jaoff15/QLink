vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../QLink.srcs/sources_1/bd/spi_clk_gen/ipshared/b65a" "+incdir+../../../../QLink.srcs/sources_1/bd/spi_clk_gen/ipshared/b65a" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../QLink.srcs/sources_1/bd/spi_clk_gen/ipshared/b65a" "+incdir+../../../../QLink.srcs/sources_1/bd/spi_clk_gen/ipshared/b65a" \
"../../../bd/spi_clk_gen/ip/spi_clk_gen_clk_wiz_0_0/spi_clk_gen_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/spi_clk_gen/ip/spi_clk_gen_clk_wiz_0_0/spi_clk_gen_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/spi_clk_gen/sim/spi_clk_gen.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

