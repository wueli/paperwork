function plotter(A, graycl,nn)
parameters;
 imshow(graycl)
      hold on 
      
      plot(A(A(:,10)==1,1),A((A(:,10)==1),2),'o','color','g')
      plot(A(A(:,10)==2,1),A((A(:,10)==2),2),'o','color','r')
      plot(A(A(:,10)==3,1),A((A(:,10)==3),2),'o','color','b')
      plot(A(A(:,10)==4,1),A((A(:,10)==4),2),'o','color','k')
      plot(A(A(:,10)==5,1),A((A(:,10)==5),2),'o','color','m')
       
      title(['Time =' num2str(nn*t,2) 's Number of Agents = ' num2str(size(A,1))])
      axis([0 350 0 531]);
      hold off;
end