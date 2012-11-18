%pedestrian simulation

function simu()

parameters;

[Gx,Gy,pot]=pot2grad('Bilder/PlanBhfGradient3.bmp','bmp'); %Bild einlesen
%B = edges_id('Bilder/Karte_Potential_edges.bmp','bmp');   %erkennt und Speichert die Ecken, braucht dazu extra manipuliertes Bild
[FOX,FOY]=runfast();
A=initialisation();   %A initialisieren
%A=rand_startvalue(A);   %ändert das Ziel für eine gewisse Prozentzahl

% vidObj=VideoWriter('simulation.avi');
% open(vidObj);
    for n=1:iter
        for i=1:nof_agents
            % A=polygon_id(A,B,gray,i)  %Macht die Polygonfunktion,nicht fertig
            [FX1,FY1]=destination(A,i,FOX,FOY);
           
            [FX2,FY2]=walls(A,i,Gx,Gy);
            
            %[FX3,FY3]=other_agents(A,i);
             FX3=0;
             FY3=0;
            FX=FX1+FX2+FX3;
            F_dest_wall_age_x=[FX1 FX2 FX3 i];
            FY=FY1+FY2+FY3;
            F_dest_wall_age_y=[FY1 FY2 FY3 i];
            
            A=int(A,i,FX,FY);
            A=destination_change(A,i);
        end
        M=plotter(A,pot,n,Gx,Gy);
%           currentframe=getframe;
%     writeVideo(vidObj,currentframe);
    end
  
%     close(vidObj);
end

