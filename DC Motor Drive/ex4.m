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
Jm=0.2;
Jl=0.2;
Bm=0.1;
Bl=0.582;
K=91;

%% 

A_fs=[-0.5 0 -455;0 -2.9 455; 1 -1 0];
B_fs=[17 0; 0 -5; 0 0];
C_fs=[1 0 0; 0 1 0; 0 0 1];
D_fs=[0 0;0 0; 0 0];

%% 

% A1=[(-Ra/La) ((-ka*ia)/La); (ka*ia)/J -(B/J)];
% B1=[(1/La) 0; 0 (-1/J)];
% C1=[1 0;0 1];
% D1=[0 0;0 0];

A4=[-0.5 0 -455 0;0 -2.9 455 0; 1 -1 0 0;1 0 0 0];
B4=[17; 0; 0; 0];

%% 
% A3=[-400.000000000016 0 80024.1672985294 0; 16.1500000000004 -10.2050000000000 -2040.61626611250 0; -1 0 0 0; 0 1 0 0];
% B3=[0; 0; 1; 0];
% C3=[1 0 0 0; 0 1 0 0];
% D3=[0;0];

f=0.707;
ff=f*f;
Ts=1;
wn_i=4/(f*Ts);
wn_s=4/(f*0.5);

a1=-wn_i*f;
b11=i*(wn_i*sqrt(1-ff));
b21=-i*(wn_i*sqrt(1-ff));

a2=-wn_s*f;
b12=i*(wn_s*sqrt(1-ff));
b22=-i*(wn_s*sqrt(1-ff));

p4=[-90 -30 a2+b12 a2+b22];
% p4=[-40.4 -7.2 -3.37+22.7i -3.37-22.7i];
% No Subsys kq2=[3.06000000000016 -3.40000000000000 816.246506445000];
kq4=place(A4, B4, p4);

% sim('q_three')