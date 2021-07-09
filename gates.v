module gates(
	input A,
	input B,
	output And,
	output Nand,
	output Or,
	output Nor,
	output Xor,
	output Xnor );

assign And = A & B;
assign Nand = ~(A & B);
assign Or = A | B ;
assign Nor = ~(A | B);
assign Xor = A ^ B ;
assign Xnor = ~(A ^ B) ;

endmodule	
