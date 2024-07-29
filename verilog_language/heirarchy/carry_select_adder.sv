module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire W0;
    wire [15:0] W1, W2;
    add16 I0(.a(a[15:0]), .b(b[15:0]), .sum(sum[15:0]), .cin(1'b0), .cout(W0));
    add16 I1(.a(a[31:16]), .b(b[31:16]), .sum(W1), .cin(1'b1), .cout(1'b0));
    add16 I2(.a(a[31:16]), .b(b[31:16]), .sum(W2), .cin(1'b0), .cout(1'b0));
    mux21 I3(.x(W1), .y(W2), .z(sum[31:16]), .sel(W0));
    
endmodule

module mux21(
    
    input sel,
    input [15:0] x, y,
    output [15:0] z);
    
    assign z = sel? x:y; 
    
endmodule