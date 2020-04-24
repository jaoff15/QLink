vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../QLink.srcs/sources_1/bd/spi_clk_gen/ipshared/b65a" "+incdir+../../../../QLink.srcs/sources_1/bd/spi_clk_gen/ipshared/b65a" \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../QLink.srcs/sources_1/bd/spi_clk_gen/ipshared/b65a" "+incdir+../../../../QLink.srcs/sources_1/bd/spi_clk_gen/ipshared/b65a" \
"../../../bd/spi_clk_gen/ip/spi_clk_gen_clk_wiz_0_0/spi_clk_gen_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/spi_clk_gen/ip/spi_clk_gen_clk_wiz_0_0/spi_clk_gen_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/spi_clk_gen/sim/spi_clk_gen.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

