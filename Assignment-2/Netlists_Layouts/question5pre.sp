Fifth question
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.param width_N=20*LAMBDA
.param width_P=2.5*width_N
.global gnd vdd

VDS vdd gnd 'SUPPLY'
 
.subckt inv y x vdd gnd
.param width_N=20*LAMBDA
.param width_P=2.5*width_N

M1 y x gnd gnd CMOSN W={width_N} L={2*LAMBDA} 
+AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M2 y x vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inv

x1 inp2 inp1 vdd gnd inv
x2 inp3 inp2 vdd gnd inv
x3 inp4 inp3 vdd gnd inv
x4 inp5 inp4 vdd gnd inv
x5 inp6 inp5 vdd gnd inv
x6 inp7 inp6 vdd gnd inv
x7 inp8 inp7 vdd gnd inv
x8 inp9 inp8 vdd gnd inv
x9 inp10 inp9 vdd gnd inv
x10 inp11 inp10 vdd gnd inv
x11 inp12 inp11 vdd gnd inv
x12 inp13 inp12 vdd gnd inv
x13 inp14 inp13 vdd gnd inv
x14 inp15 inp14 vdd gnd inv
x15 inp16 inp15 vdd gnd inv
x16 inp17 inp16 vdd gnd inv
x17 inp18 inp17 vdd gnd inv
x18 inp19 inp18 vdd gnd inv
x19 inp20 inp19 vdd gnd inv
x20 inp21 inp20 vdd gnd inv
x21 inp22 inp21 vdd gnd inv
x22 inp23 inp22 vdd gnd inv
x23 inp24 inp23 vdd gnd inv
x24 inp25 inp24 vdd gnd inv
x25 inp26 inp25 vdd gnd inv
x26 inp27 inp26 vdd gnd inv
x27 inp28 inp27 vdd gnd inv
x28 inp29 inp28 vdd gnd inv
x29 inp30 inp29 vdd gnd inv
x30 inp31 inp30 vdd gnd inv
x31 inp1 inp31 vdd gnd inv

.tran 0.01n 10n
.ic v(inp1)=1.8 
.measure tran tfreq
+ TRIG v(inp1) VAL='SUPPLY/2' RISE=1
+ TARG v(inp1) VAL='SUPPLY/2' RISE=2
 
.measure tran tpdr
+ TRIG v(inp1) VAL='SUPPLY/2' RISE=1
+ TARG v(inp2) VAL='SUPPLY/2' FALL=1
 
.measure tran tpdf
+ TRIG v(inp1) VAL='SUPPLY/2' FALL=1
+ TARG v(inp2) VAL='SUPPLY/2' RISE=1
 
.measure tran tpd param='(tpdr+tpdf)/2' goal=0
 

.control
run

set curplottitle="suryasasanka_2019102036"
plot v(inp1) v(inp2) 
set hcopypscolor = 1 *White background
hardcopy q5pre.eps v(inp1) v(inp2)
.endc


