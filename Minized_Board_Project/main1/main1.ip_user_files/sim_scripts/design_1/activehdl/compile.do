vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../main1.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../main1.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ip/design_1_top_0_0/sim/design_1_top_0_0.v" \
"../../../bd/design_1/ip/design_1_KeyPadInterpreter_0_upgraded_ipi_1/sim/design_1_KeyPadInterpreter_0_upgraded_ipi_1.v" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"
