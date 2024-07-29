module top_module ( );
    
	logic clk;
    
    dut uut(.clk(clk));
    
    initial begin
    	clk = 0;
    end
    
    always #5 clk = ~clk;
    
endmodule