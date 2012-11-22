function M=plotter(A,n,Gx,Gy)
parameters; 
        
%         quiver(Gx,Gy)       %Gradient
        hold on   
%         imshow(graycl) %wie kann man diesen Wert als Handle speichern, damit er nicht immer abgeruft werden muss?
        %colormap(gray)
               
        %imshow('Bilder/PlanBhfcol.bmp');
        %imshow(gray);           %Bild ausgeben, dadurch wird aber das ganze Bild gekehrt/Achsen fallen weg
        plot(A(:,1),A(:,2),'o'); %Agents
        axis([0 350 0 531]);
        M(n) = getframe;        %für video
      hold off;
end