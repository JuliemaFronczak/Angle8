close all; clear all; clc
%#########################################################################
%                                 Re 10^5
%#########################################################################
%/////////////////////////////////////////////////////////////////////////
% Vr vs Ymáx 
%/////////////////////////////////////////////////////////////////////////


A= [ 0 2 5 10 ];
Aa= [ 0  2 5];
% REFERENCIA ´Patruno et al.
CD = [0.1164610 0.1219290 0.1778000 ];
CL = [ 0.0065000 -0.2593000 -0.3863000];
CM= [0.0000000 -0.0058113 -0.0140625];


% EXPERIMENTAL
Cd=[ 0.1133000 0.1251700 0.1688750 0.2668000 ];
Cl=[ 0.0065000 -0.3253740 -0.5579260 -0.6147000 ];
Cm=[ -0.0030000 0.0150000 0.0100885 0.0170048 ];

% MEUS RESULTADOS K SST

cdsst= [ 0.1275930 0.1372620 0.1791250 0.4027125 ];
clsst=[ -0.0073500 -0.2839250 -0.3834870 -0.9834000];
cmsst=[-0.0015750 -0.0465750 0.0539800 -0.2278000];

% MEUS RESULTADOS K SST LM

cdlm= [ 0.1404625 0.1354500 0.1765250 0.4023000 ];
cllm=[ -0.0030125 -0.2960000 -0.3875125 -0.9881125];
cmlm=[0.0014000 -0.0620125 0.0111625 -0.2330250];

% MEUS RESULTADOS K epsilon

cdep= [0.1372000 0.1424250 0.1871125 0.2942625 ];
clep=[ -0.0031000 -0.2895375 -0.5351125 -0.6535375];
cmep=[0.0236000 0.0015375 0.0018125 0.0224750];


% Gráfico
figure(1)
plot(Aa, CD,'r-s')
hold on
plot(A, Cd,'r:d')
hold on
plot(A, cdep,'k--o')
hold on
plot(A, cdsst,'b-.h')
hold on
plot(A, cdlm,'g-x')
%hold on
%plot(A, Cd,'LineWidth',2)
grid on
xlabel('\alpha '), ylabel('C_{D}')
box off
leg = legend(' $k$-$\omega$ $SST$ Patruno (2015)',' Exp. Starossek et al. (2009)',' $k$-$\varepsilon$  ',' $k$-$\omega$ $SST$ ',' $k$-$\omega$ $SST$ $LM$ ' );
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,10,0.1,0.41])
hold off

figure(2)
plot(Aa, CL,'r-s')
hold on
plot(A, Cl,'r:d')
hold on
plot(A, clep,'k--o')
hold on
plot(A, clsst,'b-.h')
hold on
plot(A, cllm,'g-x')
%hold on
%plot(A, Cd,'LineWidth',2)
grid on
xlabel('\alpha '), ylabel('C_{L}')
box off
leg = legend(' $k$-$\omega$ $SST$ Patruno (2015)',' Exp. Starossek et al. (2009)',' $k$-$\varepsilon$  ',' $k$-$\omega$ $SST$ ',' $k$-$\omega$ $SST$ $LM$ ' );
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,10,-1,0.2])
hold off
