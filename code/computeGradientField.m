function [FX,FY] = computeGradientField( F )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% wall=0
% space=1
% exit_west=2
% exit_south=3
% exit_northr=4
% exit_norhtl=5
% exit_east=6

F_original=F;

for i=2%:6 %iteration for the 5 entries
    %Find the exits
    F=F_original;
    [rowE,colE,v]=find(F==i);
  
  %Create a new Matrix with only 1(space) and 0(Walls)
  [sx,sy]=size(F);
  NewF=ones(sx,sy);
  wall=find(F==0);
  NewF(wall)=0
  
  Exits(1,:)=rowE';
  Exits(2,:)=colE';
  
  options.nb_iter_max= Inf;
  [D,S]=perform_fast_marching(NewF, Exits, options);
  [FX,FY]=gradient_special(D);
  
  FOX(i)=FX;
  FOY(i)=FY;
  D(D==Inf)=0; 
  
 
end


end


