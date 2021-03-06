function [F,C]=simu
clear all
close all
clc

load('a/FOX_FOY_WX_WY_DistanceMap_ZB.mat')  %load vector files calculatey by runfast.m
parameters; %load parameters.m

for i=1:size(WX,1)   %calculation of repulsion force of the walls
    for j=1:size(WX,2)
        WX(i,j)=WX(i,j)*U*exp(-DistanceMap(i,j)/R);
        WY(i,j)=WY(i,j)*U*exp(-DistanceMap(i,j)/R);
    end
end
  
r=0;
r_train=0;
A=zeros(0,11);
C=zeros(1,4);
c=0;

graycl=getimage;
s=size(WX);
F = zeros(size(WX));

vidObj=VideoWriter('simulation.avi');
vidObj.FrameRate=1/t;
open(vidObj);

for n=1:iter  %time iteration
    [A,r,r_train,c]=initialisation(A,r,r_train,n,c);
    i1=1;
    
    while i1 <= size(A,1) %agents iteration
        [FX1,FY1]=destination(A,i1,FOX,FOY);
        
        [FX2,FY2]=walls(A,i1,WX,WY);

        [FX3,FY3]=other_agents(A,i1);

         FX=FX1+FX2+FX3;
         FY=FY1+FY2+FY3;
            
         [A,C]=int(A,i1,FX,FY,s,n,C);
            
          A=destination_change(A,i1,ZB);
            
          i1=i1+1;
     end
        
    for z=1:size(A,1)
            F(round(A(z,2)),round(A(z,1))) = F(round(A(z,2)),round(A(z,1))) + 1; 
            
    end
    
    plotter(A,graycl,n,c);
    currentframe=getframe;
    writeVideo(vidObj,currentframe);
end
close(vidObj);
end

