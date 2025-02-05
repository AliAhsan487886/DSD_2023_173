
module Exp_001(output x,y,
               input a,b,c
               );
    assign OR_GATE  = a | b;
    assign x = (~c) ^ OR_GATE;
    assign XOR_GATE = (~(a & b)) ^ (OR_GATE);
    assign y = OR_GATE & XOR_GATE;
endmodule
