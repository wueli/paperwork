function [A,C]=int(A,i,FX,FY,s,nn,C)
parameters;
%Aintin=A
%FX
%FY
     A(i,3)=A(i,3)+FX*t;        %dv=F*dt
     A(i,4)=A(i,4)+FY*t;
            
     if sqrt(A(i,3)^2+A(i,4)^2)>(1.2*A(i,7))                %vmax-Beschränkung -> oben berechnete neue Geschwindigkeit grösser als vmax=v0*1.2 ->Beschränkung
         A(i,3)=A(i,3)/sqrt(A(i,3)^2+A(i,4)^2)*A(i,7)*1.2;      %Geschwindikeits-Richtung wird normiert und dann mit vmax multipliziert
         A(i,4)=A(i,4)/sqrt(A(i,3)^2+A(i,4)^2)*A(i,7)*1.2;      %dito für y-Komponente
     end
     
     A(i,1)=A(i,1)+A(i,3)*t;    %Aktuelle Position plus Geschwindigkeit mal t gleich neue Position
     A(i,2)=A(i,2)+A(i,4)*t;
     
     C=exit(A,i,s,nn,C);

     %Aintout=A
end