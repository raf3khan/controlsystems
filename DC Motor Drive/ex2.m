%% EX1
Vmax=400;
Ir=42;
wr=(1000*2*pi)/60;
ka=3.4;
Tr=143;
Ra=1.02;
La=0.0102;
J=0.4;
B=0.682;
ia=1;

A1=[(-Ra/La) ((-ka*ia)/La); ((ka*ia)/J) (-B/J)];
B1=[(1/La) 0; 0 (-1/J)];
C1=[1 0;0 1];
D1=[0 0;0 0];



%% EX2

open_A1=[(-Ra/La) ((-ka*ia)/La) 0; ((ka*ia)/J) (-B/J) 0; 1 0 0];
open_B1=[(1/La); 0; 0];


f=0.7;
ff=f*f;
Ts=0.02;
wn=4/(f*Ts);

a=-wn*f;
b1=i*(wn*sqrt(1-ff));
b2=-i*(wn*sqrt(1-ff));
% p2=[a1+b1 a1+b2 -B/J];
% p2=[-216.6+186.32i -216.6-186.32i -B/J];
p2=[-215+160i -215-160i -B/J];
k=place(open_A1, open_B1, p2);

% sim('q_two_complete')
%% 
[A2,B2,C2,D2]=linmod('q_two');