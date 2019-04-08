function y = mans_signaals(t)
t1f = (t>=0)&(t<2);
t2f = (t>=2)&(t<=4);
t1 = t(t1f);
t2 = t(t2f);
y1 = 3+t1*0;
y1 = 3*ones(size(t1));
y2 = sin(2*pi*(1/T)*t2);
T = 2; 
y = [y1, y2];