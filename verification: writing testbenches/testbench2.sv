module top_module();
	
    logic clk = 0;
    logic in, out;
    logic [2:0] s;
    
    q7 uut(.clk(clk), .in(in), .out(out), .s(s));
    
    always #5 clk = ~clk;
    
    initial begin
        in = 0;
        s = 2;
        #10
        s = 6;
        #10
        in = 1;
        s = 2;
        #10
        in = 0;
        s = 7;
        #10
        in = 1;
        s = 0;
        #30
        in = 0;
    end
    
endmodule