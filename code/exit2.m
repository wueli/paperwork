function [A,C]=exit2(A,i,s,nn,C)   
if A(i,1)<0.5 || A(i,1)>s(2) || A(i,2)<0.5 || A(i,2)>s(1) %if agents is outside the map delete
    C=[nn-A(i,9) A(i,10) A(i,8) A(i,11);C]; %write interestin parameters into matrix C
    A(i,:)=[];
end