module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	
    wire W0;
    add16 A0(.a(a[15:0]), .b(b[15:0]), .sum(sum[15:0]), .cin(1'b0), .cout(W0));
    add16 A1(.a(a[31:16]), .b(b[31:16]), .sum(sum[31:16]), .cin(W0), .cout(1'b0));    	

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

	// Full adder module here
	assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a | b) & cin;
    
endmodule