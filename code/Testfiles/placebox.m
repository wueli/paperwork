function [F ] = placebox( F,x0,y0,alpha )
%Platziert die Zeitungsbox
% Achtung die Richtung des Attraktionsfeld der Box ist noch nicht final;

%werte der Box
hight=9; %muss ungerade sein
length=9; %muss ungerade sein
influence=1;
F(y0:y0+hight,x0:x0+influence)=7;
F(y0:y0+hight,x0+influence:x0+influence+length)=0;

end

