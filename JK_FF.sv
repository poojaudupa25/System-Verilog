//JK_FF
module JK_FF(JK_inter.RTL R1)
always@(posedge R1.clk)
begin
if(R1.reset)
R1.q<=0;
else
case({R1.J, R1.K})
2'b00:R1.q<=R1.q;
2'b01:R1.q<=R1.K;
2'b10:R1.q<=R1.J;
2'b11:R1.q<=~R1.q;
endcase
end 
endmodule
