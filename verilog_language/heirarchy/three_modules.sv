module top_module ( input clk, input d, output q );

    wire q1_d2;
    wire q2_d3;
    
    my_dff i1 (.clk(clk), .d(d), .q(q1_d2));
    my_dff i2 (.clk(clk), .d(q1_d2), .q(q2_d3));
    my_dff i3 (.clk(clk), .d(q2_d3), .q(q));
    
endmodule