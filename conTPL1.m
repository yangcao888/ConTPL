%=========================================
% Method 1 for calculating appropriate privacy budgets (eps) to against a
% given level of TPL.
% This method needs to know T in advance.
% 2018/08/24 author: Yang Cao
%-----------------inputs-----------------
% TM_B: backward transition matrix
% TM_F: forward transition matrix
% tpl_goal: a desired level of TPL
% T: end of the timeline
%-----------------outputs------------------------
% epsArr: double array with T elements.
%   the privacy budgets at each t from 1 to T.
%================================================

function  [epsArr]=conTPL1(TM_B, TM_F, tpl_goal,T)
    [e_s, e_mid, e_end]=allocEspByQuantify(tpl_goal, TM_B, TM_F);
    eArr_mid=ones(1, T-2)*e_mid;
    epsArr=[e_s, eArr_mid, e_end];
end