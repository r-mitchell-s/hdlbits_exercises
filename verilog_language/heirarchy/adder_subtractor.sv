module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
  	wire W0;
    wire [31:0] b_var;
    assign b_var = sub? ~b + 1:b;
    add16 I0(.a(a[15:0]), .b(b_var[15:0]), .sum(sum[15:0]), .cin(1'b0), .cout(W0));
    add16 I1(.a(a[31:16]), .b(b_var[31:16]), .sum(sum[31:16]), .cin(W0), .cout(1'b0));

endmodule