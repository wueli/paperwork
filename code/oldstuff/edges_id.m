function B = edges_id(filename,filetype)
%UNTITLED3 Do the edges-dance
%   explanation

mapedges=imread(filename,filetype); %karte noch wechseln
l=size(mapedges);

%Matrix mit X und y Werte der Punkte
iter=0;
for i=1:l(1)
   for j=1:l(2)
       if(mapedges(i,j)~=1)
           iter=iter+1;
           B(iter,1)=i;
           B(iter,2)=j;
       end
       
       end
       
   end
   
    
end








