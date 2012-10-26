clear
clc


%Control parameters
OnLim = 150;
OffLim = 0;
bw = 0.01;


KpW=0.83/2;
KiW=300/2;
KpP=62.8;
KiP=0;
ix = 1;


% Parameters for DC motor 
Ra=2;
La=5.2e-3;
Jeq=152e-6;
B=0;
Ke=0.1;
Kt=0.1;
Kpwm=12;
