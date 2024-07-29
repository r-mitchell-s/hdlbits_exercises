module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 

    // using assign statement
    assign out_assign = (sel_b1 & sel_b2)? b:a;
    
    // using procedural statements
    always @* begin
        if (sel_b1 == 1'b1 && sel_b2 == 1'b1) begin
        	out_always <= b;
        end else begin
            out_always <= a;
        end
    end
    
endmodule