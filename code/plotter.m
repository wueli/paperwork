function plotter(A, graycl)
 imshow(graycl)
      hold on   
      plot(A(:,1),A(:,2),'o'); %Agents
      axis([0 350 0 531]);
      hold off;
end