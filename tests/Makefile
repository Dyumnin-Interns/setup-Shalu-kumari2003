SIM ?= icarus
TOPLEVEL_LANG ?= verilog
VERILOG_SOURCES = ../hdl/xor_gate.v
TOPLEVEL = xor_gate
MODULE = test_xor

# Correct way to enable VCD dumping
EXTRA_ARGS += -DCOCOTB_SIM=1 -g2012
EXTRA_ARGS += -DCOCOTB_WAVES=waveforms.vcd  # Changed from --vcd=

include $(shell cocotb-config --makefiles)/Makefile.sim

wave:
	gtkwave waveforms.vcd &
