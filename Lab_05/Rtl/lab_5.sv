`timescale 1ns / 1ps

module lab_5(
    input logic [3:0] num,
    input logic [2:0] sel,
    output logic aout, bout, cout, dout, eout, fout, gout, dpout,
    output logic [7:0] an
);
    // Intermediate signals for easier readability
    logic a, b, c, d;  
    assign a = num[3];  // MSB
    assign b = num[2];
    assign c = num[1];
    assign d = num[0];  // LSB

    always_comb begin
        // Cathodes
        aout = (~a & ~b & ~c & d) | (~a & b & ~c & ~d) | 
            (a & b & ~c & d) | (a & ~b & c & d);
        bout = (b & c & ~d) | (a & c & d) |
            (a & b & ~d) | (~a & b & ~c & d);
        cout = (~a & ~b & c & ~d) | (a & b & c) |
            (a & b & ~d);
        dout = (~a & b & ~c & ~d) | (~a & ~b & ~c & d) |
            (b & c & d) | (a & ~b & c & ~d);
        eout = (~a & d) | (~b & ~c & d) |
            (~a & b & ~c);
        fout = (~a & ~b & d) | (~a & ~b & c) |
            (~a & c & d) | (a & b & ~c & d);
        gout = (~a & ~b & ~c) | (a & b & ~c & ~d) |
            (~a & b & c & d);
        dpout = 1;  // Decimal point always off

        // Anodes
        an[0] = (sel[2] | sel[1] | sel[0]);
        an[1] = (sel[2] | sel[1] | ~sel[0]);
        an[2] = (sel[2] | ~sel[1] | sel[0]);
        an[3] = (sel[2] | ~sel[1] | ~sel[0]);
        an[4] = (~sel[2] | sel[1] | sel[0]);
        an[5] = (~sel[2] | sel[1] | ~sel[0]);
        an[6] = (~sel[2] | ~sel[1] | sel[0]);
        an[7] = (~sel[2] | ~sel[1] | ~sel[0]);
    end
endmodule