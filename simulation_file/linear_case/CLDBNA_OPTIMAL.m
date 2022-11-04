%% Name: Optimal k for CLDBNA
%% Description: This files is designed for the evaluation of the dynamical behavior of the closed-loop system for the first order system. 
%% Designer: Shuyuan Fan
%% Institute: ICS of TUHH
%% shuyuan.fan@tuhh.de


function [kop,koptimal,Eoptimal] = CLDBNA_OPTIMAL(p,beta,x_0,x_f,delta)
% nonlinear optimal control for the first order system
% u = -k(c*x^r+a)/(d*x^r+b)*x
% if c=d,a=b, it becomes CLDBLA
% a,b,c,d>0
% p = [a,b,c,d,r] denotes the nonlinear function parameters
% beta denotes the ratio factor of each evaluation part
% x_0 denotes the maximum states is assumed positive 
% x_f denotes the final states to be oberved
% delta is the system uncertainty or disturbance  

syms x a b c d r k b1 b2 b3 b4 b5 x0 xf delt
f = k * (c*x^r+a)/(d*x^r+b)*x;
f2 = (d*x^(r+1)+b*x)/(c*x^(r+1)+c*x)/k;

% evaluation of maximum input
E1 = b1*k*(c*x0^r+a)/(d*x0^r+b)*x0;

% evaluation of convergence time
E2 = b2*int(1/f,x,[xf,x0]);

% evaluation of robustness
E3 = b3 * delt*b/(k*a);

% evaluation of  everage input
E4 = b4 * 1/(x0-xf)*int(f,x,[xf,x0]);

% evaluation of state 
E5 = b5 * int(f2,x,[xf,x0]);

% comprehensive evaluation function
E = E1+E2+E3+E4+E5;

% partial derivative of cost function
Ek = diff(E,k);

% substitute the parameters
Ekk =subs(Ek,[x,a,b,c,d,r,k,b1,b2,b3,b4,b5,x0,xf,delt],[x,p(1),p(2),p(3),p(4),p(5),k,beta(1),beta(2),beta(3),beta(4),beta(5),x_0,x_f,delta]);

% solve the function of derivative =0
kop = solve(Ekk,k);

% find the positive one
[i,j] = size(kop);
koptimal = 0;
for l = 1:i
    if kop(l)>0
        koptimal = kop(l);
    end
end

% calculate the cost
Eoptimal = subs(E,[x,a,b,c,d,r,k,b1,b2,b3,b4,b5,x0,xf,delt],[x,p(1),p(2),p(3),p(4),p(5),koptimal,beta(1),beta(2),beta(3),beta(4),beta(5),x_0,x_f,delta]);
end
