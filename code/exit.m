function C=exit(A,i,s,nn,C)   
if A(i,1)<0 || A(i,1)>s(2) || A(i,2)<0 || A(i,2)>s(1)
         AS=A
         s
         C=[nn-A(i,9) A(i,10) A(i,8) A(i,11);C]
         A(i,:)=[];
     end