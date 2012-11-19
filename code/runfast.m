function [FOX,FOY] = runfast()


%read picture/generate forcfield

f=getmap();

for i=6%:7 %iteriert über alle 5 möglichen Ausgänge, d.h. alle Richtungsvektorfelder (normiert)
[FX,FY]=computeGradientField(f,i);
hold on
%subplot(2,3,i-1)

[a,b]=size(FX);
FOX=ones(a,b,i-1);
FOY=ones(a,b,i-1);

FOX(:,:,i-1)=FX;   %Speichert Richungsvektor (e) von den Zeilen 2:6 in x-Richtung
FOY(:,:,i-1)=FY;    %Speichert Richungsvektor (e) von den Zeilen 2:6 in y-Richtung
%quiver(FX,FY) %Achtung FX(0,0) ist unten links!! (531/0)oben links
%quiver(FOX(:,:,1),FOY(:,:,1));
%FX(200,300)
%FY(200,300)
end
end
