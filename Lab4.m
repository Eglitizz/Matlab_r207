%% Daudzkonturu shemas simulacija
%% 4.lab. darbs
% DOTS
t=0:0.01:1;

R1=1; R2=2; R3=3; R4=9; R5=5; R6=6; R7=7 ;
E1= lab3(t) ; E2=sin(5*t);
J3=1;
% SISTEMA
R=[R8+R6  -R6  0;
   -R6  R6+R7+R5  -R7
   0  -R7  R1+R2+R3+R4];

E = [E1; J3*R1+E2; -E1-J3*(R7+R4+R3)];
% Risina
Ik=R\E;
% Atrod vaajdzigo, spriegums UR-5?, jauda PR-5?
IR5=Ik(3)-Ik(2);
UR5=Ik(2,:)*R5;
PR5=Ik(2,:).*UR5;


%% ZIME GRAFIKUS
figure
yyaxis left
plot(t,UR5);ylabel("U_{R_5}(t)")
yyaxis right
plot(t,PR5);ylabel("P_{R_5}(t)")
xlabel("LAIKS, t,s")
%% Rezultatu parbaude
% UR1+UR2+UR3-E1==0
UR1=Ik(1,:).*R1;
UR3=Ik(1,:).*R3;
Utst=UR1+UR2+UR3-E1t;
figure
plot(t,Utst)

function y = lab3(t) 
% t_saw=4:0.01:5;
t_sawf = (t>=4)&(t<=5); t_saw=t(t_sawf);

% t_sin = 2:0.01:4;
t_sinf = (t>=2)&(t<4); t_sin=t(t_sinf); 

% t_noise = 0:0.01:0.5;
t_noisef = (t>=0)&(t<0.5); t_noise=t(t_noisef); 

% t_const=5:0.01:6;
t_constf = (t>=5)&(t<6); t_const=t(t_constf); 

% t_zero=0.5:0.01:2;
t_zerof = (t>=0.5)&(t<2); t_zero=t(t_zerof); 
%%TROKÐÒA SIGNÂLS
t_noise = 0:0.01:0.5;
y_noise = 3*rand(size(t_noise))-1.5;
plot(t_noise, y_noise)
axis([0 6 -3 3])
hold on
%%NULLES SIGNALS
t_zero=0.5:0.01:2;
y_zero=0*ones(size(t_zero));
plot(t_zero, y_zero)
%%SINUSOÎDA
t_sin = 2:0.01:4;
A0=0; A=3; T=(3-1)/3.5; f = 2/T;
delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
plot(t_sin, y_sin)
%%LINEARI MAINIGS SIGNALS
t_saw=4:0.01:5;
%k=(y_a-y_b)/(t_a-t_b)
k= (2 + 2 ) / (6-8);
delay=4;
y_saw=k*(t_saw-delay);
plot(t_saw,y_saw);
%%KONSTANTE
t_const=5:0.01:6;
%y_const = [2.5 2.5 2.5 % 201 reizi atkârto]
y_const = 2.5*ones(size(t_const));
plot(t_const,y_const)
%%VEKTORU APVIENOSANA
t = [ t_saw,  t_const,];
y=[y_saw,y_const];
plot(t,y)

%hold on
end
