function M=plotter(A,pot,n,Gx,Gy);
        subplot(2,1,2);
        contour(pot);       %�quipotential-linien
        hold on;
        %subplot(2,1,2)
        %quiver(Gx,Gy)       %Gradient
        %hold on 
        subplot(2,1,2);
        plot(A(:,1),A(:,2),'*') %Agents
        axis([0 250 0 250]);
        M(n) = getframe;        %f�r video
        hold off;
end