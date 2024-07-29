module top_module (input x, 
                   input y, 
                   output z);
    
    wire out_a1;
    wire out_b1;
    wire out_a2;
    wire out_b2;
    wire con1;
    wire con2;
    
    mod_a a1(.x(x), .y(y), .z(out_a1));
    mod_b b1(.x(x), .y(y), .z(out_b1));
    mod_a a2(.x(x), .y(y), .z(out_a2));
    mod_b b2(.x(x), .y(y), .z(out_b2));
    
    or g1o (con1, out_a1, out_b1);
    and g2a (con2, out_a2, out_b2);
    xor g3x (z, con1, con2);
    
endmodule

module mod_a (input x, input y, output z);
    
    assign z = (x^y) & x;
    
endmodule

module mod_b ( input x, input y, output z );
    
    assign z = ~(x^y);
    
endmodule