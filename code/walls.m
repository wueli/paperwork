function [FX,FY]=walls(A,i,Gx,Gy)
parameters;
   FX=Gx(round(A(i,2)),round(A(i,1)));      %repulsion force at current position
   FY=Gy(round(A(i,2)),round(A(i,1)));
   
   if isnan(FX)                 %if position is exactly between two walls, force is equal to 0 istead of NaN
       FX=0;
       FY=0;
   end
   
end
