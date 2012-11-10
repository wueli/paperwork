function [FX,FY]=other_agents(A,i);   
parameters;
          FX=0;
          FY=0;
    for j=1:nof_agents     %iteration über alle Agenten
          if(i~=j)                 %nur falls ein Agent sich nicht selber betrachtet
          r=sqrt((A(i,1)-A(j,1))^2+(A(i,2)-A(j,2))^2);
          if r~=0
            FX=FX+1/r*Fpers;         %nimmt reziprok mit Abstand ab mal Faktor Fpers 
            FY=FY+1/r*Fpers;        %Achtung: Richtung wird nicht berücksichtigt!! (nur Betrag)
          end
       end
    end
end