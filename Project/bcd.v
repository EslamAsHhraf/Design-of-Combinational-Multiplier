module bcd(input [7:0]a,
output reg [3:0] ones,
output reg [3:0] tens,
output reg[3:0] hundreds
);

integer i;
always@(a)
begin
 ones=4'b0000;
 tens=4'b0000;
  hundreds=4'b0000;

for(i=7;i>=0;i=i-1)
begin
if(hundreds>=4'b0101)
begin
hundreds=hundreds+4'b0011;
end
if(tens>=4'b0101)
begin
tens=tens+4'b0011;
end
if(ones>=4'b0101)
begin
ones=ones+4'b0011;
end
hundreds=hundreds<<1;
hundreds[0]=tens[3];
tens=tens<<1;
tens[0]=ones[3];
ones=ones<<1;
ones[0]=a[i];
end
end
endmodule




