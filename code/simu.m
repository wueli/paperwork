%pedestrian simulation

function [C]=simu
clear all
close all
clc
load('FOX_FOY_WX_WY_ZB.mat')
r=0;
A=zeros(0,11);
C=zeros(1,4);
parameters;
graycl=getimage;
s=size(WX);

% [FOX,FOY]=runfast();
   %A initialisieren
%A=rand_startvalue(A);   %ändert das Ziel für eine gewisse Prozentzahl

vidObj=VideoWriter('simulation.avi');
open(vidObj);
    for n=1:iter
        [A,r]=initialisation(A,r,n);
        i1=1;
        A
        while i1 <= size(A,1) 
            [FX1,FY1]=destination(A,i1,FOX,FOY);
 
            [FX2,FY2]=walls(A,i1,WX,WY);
%             FX2=0;
%             FY2=0;

             [FX3,FY3]=other_agents(A,i1);
%              FX3=0;
%              FY3=0;
            FX=FX1+FX2+FX3;
          % F_dest_wall_age_x=[FX1 FX2 FX3 i1;FY1 FY2 FY3 i1]
            FY=FY1+FY2+FY3;
         %  F_dest_wall_age_y=[FY1 FY2 FY3 i]
            
            [A,C]=int(A,i1,FX,FY,s,n,C);
            A=destination_change(A,i1,ZB);
            i1=i1+1;
            
        end
        plotter(A,graycl);
        
    currentframe=getframe;
    writeVideo(vidObj,currentframe);
    end
  
    close(vidObj);
end

