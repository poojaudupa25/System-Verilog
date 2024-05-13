//JK_inter
interface JK_inter(input bit clk);
logic J,K,reset,q;
modport RTL(input clk, J, K, reset, output q);
modport TB(input q, output J, K, reset);
endinterface
