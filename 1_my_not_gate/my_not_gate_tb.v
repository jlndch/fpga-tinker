`timescale 1ns / 1ns
module my_not_gate_tb;
  reg tb_a;
  wire tb_b;
  my_not_gate dut (
    .a(tb_a),
    .b(tb_b)
  );

  initial begin
    tb_a = 0; // Set tb_a to 0
    #1; // Wait for 1 time unit
    if (tb_b !== 1) begin
      $display("Test failed: tb_a = 0, tb_b = %b", tb_b);
    end

    tb_a = 1; // Set tb_a to 1
    #1; // Wait for 1 time unit
    if (tb_b !== 0) begin
      $display("Test failed: tb_a = 1, tb_b = %b", tb_b);
    end

    $finish;
  end

  initial begin
    $dumpfile("my_not_gate_tb.vcd");
    $dumpvars(0, my_not_gate_tb);
  end
endmodule
