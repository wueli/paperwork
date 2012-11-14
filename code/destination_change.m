function A=destination_change(A,i)
parameters;
if A(i,1)>a(1) && A(i,1)<a(2) && A(i,2)>b(1) && A(i,2)<b(2)
    A(i,5)=A(i,8);      %After reaching the box, the current goal is swapped with the final (x and y)
    A(i,6)=A(i,9);
end