-makelib ies_lib/xil_defaultlib -sv \
  "/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "/home/jacoboffersen/Program/vivado20182/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/spi_clk_gen/ip/spi_clk_gen_clk_wiz_0_0/spi_clk_gen_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/spi_clk_gen/ip/spi_clk_gen_clk_wiz_0_0/spi_clk_gen_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/spi_clk_gen/sim/spi_clk_gen.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

