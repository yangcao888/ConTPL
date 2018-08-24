%=========================================
% Method 2 for calculating appropriate privacy budgets (eps) to against a
% given level of BPL.
% This function runs at each time t; the goal is to control BPL at t
% 2018/08/24 author: Yang Cao 
%-----------------inputs-----------------
% bpl_previous: Backward privacy leakage at t-1
% TM_B: backward transition matrix 
% bpl_t_goal: a desired level of TPL at the current time
%-----------------outputs------------------------
% e_t: the epsilon you should use at t.
%================================================
function  [e_t]=conBPL(bpl_previous, TM_B, bpl_t_goal)

addpath('tools/');


[EspMatrix, qM, dM, ~]= preCompQDMatrix(TM_B);


[EspMatrix_B, qM_B, dM_B, QDplusInd_B]= preCompQDMatrix(TM_B);
EspMatrix_B(isnan(EspMatrix_B)) = 0;


a1=0;
an=bpl_t_goal+1;
[aArrMax_B, qArrMax_B, dArrMax_B] = genLFunc(a1, an, EspMatrix_B, qM_B, dM_B);


% find a_B
L_B=calcPLbyFunc(bpl_previous, aArrMax_B, qArrMax_B, dArrMax_B);

e_t = bpl_t_goal - L_B;

if e_t<0
    e_t = 'not possible';
end

end