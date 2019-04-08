%% 6.laboratorijas darbs
%%videjas aun efektivas vertibas noteiksana
%% videjas vertibas noteiksaan
t = 0:0.01:4;
N = length(t);
xv3a = 1/(N-1)*(sum(sig(t(1:end-1))))
xv3b = 1/(N-1)*(sum(sig(t(2:end))))

h=(t(end)-t(1))/(N-1);
xv3c = 1/(N-1)*(sum(sig(t(1:end-1)+h/2)))
xv4=... 
    1/(N-1)*((sig(t(1))+sig(t(end)))/2+...
    sum(sig(t(2:end-1))))
%% videjas vertibas meklesana izmantojotmatlaba skaitlisko integresanu
xvquad=1/(t(end)-t(1))*...
    quad(@sig,t(1),t(end))
% quad (rokturis_uz_funkciju, tsak,tbeig)
%% ka veikt aprekinus pie dazadam precizitatem, un ka noformet rezultatus
% tabulas veidaa
% 1.piem ar 3a,3b,3c,  4 forumlam.Precizitate atkariga no taistura platuma
dt = [0.5 0.1 0.005];
for dtc=dt
   t=0:dtc:4;
   N = length(t);
   xv3a = 1/(N-1)*(sum(sig(t(1:end-1))));
   fprintf('|dt=%0.2f\t|vv=%f\t|\n', dtc, xv3a);
end
%% tabulu ar funkciju quad
% tai var noradit precizitati ar kuru taa rekinas
% sintakse
% quad(rokturis,tsak,tend,precizitate)
tol = [1e-1 1e-2 1e-3]
for tolc = tol
    xvquad=1/(t(end)-t(1))*...
    quad(@sig,t(1),t(end), tolc);
fprintf...
    ('|dt=%0.2f\t|vv=%f\t|\n', tolc, xvquad);
end
