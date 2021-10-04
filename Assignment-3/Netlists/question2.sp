Q2_Suryasasanka_2019102036
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.param width=10*LAMBDA
.global gnd vdd

VDS vdd gnd 'SUPPLY'
vin_a A 0 pulse 0 1.8 0ns 100ps 100ps 4.9ns 10ns
vin_b B 0 pulse 0 1.8 0ns 100ps 100ps 9.9ns 20ns
vin_c C 0 pulse 0 1.8 0ns 100ps 100ps 19.9ns 40ns
vin_d D 0 pulse 0 1.8 0ns 100ps 100ps 39.9ns 80ns
vin_abar A_bar 0 pulse 1.8 0 0ns 100ps 100ps 4.9ns 10ns
vin_bbar B_bar 0 pulse 1.8 0 0ns 100ps 100ps 9.9ns 20ns
vin_cbar C_bar 0 pulse 1.8 0 0ns 100ps 100ps 19.9ns 40ns
vin_dbar D_bar 0 pulse 1.8 0 0ns 100ps 100ps 39.9ns 80ns
  

.subckt mux a b enable enable_bar out vdd gnd
.param width_N=width


M1 a enable_bar out gnd  CMOSN W={width_N} L={2*LAMBDA}
+AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M2 b enable out gnd  CMOSN W={width_N} L={2*LAMBDA}
+AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

.ends mux

 

x1 gnd vdd D D_bar four vdd gnd mux
x2 four vdd C C_bar stageb1 vdd gnd mux
x3 stageb1 vdd B B_bar stageb2 vdd gnd mux

x4 gnd vdd D D_bar four2 vdd gnd mux
x5 gnd four2 C C_bar stagea1 vdd gnd mux

x6 gnd vdd D D_bar four3 vdd gnd mux
x7 four3 vdd C C_bar stagea2 vdd gnd mux
x8 stagea1 stagea2  B B_bar stagea3 vdd gnd mux

x9 stagea3 stageb2 A A_bar out vdd gnd mux

Cout out gnd 17.24f

.tran 0.1n 200n

.measure tran tplh
+TRIG v(out) val = '0' RISE=1
+TARG v(out) val = '1' RISE=1

.measure tran tphl
+TRIG v(out) val = '1' FALL=1
+TARG v(out) val = '0' FALL=1


.control
set hcopypscolor = 1
set color0=white
set color1=black


run
plot v(A)
plot v(B)
plot v(C)
plot v(D)
set curplottitle= Suryasasanka_2019102036
plot (out)
.endc
