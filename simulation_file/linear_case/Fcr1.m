function y = Fcr1(x,a,b,r,c,d)
% a,b,c,d>0, x^r>0
% a>b concave function
% a<b convex function
y = (c*x^r+a)/(d*x^r+b)*x;
end

function y = Fcrdot(xi,ai,bi,ri,ci,di)
% a,b,c,d>0, x^r>0
% a>b concave function
% a<b convex function
% Fcr = (c*x^r+a)/(d*x^r+b)*x;
% calculate derivative derivative
syms x a b r c d;
F = (c*x^r+a)/(d*x^r+b)*x;
Fcr_dot = diff(F,x);
y = subs(Fcr_dot, [x,a,b,r,c,d],[xi,ai,bi,ri,ci,di]);
end

function y = Fcrddot(xi,ai,bi,ri,ci,di)
% a,b,c,d>0, x^r>0
% a>b concave function
% a<b convex function
% Fcr = (c*x^r+a)/(d*x^r+b)*x;
% calculate derivative derivative
syms x a b r c d;
F = (c*x^r+a)/(d*x^r+b)*x;
Fcr_dot = diff(F,x);
Fcr_ddot = diff(Fcr_dot,x);
y = subs(Fcr_ddot, [x,a,b,r,c,d],[xi,ai,bi,ri,ci,di]);
end

function y = Fcr(x,a,b,r,c,d)
% a,b,c,d>0, x^r>0
% a>b concave function
% a<b convex function
y = (c*x^r+a)/(d*x^r+b)*x;
end