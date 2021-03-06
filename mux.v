//Verilog module for 1:4 DEMUX
module demux1to4(
     Data_in,
     sel,
    Data_out_0,
    Data_out_1,
    Data_out_2,
    Data_out_3
    );

//list the inputs and their sizes
    input Data_in;
    input [1:0] sel;
//list the outputs and their sizes 
    output Data_out_0;
     output Data_out_1;
    output Data_out_2;
    output Data_out_3;
//Internal variables
    reg Data_out_0;
     reg Data_out_1;
    reg Data_out_2;
    reg Data_out_3;  

//always block with Data_in and sel in its sensitivity list
    always @(Data_in or sel)
    begin
        case (sel)  //case statement with "sel"
        //multiple statements can be written inside each case.
        //you just have to use 'begin' and 'end' keywords as shown below.
            2'b00 : begin
                        Data_out_0 = Data_in;
                        Data_out_1 = 0;
                        Data_out_2 = 0;
                        Data_out_3 = 0;
                      end
            2'b01 : begin
                        Data_out_0 = 0;
                        Data_out_1 = Data_in;
                        Data_out_2 = 0;
                        Data_out_3 = 0;
                      end
            2'b10 : begin
                        Data_out_0 = 0;
                        Data_out_1 = 0;
                        Data_out_2 = Data_in;
                        Data_out_3 = 0;
                      end
            2'b11 : begin
                        Data_out_0 = 0;
                        Data_out_1 = 0;
                        Data_out_2 = 0;
                        Data_out_3 = Data_in;
                      end
        endcase
    end
    
endmodule


module tb_demux;

    // Inputs
    reg Data_in;
    reg [1:0] sel;

    // Outputs
    wire Data_out_0;
    wire Data_out_1;
    wire Data_out_2;
    wire Data_out_3;

    // Instantiate the Unit Under Test (UUT)
    demux1to4 uut (
        .Data_in(Data_in), 
        .sel(sel), 
        .Data_out_0(Data_out_0), 
        .Data_out_1(Data_out_1), 
        .Data_out_2(Data_out_2), 
        .Data_out_3(Data_out_3)
    );

    initial begin
        //Apply Inputs
        Data_in = 1;
        sel = 0;    #100;
        sel = 1;    #100;
        sel = 2;    #100;
        sel = 3;    #100;
        Data_in = 0;
    end
      
endmodule


