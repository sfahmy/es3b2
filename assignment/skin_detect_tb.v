module skin_detect_tb;

  reg clk, rst, pix_valid;
  reg [7:0] r, g, b;

  wire skin, out_valid;
  
  integer infile, outfile, read;

  skin_detect uut (.clk(clk), .rst(rst), .r(r), .g(g), .b(b), .pix_valid(pix_valid),
                   .skin(skin), .out_valid(out_valid));

  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1, skin_detect_tb);
    infile = $fopen("inputs.txt", "r");
    outfile = $fopen("outputs.txt", "w");
    clk = 1'b0; rst = 1'b1; pix_valid = 1'b0;
    #10 rst = 1'b0;
    while(!$feof(infile)) begin
        #10 read = $fscanf(infile, "%d %d %d %b\n", r, g, b, pix_valid);
    end
    #20 $fclose(infile); $fclose(outfile);
    $finish;
  end

  always #5 clk = ~clk;

  always@(posedge clk)
  begin
    if(out_valid)
        $fwrite(outfile, "%b\n", skin);
  end
endmodule
