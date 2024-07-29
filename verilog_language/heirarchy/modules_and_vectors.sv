module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] q1_d2;
    wire [7:0] q2_d3;
    wire [7:0] q3_mux;
    
    my_dff8 i1 (.clk(clk), .d(d), .q(q1_d2));
    my_dff8 i2 (.clk(clk), .d(q1_d2), .q(q2_d3));
    my_dff8 i3 (.clk(clk), .d(q2_d3), .q(q3_mux));
    
    always @(*)
        case(sel)
            0: q = d;
            1: q = q1_d2;
            2: q = q2_d3;
            3: q = q3_mux;
        endcase
endmodule