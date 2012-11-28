%parameters
%nof_agents=6;
pxm=15; %pixel pro meter3

v0=1.3*pxm;     %durchschnittliche Laufgeschwindigkeit
s_v0=0.3*pxm;      %Standardabweichung von v0
Tau=0.5;    %Faktor bei Kraft zum Ziel
t=0.1;     %delta t
pb_time=3;  %time to take a paper out of the box
pers_per_s=10; %new agents per socond


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
iter=300;                %Anzahl Iterationen

%Pixel - Meter Verhältnis
A1=5*pxm; 
r_agents=2*0.3*pxm;
B1=0.1*pxm;
lambda=0.75;
A2=3*pxm;
B2=0.2*pxm;
sight_radius=2*pxm;


U=12*pxm; %=10
R=0.1*pxm; %0.2


% Bild wird eingelesen, als Hintergrund!
[X,map]=imread('Bilder/PlanBhf_box.bmp','bmp');   
 
gray=ind2gray(X,map); 
[a,b]=size(X);
%Setz Alle Graustufenwerte ungleich Schwarz auf weiss
for m=1:a
    for n=1:b
        if(gray(m,n)~=0)
 graycl(m,n)=255;
        end
    end
end
 imshow(graycl)
 

