function [FX,FY]=destination(A,i,FOX,FOY)
parameters;

e(1)=FOX(round(A(i,2)),round(A(i,1)),A(i,5)); %vector to destination A(i,5) at position (A(i,1),A(i,2))  
e(2)=FOY(round(A(i,2)),round(A(i,1)),A(i,5));
    
% random angle for rotating of vector
alpha=randn*arc+tend; 
e=[cos(alpha) -sin(alpha); sin(alpha) cos(alpha)]*[e(1); e(2)];


FX=1/Tau*(A(i,7)*e(1)-A(i,3));  %force=1/tau*(v0*e-actual velocity)
FY=1/Tau*(A(i,7)*e(2)-A(i,4));  
end