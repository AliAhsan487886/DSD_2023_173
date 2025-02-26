`timescale 1ns / 1ps

module lab_5_behav(
    input logic [3:0] num,
    input logic [2:0] sel,
    output logic aout, bout, cout, dout, eout, fout, gout, dpout,
    output logic [7:0] an
);
    
    always_comb begin
        dpout = 1;  // Decimal point always off
        case(num)
            4'b0000 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0000001;
            4'b0001 : {aout, bout, cout, dout, eout, fout, gout} = 7'b1001111;
            4'b0010 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0010010;
            4'b0011 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0000110;
            4'b0100 : {aout, bout, cout, dout, eout, fout, gout} = 7'b1001100;
            4'b0101 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0100100;
            4'b0110 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0100000;
            4'b0111 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0001111;
            4'b1000 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0000000;
            4'b1001 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0000100;
            4'b1010 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0001000;
            4'b1011 : {aout, bout, cout, dout, eout, fout, gout} = 7'b1100000;
            4'b1100 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0110001;
            4'b1101 : {aout, bout, cout, dout, eout, fout, gout} = 7'b1000010;
            4'b1110 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0110000;
            4'b1111 : {aout, bout, cout, dout, eout, fout, gout} = 7'b0111000;
            default : {aout, bout, cout, dout, eout, fout, gout} = 7'b1111111;
        endcase
    end
        
    always_comb begin
        case(sel)
            3'b000 : an = 8'b11111110;
            3'b001 : an = 8'b11111101;
            3'b010 : an = 8'b11111011;
            3'b011 : an = 8'b11110111;
            3'b100 : an = 8'b11101111;
            3'b101 : an = 8'b11011111;
            3'b110 : an = 8'b10111111;
            3'b111 : an = 8'b01111111;
            default : an = 8'b11111111;
        endcase
    end
endmodule