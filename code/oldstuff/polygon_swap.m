function A = polygon_swap(A,B,i)
%Is defining the new temporary attraction point
%This function searches the shortest Edgepoint to the final Aim and assigns
%this Edge as current Goal  => and returns A

A(i,10)=A(i,5)       %saves current goalx in swap goalx
A(i,11)=A(i,6)       %saves current goaly in swap goaly

for j=1:size(B,1)
length_B(i,j)=sqrt((A(i,1)-B(j,1))^2+(A(i,2)-B(j,2))^2)+sqrt((B(j,1)-A(i,5))^2+(B(j,2)-A(i,6))^2);
    %Berechnet Betrag der Strecke von aktuellem Ort nach B und von dort zum Ziel
end    
short_B(i)=min(length_B(i,:));
   
for j=1:size(B,1)
if(short_B(i)==length_B(i,j))
   A(i,5)=B(j,1)    %current goal is the ideal edges (x)
   A(i,6)=B(j,2)    %current goal is the ideal edges (y)
end
end

end

