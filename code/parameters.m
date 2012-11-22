%parameters
nof_agents=3;
pxm=15; %pixel pro meter3

v0=1.3*pxm;     %durchschnittliche Laufgeschwindigkeit
s=0.3*pxm;      %Standardabweichung von v0
Tau=0.5;    %Faktor bei Kraft zum Ziel
t=0.1;     %delta t

a=[180 200];      %erster Zielbereich, x-Bereich
b=[80 100];    %y-Bereich

grad_faktor=2000/255;    %Faktor gradient
iter=300;                %Anzahl Iterationen

%Pixel - Meter Verhältnis
A1=5*pxm; 
r_agents=2*0.3*pxm;
B1=0.1*pxm;
lambda=0.75;
A2=3*pxm;
B2=0.2*pxm;

U=10*pxm;
R=0.2*pxm;

percentage=0.5;     %The value of papertaker in % (zufallsverteilt)


% Bild wird eingelesen, als Hintergrund, wird auch für polygon_id
% gebraucht!
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
 

