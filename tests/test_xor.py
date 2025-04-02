# File: tests/test_xor.py
import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def test_xor(dut):
    """Test all combinations of XOR gate"""
    
    # Test cases: (a, b, expected_y)
    test_cases = [
        (0, 0, 0),
        (0, 1, 1),
        (1, 0, 1),
        (1, 1, 0)
    ]
    
    for a, b, expected in test_cases:
        dut.a.value = a
        dut.b.value = b
        await Timer(1, units="ns")
        assert dut.y.value == expected, f"Failed: {a} XOR {b} = {dut.y.value}, expected {expected}"
