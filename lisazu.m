t = 0:0.01:1;
f1=3; f2 = 11;
for i = 0:pi/100:10*pi
x = cos(2*pi*f1*t+i);
y = sin(2*pi*f2*t);
plot(x,y)
pause(0.01)
end

