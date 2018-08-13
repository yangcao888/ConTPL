%=========================================
% A shell function for demo ConTPL
% This function calculates the BPL or FPL due to  TM
% (just a shell of function `precomputation` )
% 2018/08/13 author: Yang Cao 
%---------------- How to use this function--------

%  addpath('func/');
%  [EspMatrix, qM, dM, ~]= preCompQDMatrix(TM);
% then, feed `EspMatrix`, `qM`, `dM`  into function calcPL
%-----------------inputs-----------------
% TM: (forward or backward) transition matrix 
% e: = epsilon in DP, the current mechnisms satisfied e-DP
% PL: privacy leakage at the previous time (if BPL), or privacy leakage at the next timestamp (if FPL).
%-----------------outputs------------------------
% newPL: new (backward or forward) privacy leakage
%================================================

function [newPL]=calcPL(PL, e, EspMatrix, qM, dM)



% calc by precomputation
[incrementalPL, ~, ~] = calcPLbyPreComp(PL, EspMatrix, qM, dM);
newPL = incrementalPL+ e;

end