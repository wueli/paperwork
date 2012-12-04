function plotter(A, graycl,nn)
parameters;
 imshow(graycl)
      hold on   
      plot(A(:,1),A(:,2),'o'); %Agents
      title(['Time =' num2str(nn*t,2) 's Number of Agents = ' num2str(size(A,1))])
      axis([0 350 0 531]);
      hold off;
end