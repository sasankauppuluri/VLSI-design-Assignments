`timescale 1ns / 1ps

module datapath(x, y, controlarr, xr, yr, zr, reset, clk, flag, a, b );
input [4:0] controlarr, x, y;
input reset, clk, flag, a, b;
output reg [4: 0] xr, yr, zr;

reg[4:0] tempr;

always@(flag)// We used this flag to ensure the sequential behaviour and combining 
	     // the control unit and the data path properly
begin
	$display("Entered Datapath : controlarr=%b\n", controlarr);

	if(a==1 && b==1)// End condition
	begin
	$display("GCD=%d", zr); // This zr contains GCD
	$finish;
	end

	if(controlarr[2]==1)// Select XY
	begin
		if(controlarr[3]==1) //Load Xr
		xr=x;
		if(controlarr[4]==1)// Load Yr
                yr=y;
	end

	if(controlarr[1]==1)// Swap condition
	begin
		tempr=yr;
		yr=xr;
		xr=tempr;
	end

	if(controlarr[0]==1) // Subtract condition
	xr=xr-yr;

zr=yr;
$display("Datapath completed xr=%d yr=%d\n", xr, yr);
end

endmodule
