module aluTB;

reg signed [63:0] X,Y;
reg [1:0] control;
wire [63:0] Z;
wire ovf;

alu aloo (control,X,Y,Z,ovf);

initial 
    begin

        $dumpfile("aluTB.vcd");
        $dumpvars(0,aluTB);
end
initial 
begin
        control = 2'b00;
        X = 63;
        Y = 1;
        #5
        control = 2'b01;
        X=64'b0111111111111111111111111111111111111111111111111111111111111111; 
        Y = -7000000000;
        

        #5;
        control = 2'b10;
        X=64'b1010101010101010101010101010101010101010101010101010101010101011;
        Y=64'b0101010101010101010101010101010101010101010101010101010101010101;


        #5;
        control = 2'b11;
        X=64'b1010101010101010101010101010101010101010101010101010101010101011;
        Y=64'b0101010101010101010101010101010101010101010101010101010101010101;

        #5;
        control = 2'b00;
        X=64'b0111111111111111111111111111111111111111111111111111111111111111;
        Y=64'b0111111111111111111111111111111111111111111111111111111111111111;

        #5;

end
endmodule