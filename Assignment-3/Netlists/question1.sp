First question Suryasasanka_2019102036
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.param width=10*LAMBDA
.global gnd vdd

VDS vdd gnd 'SUPPLY'
vin_a A 0 pulse 0 1.8 0ns 100ps 100ps 4.9ns 10ns
vin_b B 0 pulse 0 1.8 0ns 100ps 100ps 9.9ns 20ns
ven s 0 pulse  1.8 0 0ns 100ps 100ps 49.9ns 100ns
vbs s_bar 0 pulse  0 1.8 0ns 100ps 100ps 49.9ns 100ns
.subckt invmos y x enable out1 vdd gnd
.param width_N=width
.param width_P=2*width

M1 y x gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M2 y x vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M3 y enable out1 gnd  CMOSN W={width_N} L={2*LAMBDA}
+AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

.ends invmos

.subckt invfinal y x vdd gnd
.param width_N=3.75*width
.param width_P=2.25*width

M1 y x gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M2 y x vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

.ends invfinal


x1 dtop A s out1 vdd gnd invmos
x2 dbot B s_bar out1 vdd gnd invmos
x3 out out1 vdd gnd invfinal

Cin1 A 0 4.31f
Cin2 B 0 4.31f
Cout1 out1 0 8.62f
Cout out 0 8.62f

.tran 0.1n 100n

.measure tran TpdrA
+ TRIG v(A) VAL='SUPPLY/2' RISE=1
+ TARG v(out) VAL='SUPPLY/2' RISE=1

.measure tran TpdfA
+ TRIG v(A) VAL='SUPPLY/2' FALL=1
+ TARG v(out) VAL='SUPPLY/2' FALL=1

.measure tran tpdA param='(TpdrA+TpdfA)/2' goal=0

.measure tran TpdrB
+ TRIG v(B) VAL='SUPPLY/2' RISE=1
+ TARG v(out) VAL='SUPPLY/2' RISE=1

.measure tran TpdfB
+ TRIG v(B) VAL='SUPPLY/2' FALL=1
+ TARG v(out) VAL='SUPPLY/2' FALL=1

.measure tran tpdB param='(TpdrB+TpdfB)/2' goal=0

.control
set hcopypscolor = 1
set color0=white
set color1=black

run
plot v(A)
plot v(B)
plot v(s)
plot v(s_bar)
set curplottitle= SuryaSasanka_2019102036
plot v(out)



.endc
