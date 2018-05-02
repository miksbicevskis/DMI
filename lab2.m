%1 solve atrisinajums
syms c a x b
n = solve(a+exp(b*x^2-x)',x)
pretty(n)
%2
syms x 
y = (-18*x^2*sin(6*x^3))
y_atv=diff(y)
y_atv=simplify(y_atv)
y_vect=vectorize(y);
y_atv_vect=vectorize(y_atv);
x = -1.5:0.001:1.5;
y_num=eval(y_atv_vect)
y_atv_num=eval(y_atv_vect);
plot(x,y_num,x,y_atv_num)
y_ltx = latex(y);
y_atv_ltx = latex(y_atv);
h = legend(['$',y_ltx,'$'],['$',y_atv_ltx,'$'])
set(h,'Interpreter','latex')