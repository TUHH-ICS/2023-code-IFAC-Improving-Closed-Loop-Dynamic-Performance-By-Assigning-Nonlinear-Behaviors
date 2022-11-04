function [kop,koptimal,Eoptimal] = CLDBLA_OPTIMAL(beta,x_0,x_f,delta)
% 
syms x k b1 b2 b3 b4 b5 x0 xf d
%E = b1*k*x0+b2*log(x0/xf)/k+b3*d/k+ b4*k/(x0-xf)*0.5*(x0^2-xf^2)+ b5*(x0-xf)/k ;
f = k *x;
E1 = b1*k*x0;
E2 = b2*int(1/f,x,[xf,x0]);
E3 = b3 * d/(k);
E4 = b4 * 1/(x0-xf)*int(f,x,[xf,x0]);
E5 = b5 * int(1/f*x,x,[xf,x0]);
E = E1+E2+E3+E4+E5;
Ek = diff(E,k);
Ekk =subs(Ek,[x,k,b1,b2,b3,b4,b5,x0,xf,d],[x,k,beta(1),beta(2),beta(3),beta(4),beta(5),x_0,x_f,delta]);
kop = solve(Ekk,k);
[i,j] = size(kop);
koptimal = 0;
for l = 1:i
    if kop(l)>0
        koptimal = kop(l);
    end
end
Eoptimal = subs(E,[k,b1,b2,b3,b4,b5,x0,xf,d],[koptimal,beta(1),beta(2),beta(3),beta(4),beta(5),x_0,x_f,delta]);
end


