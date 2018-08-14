
%=========================================
% generate a TM with a specified strength of temproal correlation
% 13-Aug-2018 author: Yang Cao 
%-----------------inputs-----------------
% s: s>=0, SMALLER s indicates STRONGER temporal correlations
% n: the dimension of generated matrix
%-----------------outputs-----------------
% TM: generated TM
%=========================================


function [TM] = genTM(s, n)
    TM= diag(ones(n,1))+s;
    TM = TM+s;
    TM = TM./sum(TM,2);
end