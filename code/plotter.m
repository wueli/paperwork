function M=plotter(A,pot,n,Gx,Gy);
parameters;
        contour(pot);       %�quipotential-linien
        hold on;
        %quiver(Gx,Gy)       %Gradient
        %hold on
        %imagesc(imread('Bilder/Karte.bmp','bmp')) geht leider nicht!
        %colormap(gray)
        %axis([0 250 0 250]);
        %hold on
        rectangle('position',[a(1),b(1),a(2)-a(1),b(2)-b(1)])
        hold on
        plot(A(:,1),A(:,2),'o') %Agents
        axis([0 250 0 250]);
        M(n) = getframe;        %f�r video
        hold off;
end