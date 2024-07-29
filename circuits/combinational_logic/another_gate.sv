module top_module (
    input in1,
    input in2,
    output out);
    
    and g1a(out,in1,~in2);

endmodule