module dut(  // Changed name from or_gate_wrapper to dut
    input wire a,
    input wire b,
    output wire y
);
    or_gate or_gate_inst(.a(a), .b(b), .y(y));
    
    initial begin
        $dumpfile("waves.vcd");
        $dumpvars;
    end
endmodule 
