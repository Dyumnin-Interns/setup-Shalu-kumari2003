module xor_gate_wrapper(
    input wire a,
    input wire b,
    output wire y
);
    xor_gate dut(.a(a), .b(b), .y(y));
    
    initial begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0, xor_gate_wrapper);
    end
endmodule
