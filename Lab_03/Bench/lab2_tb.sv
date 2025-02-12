module lab2_tb;
logic a;
logic b;
logic c;
logic x;
logic y;

lab2 UUT(
    .a(a),
    .b(b),
    .c(c),
    .x(x),
    .y(y)
);

initial 
begin
    a = 0; b = 0; c = 0;
    #10;
    a = 0; b = 0; c = 1;
    #10;
    a = 0; b = 1; c = 0;
    #10;
    a = 0; b = 1; c = 1;
    #10; 
    a = 1; b = 0; c = 0;
    #10;
    a = 1; b = 0; c = 1;
    #10; 
    a = 1; b = 1; c = 0;
    #10;
    a = 1; b = 1; c = 1;
    #10; 
end

initial 
begin
    $monitor("x = %b, y = %b, a = %b, b = %b, c = %b", x, y, a, b, c);    
end

endmodule 