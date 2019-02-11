um = [-1 0.3 1.5 2.5 3.2];
im=[1.1 2.2 2.1 3.2 4.7];
plot(um,im)
plot(um,im, 'o')

C = polyfit(um,im,2)




U = -1:0.01:3.2;

I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
plot(um,im, 'o',U, I)
I=polyval(C,U);
plot(um,im,'o',U,I)