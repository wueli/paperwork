function [FX,FY] = computeGradientField( F,i )
 path('FastMarching_version3b',path);
% path('toolbox_fast_marching',path);
% path('toolbox_fast_marching/toolbox',path);
% path('toolbox_fast_marching/data',path);
%UNTITLED2 Summary of this function goes here



%   Detailed explanation goes here
% wall=-1
% space=1
% exit_west=2
% exit_south=3
% exit_northr=4
% exit_norhtl=5
% exit_east=6
% box=7

    Exit=find(F==i);
    F(Exit)=Inf;
    [rowE,colE,v]=find(F==Inf);
    
    
  %Create a new Matrix with only 1(space) and 0(Walls)
  [sx,sy]=size(F);
  NewF=ones(sx,sy);
  wall=find(F==0);
  NewF(wall)=0;
  
  Exits(1,:)=rowE';
  Exits(2,:)=colE';
  
   
  SpeedImage = NewF;
  tic; [D, Y] = msfm(SpeedImage, Exits, false, false); toc;
  hold on
  D(D>600)=0;
  subplot(1,2,1)
  D2=flipud(D);
   imshow(D2,[]); colormap(hot(256));
[FX,FY]=gradient_special2(D);
  subplot(1,2,2)
  quiver(FX,FY);
  
end


