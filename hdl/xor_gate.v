module xor_gate(
    input wire a,
    input wire b,
    output wire y
);
    assign y = a ^ b;
    
    // Waveform dumping
    initial begin
        $dumpfile("waveforms.vcd");
        $dumpvars(0, xor_gate);
    end
endmodule
