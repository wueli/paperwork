function [FX,FY]=destination(A,i,FOX,FOY)
    parameters;
%     rk=[A(i,5),A(i,6)];             %Ortsvektor Ziel
%      r=[A(i,1),A(i,2)];              %Ortsvektor Agent
%     e=(rk-r)/sqrt((rk(1)-r(1))^2+(rk(2)-r(2))^2); %Richtung von Agent zu Ziel
    e(1)=FOX(round(A(i,2)),round(A(i,1)),A(i,5)); %with A(i,5) = current goal!!!
    e(2)=FOY(round(A(i,2)),round(A(i,1)),A(i,5));
    

    FX=1/Tau*(A(i,7)*e(1)-A(i,3));  %Kraft=1/tau*(v0*(x-Komponente von e)-(xKomponente von aktueller Geschw.)
    FY=1/Tau*(A(i,7)*e(2)-A(i,4));  %dito mit y
end