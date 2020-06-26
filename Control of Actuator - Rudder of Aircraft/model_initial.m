clear; clc;

Ls=11.9e-3;
Rs=1.7;

% current design criteria | bandwidth
positionloop_hz=10*3.14;
speedloop_hz=100*3.14;
currentloop_hz=1000*3.14;
damping=0.707;

flux=(60*56)/(2*3.14);
polepair=4;

% Current Control
Kpcc=2*(currentloop_hz*damping)/Ls - Rs;
Kicc=(currentloop_hz^2)*Ls;

% Inertia (zero stroke) + (Maximum Stroke in inches)*Inertia Adder 
% (per inch of stroke)
J = 0.0001279 + 5.51181*6.372e-7; % In Metres

% Speed Control
Kpsc=2*(speedloop_hz*damping)*J;
Kisc=(speedloop_hz^2);

% Position Control
Kppc=2*(positionloop_hz*damping);
Kipc=(positionloop_hz^2);

% Torque Force Required - 5000N
TL=5.36;
Torque=5;
