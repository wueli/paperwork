function [FX,FY]=other_agents(A,i)   
parameters;
          FX=0;
          FY=0;
          v_n=[A(i,3);A(i,4)]/sqrt(A(i,4)^2+A(i,3)^2);

    for j=1:size(A,1)     %iteration über alle Agenten
          if(i~=j) %nur falls ein Agent sich nicht selber betrachten
            d=sqrt((A(i,1)-A(j,1))^2+(A(i,2)-A(j,2))^2);
            if d<sight_radius
            n=[A(i,1)-A(j,1);A(i,2)-A(j,2)]/d;
            phi=angle(complex(-n(1),-n(2)))-angle(complex(v_n(1),v_n(2)));
            FX=FX+A1*exp((r_agents-d)/B1)*n(1)*(lambda+(1-lambda)*(1+cos(phi))/2)+A2*exp((r_agents-d)/B2)*n(1);
            FY=FX+A1*exp((r_agents-d)/B1)*n(2)*(lambda+(1-lambda)*(1+cos(phi))/2)+A2*exp((r_agents-d)/B2)*n(2);
            end
               

          end
    end
end