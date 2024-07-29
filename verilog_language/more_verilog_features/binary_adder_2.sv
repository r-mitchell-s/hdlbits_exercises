module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum 
);
    fadder I0(.a(a[0]), .b(b[0]), .sum(sum[0]), .cin(cin), .cout(cout[0]));
    genvar i;
    generate 
        for (i = 1; i < 100; i++) begin: gen
            fadder IX(.a(a[i]), .b(b[i]), .sum(sum[i]), .cin(cout[i - 1]), .cout(cout[i]));
        end
    endgenerate
    
endmodule
        
module fadder(
    input a, b, cin,
    output sum, cout
);
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | ((a ^ b) & cin); // Corrected the carry out logic
    
endmodule