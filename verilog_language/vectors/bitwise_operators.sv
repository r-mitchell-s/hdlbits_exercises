module top_module(input [2:0] a, b, output out_or_logical, output [2:0] out_or_bitwise, output [5:0] out_not);
    
    assign out_or_bitwise[2:0] = a[2:0] | b[2:0];
    assign out_or_logical = a[2:0] || b[2:0];
    assign out_not[2:0] = ~a[2:0];
    assign out_not[5:3] = ~b[2:0];
    
endmodule   