module mult_integrated_tb();
reg [3:0]a;
reg [3:0]b;
wire [6:0]ones_lamp;
wire [6:0]tens_lamp;
wire [6:0]hundreds_lamp;
integer i;
 mult_integrated integrated (.a(a),.b(b),.ones_lamp(ones_lamp) ,.tens_lamp(tens_lamp),.hundreds_lamp(hundreds_lamp));
initial
begin
$display("a    *     b =  hundreds       tens     ones");
$monitor("%d   *    %d =   %b             %b       %b",a,b,hundreds_lamp,tens_lamp,ones_lamp);
a=0;
b=0;
for(i=1;i<=49;i=i+1)
begin
#100
a=$random()%49;
b=$random()%49;
end
end
endmodule