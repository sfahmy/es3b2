module count_tb();

reg clk, rst, en, dn;
wire [3:0] count;

counter uut (.clk(clk), .rst(rst), .en(en), .dn(dn), .count(count));

initial
begin
  // VCD dump
  $dumpfile("dump.vcd");
  $dumpvars(1, count_tb);
  
  clk = 1'b0;
  rst = 1'b1;
  en = 1'b0;
  dn = 1'b0;
  #20 rst = 1'b0;
  #10 en = 1'b1;
  #40 en = 1'b0; dn = 1'b1;
  #10 en = 1'b1;
  #20 dn = 1'b1;
  #30 rst = 1'b1;
  #10 rst = 1'b0;
  #30 dn = 1'b0;
  #40 $finish;
end

always #5 clk = ~clk;

endmodule