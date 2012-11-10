function [FX,FY]=walls(A,i,Gx,Gy)
parameters;
   FX=Gx(round(A(i,2)),round(A(i,1)));          %Herauslesen Gradientkraft bei Position a,b
   FY=Gy(round(A(i,2)),round(A(i,1)));
end
