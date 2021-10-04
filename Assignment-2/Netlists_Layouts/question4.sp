Third question
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.param width_N1=20*LAMBDA
.param width_P1=2.5*width_N1
.param width_N2=4*width_N1
.param width_P2=2.5*width_N2
.param width_N3=16*width_N1
.param width_P3=2.5*width_N3
.param width_N4=64*width_N1
.param width_P4=2.5*width_N4
.param width_N5=376*width_N1
.param width_P5=2.5*width_N5

.global gnd vdd

Vdd vdd gnd 'SUPPLY'
VDS D1 gnd 1.8
VDS1 gnd S1 0
VGS in gnd pwl (0 0V 0.5ns 1.8V 1.1ns 1.8V 1.5ns 0V 10ns 0V)

M1 b in gnd gnd CMOSN W={width_N1} L={2*LAMBDA}
+ AS={5*width_N1*LAMBDA} PS={10*LAMBDA+2*width_N1} AD={5*width_N1*LAMBDA} PD={10*LAMBDA+2*width_N1}

M2 b in vdd vdd CMOSP W={width_P1} L={2*LAMBDA}
+ AS={5*width_P1*LAMBDA} PS={10*LAMBDA+2*width_P1} AD={5*width_P1*LAMBDA} PD={10*LAMBDA+2*width_P1}

M3 c b gnd gnd CMOSN W={width_N2} L={2*LAMBDA}
+ AS={5*width_N2*LAMBDA} PS={10*LAMBDA+2*width_N2} AD={5*width_N2*LAMBDA} PD={10*LAMBDA+2*width_N2}

M4 c b vdd vdd CMOSP W={width_P2} L={2*LAMBDA}
+ AS={5*width_P2*LAMBDA} PS={10*LAMBDA+2*width_P2} AD={5*width_P2*LAMBDA} PD={10*LAMBDA+2*width_P2}

M5 d c S1 gnd CMOSN W={width_N3} L={2*LAMBDA}
+ AS={5*width_N3*LAMBDA} PS={10*LAMBDA+2*width_N3} AD={5*width_N3*LAMBDA} PD={10*LAMBDA+2*width_N3}

M6 d c D1 vdd CMOSP W={width_P3} L={2*LAMBDA}
+ AS={5*width_P3*LAMBDA} PS={10*LAMBDA+2*width_P3} AD={5*width_P3*LAMBDA} PD={10*LAMBDA+2*width_P3}

M7 e d gnd gnd CMOSN W={width_N4} L={2*LAMBDA}
+ AS={5*width_N4*LAMBDA} PS={10*LAMBDA+2*width_N4} AD={5*width_N4*LAMBDA} PD={10*LAMBDA+2*width_N4}

M8 e d vdd vdd CMOSP W={width_P4} L={2*LAMBDA}
+ AS={5*width_P4*LAMBDA} PS={10*LAMBDA+2*width_P4} AD={5*width_P4*LAMBDA} PD={10*LAMBDA+2*width_P4}

M9 f e gnd gnd CMOSN W={width_N5} L={2*LAMBDA}
+ AS={5*width_N5*LAMBDA} PS={10*LAMBDA+2*width_N5} AD={5*width_N5*LAMBDA} PD={10*LAMBDA+2*width_N5}

M10 f e vdd vdd CMOSP W={width_P5} L={2*LAMBDA}
+ AS={5*width_P5*LAMBDA} PS={10*LAMBDA+2*width_P5} AD={5*width_P5*LAMBDA} PD={10*LAMBDA+2*width_P5}

Cout f gnd 1pf

.tran 10p 5n 

.measure tran tr_c
+ TRIG v(c) VAL='SUPPLY/10' RISE=1
+ TARG v(c) VAL='9*SUPPLY/10' RISE=1

.measure tran tf_c
+ TRIG v(c) VAL='9*SUPPLY/10' FALL=1
+ TARG v(c) VAL='SUPPLY/10' FALL=1

.measure tran tr_d
+ TRIG v(d) VAL='SUPPLY/10' RISE=1
+ TARG v(d) VAL='9*SUPPLY/10' RISE=1

.measure tran tf_d
+ TRIG v(d) VAL='9*SUPPLY/10' FALL=1
+ TARG v(d) VAL='SUPPLY/10' FALL=1


.measure tran Tpdr3
+ TRIG v(c) VAL='SUPPLY/2' FALL=1
+ TARG v(d) VAL='SUPPLY/2' RISE=1

.measure tran Tpdf3
+ TRIG v(c) VAL='SUPPLY/2' RISE=1
+ TARG v(d) VAL='SUPPLY/2' FALL=1

.measure tran tpd3 param='(Tpdr3+Tpdf3)/2' goal=0

.measure tran Tpdr4
+ TRIG v(d) VAL='SUPPLY/2' FALL=1
+ TARG v(e) VAL='SUPPLY/2' RISE=1

.measure tran Tpdf4
+ TRIG v(d) VAL='SUPPLY/2' RISE=1
+ TARG v(e) VAL='SUPPLY/2' FALL=1

.measure tran tpd4 param='(Tpdr4+Tpdf4)/2' goal=0

.control
run

let x= (-VDS#branch)
let y= (-VDS1#branch)

set curplottitle="suryasasanka_2019102036"
plot v(c) v(d)
plot x y
set hcopypscolor = 1 *White background
hardcopy q4dplot.eps x y
.endc
