function A=initialisation()    
parameters;
    for i=1:nof_agents
        A(i,1)=10;                   %position x Zufallsverteilt von 90-120
        A(i,2)=210+rand*110;                  %position y
        A(i,3)=0;                    %speed x
        A(i,4)=-(v0+randn*s);        %speed y
        A(i,5)=1;                  % current goal x +inital goal(wether final line or paperbox)
        A(i,6)=0;                   % current goal y +inital goal
        A(i,7)=-A(i,4);       %Gaussverteilte Geschwindigkeit v0
        A(i,8)=1;                    %Final goal x (can't be changed)
       
        
    end
   
end
