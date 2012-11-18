%potential map to gradient field

%example:
%pot2grad('img.bmp','bmp')

function [Fx,Fy,pot]=pot2grad(filename,filetype);
parameters;
pot=imread(filename,filetype);      %Einlesen Bild
pot=double(pot);%Umwandlung in doubles, komischerweise nötig..
pot=pot(:,:,1);
pot=flipud(pot);
pot=fliplr(pot);
[Fx,Fy]=gradient(pot); %Gradient aus Potentialfeld
Fx=fliplr(Fx);
Fy=fliplr(Fy);
Fx=-Fx;
Fx=grad_faktor*Fx;                  %Streckung
Fy=grad_faktor*Fy;
pot=fliplr(pot);
% hold on
% subplot(1,2,1)
%contour(pot);
% subplot(1,2,2)
% quiver(Fx,Fy);

end
