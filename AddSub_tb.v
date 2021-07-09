module AddSub_tb();
reg t_a, t_b,t_c;
wire t_fa,t_ha,t_fs,t_hs;
addsub dut(
 .a(t_a),
	.b(t_b),
	.c(t_c),
	 .fa(t_fa),
	 .ha(t_ha),
	 .fs(t_fs),
	 .hs(t_hs) );
	  

initial begin
t_a=0;
t_b=0;
t_c=0;
#10

t_a=0;
t_b=0;
t_c=1;
#10

t_a=0;
t_b=1;
t_c=0;
#10

t_a=0;
t_b=1;
t_c=1;
#10

t_a=1;
t_b=0;
t_c=0;
#10

t_a=1;
t_b=0;
t_c=1;
#10

t_a=1;
t_b=1;
t_c=0;
#10

t_a=1;
t_b=1;
t_c=1;
#10

$stop;
end
endmodule
