% Hi liquan, here is a piece of code for you :)

% Run the code, you can find the output is as same as the numbers in line(ii) of Fig3(a) in ICDE17 paper  https://arxiv.org/abs/1610.07543

% see the following comments, about how to use calcPL

clc

% specify the parameters
TM=[0.8,0.2; 0,1]; % moderate temporal corr.
e=0.1; % means epsilon at each t (note: it can be different at each t)
PL=0;  % means the INITIAL (backward) privacy leakage or the LAST (forward) privacy leakage

% function `preCompQDMatrix` needs some functions in tools folder
addpath('tools/');

% frist run the following line to get pre-computed results `EspMatrix`, `qM`, `dM`  
[EspMatrix, qM, dM, ~]= preCompQDMatrix(TM);

% then, at each timestamp, you can (re)use these pre-computed results in calculating the (backward
% or forward) privacy leakage

% note that, the e at each t can be different
PL = calcPL(PL, e, EspMatrix, qM, dM) % t=1
PL = calcPL(PL, e, EspMatrix, qM, dM) % t=2
PL = calcPL(PL, e, EspMatrix, qM, dM) % t=3
PL = calcPL(PL, e, EspMatrix, qM, dM) % t=4
PL = calcPL(PL, e, EspMatrix, qM, dM) % t=5
PL = calcPL(PL, e, EspMatrix, qM, dM) % t=6
PL = calcPL(PL, e, EspMatrix, qM, dM) % t=7
PL = calcPL(PL, e, EspMatrix, qM, dM) % t=8
PL = calcPL(PL, e, EspMatrix, qM, dM) % t=9
PL = calcPL(PL, e, EspMatrix, qM, dM) % t=10

% what is the difference between BPL and FPL? (assume backward TM = forward TM)
% BPL at t = calcPL(BPL at t-1, e at t, EspMatrix, qM, dM)
% if t=1, BPL=0;
% FPL at t = calcPL(FPL at t+1, e at t, EspMatrix, qM, dM)
% if t=the current/the last (you haven't release the next data), FPL=0.

% what is TPL?
% TPL_t = BPL_t + FPL_t - e_t 

% you can try to think: how to draw line(ii) in Fig3(c) in ICDE17 paper?

% Good luck!