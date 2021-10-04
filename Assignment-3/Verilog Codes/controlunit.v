`timescale 1ns / 1ps

module controlunit(endflag, swapflag, reset, clk, controlarr, a, b, flag);

input endflag, swapflag, reset, clk;
output reg a, b, flag;
output reg [4:0] controlarr;
reg temp;

initial begin 
a=0;  // D-flipflop value D1
b=0;  // D-flipflop value D0
flag=1;

controlarr=5'b11100;
end

always @ (posedge clk) // Start at positive edge of the clock
begin
	$display("Entered cu a=%b b=%b controlarr=%b endflag=%b swapflag=%b\n", a, b, controlarr, endflag, swapflag);

	temp=b;
	b=(a*b)|(b*(!endflag))|((!b)*(!swapflag)); //D0 next= D1D0 + (!(Xr>=Yr)).(!D0) + (! Xr>=0).D0
	a = !(endflag* (!swapflag)*(!temp));       //D1 next= (! Xr>=0) + (Xr>=Yr) + D0

	controlarr[0]=a*(!b);// Setting up the subtractor 
	controlarr[1]=b*(!a); // Setting up the swap
	controlarr[2]=(!a)*(!b); // Setting up load bit
	controlarr[3]=!(a*b); // Setting up load bit for X
	controlarr[4]=(!a); // Setting up load bit for Y

	$display("Completed cu Next stage: a=%b b=%b controlarr=%b \n", a, b, controlarr);
	flag=!flag;
end


endmodule
