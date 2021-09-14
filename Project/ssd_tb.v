module ssd_tb();
reg [3:0]a;
wire [6:0]c;
 Seven_segment_Decoder ssd( 
.a(a) ,
.c(c));
initial
begin 
$monitor(" (BCD)%b  =(SSD) %b" ,a,c );
a= 4'b0000;
#10 
a= 4'b0001;
#10 
 a= 4'b0010;
#10 
 a= 4'b0011;
#10 
 a= 4'b0100;
#10 
 a= 4'b0101;
#10 
 a= 4'b0110;
#10 
 a= 4'b0111;
#10 
 a= 4'b1000;
#10 
 a= 4'b1001;
end 
endmodule