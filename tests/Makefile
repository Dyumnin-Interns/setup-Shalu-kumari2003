SIM ?= icarus
TOPLEVEL_LANG ?= verilog
VERILOG_SOURCES = dut.v or_gate_wrapper.v
TOPLEVEL = dut  # Changed from or_gate_wrapper to dut
MODULE = dut_test  # Changed to match your test file name
include $(shell cocotb-config --makefiles)/Makefile.sim
