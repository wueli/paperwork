%parameters

t=0.05;     %delta t
iter=1500;
pxm=15; %pixel pro meter3

pers_per_s=10; %new agents per socond

train_delay=10;
pers_per_s_train=8;
nof_train=1200;


v0=1.3*pxm;     %durchschnittliche Laufgeschwindigkeit
s_v0=0.3*pxm;      %Standardabweichung von v0

Tau=0.5;    %Faktor bei Kraft zum Ziel

A1=5*pxm; 
A2=3*pxm;
B1=0.1*pxm;
B2=0.2*pxm;
r_agents=2*0.3*pxm;
lambda=0.75;
sight_radius=2*pxm;

U=20*pxm; %=10
R=0.2*pxm; %0.2

pb_time=2.5;  %time to take a paper out of the box

p1_paper=0.08;
p2_paper=0.25;
p3_paper=0.08;
p4_paper=0.08;
p5_paper=0.08;

p_1=0.25;
p_3=0.25;
p_4=0.25;
%p_5=0.25;

p_12=0.1;
p_13=0.1;
p_14=0.4;
%p_15=0.4;

p_21=0.25;
p_23=0.25;
p_24=0.25;
%p_25=0.25;

p_31=0.45;
p_32=0.1;
p_34=0;
%p_35=0.45;

p_41=0.45;
p_42=0.1;
p_43=0;
%p_45=0.45;

p_51=0.34;
p_52=0.1;
p_53=0.4;
%p_54=0.1;






