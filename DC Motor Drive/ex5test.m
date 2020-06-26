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

A4=[-0.5 0 -455 0;0 -2.9 455 0; 1 -1 0 0;1 0 0 0];
B4=[17; 0; 0; 0];

%% 

f=0.707;
ff=f*f;
Ts=0.02;
wn_i=4/(f*Ts);
wn_s=4/(f*0.5);

a1=-wn_i*f;
b11=i*(wn_i*sqrt(1-ff));
b21=-i*(wn_i*sqrt(1-ff));

a2=-wn_s*f;
b12=i*(wn_s*sqrt(1-ff));
b22=-i*(wn_s*sqrt(1-ff));

p4=[a1+b11 a1+b21 a2+b12 a2+b22];
kq4=place(A4, B4, p4);
%% 

C=[0 1 0];
C0=[1 0 0];
A0=[-3.402 1 0;-911 0 1;-1546 0 0];

P=[C; C*A_fs; C*(A_fs^2)];
P0=[C0; C0*A0; C0*(A0^2)];
Pinv=P^-1;
Tinv=[Pinv*P0];
L0=[250-3.402; 27200-911; 1152000-1546];
L=Tinv*L0;

% L=[2253.1; 246.6; 57.5];