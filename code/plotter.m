function M=plotter(A,pot,n,Gx,Gy);
parameters; 
        cla;                 %Anstelle von hold off am Ende, löscht die "inhalte", dadurch kann Karte.bmp richtig eingelesen werden
                            % aber fragt micht nicht wieso das es funktioniert xD
        contour(pot);       %Äquipotential-linien
        hold on;
        %quiver(Gx,Gy)       %Gradient
        %hold on   
        imshow(gray);           %Bild ausgeben, dadurch wird aber das ganze Bild gekehrt/Achsen fallen weg
        %colormap(gray)
        %axis([0 250 0 250]);
        %hold on
        rectangle('position',[a(1),b(1),a(2)-a(1),b(2)-b(1)]);
        hold on
        plot(A(:,1),A(:,2),'o'); %Agents
        axis([0 250 0 250]);
        M(n) = getframe;        %für video
        %hold off
      
end