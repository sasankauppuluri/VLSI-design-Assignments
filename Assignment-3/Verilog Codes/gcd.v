`timescale 1ns / 1ps
`include "controlunit.v"
`include "datapath.v"

module gcd ();

reg [4:0] x,y;
wire [4:0] controlarr,zr,xr,yr;
reg clk,reset;
wire a,b,flag;


initial begin
        $dumpfile("gcd.vcd");
	$dumpvars(0, gcd);

	clk=0;
	x=24;
	y=16;
end

always #5 clk=~clk;

datapath temp (x,y, controlarr, xr,yr,zr,reset,clk,flag,a,b);
controlunit dummy (xr>0, xr>=yr,reset,clk, controlarr,a,b,flag);


endmodule
