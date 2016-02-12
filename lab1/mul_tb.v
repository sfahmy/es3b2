module comb_tb;

  // module inputs
  reg [1:0] a, b;
  // module outputs
  wire [3:0] prod;

  // module instantiation
  comb_module uut (.a(a), .b(b), .prod(prod));

  initial
  begin
    // VCD dump
    $dumpfile("dump.vcd");
    $dumpvars(1, comb_tb);

    // test vectors
    a = 2'd0; b= 2'd0;
    #10 a = 2'd0; b= 2'd0;
    #10 a = 2'd0; b= 2'd1;
    #10 a = 2'd0; b= 2'd2;
    #10 a = 2'd0; b= 2'd3;
    #10 a = 2'd1; b= 2'd0;
    #10 a = 2'd1; b= 2'd1;
    #10 a = 2'd1; b= 2'd2;
    #10 a = 2'd1; b= 2'd3;
    #10 a = 2'd2; b= 2'd0;
    #10 a = 2'd2; b= 2'd1;
    #10 a = 2'd2; b= 2'd2;
    #10 a = 2'd2; b= 2'd3;
    #10 a = 2'd3; b= 2'd0;
    #10 a = 2'd3; b= 2'd1;
    #10 a = 2'd3; b= 2'd2;
    #10 a = 2'd3; b= 2'd3;
    #10 $finish;
  end

endmodule
