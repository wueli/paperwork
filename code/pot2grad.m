%potential map to gradient field

%example:
%pot2grad('img.bmp','bmp')

function [Fx,Fy,pot]=pot2grad(filename,filetype);
parameters;
pot=imread(filename,filetype);      %Einlesen Bild
pot=double(pot);                    %Umwandlung in doubles, komischerweise nötig..
[Fx,Fy]=gradient(pot);              %Gradient aus Potentialfeld
Fx=grad_faktor*Fx;                  %Streckung
Fy=grad_faktor*Fy;
end
