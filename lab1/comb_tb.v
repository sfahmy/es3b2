module comb_tb;

  // module inputs
  reg a, b, c, d;
  // module outputs
  wire x;
  // signal for binary number
  wire [3:0] num = {a, b, c, d};

  // module instantiation
  comb_module uut (.a(a), .b(b), .c(c), .d(d), .x(x));

  initial
  begin
    // VCD dump
    $dumpfile("dump.vcd");
    $dumpvars(1, comb_tb);

    // test vectors
    {a,b,c,d} = 4'd0;
    #10 {a,b,c,d} = 4'd1;
    #10 {a,b,c,d} = 4'd2;
    #10 {a,b,c,d} = 4'd3;
    #10 {a,b,c,d} = 4'd4;
    #10 {a,b,c,d} = 4'd5;
    #10 {a,b,c,d} = 4'd7;
    #10 {a,b,c,d} = 4'd8;
    #10 {a,b,c,d} = 4'd9;
    #10 {a,b,c,d} = 4'd10;
    #10 {a,b,c,d} = 4'd11;
    #10 {a,b,c,d} = 4'd12;
    #10 {a,b,c,d} = 4'd13;
    #10 {a,b,c,d} = 4'd14;
    #10 {a,b,c,d} = 4'd15;
    #10 $finish;
  end

endmodule
