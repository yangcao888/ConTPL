%=========================================
% Method 2 for calculating appropriate privacy budgets (eps) to against a
% given level of TPL.
% This method does not need to know T in advance.
% This function runs before starting to release data; the goal is to control TPL at any t.
% 2018/08/24 author: Yang Cao 
%-----------------inputs-----------------
% TM_B: backward transition matrix 
% TM_F: forward transition matrix 
% tpl_goal: a desired level of TPL
%-----------------outputs------------------------
% eps: the epsilon you should use at every t.
% errCode: if 0, ok; if 1 means the result is not usable.
%================================================
function  [eps, errCode]=conTPL2(TM_B, TM_F, tpl_goal)

addpath('tools/');
[eps, errCode] = allocEspByUpperBound(tpl_goal, TM_B, TM_F);

end