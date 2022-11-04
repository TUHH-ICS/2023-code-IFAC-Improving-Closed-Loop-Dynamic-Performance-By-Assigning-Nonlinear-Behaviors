%% parameters
beta= [0.5;2;2;0.5;1];
% beta1 = max u; beta2 = time; beta3 = steady state error
% beta4 = average inputs  %beta5 = integral absolute state

%% caculate the optimal gain
% nonlinear optimal control for the first order system
% u = -k(c*x^r+a)/(d*x^r+b)*x
% if c=d,a=b, it becomes CLDBLA
% a,b,c,d>0
% p = [a,b,c,d,r] denotes the nonlinear function parameters
% beta denotes the ratio factor of each evaluation part
% x_0 denotes the maximum states is assumed positive 
% x_f denotes the final states to be oberved
% delta is the system uncertainty or disturbance  

%nonlinear
p1 = [0.4,0.02,1,1,2];
p2 = [0.5,0.04,1,1,2];
%linear
pl = [1,1,1,1,2];

x01 = 2;
x02 = 1;
xf1 = 0.01;
xf2 = 0.01;
delta = 1;
[k_all1,kn1,Eop1]= CLDBNA_OPTIMAL(p1,beta,x01,xf1,delta);
kn1 = sym2poly(kn1);
[k_all2,kn2,Eop2]= CLDBNA_OPTIMAL(p2,beta,x02,xf2,delta);
kn2 = sym2poly(kn2);
[k_all_l1,kl1,Eop_l1]= CLDBNA_OPTIMAL(pl,beta,x01,xf1,delta);
kl1 = sym2poly(kl1);
[k_all_l2,kl2,Eop_l2]= CLDBNA_OPTIMAL(pl,beta,x02,xf2,delta);
kl2 = sym2poly(kl2);
En1=sym2poly(Eop1);
En2=sym2poly(Eop2);
En= sqrt(En1^2+En2^2);
El1= sym2poly(Eop_l1);
El2= sym2poly(Eop_l2);
El= sqrt(El1^2+El2^2);