module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [399:0] carry;
    
    genvar i;
    generate
        bcd_fadd I0(.a(a[3:0]), .b(b[3:0]), .sum(sum[3:0]), .cin(cin), .cout(carry[3:0]));
        for (i = 7; i < 400; i += 4) begin :bcd
            bcd_fadd IX(.a(a[i:i - 3]), .b(b[i:i - 3]), .sum(sum[i:i - 3]), .cin(carry[i - 4: i - 7]), .cout(carry[i:i - 3]));
        end
    endgenerate
    
    assign cout = carry[399:396];
    
endmodule