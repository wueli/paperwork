%parameters
%nof_agents=6;
pxm=15; %pixel pro meter3

v0=1.3*pxm;     %durchschnittliche Laufgeschwindigkeit
s_v0=0.3*pxm;      %Standardabweichung von v0
Tau=0.5;    %Faktor bei Kraft zum Ziel
t=0.05;     %delta t
pb_time=2.5;  %time to take a paper out of the box
pers_per_s=10; %new agents per socond
max_nof=100;


p_paper=0.3;

p_1=0.2;
p_2=0.2;
p_3=0.2;
p_4=0.2;
p_5=0.2;

p_12=0.25;
p_13=0.25;
p_14=0.25;
p_15=0.25;

p_21=0.25;
p_23=0.25;
p_24=0.25;
p_25=0.25;

p_31=0.25;
p_32=0.25;
p_34=0.25;
p_35=0.25;

p_41=0.25;
p_42=0.25;
p_43=0.25;
p_45=0.25;

p_51=0.25;
p_52=0.25;
p_53=0.25;
p_54=0.25;

%grad_faktor=2000/255;    %Faktor gradient
iter=1000;                %Anzahl Iterationen

%Pixel - Meter Verhältnis
A1=5*pxm; 
r_agents=2*0.3*pxm;
B1=0.1*pxm;
lambda=0.75;
A2=3*pxm;
B2=0.2*pxm;
sight_radius=2*pxm;


U=14*pxm; %=10
R=0.15*pxm; %0.2



