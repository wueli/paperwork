function [FOX,FOY,WX,WY] = runfast()


%read picture/generate forcfield

f=getmap();
wall=find(f==0); %wall = 0
W=ones(size(f));
W(wall)=0;
[WX,WY,DistanceMap]=grad_walls(W);

for i=2:7 %iteriert über alle 5 möglichen Ausgänge, d.h. alle Richtungsvektorfelder (normiert)
[FX,FY]=computeGradientField(f,i);
    if(i==2);
        [a,b]=size(FX);
        FOX=ones(a,b,6);
        FOY=ones(a,b,6);
    end
%Korrigiert die Y-achsen inversion
FX=flipud(FX);
FY=-flipud(FY);

%Loop Which gives the FX/FY values in the 3D-Main-Matrix
[a,b]=size(FX);
for j=1:a
    for m=1:b
FOX(j,m,i-1)=FX(j,m);
FOY(j,m,i-1)=FY(j,m);
    end
end

        % FOX(:,:,i-1)=FX;   %Speichert Richungsvektor (e) von den Zeilen 2:6 in x-Richtung
        % FOY(:,:,i-1)=FY; %(Flipud??)   %Speichert Richungsvektor (e) von den Zeilen 2:6 in y-Richtung
        % quiver(FOX(:,:,i-1),FOY(:,:,i-1));
        %quiver(FX,FY) %Achtung FX(0,0) ist unten links!! (531/0)oben links
        %quiver(FOX(:,:,1),FOY(:,:,1));
        %FX(200,300)
        %FY(200,300)
end
end
