/*module mult_integrated_tb();
reg [3:0]a;
reg [3:0]b;
wire ones_lamp[6:0];
wire tens_lamp[6:0];
wire hundreds_lamp[6:0];

 mult_integrated integrated (.a(a),.b(b),.ones_lamp(ones_lamp) ,.tens_lamp(tens_lamp),.hundreds_lamp(hundreds_lamp));
initial
begin
$display("a   *    b =  hundreds     tens     ones");
$monitor("%b   *    %b = %b             %b     %b",a,b,hundreds_lamp,tens_lamp,ones_lamp);
a=4'b0010;
b=4'b0011;
end
endmodule
*/
module mult_integrated(
input[3:0] a,
input[3:0]b,
output [6:0]ones_lamp,
output [6:0]tens_lamp,
output [6:0]hundreds_lamp);
wire [7:0] c;
wire [3:0] ones;
wire [3:0] tens;
wire[3:0] hundreds;
 Multiplier4x4 multi(
  .a(a),
  .b(b),
   .c(c));

bcd Bcd(.a(c),.ones(ones),.tens(tens),.hundreds(hundreds));
Seven_segment_Decoder ssdones(.a(ones),.c(ones_lamp));
Seven_segment_Decoder ssdtens(.a(tens),.c(tens_lamp));
Seven_segment_Decoder ssdhundreds(.a(hundreds),.c(hundreds_lamp));

endmodule
