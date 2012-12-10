function [] = finalanal(C)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[a,b,c]=size(C);

%all medians of all conections!!
for j=1%:c
[without,with]=analysepart(C(:,:,j));
disp(without)
disp(with)
end

%Histogramms of all trials
for i=1%:c
 C(:,:,i)=sortrows(C(:,:,i),[4,1]);
    itwith=0;
    itwout=0;
 for n=1:a
     %Creates a matrix with all values of the not-taker medwout
         if (C(n,4,i)==0)
            itwout=itwout+1;
         medwout(itwout,i)= C(n,1,i);  
        end
     %Creates a matrix with all values of the paper-taker medwith
        if (C(n,4,i)==1)
            itwith=itwith+1;
         medwith(itwith,i)= C(n,1,i); 
        end
    end
    
subplot(2,3,i)
x=0:10:max(C(:,1,i));
hist(C(:,1,i),x);
med=median(C(:,1,i));
medw=median(medwith(:,i));
medo=median(medwout(:,i));
xlabel({'Median of all values'; med;'Median not-takers';medo;'Median takers';medw});


end
aa=median(medwout(:,1)); %median of all not-takers
ab=median(medwith(:,1)); %medain of all takers
str=fprintf('Median of all Non-Takers: %i \v Median of all Takers: %i\n', aa, ab);

% x=without-1.2*without

end

