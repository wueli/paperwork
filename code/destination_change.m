function A=destination_change(A,i,ZB)
parameters;

if find(ismember(find(ZB(:,1)==round(A(i,2))),find(ZB(:,2)==round(A(i,1))))) %if agents is inside the papertaking area
    A(i,6)=A(i,6)+1;
    
    if     A(i,6)>=pb_time/t   %if agents has been inside the papertaking area for more than pb_time, change destination to final destination
        A(i,5)=A(i,8); 
    end
end
end
