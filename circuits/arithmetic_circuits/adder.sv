module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

    wire cout1;
    wire cout2;
    wire cout3;
    wire cout4;
    
    fadder f1 (.a(x[0]), .b(y[0]), .cin(0), .cout(cout1), .sum(sum[0]));
    fadder f2 (.a(x[1]), .b(y[1]), .cin(cout1), .cout(cout2), .sum(sum[1]));
    fadder f3 (.a(x[2]), .b(y[2]), .cin(cout2), .cout(cout3), .sum(sum[2]));
    fadder f4 (.a(x[3]), .b(y[3]), .cin(cout3), .cout(cout4), .sum(sum[3]));
    
    assign sum[4] = (cout4 == 1)? 1:0;
    
endmodule

module fadder (input a, b, cin, 
               output cout, sum);
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));
    
endmodule