module div_tb;
  
  reg [5:0] num;
  wire [4:0] numdiv3;
  
  div3 uut(.num(num), .numdiv3(numdiv3));
           
  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1, div_tb);
    num = 6'd0;
    #10 num = 6'd2;
    #10 num = 6'd3;
    #10 num = 6'd4;
    #10 num = 6'd5;
    #10 num = 6'd6;
    #10 num = 6'd7;
    #10 num = 6'd9;
    #10 num = 6'd11;
    #10 num = 6'd12;
    #10 num = 6'd14;
    #10 num = 6'd15;
    #10 num = 6'd16;
    #10 num = 6'd21;
    #10 num = 6'd31;
    #10 num = 6'd32;
    #10 num = 6'd33;
    #10 num = 6'd34;
    #10 num = 6'd35;
    #10 num = 6'd60;
    #10 num = 6'd61;
    #10 num = 6'd62;
    #10 num = 6'd63;
    #10 $finish;
  end
  
endmodule