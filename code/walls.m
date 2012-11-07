function [FX,FY]=walls(A,i,Gx,Gy)
parameters;
a=round(A(i,1));        %x-Position gerundet auf integer
b=round(A(i,2));        %dito
   FX=Gx(a,b);          %Herauslesen Gradientkraft bei Position a,b
   FY=Gy(a,b);
end
