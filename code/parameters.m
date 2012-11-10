%parameters
nof_agents=8;

v0=2.1;     %durchschnittliche Laufgeschwindigkeit
s=0.3;      %Standardabweichung von v0
Fpers=50;   %Faktor von Abstossungskräften von Agents
Tau=0.1;    %Faktor bei Kraft zum Ziel
t=0.15;     %delta t 

a=[180 200];      %erster Zielbereich, x-Bereich
b=[80 100];    %y-Bereich

grad_faktor=2500/255;    %Faktor gradient
iter=3000;                %Anzahl Iterationen