module sqdiff2_tb;
  
  reg clk, rst;
  reg [5:0] a, b, c;
  wire signed [12:0] result;
  
  sqdiff uut(.clk(clk), .rst(rst), .a(a), .b(b), .c(c), .result(result));
           
  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1, sqdiff2_tb, uut.ad, uut.bd, uut.cd, uut.x, uut.y);
    clk = 1'b0; rst = 1'b1;
    a = 6'd0; b = 6'd0; c = 6'd0;
    #10 rst = 1'b0;
    #10 a = 6'd4; b = 6'd8; c = 6'd2;
    #10 a = 6'd5; b = 6'd8; c = 6'd2;
    #10 a = 6'd2; b = 6'd7; c = 6'd3;
    #10 a = 6'd0; b = 6'd2; c = 6'd16;
    #10 a = 6'd9; b = 6'd9; c = 6'd10;
    #10 a = 6'd63; b = 6'd63; c = 6'd62;
    #10 a = 6'd16; b = 6'd2; c = 6'd16;
    #10 a = 6'd10; b = 6'd9; c = 6'd1;
    #10 a = 6'd1; b = 6'd1; c = 6'd1;    
    #10 $finish;
  end
  
  always #5 clk = ~clk;
  
endmodule