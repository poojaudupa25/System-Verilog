//Top
module Top;
bit clk;
JK_inter I1(clk);
Test inst1(I1.TB);
JK_FF DUT(I1.RTL);
always #5 clk=~clk;
initial
begin
$dumpfile("JK_FF.vcd");
$dumpvars;
end
endmodule

