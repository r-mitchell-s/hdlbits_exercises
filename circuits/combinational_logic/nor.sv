module top_module (
    input in1,
    input in2,
    output out);
    
    nor g1n(out,in1,in2);
    
endmodule