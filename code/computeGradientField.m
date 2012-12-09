function [FX,FY] = computeGradientField( F,i )
 path('FastMarching_version3b',path);
%Converts the in  getmap created situationmap in a Vektorfield
%using fastmarching and gradient* funktion.
%Imputs: Number of Iteration, Situationsmap
%Outputs: Values of the gradientfield in x and y direction

% Legend for the Matrix entries
% wall=-1
% space=1
% exit_west=2
% exit_south=3
% exit_northr=4
% exit_norhtl=5
% exit_east=6
% box=7


%The i-th value is defined as exit
    Exit=find(F==i);
    F(Exit)=Inf;
    [rowE,colE,v]=find(F==Inf);
    
    Exits(1,:)=rowE';
    Exits(2,:)=colE';  
  
%Create a new Matrix with only 1(space) and 0(Walls)
  [sx,sy]=size(F);
  NewF=ones(sx,sy);
  wall=find(F==0);
  NewF(wall)=0;
  SpeedImage = NewF;
  
%Conduct the Fast-Marching-Algorithmus 
%Output: D=Distancemap which is used later on
  tic; [D, Y] = msfm(SpeedImage, Exits, false, false); toc;

%sets the walls equal null again.
  D(D>600)=0;
  
%Changes the distancemap to a gradientfield
  [FX,FY]=gradient_special2(D);

end
