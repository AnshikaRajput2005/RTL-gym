
module priority_encoder8 (
    input  wire [7:0] req,
    output reg        valid,
    output reg  [2:0] index
);

    integer i;

    always @* begin
        valid = 1'b0;
        index = 3'd0;

        for (i = 0; i < 8; i = i + 1) begin
            if (req[i]) begin
                valid = 1'b1;
                index = i;
            end
        end
    end

endmodule
