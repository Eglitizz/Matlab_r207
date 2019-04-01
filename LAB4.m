%% 4.LAB.DARBS
% DOTS
t=0:0.01:1;
R1=1; R2=2; R3=3; R4=9; R5=5; R6=6; R7=7 ;
E1=LAB3(t); E2=sin(5*t);
J3=1;
% SISTEMA
R=[R8+R6  -R6  0;
   -R6  R6+R7+R5  -R7
   0  -R7  R1+R2+R3+R4];
E=[E1
   J3*R1  E2
   -E1-J*(R7+R4+R3)];
% Risina
Ik=R\E
% Atrod vajadzigo-SPR UR5, JAUDA PR5
UR5=Ik(2,:)*R5;
PR5=Ik(2,:).*UR5;
% ZIME
figure
yyaxis left
plot(t,UR5);ylabel("U_{R_5}(t)")
yyaxis right
plot(t,PR5);ylabel("P_{R_5}(t)")
xlabel("LAIKS, t,s")





