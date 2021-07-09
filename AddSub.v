module addsub(
input a,b,c,
output fa,ha,fs,hs);

assign fa=(a^b)^c;
assign ha=(a & b)|(a & c)|(b & c);
assign fs=(a^b)^c;
assign hs=(~(a) & b)|(~(a) & c)|(b & c);

endmodule
