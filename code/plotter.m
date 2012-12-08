function plotter(A, graycl,nn,c)
parameters;
imshow(graycl)

hold on 
plot(A(A(:,5)==1,1),A((A(:,5)==1),2),'o','color','b')
plot(A(A(:,5)==2,1),A((A(:,5)==2),2),'o','color','r')
plot(A(A(:,5)==3,1),A((A(:,5)==3),2),'o','color','g')
plot(A(A(:,5)==4,1),A((A(:,5)==4),2),'o','color','y')
plot(A(A(:,5)==5,1),A((A(:,5)==5),2),'o','color','k')
plot(A(A(:,5)==6,1),A((A(:,5)==6),2),'o','color','m')
text(10,15,['Time: ' num2str(floor(nn*t)) ' s'],'color', 'red')
text(10,40,['Agents: ' num2str(size(A,1))],'color','red')
text(10,65,['Pass.: ' num2str(c)],'color','red')
axis([0 350 0 531]);
hold off;
end