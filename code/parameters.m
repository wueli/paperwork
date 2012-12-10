%parameters

t=0.05;              %delta t
iter=400/0.05;       %number of time iterations, simulated time = iter*t
pxm=15;              %pixel per meter

pers_per_s=5;        %new agents per socond except of agents gettig off the train

train_delay=30;      %time until train arrives
pers_per_s_train=2;  %number of agents per second getting of the train
nof_train=200;


v0=1.3*pxm;          %average velocity of pedestrians
s_v0=0.3*pxm;        %standard deviation of pedestrian's velocity
arc=3/360*2*pi;      %angel of random rotation of velocity vector
tend=6/360*2*pi;    %angel of rotation of velocity vector

Tau=0.5;             %parameter for force in direction of the destination

A1=3*pxm;            %parameter for force of other agents
A2=3*pxm;
B1=0.1*pxm;
B2=0.2*pxm;
r_agents=2*0.3*pxm;
lambda=0.75;
sight_radius=2*pxm;

U=15*pxm;            %parameter for force of walls
R=0.2*pxm;           %0.2

pb_time=2.5;         %time to take a paper out of the box

p1_paper=0.08;       %probability of beeing a paper taker from agents from starting point 1
p2_paper=0.20;       %probability of beeing a paper taker from agents from starting point 2
p3_paper=0.08;       %...
p4_paper=0.08;
p5_paper=0.08;

p_1=0.25;            %probability to start at startpoint 1
p_3=0.25;            %probability to start at startpoint 1
p_4=0.25;            %...
%p_5=0.25;

p_12=0.1;            %probability of a pedestrian from statrtpoint 1 to go to destination 2
p_13=0.1;            %probability of a pedestrian from statrtpoint 1 to go to destination 3
p_14=0.4;            %...
%p_15=0.4;

p_21=0.25;  %...
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






