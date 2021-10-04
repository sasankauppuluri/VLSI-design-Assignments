Third question
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.param width_N=20*LAMBDA
.param width_P=2.5*width_N
.global gnd vdd

Vdd vdd gnd 'SUPPLY'
Vdd1 vdd1 gnd 'SUPPLY'
vGS a gnd 'SUPPLY'

M1 b a gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M2 b a vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M3 c b gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M4 c b vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}


.dc VGS 0 1.8 0.01

.control
run

set curplottitle="SuryaSasanka_2019102036"
let y=-v(a)+ 2.4363
let y1=-v(a)+1.1019
plot v(a) v(b) y y1

set curplottitle="SuryaSasanka_2019102036"
let volt=v(b)
plot deriv(volt)
set hcopypscolor = 1 *White background
hardcopy q3preplot.eps v(a) v(b) y y1
.endc

