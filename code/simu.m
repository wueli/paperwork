%pedestrian simulation

function simu(FOX,FOY,WX,WY,ZB)

parameters;


% [FOX,FOY]=runfast();
A=initialisation();   %A initialisieren
%A=rand_startvalue(A);   %ändert das Ziel für eine gewisse Prozentzahl

vidObj=VideoWriter('simulation.avi');
open(vidObj);
    for n=1:iter
        A
        for i=1:nof_agents
           
            [FX1,FY1]=destination(A,i,FOX,FOY);
           
            [FX2,FY2]=walls(A,i,WX,WY);
%             FX2=0;
%             FY2=0;
             [FX3,FY3]=other_agents(A,i);
%              FX3=0;
%              FY3=0;
            FX=FX1+FX2+FX3;
           F_dest_wall_age_x=[FX1 FX2 FX3 i;FY1 FY2 FY3 i]
            FY=FY1+FY2+FY3;
         %  F_dest_wall_age_y=[FY1 FY2 FY3 i]
            
            A=int(A,i,FX,FY);
            A=destination_change(A,i,ZB);
        end
        M=plotter(A,n,WX,WY);
        
          currentframe=getframe;
    writeVideo(vidObj,currentframe);
    end
  
    close(vidObj);
end

