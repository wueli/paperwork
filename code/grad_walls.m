function [FX,FY,DistanceMap]=grad_walls(W)
parameters;

 SpeedImage=W;
 [X,Y]=find(W==0);
 SourcePoint=[X';Y'];
 DistanceMap= msfm(SpeedImage, SourcePoint); 
 DistanceMap=flipud(DistanceMap);
 [FX,FY]=gradient(DistanceMap);
 
 s=size(FX);
   for i=1:s(1)
       for j=1:s(2)
           FX(i,j)=FX(i,j)/sqrt(FX(i,j)^2+FY(i,j)^2);
           FY(i,j)=FY(i,j)/sqrt(FX(i,j)^2+FY(i,j)^2);
       end
   end
      
   for i=1:s(1)
     for j=1:s(2)
         FX(i,j)=FX(i,j)*U*exp(-DistanceMap(i,j)/R);
         FY(i,j)=FY(i,j)*U*exp(-DistanceMap(i,j)/R);
      end
   end
    
 quiver(FX,FY);
 
end
