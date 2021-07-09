module mux_tb;

reg[3:0] d;
reg[1:0] select;
wire q;

integer  i;

mux1 dut( .select(select), .d(d), .q(q) );

initial
begin
   for( i = 0; i <= 15; i = i + 1)
   begin
      d = i;
      select = 0;  #1;
      select = 1;  #1;
      select = 2;  #1;
      select = 3;  #1;
 
    end

end
endmodule
