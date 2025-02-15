module lab2(output x,y,
               input a,b,c
               );
    assign or_out = a | b;
    assign x = (~c) ^ or_out;
    assign xor_out = (~(a & b)) ^ (or_out);
    assign y = or_out & xor_out;
endmodule
