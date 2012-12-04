function [FX,FY,DistanceMap]=grad_walls(W)
parameters;
path('FastMarching_version3b',path);
%converts a Matrix with (1,0) entries into a forcefield
%imput:     The wall/empty matrix W
%Outputs:   Forcefield (FX,FY) to apply the rejection
%           Distancemap 

 SpeedImage=W;
 [X,Y]=find(W==0);
 SourcePoint=[X';Y'];
 
 %Fast-Marching-Algorithmus 
 DistanceMap= msfm(SpeedImage, SourcePoint); 
 DistanceMap=flipud(DistanceMap);
 
 %Creates gradientfield
 [FX,FY]=gradient(DistanceMap);
 
 %Normalise the Gradientfield
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

end
