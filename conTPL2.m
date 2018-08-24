%=========================================
% Method 2 for calculating appropriate privacy budgets (eps) to against a
% given level of TPL.
% This method does not need to know T in advance.
% 2018/08/24 author: Yang Cao 
%-----------------inputs-----------------
% TM_B: backward transition matrix 
% TM_F: forward transition matrix 
% tpl_goal: a desired level of TPL
%-----------------outputs------------------------
% eps: the epsilon you should use at every t.
%================================================
function  [eps]=conTPL2(TM_B, TM_F, tpl_goal)

addpath('tools/');
eps = allocEspByUpperBound(tpl_goal, TM_B, TM_F);

end