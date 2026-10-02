
`timescale 1ns/1ps

module tb;

    reg  [7:0] req;
    wire       valid;
    wire [2:0] index;

    reg        expected_valid;
    reg  [2:0] expected_index;

    integer i, j, errors;

    priority_encoder8 dut (
        .req(req),
        .valid(valid),
        .index(index)
    );

    initial begin
        errors = 0;
        req = 0;

        for (i = 0; i < 256; i = i + 1) begin
            req = i;

            expected_valid = 0;
            expected_index = 0;

            for (j = 0; j < 8; j = j + 1) begin
                if (req[j]) begin
                    expected_valid = 1;
                    expected_index = j;
                end
            end

            #1;

            if ((valid !== expected_valid) ||
                (index !== expected_index)) begin
                $display("FAIL: req=%b", req);
                errors = errors + 1;
            end
        end

        if (errors == 0)
            $display("PASS: all 256 input combinations");
        else
            $display("FAIL: %0d errors", errors);

        $finish;
    end

endmodule
