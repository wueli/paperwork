function M=plotter(A,n,Gx,Gy);
parameters; 
        
%          cla;                 %Anstelle von hold off am Ende, löscht die "inhalte", dadurch kann Karte.bmp richtig eingelesen werden
                            % aber fragt micht nicht wieso das es funktioniert xD

        quiver(Gx,Gy)       %Gradient
        hold on   
        
        %colormap(gray)
        %axis([0 250 0 250]);
        %hold on
        %rectangle('position',[a(1),b(1),a(2)-a(1),b(2)-b(1)]);
        
        %imshow('Bilder/PlanBhfcol.bmp');
        %imshow(gray);           %Bild ausgeben, dadurch wird aber das ganze Bild gekehrt/Achsen fallen weg
        plot(A(:,1),A(:,2),'o'); %Agents
        axis([0 350 0 531]);
        M(n) = getframe;        %für video
      hold off;
end