module bcd_tb();
reg [7:0]a;
wire [3:0] ones;
wire [3:0] tens;
wire[3:0] hundreds;
bcd Bcd(a,ones,tens,hundreds);

initial
begin
$display("hunderds    tens     ones  =  input ");
$monitor( "%b          %b       %b   =  %b ",hundreds,tens,ones,a );
a=8'b1010_1010;
#10
a=8'b0001_0110;
#10
a=8'b0100_0110;
#10
a=8'b1111_1111;
#10
a=8'b0000_0000;
#10
a=8'b1111_0000;
#10
a=8'b0000_1111;
#10
a=8'b0101_0101;
#10
a=8'b1110_0111;
end


endmodule