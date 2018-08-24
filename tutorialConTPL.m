% here we demo the usage of functions conTPL1 conTPL2 and conTPL3

%  initialize random TMs
n=10;
m=abs(normrnd(1,1,n,n));
di=sum(m, 2);
TM_B=bsxfun(@rdivide, m, di);

m=abs(normrnd(2,1,n,n));
di=sum(m, 2);
TM_F=bsxfun(@rdivide, m, di);


% the desired TPL
tpl_goal = 1;

% allocate privacy budget at each t
T=20; % if T is known, you can use conTPL1
epsArr=conTPL1(TM_B, TM_F, tpl_goal,T)

% allocate the same privacy budget at each t
conTPL2(TM_B, TM_F, tpl_goal)



