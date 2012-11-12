function [FX,FY]=other_agents(A,i)   
parameters;
          FX=0;
          FY=0;
          v_n=[A(i,3);A(i,2)]/sqrt(A(i,3)^2+A(i,2)^2);
    for j=1:nof_agents     %iteration über alle Agenten
          if(i~=j)                 %nur falls ein Agent sich nicht selber betrachtet
            d=sqrt((A(i,1)-A(j,1))^2+(A(i,2)-A(j,2))^2);
            n=[A(j,1)-A(i,1);A(j,2)-A(i,2)]/d;
            phi=angle(complex(-n))-angle(complex(v_n));
            FX=A1*exp(r_agents-d)/B1*n(1)*(lambda+(1-lambda)*(1+cos(phi))/2)+A2*exp((r_agents-d)/B2)*n(1);
            FY=A1*exp(r_agents-d)/B1*n(2)*(lambda+(1-lambda)*(1+cos(phi))/2)+A2*exp((r_agents-d)/B2)*n(2);

          end
    end
end