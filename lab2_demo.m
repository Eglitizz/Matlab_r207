%% 2.laboratorijas darbs
%% Ievads simboliskajā matemātikā
syms a b c d
A=[a b ; c d];
syms a1 b1 c1 d1
B=[a1 b1 ; c1 d1];
A*B
%% Kā definēt simbolisko mainīgo
% 1.variants
x = sym ('x', 'positive');
sqrt(x^2)
% 2.variants
syms a2 b2 c2 d2
A = [a2 b2; c2 d2];
A'
% pateiksim kā a2 b2 c2 d2 nav kompleksie
syms a2 b2 c2 d2 real
A=[a2 b2; c2 d2];
A'
% 3.variants
A= sym('a',[2 3])
%% Atvasinasana
% Atvasinasan notiek ar diff funkciju
% sintakse:
% diff(ko_atvasināt, pēc_kā_atvasināt...)
% cik reizes atvasinaat
syms x
y = x^2
diff(y)
syms x y 
z=x^5*y^3;
diff(z,x)
diff(z,y) %norādam pēc ka atvasinat
%pēc x, vai pēc y
%daudzkartīgais atvasinājums
syms x
y=x^5;
diff(y,x,2)
%% integrēšana
syms x
int(x^2)
%sintakse:
%int(integrējamā_funkcija,pēc_kā_integrēt)
syms x y 
z=x^2*y^3;
int(z,x)
int(z,y)
%% noteiktais integrālis
syms x
y = x;
int(y,x,0,3)
int(x^2,x,-3,3)
%% robežas
syms x
limit(1/(x-1) , x,1,'left')
limit(1/(x-1), x,1,'right')
%% vienadojumu risinasana
% dots x^2-3x+2=0
syms x
% sintakse:
% solve(izteiksme_ko_jaatrod)
% zem izteiksmes ir jāraksta
% tikai kreisā puse, ja labajā
%izteiksme = 0
%tad raksta tikai kreiso pusi
solve(x^2-3*x+2,x)
%% izteiksmju vienkarsosana
syms x
y=(x-1)*(x-2)/((x-3)^2*(x-4));
z=diff(y,x)
% vienkarsosim atbildi
simplify(z)
%% citas vienkarsojuma funkcijas
z=(x-1)*(x-2);
z1=expand(z)
factor(z1)
%% kā attelot simbolisko funkciju
pretty(y)
%% kā attelot simbolisko fuinkciju
yltx = latex(y);
h = text (0.5, 0.5, ['$', yltx, '$']);
set(h, 'interpreter', 'Latex')
%% kā uzzimet grafiku no simboliskas funkcijas
ezplot(y)
%% kā uzzimet grafiku no simboliskas funkcijas
% (priekš laboratorijas darba)
% 1. dots y= (x-1)/(x-2); ir jāatrod
% taas atvasinajums, un jauzzime to
% dotajā intervala
% 2.meklēsim atvasinājumu
syms x
y = (x-1)/(x-2);
yd = diff(y,x)
% 3. nodefinesim intervalu kurā uzzimesim funkciju
x = -2:0.01:4;
% 4.veiksim izteiksmes vektorizaciju
% (ieliksim punktiņus pirms * / ^)
yv = vectorize(y)
ydv = vectorize (yd)
%5.x vietā likšu 3.solī definētu vektoru
% interpretēsim izteiksmes
yn = eval(yv)
ydn = eval (ydv)
% 6.uzzimesim ar plot grafiku
plot(x, yn, x, ydn)
ylim([-10 10])
% 7.grafika anotacija
yltx = latex(y);
yltxd = latex(yd);
h=legend(['$', yltx, '$'],['$', yltxd, '$'])
set(h,'Interpreter','Latex')