%pedestrian simulation

function simu()

parameters;

[Gx,Gy,pot]=pot2grad('Bilder/Karte_Potential_klein.bmp','bmp'); %Bild einlesen


A=initialisation();   %A initialisieren
vidObj=videowriter('simulation.avi');
open(vidObj);
    for n=1:iter
        for i=1:nof_agents
            
            [FX1,FY1]=destination(A,i);
           
            [FX2,FY2]=walls(A,i,Gx,Gy);
            
            [FX3,FY3]=other_agents(A,i);
                       
            FX=FX1+FX2+FX3;
            F_dest_wall_age_x=[FX1 FX2 FX3 i]
            FY=FY1+FY2+FY3;
            F_dest_wall_age_y=[FY1 FY2 FY3 i]
            
            A=int(A,i,FX,FY);
            A=destination_change(A,i);
        end
        M=plotter(A,pot,n,Gx,Gy);
          currentframe=getframe;
    writeVideo(vidObj,currentframe);
    end
  
    close(vidObj);
end

