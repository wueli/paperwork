%parameters
nof_agents=20;
pxm=15; %pixel pro meter

v0=1.3*pxm;     %durchschnittliche Laufgeschwindigkeit
s=0.3*pxm;      %Standardabweichung von v0
Tau=0.5;    %Faktor bei Kraft zum Ziel
t=0.1;     %delta t

a=[180 200];      %erster Zielbereich, x-Bereich
b=[80 100];    %y-Bereich

grad_faktor=2000/255;    %Faktor gradient
iter=300;                %Anzahl Iterationen

A1=5*pxm; 
r_agents=2*0.3*pxm;
B1=0.1*pxm;
lambda=0.75;
A2=3*pxm;
B2=0.2*pxm;

