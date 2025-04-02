import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def dut_test(dut):
    """Test OR gate functionality"""
    test_cases = [
        (0, 0, 0),  # a, b, expected_y
        (0, 1, 1),
        (1, 0, 1),
        (1, 1, 0)
    ]
    
    for a, b, expected in test_cases:
        dut.a.value = a
        dut.b.value = b
        await Timer(1, units="ns")
        assert dut.y.value == expected, f"Failed for {a}|{b}={dut.y.value}, expected {expected}"
