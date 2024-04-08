//Test
module Test(JK_inter.TB T1);
initial
begin
T1.reset=0; T1.J=1; T1.K=0;
#10 T1.reset=1;
#10 T1.J=0; T1.K=1;
#10 T1.J=1; T1.K=1;
#100 $finish;
end 
endmodule
