function A=destination_change(A,i,ZB)
parameters;
if find(ismember(find(ZB(:,1)==round(A(i,2))),find(ZB(:,2)==round(A(i,1)))))
        
        A(i,6)=A(i,6)+1
    
        if     A(i,6)==pb_time/t
            A(i,5)=A(i,8); 
        end
end
end


% if A(i,1)>a(1) && A(i,1)<a(2) && A(i,2)>b(1) && A(i,2)<b(2)
        %     A(i,5)=A(i,8);      %After reaching the box, the current goal is swapped with the final 
        %    A(i,6)=A(i,9); Wird gar nicht gebraucht!!
        % end