module top_module( 
    input [254:0] in,
    output [7:0] out );
    
	always @* begin
        out = 8'b0;
        for (int i = 0; i < 255; i++) begin
            if (in[i]) begin
                out = out + 1;
            end
        end
    end
    
endmodule