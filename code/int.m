function [A,C]=int(A,i,FX,FY,s,nn,C)
parameters;

A(i,3)=A(i,3)+FX*t;        %dv=F*dt
A(i,4)=A(i,4)+FY*t;
            
if sqrt(A(i,3)^2+A(i,4)^2)>(1.2*A(i,7))                %limits maximum of velocity to vmax=v0*1.2
    A(i,3)=A(i,3)/sqrt(A(i,3)^2+A(i,4)^2)*A(i,7)*1.2;      
    A(i,4)=A(i,4)/sqrt(A(i,3)^2+A(i,4)^2)*A(i,7)*1.2;      
end

% %random angle for rotating of velocity vector
% alpha=randn*arc+tend; 
% a=[cos(alpha) -sin(alpha); sin(alpha) cos(alpha)]*[A(i,3); A(i,4)];
% A(i,3)=a(1);
% A(i,4)=a(2);
     
    A(i,1)=A(i,1)+A(i,3)*t;    %dx=F*dt + x(t-dt)
    A(i,2)=A(i,2)+A(i,4)*t;
     
    [A,C]=exit2(A,i,s,nn,C);
end