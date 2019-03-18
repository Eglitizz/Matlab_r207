%% 3.Laboratorijas darbs
% Ričards Eglītis REBCO2


%% DARBA UZDEVUMS
% *jaizmanto datu filtracija un failu jadefine ka funkciju ar attiecigiem
% ieejas argumentiem un atgriezamajam vertibam
%% TROKSNA SIGNALS
t_noise = 0:0.01:0.5;
y_noise = 3*rand(size(t_noise))-1.5;
plot(t_noise, y_noise)
axis([0 6 -3 3])
hold on
%% NULLES SIGNALS
t_zero=0.5:0.01:2;
y_zero=0*ones(size(t_zero));
plot(t_zero, y_zero)
%% SINUSOIDA
t_sin = 2:0.01:4;
A0=0; A=3; T=(3-1)/3.5; f = 2/T;
delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
plot(t_sin, y_sin)
%% LINEARI MAINIGS SIGNALS
t_saw=4:0.01:5;
%% MAINIGAIS k=(y_a-y_b)/(t_a-t_b)
k= (2 + 2 ) / (6-8);
delay=4;
y_saw=k*(t_saw-delay);
plot(t_saw,y_saw);
%% KONSTANTE
t_const=5:0.01:6;
% y_const = [2.5 2.5 2.5 % 201 reizi atk#rto]
y_const = 2.5*ones(size(t_const));
plot(t_const,y_const)
%% VEKTORU APVIENOSANA
t = [ t_saw, t_const,];
y=[y_saw,y_const];
plot(t,y)
% hold on
%% 3.darba uzdevuma grafiks
%
% <<../labo3.jpg>>
%

%% Secinajumi
%Veicot 2.laboratorijas darbu grutibas sagādāja izveidot grafiku un pievienot "legend".Viss parejais ar mazliet uzmanibas tika veikts bez probliemam.
%Šajā darbā iemācijos funkcijas arpēķināšanu ar solve palīdzību, izmantot preffy funkciju, sameklēt integrāli un atrast atvasinajumu, un to uzzimet uz x,y asim.
%Sapratu, kas ir matlab simboliska pakete.