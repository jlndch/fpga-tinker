`timescale 1ns/1ns
module bin_to_seven_segment_tb;
  reg [3:0] bin;
  wire [3:0] led_ind;
  wire [6:0] seg;
  integer i;

  bin_to_seven_segment dut(
    .bin(bin),
    .led_ind(led_ind),
    .seg(seg)
  );

  initial begin
    for (i = 0; i < 16; i = i + 1) begin
      bin = i;
      #10;
      $display("bin = %b, led_ind = %b,  seg = %b", bin, led_ind, seg);
    end
    #10;
    $finish;
  end
 
  initial begin
    $dumpfile("bin_to_seven_segment_tb.vcd");
    $dumpvars(0, bin_to_seven_segment_tb);
  end
endmodule