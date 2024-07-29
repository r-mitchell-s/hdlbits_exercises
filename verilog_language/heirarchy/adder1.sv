module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	wire cin_upper;
    wire upper_lower;
        
    add16 upper(.a(a[15:0]), .b(b[15:0]), .cin(cin_upper), .cout(upper_lower), .sum(sum[15:0]));
    add16 lower(.a(a[31:16]), .b(b[31:16]), .cin(upper_lower), .cout(0), .sum(sum[31:16]));
    
endmodule