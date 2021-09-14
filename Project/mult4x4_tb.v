module mult4x4_tb();
reg [3:0] a;
reg [3:0] b;
wire [7:0] c;
 Multiplier4x4 multi(
  .a(a),
  .b(b),
   .c(c));
initial
begin 
$monitor("%b * %b = %b" ,a,b,c );
a=4'b1010;
b=4'b0101;
#10 
a=4'b0000;
b=4'b0101;
#10 
a=4'b1111;
b=4'b1111;
#10 
a=4'b1001;
b=4'b1101;
end 
endmodule