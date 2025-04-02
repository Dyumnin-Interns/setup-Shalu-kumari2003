// File: hdl/xor_gate_wrapper.v
module xor_gate_wrapper(
    input wire clk,
    input wire reset_n,
    input wire [1:0] inputs,
    output wire result
);
    xor_gate dut (
        .a(inputs[0]),
        .b(inputs[1]),
        .y(result)
    );
    
    // For waveform dumping
    initial begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0, xor_gate_wrapper);
    end
endmodule
