%%Pirmais punkts
syms x a b c
solve(c+b*x+a*x^(1/2)==0,x)
pretty(c+b*x+a*x^(1/2))
%%Otrais punkts
syms x
y = x^2*sin(sqrt(2)*sqrt(x));
yd = diff(y,x);
yv = vectorize(y);
ydv = vectorize(yd);
x = 0:0.01:213;
yn = eval(yv);
ydn = eval(ydv);
plot(x, yn, x, ydn)
yltx = latex(y);
yltxd = latex(yd);
h = legend(['$', yltx, '$'], ['$',yltxd, '$']);
set(h, 'Interpreter', 'latex')





        



