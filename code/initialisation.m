function A=initialisation()    
parameters;
    for i=1:nof_agents
        A(i,1)=50+rand*30;           %position x Zufallsverteilt von 90-120
        A(i,2)=200;                  %position y
        A(i,3)=0;                    %speed x
        A(i,4)=-(v0+randn*s);        %speed y
        A(i,5)=200;                  % current goal x +inital goal(wether final line or paperbox)
        A(i,6)=90;                   % current goal y +inital goal
        A(i,7)=-A(i,4);       %Gaussverteilte Geschwindigkeit v0
        A(i,8)=40;                    %Final goal x (can't be changed)
        A(i,9)=30;                    %Final goal y  (can't be changed)
        A(i,10)=0;                   %swap save goal x
        A(i,11)=0;                   %swap save goal y
        
    end
   
end
