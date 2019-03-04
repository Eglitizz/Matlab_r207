%%SINUSOĪDA
t_sin = 1:0.01:2.5;
A0=0; A=2.5; T=(2.5-1)/3.5; f = 1/T;
delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
plot(t_sin, y_sin)
%%LINEARI MAINIGS SIGNALS
t_saw=6.5:0.01:8;
%k=(y_a-y_b)/(t_a-t_b)
k= (2.5 + 2.5) / (6.5-8);
delay=7.25;
y_saw=k*(t_saw-delay);
plot(t_saw,y_saw);
%%KONSTANTE
t_const=4.5:0.01:6.5;
%y_const = [2.5 2.5 2.5 % 201 reizi atkārto]
y_const = 2.5*ones(size(t_const));
plot(t_const,y_const)
%%NULLES SIGNALS
t_zero=0:0.1:1;
y_zero=0*ones(size(t_zero));
plot(t_zero, y_zero)
%%TROKŠŅA SIGNĀLS
t_noise = 2.5:0.01:4.5;
y_noise = 3*rand(size(t_noise))-1.5;
plot(t_noise, y_noise)
%%VEKTORU APVIENOSANA
t = [t_zero, t_sin, t_noise, t_const, t_saw];
y=[y_zero, y_sin,y_noise,y_const,y_saw];
plot(t,y)
%axis([0 8 -2.5 2.5])
%hold on



