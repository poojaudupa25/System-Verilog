module JK_FF(JK_inter.RTL R1);
always@(posedge R1.clk)
begin
if(R1.reset)
begin
R1.q<=1'b0;
end
else 
begin
case({R1.J, R1.K})
2'b00:R1.q<=R1.q;
2'b01:R1.q<=1'b0;
2'b10:R1.q<=1'b1;
2'b11:R1.q<=~R1.q;
default: R1.q<=1'b0;
endcase
end
end 
endmodule
