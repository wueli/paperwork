%parameters
nof_agents=3;

v0=2.1;     %durchschnittliche Laufgeschwindigkeit
s=0.3;      %Standardabweichung von v0
Fpers=20;   %Faktor von Abstossungskräften von Agents
Tau=0.1;    %Faktor bei Kraft zum Ziel
t=0.15;     %delta t

a=[180 200];      %erster Zielbereich, x-Bereich
b=[80 100];    %y-Bereich

grad_faktor=2500/255;    %Faktor gradient
iter=10;                %Anzahl Iterationen

A1=5; 
r_agents=2*0.3;
B1=0.1;
lambda=0.75;
A2=3;
B2=0.2;

