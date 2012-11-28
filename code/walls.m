function [FX,FY]=walls(A,i,Gx,Gy)
parameters;
   FX=Gx(round(A(i,2)),round(A(i,1)));          %Herauslesen Gradientkraft bei Position a,b
   FY=Gy(round(A(i,2)),round(A(i,1)));
   
   if isnan(FX)                 %falls genau in der Mitte zwischen zwei Wänden, Karaft gleich 0
       FX=0;
       FY=0;
   end
   
end
