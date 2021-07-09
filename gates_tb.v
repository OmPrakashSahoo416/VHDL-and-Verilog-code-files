module gates_tb();
reg t_A , t_B;
wire t_And,t_Nand,t_Or,t_Nor,t_Xort_Xnor;
gates dut(
 .A(t_A),
	.B(t_B),
	 .And(t_And),
	 .Nand(t_Nand),
	 .Or(t_Or),
	 .Nor(t_Nor),
	 .Xor(t_Xor),
	 .Xnor(t_Xnor) );

initial begin
t_A=0;
t_B=0;
#10

t_A=0;
t_B=1;
#10

t_A=1;
t_B=0;
#10

t_A=1;
t_B=1;
#10

$stop;
end
endmodule	
