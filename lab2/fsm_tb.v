module fsm_tb();

reg clk, rst, coin10p, coin20p, coin50p, refund;
wire vend, ret10p, ret20p, ret20p2;

  vend_fsm uut (.clk(clk), .rst(rst),
                .coin10p(coin10p), .coin20p(coin20p),
                .coin50p(coin50p), .refund(refund),
                .vend(vend), .ret10p(ret10p),
                .ret20p(ret20p), .ret20p2(ret20p2));

initial
begin
  // VCD dump
  $dumpfile("dump.vcd");
  $dumpvars(1, fsm_tb);
  // $dumpvars(1, fsm_tb, uut.st);
  clk = 1'b0;
  rst = 1'b1;
  coin10p = 1'b0;
  coin20p = 1'b0;
  coin50p = 1'b0;
  refund = 1'b0;
  #20 rst = 1'b0;
  #20 coin50p = 1'b1;
  #10 coin50p = 1'b0;
  #20 rst = 1'b1; coin10p = 1'b0; coin20p = 1'b0; coin50p = 1'b0; refund = 1'b0;
  #10 rst = 1'b0;
  #20 coin20p = 1'b1;
  #10 coin20p = 1'b0;
  #10 coin20p = 1'b1;
  #10 coin20p = 1'b0;
  #10 coin10p = 1'b1;
  #10 coin10p = 1'b0;
  #20 rst = 1'b1; coin10p = 1'b0; coin20p = 1'b0; coin50p = 1'b0; refund = 1'b0;
  #10 rst = 1'b0;
  #20 coin20p = 1'b1;
  #10 coin20p = 1'b0;
  #10 coin20p = 1'b1;
  #10 coin20p = 1'b0;
  #10 refund = 1'b1;
  #10 refund = 1'b0;
  #20 rst = 1'b1; coin10p = 1'b0; coin20p = 1'b0; coin50p = 1'b0; refund = 1'b0;
  #10 rst = 1'b0;
  #20 coin20p = 1'b1;
  #10 coin20p = 1'b0;
  #10 coin20p = 1'b1;
  #10 coin20p = 1'b0;
  #10 coin50p = 1'b1;
  #10 coin50p = 1'b0;
  #20 rst = 1'b1; coin10p = 1'b0; coin20p = 1'b0; coin50p = 1'b0; refund = 1'b0;
  #10 rst = 1'b0;
  #20 coin10p = 1'b1;
  #10 coin10p = 1'b0;
  #10 coin10p = 1'b1;
  #10 coin10p = 1'b0;
  #10 coin50p = 1'b1;
  #10 coin50p = 1'b0;
  #20 rst = 1'b1; coin10p = 1'b0; coin20p = 1'b0; coin50p = 1'b0; refund = 1'b0;
  #10 rst = 1'b0;
  #20 coin20p = 1'b1;
  #10 coin20p = 1'b0;
  #10 coin10p = 1'b1;
  #10 coin10p = 1'b0;
  #10 refund = 1'b1;
  #10 refund = 1'b0;
  #20 rst = 1'b1; coin10p = 1'b0; coin20p = 1'b0; coin50p = 1'b0; refund = 1'b0;
  #10 rst = 1'b0;
  #20 coin10p = 1'b1;
  #10 coin10p = 1'b0;
  #30 coin20p = 1'b1;
  #10 coin20p = 1'b0;
  #30 coin50p = 1'b1;
  #10 coin50p = 1'b0;
  #20 rst = 1'b1; coin10p = 1'b0; coin20p = 1'b0; coin50p = 1'b0; refund = 1'b0;
  #10 rst = 1'b0;
  #10 $finish;
end

always #5 clk = ~clk;

endmodule