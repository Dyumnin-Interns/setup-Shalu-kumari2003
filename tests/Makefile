SIM ?= icarus
TOPLEVEL_LANG ?= verilog
VERILOG_SOURCES = ../hdl/xor_gate.v ../hdl/xor_gate_wrapper.v
TOPLEVEL = xor_gate_wrapper
MODULE = test_xor

# Only pass these to iverilog, not vvp
COMPILE_ARGS = -g2012 -DCOCOTB_SIM=1

include $(shell cocotb-config --makefiles)/Makefile.sim

wave:
	gtkwave waveforms.vcd &
