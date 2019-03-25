%% DAUDZKONTURU SHEMAS SIMULACIJA
%% 4.LAB.DARBS
R1=1; R2=2; R3=3; R4=4; R5=5; R6=6; R7=7 ;
E1=1; E2=2; E3=3;
R=[R1+R3+R2  -R2  0;
    -R2  R2+R4+R5  -R5;
    0     -R5     R6+R7+R5];
E=[E1;-E2;-E3];
% Risinasim doto vienadojumu sistemu
Ik = R\E
% Esam atradusi konturstravas
% Ir jaatrod IR5 -? UR5-? PR5-?
IR5=Ik(3)-Ik(2)
UR5=IR5*R5
PR5=IR5*UR5
%% SAREZGISIM UZDEVUMU
% Tagad uz katra avota bus 3 spriegumi
E1=[1 -1 0];
E2=[2 -2 0];
E3=[3 -3 0];
% Japardefine E matrica
E = [E1;-E2;-E3];
% Risinasim 4 vienad. sist.
Ik=R\E
% Atradisim IR6-? UR6-? PR6-?
IR6=Ik(3,:)
UR6=IR6*R6
PR6=UR6.*IR6
%% LAIKA MAINIGIE SIGNALI
t=0:0.01:1;
E1t=sin(2*pi*5*t);
E2t=cos(2*pi*7*t);
E3t=rand(size(t));
% Pardefinesim E matricu
E=[E1t;-E2t;-E3t];
% Risinasim
Ik=R\E
% atradisim un uzzimesim
% IR2(t), UR2(t), pr2(t) -?
IR2 = Ik(1,:)-Ik(2,:);
UR2=IR2*R2;
PR2=UR2.*IR2;
plot(t, UR2,t,PR2);legend("u_{R_2}","P_{R_2}")
%% CITS VEIDS KA ZIMET SADU GRAFIKU
figure
yyaxis left
plot(t,UR2);ylabel("U_{R_2}(t)")
yyaxis right
plot(t,PR2);ylabel("P_{R_2}(t)")
xlabel("LAIKS, t,s")
%% REZULTATU PARBAUDE
% parbaudisim KSpL I kontūram
% UR1+UR2+UR3-E1==0
UR1=Ik(1,:)*R1;
UR3=Ik(1,:)*R3;
Utst=UR1+UR2+UR3-E1t;
figure
plot(t,Utst)

